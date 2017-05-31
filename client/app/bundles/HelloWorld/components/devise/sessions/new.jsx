import React, {Component} from 'react';
import LayoutHeader from '../../layouts/header';
import {Card, CardHeader, CardText} from 'material-ui/Card';
import Divider from 'material-ui/Divider';
import TextField from 'material-ui/TextField';
import RaisedButton from 'material-ui/RaisedButton';
import LayoutFooter from '../../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

// default matererial ui
// import injectTapEventPlugin from 'react-tap-event-plugin';
// injectTapEventPlugin();

class SessionsNewDevise extends Component {
  render() {
    return (
      <div>
        <LayoutHeader />

        <div className="login-register">
          <Card>
            <CardHeader
              title="Login to NGUTANGIN"
            />
            <Divider/>

            <CardText>
              <RaisedButton label="Login with Facebook" primary={true} fullWidth={true} /><br /><br /><br /><br />
              <TextField hintText="Your Email" fullWidth={true} /><br />
              <TextField type="password" hintText="Your Password" fullWidth={true} /><br />
              <p className="devise">Forgot Password?</p>
              <RaisedButton label="Login" primary={true} fullWidth={true} />
              <p>Don't have NGUTANGIN account?</p>
              <p className="devise">Register now</p>
            </CardText>

          </Card>
        </div>

        <LayoutFooter />
      </div>
    );
  }
}

const SessionsNewComponent = () => (
  <MuiThemeProvider>
    <SessionsNewDevise />
  </MuiThemeProvider>
);

export default SessionsNewComponent;
