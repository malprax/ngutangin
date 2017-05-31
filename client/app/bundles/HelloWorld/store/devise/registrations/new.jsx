import { createStore } from 'redux';
import registrationsNewReducer from '../../../reducers/devise/registrations/new';

const RegistrationsNewStore = (railsProps) => (
  createStore(registrationsNewReducer, railsProps)
);

export default RegistrationsNewStore;
