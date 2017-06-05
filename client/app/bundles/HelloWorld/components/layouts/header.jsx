import React, {Component} from 'react';
import {AppBar, IconMenu, IconButton, Menu, MenuItem, FlatButton, Toggle, Divider} from 'material-ui';
import AccountCircle from 'material-ui/svg-icons/action/account-circle';
import NavigationMenu from 'material-ui/svg-icons/navigation/menu';
import Payment  from 'material-ui/svg-icons/action/payment';
import AccountBalanceWallet from 'material-ui/svg-icons/action/account-balance-wallet';
import Contacts from 'material-ui/svg-icons/communication/contacts';
import {Card, CardHeader, CardText, CardActions} from 'material-ui/Card';

class Login extends Component {
  static muiName = 'FlatButton';

  render() {
    return (
      <FlatButton {...this.props} label="Login" />
    );
  }
}

const Logged = (props) => (
  <IconMenu
    {...props}
    iconButtonElement={
      <IconButton><AccountCircle /></IconButton>
    }
    targetOrigin={{horizontal: 'right', vertical: 'top'}}
    anchorOrigin={{horizontal: 'right', vertical: 'bottom'}}
  >
    <MenuItem primaryText="qwerty@id.com" leftIcon={<AccountCircle />} />
    <Divider/>
    <FlatButton label="Setting" />
    <FlatButton label="Logout" />
  </IconMenu>
);

const SideNav = (props) => (
  <IconMenu
    {...props}
    iconButtonElement={
      <IconButton><NavigationMenu color="white" /></IconButton>
    }
    targetOrigin={{horizontal: 'left', vertical: 'top'}}
    anchorOrigin={{horizontal: 'left', vertical: 'bottom'}}
  >
    <Menu>
      <MenuItem primaryText="My Debts" leftIcon={<Payment />} />
      <MenuItem primaryText="Their debts" leftIcon={<AccountBalanceWallet />} />
      <MenuItem primaryText="My Contacts" leftIcon={<Contacts />} />
    </Menu>
  </IconMenu>
);

Logged.muiName = 'IconMenu';
SideNav.muiName = 'IconMenu';


class Header extends Component {
  render() {
    return (
      <div>
        <AppBar
          title="NGUTANGIN"
          iconElementRight={<Logged />}
          iconElementLeft={<SideNav />}
        />
      </div>
    );
  }
}

export default Header;
