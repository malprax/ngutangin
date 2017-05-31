import { createStore } from 'redux';
import helloWorldReducer from '../../../reducers/devise/registrations/new';

const configureStore = (railsProps) => (
  createStore(helloWorldReducer, railsProps)
);

export default configureStore;