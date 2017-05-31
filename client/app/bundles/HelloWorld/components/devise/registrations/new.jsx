import React, {Component} from 'react';
import LayoutHeader from '../../layouts/header';
import {Card, CardHeader, CardText} from 'material-ui/Card';
import Divider from 'material-ui/Divider';
import TextField from 'material-ui/TextField';
import RaisedButton from 'material-ui/RaisedButton';
import LayoutFooter from '../../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

// default matererial ui
import injectTapEventPlugin from 'react-tap-event-plugin';
injectTapEventPlugin();

class RegistrationsNewDevise extends Component {
  render() {
    return (
      <div>
        <LayoutHeader />

          <div className="login-register">
            <Card>
              <CardHeader
                title="Register to NGUTANGIN"
              />
            <Divider/>

              <CardText>
                <RaisedButton label="Register with Facebook" primary={true} fullWidth={true} /><br /><br /><br /><br /><br />
                <TextField hintText="Username" fullWidth={true} /><br />
                <TextField hintText="Email" fullWidth={true} /><br />
                <TextField type="password" hintText="Password" fullWidth={true} /><br />
                <TextField type="password" hintText="Confirm Password" fullWidth={true} /><br /><br />
                <RaisedButton label="Register" primary={true} fullWidth={true} />
                <p>Already have an account?</p>
                <p className="devise">Login now</p>
              </CardText>

            </Card>
          </div>

        <LayoutFooter />
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
