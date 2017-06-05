import React from 'react';
import { Provider } from 'react-redux';
import ShowStore from '../../store/debts/show';
import ShowContainer from '../../containers/debts/show';

const ShowApp = (props) => (
  <Provider store={ShowStore(props)}>
    <ShowContainer />
  </Provider>
)

export default ShowApp;
