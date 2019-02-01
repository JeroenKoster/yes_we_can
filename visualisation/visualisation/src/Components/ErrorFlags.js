import React from 'react';
import PropTypes from 'prop-types';
import {withStyles} from '@material-ui/core/styles';
import { List, ListSubheader, ListItem, ListItemIcon ,ListItemText, Paper } from '@material-ui/core';
import ErrorOutlineRounded from '@material-ui/icons/ErrorOutlineRounded';
import DoneOutlined from '@material-ui/icons/DoneOutlined';
import red from '@material-ui/core/colors/red';
import green from '@material-ui/core/colors/green';

const styles = theme => ({
  root: {
    width: '100%',
    maxWidth: 360,
    backgroundColor: theme.palette.background.paper,
  },
  nested: {
    paddingLeft: theme.spacing.unit * 4,
  },
});

class NestedList extends React.Component {
  state = {
    open: true,
  };

  handleClick = () => {
    this.setState(state => ({open: !state.open}));
  };


  render() {
    const {classes, flags} = this.props;

    return (
      <div>
        <List
          subheader={<ListSubheader component="div">PDO1 Error Flags</ListSubheader>}
          className={classes.root}
        >
          {
            Object.keys(flags).map((key) => {
              return (
                <ListItem button>

                  <ListItemText inset primary={key}/>
                  <ListItemIcon>
                    { flags[key] ? (<DoneOutlined/>) : (null) }
                  </ListItemIcon>
                </ListItem>
              )
            })
          }
        </List>
      </div>
    );
  }
}

NestedList.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(NestedList);