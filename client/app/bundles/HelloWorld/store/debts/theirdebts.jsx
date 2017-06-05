import { createStore } from 'redux';
import theirDebtsReducer from '../../reducers/debts/theirdebts';

const TheirDebtsStore = (railsProps) => (
  createStore(theirDebtsReducer, railsProps)
);

export default TheirDebtsStore;
