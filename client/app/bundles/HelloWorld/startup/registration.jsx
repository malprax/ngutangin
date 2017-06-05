import ReactOnRails from 'react-on-rails';

import HelloWorldApp from './HelloWorldApp';
import ConfirmationsNewApp from './devise/confirmations/new';
import RegistrationsNewApp from './devise/registrations/new';
import RegistrationsEditApp from './devise/registrations/edit';
import SessionsNewApp from './devise/sessions/new';
import IndexApp from './IndexApp';
import MyDebtsApp from './debts/mydebts';
import TheirDebtsApp from './debts/theirdebts';
import ContactsApp from './debts/contacts';
// import ShowApp from './debts/show';
import TestHelloWorld from './TestHelloWorld';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
  ConfirmationsNewApp,
  RegistrationsNewApp,
  RegistrationsEditApp,
  SessionsNewApp,
  IndexApp,
  MyDebtsApp,
  TheirDebtsApp,
  ContactsApp,
  // ShowApp,
  TestHelloWorld
});
