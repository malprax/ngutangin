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

class ConfirmationsNewDevise extends Component {
  render() {
    return (
      <div>
        <LayoutsHeader />

          <div className="login-register">
            <Card>
              <CardHeader
                title="Resend confirmation instructions"
              />
            <Divider/>

              <CardText>
                <TextField floatingLabelText="Email" fullWidth={true} />
                <RaisedButton label="Resend confirmation instructions" primary={true} fullWidth={true} />
                </CardText>

            </Card>
          </div>

        <LayoutsFooter />
      </div>
    );
  }
}

const ConfirmationsNewComponent = () => (
  <MuiThemeProvider>
    <ConfirmationsNewDevise />
  </MuiThemeProvider>
);


export default ConfirmationsNewComponent;
