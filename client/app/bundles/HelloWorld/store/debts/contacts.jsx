import { createStore } from 'redux';
import contactsReducer from '../../reducers/debts/contacts';

const ContactsStore = (railsProps) => (
  createStore(contactsReducer, railsProps)
);

export default ContactsStore;
