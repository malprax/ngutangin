import React from 'react';
import { Provider } from 'react-redux';
import TheirDebtsStore from '../../store/debts/theirdebts';
import TheirDebtsContainer from '../../containers/debts/theirdebts';

const TheirDebtsApp = (props) => (
  <Provider store={TheirDebtsStore(props)}>
    <TheirDebtsContainer />
  </Provider>
)

export default TheirDebtsApp;
