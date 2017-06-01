import { createStore } from 'redux';
import indexReducer from '../reducers/indexReducer';

const indexStore = (railsProps) => (
  createStore(indexReducer, railsProps)
);

export default indexStore;
