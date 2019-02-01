import React, {Component} from 'react';
import logo from './logo.svg';
import './App.css';
import SDO from './Components/SDO';
import ErrorFlags from './Components/ErrorFlags';

import {VictoryScatter, VictoryChart, VictoryTheme} from 'victory';
import * as d3 from 'd3';
import Websocket from 'react-websocket';
import {Grid, Paper, Button} from '@material-ui/core/';
import {withStyles} from '@material-ui/core/styles';

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
          <Grid item xs={3}>
            <Paper className={classes.paper}>
              <ErrorFlags
                flags={this.state.flags}
              />
            </Paper>
          </Grid>
          <Grid item xs={9}>
            <Paper className={classes.paper}>
              < VictoryChart
                width={400}
                height={250}
                standalone={true}
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
