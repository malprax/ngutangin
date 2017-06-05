import { createStore } from 'redux';
import showReducer from '../../reducers/debts/show';

const ShowStore = (railsProps) => (
  createStore(showReducer, railsProps)
);

export default ShowStore;
