import ReactOnRails from 'react-on-rails';

import HelloWorldApp from './HelloWorldApp';
import RegistrationsNewApp from './devise/registrations/new';
import SessionsNewApp from './devise/sessions/new';
import TestHelloWorld from './TestHelloWorld';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
  RegistrationsNewApp,
  SessionsNewApp,
  TestHelloWorld
});
