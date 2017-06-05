import React from 'react';
import { Provider } from 'react-redux';
import MyDebtsStore from '../../store/debts/mydebts';
import MyDebtsContainer from '../../containers/debts/mydebts';

const MyDebtsApp = (props) => (
  <Provider store={MyDebtsStore(props)}>
    <MyDebtsContainer />
  </Provider>
)

export default MyDebtsApp;
