import React, {Component} from 'react';
import LayoutsHeader from '../../layouts/header';
import {Card, CardHeader, CardText} from 'material-ui/Card';
import {Paper, GridList, GridTile, IconButton, Subheader, FloatingActionButton} from 'material-ui/';
import Divider from 'material-ui/Divider';
import TextField from 'material-ui/TextField';
import RaisedButton from 'material-ui/RaisedButton';
import LayoutsFooter from '../../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

// default matererial ui
// import injectTapEventPlugin from 'react-tap-event-plugin';
// injectTapEventPlugin();

class RegistrationsEditDevise extends Component {
  render() {
    return (
      <div>
        <LayoutsHeader />

        <Paper className="styles-paper-content">
          <TextField floatingLabelText="Username" fullWidth={true} />
          <TextField floatingLabelText="Email" fullWidth={true} />
          <TextField type="password" floatingLabelText="Password" fullWidth={true} />
          <TextField type="password" floatingLabelText="Confirm Password" fullWidth={true} />
          <TextField type="password" floatingLabelText="Current Password" fullWidth={true} />
          <RaisedButton label="Save" primary={true} fullWidth={false} />
        </Paper>

        <LayoutsFooter />
      </div>
    );
  }
}

const RegistrationsEditComponent = () => (
  <MuiThemeProvider>
    <RegistrationsEditDevise />
  </MuiThemeProvider>
);


export default RegistrationsEditComponent;
