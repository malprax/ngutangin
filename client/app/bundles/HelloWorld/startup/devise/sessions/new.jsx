import React from 'react';
import { Provider } from 'react-redux';
import SessionsNewStore from '../../../store/devise/sessions/new';
import SessionsNewContainer from '../../../containers/devise/sessions/new';

const SessionsNewApp = (props) => (
  <Provider store={SessionsNewStore(props)}>
    <SessionsNewContainer />
  </Provider>
)

export default SessionsNewApp;
