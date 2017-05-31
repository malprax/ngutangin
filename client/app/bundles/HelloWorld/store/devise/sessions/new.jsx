import { createStore } from 'redux';
import sessionsNewReducer from '../../../reducers/devise/sessions/new';

const SessionsNewStore = (railsProps) => (
  createStore(sessionsNewReducer, railsProps)
);

export default SessionsNewStore;
