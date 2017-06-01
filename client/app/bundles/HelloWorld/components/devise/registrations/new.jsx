import React, {Component} from 'react';
import LayoutsHeader from '../../layouts/header';
import {Card, CardHeader, CardText} from 'material-ui/Card';
import Divider from 'material-ui/Divider';
import TextField from 'material-ui/TextField';
import RaisedButton from 'material-ui/RaisedButton';
import LayoutsFooter from '../../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

// default matererial ui
import injectTapEventPlugin from 'react-tap-event-plugin';
injectTapEventPlugin();

class RegistrationsNewDevise extends Component {
  render() {
    return (
      <div>
        <LayoutsHeader />

          <div className="login-register">
            <Card>
              <CardHeader
                title="Register to NGUTANGIN"
              />
            <Divider/>

              <CardText>
                <RaisedButton label="Register with Facebook" primary={true} fullWidth={true} /><br /><br />
                <TextField floatingLabelText="Username" fullWidth={true} />
                <TextField floatingLabelText="Email" fullWidth={true} />
                <TextField type="password" floatingLabelText="Password" fullWidth={true} />
                <TextField type="password" floatingLabelText="Confirm Password" fullWidth={true} /><br /><br />
                <RaisedButton label="Register" primary={true} fullWidth={true} />
                <p>Already have an account?</p>
                <p className="devise">Login now</p>
              </CardText>

            </Card>
          </div>

        <LayoutsFooter />
      </div>
    );
  }
}

const RegistrationsNewComponent = () => (
  <MuiThemeProvider>
    <RegistrationsNewDevise />
  </MuiThemeProvider>
);


export default RegistrationsNewComponent;
