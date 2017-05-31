import React from 'react';
import { Provider } from 'react-redux';

import configureStore from '../store/TestHelloWorldStore';
import HelloWorldContainer from '../containers/TestHelloWorldContainer';

const HelloWorldApp = (props, _railsContext) => (
  <Provider store={configureStore(props)}>
    <HelloWorldContainer />
  </Provider>
);

export default HelloWorldApp;
