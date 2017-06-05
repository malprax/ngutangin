import { createStore } from 'redux';
import myDebtsReducer from '../../reducers/debts/mydebts';

const MyDebtsStore = (railsProps) => (
  createStore(myDebtsReducer, railsProps)
);

export default MyDebtsStore;
