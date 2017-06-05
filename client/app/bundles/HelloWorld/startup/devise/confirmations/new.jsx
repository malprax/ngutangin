import React from 'react';
import { Provider } from 'react-redux';
import ConfirmationsNewStore from '../../../store/devise/confirmations/new';
import ConfirmationsNewContainer from '../../../containers/devise/confirmations/new';

const ConfirmationsNewApp = (props) => (
  <Provider store={ConfirmationsNewStore(props)}>
    <ConfirmationsNewContainer />
  </Provider>
)

export default ConfirmationsNewApp;
