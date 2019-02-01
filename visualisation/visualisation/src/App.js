import React, {Component} from 'react';
import './App.css';
import SDO from './Components/SDO';
import ErrorFlags from './Components/ErrorFlags';
import {VictoryScatter, VictoryChart, VictoryTheme} from 'victory';
import {Grid, Paper, Button} from '@material-ui/core/';
import {withStyles} from '@material-ui/core/styles';

const MAXPOINTS = 150;
const URL = "ws://localhost:3030";

class App extends Component {

    ws = new WebSocket(URL);

    constructor(props) {
        // Required step: always call the parent class' constructor
        super(props);

    // Set the state directly. Use props if necessary.
    this.state = {
      flags: {
        tagInField: true,
        codeOk: false,
        xyDeviationDetermined: true,
        centerPuls: false,
        positionError: true,
        positionEstimate: false,
        fatalError: true,
        antennaStarted: false
      },
      xyData: [],
      code: -1
    }
  }

  /**
   * Handles incoming Data Objects and puts the data into local state
   * @param data = An Object representing the data in PDO1
   */
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
            // but only if the type is PDO1.
            // PDO3 should plot a graph.
            var json;
            try {
                json = JSON.parse(evt.data);
            } catch {
                json = evt.data;
            }
            if (json.type === "PDO1") {
                this.handleData(JSON.stringify(json.data));
            } else if (json.type === "PDO3") { // The PDO3 raw antenna data isn't used by react, but is used in index.html
                if (typeof (window.myLine) !== "undefined") {
                    var d = new Date();
                    var time = d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
                    window.myLine.config.data.labels.push(time);

                    if (window.myLine.config.data.labels.length > MAXPOINTS)
                        window.myLine.config.data.labels.shift();

                    if (window.myLine.data.datasets[0].data.length > MAXPOINTS)
                        window.myLine.data.datasets[0].data.shift();

                    if (window.myLine.data.datasets[1].data.length > MAXPOINTS)
                        window.myLine.data.datasets[1].data.shift();

                    window.myLine.data.datasets[0].data.push(json.data.rfidSignal1); //Antenna 1
                    window.myLine.data.datasets[1].data.push(json.data.rfidSignal2); //Antenna 2
                    window.myLine.update();
                }
            } else if (json.type === "SDO") { // These messages are the responses to an SDO read/write request
                console.log(json);
            }
        };

        this.ws.onclose = () => {
            console.log('disconnected')
            // automatically try to reconnect on connection loss
            this.setState({
                ws: new WebSocket(URL),
            })
        }
    }



  render() {

    const {classes} = this.props;

    return (
      <div className={classes.root}>
        <Grid container spacing={24}>
          <Grid item xs={12}>
            <Paper className={classes.paper}>
              <SDO
                submit={data => {
                  console.log("About to send " + JSON.stringify(data) + " to WS server");
                  this.ws.send(data)
                }}
              />
            </Paper>
          </Grid>
          <Grid item xs={4}>
            <Paper className={classes.paper}>
              <ErrorFlags
                flags={this.state.flags}
              />
            </Paper>
          </Grid>
          <Grid item xs={8}>
            <Paper className={classes.paper} >
              <svg viewBox="0 0 400 250" height={400}>
              < VictoryChart
                width={400}
                height={250}
                standalone={false}
                theme={VictoryTheme.material}
                domain={{
                  x: [-175, 175],
                  y: [-100, 100]
                }}
              >
                <VictoryScatter
                  animate={{
                    onEnter: {
                      duration: 1000,
                      before:
                        () => ({opacity: 0.3}),
                      after:
                        (datum) => ({opacity: 1})
                    }
                  }}
                  style={{
                      data: {
                        fill: (d) => d.eventKey === (this.state.xyData.length - 1) ? "red" : "black"
                      }
                  }}
                  size={(d) =>
                    d.eventKey === (this.state.xyData.length - 1) ? 7 : 3
                  }
                  data={this.state.xyData}
                />
              </VictoryChart>
              </svg>
            </Paper>
          </Grid>
        </Grid>
      </div>
    )
  }
}


const styles = theme => ({
  root: {
    flexGrow: 1,
  },
  paper: {
    padding: theme.spacing.unit * 2,
    textAlign: 'center',
    color: theme.palette.text.secondary,
  },
});

export default withStyles(styles)(App);
