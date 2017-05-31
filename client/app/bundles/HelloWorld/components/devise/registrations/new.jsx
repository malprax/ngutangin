import React, {Component} from 'react';
import LayoutHeader from '../../layouts/header';
import LayoutFooter from '../../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

// default matererial ui
import injectTapEventPlugin from 'react-tap-event-plugin';
injectTapEventPlugin();

class HelloWorldDevise extends Component {
  render() {
    return (
      <div>
        <LayoutHeader />

        

        <LayoutFooter />
      </div>
    );
  }
}

const App = () => (
  <MuiThemeProvider>
    <HelloWorldDevise />
  </MuiThemeProvider>
);


export default App;
