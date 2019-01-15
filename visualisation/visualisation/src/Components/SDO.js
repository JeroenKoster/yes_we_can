import React, {Component} from 'react';

import {Grid, Card, CardHeader, TextField, Select, Button} from '@material-ui/core/';
//
// const SDO_ENUM = Object.freeze({
//     SET_SPEED: {
//         description: "Set Speed",
//         index: 0x2050,
//         subIndex: 0x01,
//         bits: 32,
//         signed: true
//     },
//     PROGRAM_TAG: {
//         description: "Program Tag",
//         index: 0x2000,
//         subIndex: 0x01,
//         bits: 32,
//         signed: false
//     }
// });

const SDO_ENUM = {
    SET_SPEED: "Set Speed",
    PROGRAM_TAG: "Program Tag"
};

class SDO extends Component {

    constructor(props) {
        super(props);
        this.state = {
            selection: SDO_ENUM.SET_SPEED,
            value: 0
        };

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleTextFieldChange = this.handleTextFieldChange.bind(this);
    }

    handleChange(event) {
        console.log(event.target.value);
        this.setState({selection: event.target.value});
    }

    handleSubmit() {
        console.log("handleSubmit() -> " + this.state.selection + ": " + this.state.value);
        this.props.submit(
            {
                sdo: this.state.selection,
                number: this.state.value}
            )
    }

    handleTextFieldChange(event) {
        this.setState({value: event.target.value})
    }

    render() {
        return (
            <Card>
                <CardHeader
                    title="SDO"
                    subheader="Write/Read data to the antenna"

                />
                <Grid
                    container
                    direction="row"
                    justify="space-evenly"
                    alignItems="stretch"
                >
                    <Grid item xs={2}>
                        <Select
                            autoWidth={true}
                            value={this.state.selection}
                            onChange={this.handleChange}
                            variant="outlined"
                        >
                            {
                                Object.keys(SDO_ENUM).map(key => {
                                    return <option value={key}>{SDO_ENUM[key]}</option>
                                })
                            }
                        </Select>
                    </Grid>
                    <Grid item xs={4}>
                        <TextField
                            value={this.state.value}
                            onChange={this.handleTextFieldChange}
                            type="number"
                            margin="normal"
                            variant="outlined"
                        />
                    </Grid>
                    <Grid item xs={2}>
                        <Button onClick={this.handleSubmit} variant="outlined" color="primary">Submit</Button>
                    </Grid>
                </Grid>
            </Card>
        );
    }
}

export default SDO;