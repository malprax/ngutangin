import ReactOnRails from 'react-on-rails';

import HelloWorldApp from './HelloWorldApp';
import registrationsNewApp from './devise/registrations/new';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
  registrationsNewApp
});
