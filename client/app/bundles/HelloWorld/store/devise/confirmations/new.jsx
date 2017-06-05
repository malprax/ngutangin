import { createStore } from 'redux';
import confirmationsNewReducer from '../../../reducers/devise/confirmations/new';

const ConfirmationsNewStore = (railsProps) => (
  createStore(confirmationsNewReducer, railsProps)
);

export default ConfirmationsNewStore;
