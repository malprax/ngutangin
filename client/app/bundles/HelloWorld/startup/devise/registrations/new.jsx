import React from 'react';
import { Provider } from 'react-redux';

import RegistrationsNewStore from '../../../store/devise/registrations/new';
import RegistrationsNewContainer from '../../../containers/devise/registrations/new';

// See documentation for https://github.com/reactjs/react-redux.
// This is how you get props from the Rails view into the redux store.
// This code here binds your smart component to the redux store.
// railsContext provides contextual information especially useful for server rendering, such as
// knowing the locale. See the React on Rails documentation for more info on the railsContext
const registrationsNewApp = (props, _railsContext) => (
  <Provider store={RegistrationsNewStore(props)}>
    <RegistrationsNewContainer />
  </Provider>
);

export default registrationsNewApp;
