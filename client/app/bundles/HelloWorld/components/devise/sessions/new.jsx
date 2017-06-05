import React, {Component} from 'react';
import LayoutsHeader from '../../layouts/header';
import {Card, CardHeader, CardText} from 'material-ui/Card';
import Divider from 'material-ui/Divider';
import TextField from 'material-ui/TextField';
import RaisedButton from 'material-ui/RaisedButton';
import LayoutsFooter from '../../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

// default matererial ui
// import injectTapEventPlugin from 'react-tap-event-plugin';
// injectTapEventPlugin();

class SessionsNewDevise extends Component {
  render() {
    return (
      <div>
        <LayoutsHeader />

        <div className="login-register">
          <Card>
            <CardHeader
              title="Login to NGUTANGIN"
            />
            <Divider/>

            <CardText>
              <RaisedButton label="Login with Facebook" primary={true} fullWidth={true} /><br /><br />
              <TextField floatingLabelText="Your Email" fullWidth={true} />
              <TextField type="password" floatingLabelText="Your Password" fullWidth={true} />
              <p className="devise">Forgot Password?</p>
              <RaisedButton label="Login" primary={true} fullWidth={true} />
              <p>Don't have NGUTANGIN account?</p>
              <p className="devise">Register now</p>
            </CardText>

          </Card>
        </div>

        <LayoutsFooter />
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
