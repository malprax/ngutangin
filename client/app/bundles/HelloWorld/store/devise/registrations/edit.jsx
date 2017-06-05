import { createStore } from 'redux';
import registrationsEditReducer from '../../../reducers/devise/registrations/edit';

const RegistrationsEditStore = (railsProps) => (
  createStore(registrationsEditReducer, railsProps)
);

export default RegistrationsEditStore;
