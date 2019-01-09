import React, {Component} from 'react';
import logo from './logo.svg';
import './App.css';
import {VictoryScatter, VictoryChart, VictoryTheme} from 'victory';
import * as d3 from 'd3';
import Websocket from 'react-websocket';


class App extends Component {

    constructor(props) {
        // Required step: always call the parent class' constructor
        super(props);

        // Set the state directly. Use props if necessary.
        this.state = {
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
            return {code: code, xyData: xy};
        });
    }

    componentDidMount() {
        
    }

    componentWillUnmount() {

    }

    render() {
        return (
            <div className="App">
                <header className="App-header">
                    <p>
                        <h2>RFID-antenna visualisation</h2>
                    </p>
                </header>
                <div height={100}>
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
                    <Websocket url='ws://localhost:8080' onMessage={this.handleData.bind(this)}/>
                </VictoryChart>
                </div>
            </div>
        );
    }
}

export default App;
