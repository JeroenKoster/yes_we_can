import React, {Component} from 'react';

import {Grid, Paper, CardHeader, TextField, Select, Button} from '@material-ui/core/';

const SDO_ENUM = {
    SET_SPEED: "Set Speed",
    PROGRAM_TAG: "Program Tag",
    READ_SPEED: "Read speed"
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
                type: this.state.selection,
                value: this.state.value}
            )
    }

    handleTextFieldChange(event) {
        this.setState({value: event.target.value})
    }

    render() {
        return (
            <div>
                <CardHeader
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
            </div>
        );
    }
}

export default SDO;
