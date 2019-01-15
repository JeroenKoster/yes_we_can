import React, {Component} from 'react';
import logo from './logo.svg';
import './App.css';
import SDO from './Components/SDO';
import {VictoryScatter, VictoryChart, VictoryTheme} from 'victory';
import * as d3 from 'd3';
import Websocket from 'react-websocket';
import {CssBaseline, Select, Button} from '@material-ui/core/';

const URL = "ws://localhost:3030";

class App extends Component {

    ws = new WebSocket(URL);

    constructor(props) {
        // Required step: always call the parent class' constructor
        super(props);

        // Set the state directly. Use props if necessary.
        this.state = {
            flags: {
                tagInField: false,
                codeOk: false,
                xyDeviationDetermined: false,
                centerPuls: false,
                positionError: false,
                positionEstimate: false,
                fatalError: false,
                antennaStarted: false
            },
            xyData: [],
            code: -1
        }
    }

    handleData(data) {
        let result = JSON.parse(data);
        var xDev = result.xDeviation;
        var yDev = result.yDeviation;
        var code = result.rfidCode.data[0];
        console.log("X: " + xDev + ",Y: " + yDev + ", CODE: " + code);
        
        this.setState((prevState) => {
            var xy = prevState.xyData;
            if (code == prevState.code) {
                xy.push({x: result.xDeviation, y: result.yDeviation});
            } else {
                xy = [{x: result.xDeviation, y: result.yDeviation}];
            }
            return {
                code: code, 
                xyData: xy, 
                flags: {
                    tagInField: result.tagInField,
                    codeOk: result.codeOk,
                    xyDeviationDetermined: result.xyDeviationDetermined,
                    centerPuls: result.centerPuls,
                    positionError: result.positionError,
                    positionEstimate: result.positionEstimate,
                    fatalError: result.fatalError,
                    antennaStarted: result.antennaStarted
                }
            };
        });
    }

    componentDidMount() {
        this.ws.onopen = () => {
            // on connecting, do nothing but log it to the console
            console.log('connected')
        };

        this.ws.onmessage = evt => {
            // on receiving a message, add it to the list of messages
            this.handleData(evt.data);
        };

        this.ws.onclose = () => {
            console.log('disconnected')
            // automatically try to reconnect on connection loss
            this.setState({
                ws: new WebSocket(URL),
            })
        }
    }

    componentWillUnmount() {

    }


    render() {
        return (
            <div className="App">
                <CssBaseline />
                <div height={100}>
                <SDO submit={data => {
                    console.log("About to send " + JSON.stringify(data)+ " to WS server");
                    this.ws.send(JSON.stringify(data))
                }}/>
                {/*{Object.keys(this.state.flags).map((key, i) => (*/}
                    {/*<li>*/}
                        {/*<h3>{key + " " + this.state.flags[key]}</h3>*/}
                    {/*</li>*/}
                {/*))}*/}
                <VictoryChart
                        width={400}
                        height={250}
                        standalone={true}
                        theme={VictoryTheme.material}
                        domain={{x: [-175, 175], y: [-100, 100]}}
                    >
                    <VictoryScatter
                        animate={{ 
                            onEnter: {
                                duration: 1000,
                                before: () => ({ opacity: 0.3 }),
                                after: (datum) => ({ opacity: 1 })
                            } 
                        }}
                        style={{
                            data:{fill: (d) => d.eventKey === (this.state.xyData.length -1) ? "red" : "black"}
                        }}
                        size={(d) => d.eventKey === (this.state.xyData.length -1) ? 7 : 3}
                        data={this.state.xyData}
                    />
                </VictoryChart>
                </div>
            </div>
        );
    }
}

export default App;
