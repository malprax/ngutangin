import React from 'react';
import { Provider } from 'react-redux';
import RegistrationsNewStore from '../../../store/devise/registrations/new';
import RegistrationsNewContainer from '../../../containers/devise/registrations/new';

const layout = (props) => (
  <Provider store={RegistrationsNewStore(props)}>
    <RegistrationsNewContainer />
  </Provider>
)

export default layout;
