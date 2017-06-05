import React from 'react';
import { Provider } from 'react-redux';
import RegistrationsEditStore from '../../../store/devise/registrations/edit';
import RegistrationsEditContainer from '../../../containers/devise/registrations/edit';

const RegistrationsEditApp = (props) => (
  <Provider store={RegistrationsEditStore(props)}>
    <RegistrationsEditContainer />
  </Provider>
)

export default RegistrationsEditApp;
