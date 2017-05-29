import ReactOnRails from 'react-on-rails';

import HelloWorldApp from './HelloWorldApp';
import registrationsNewApp from './registrations/new';
import sessionNewApp from './sessions/new';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
});
