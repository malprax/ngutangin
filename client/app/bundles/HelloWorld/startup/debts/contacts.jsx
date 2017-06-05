import React from 'react';
import { Provider } from 'react-redux';
import ContactsStore from '../../store/debts/contacts';
import ContactsContainer from '../../containers/debts/contacts';

const ContactsApp = (props) => (
  <Provider store={ContactsStore(props)}>
    <ContactsContainer />
  </Provider>
)

export default ContactsApp;
