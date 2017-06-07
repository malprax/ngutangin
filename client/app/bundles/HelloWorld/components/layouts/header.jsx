import React, {Component} from 'react';
import {AppBar, IconMenu, IconButton, Drawer, Menu, MenuItem, FlatButton, Toggle, Divider} from 'material-ui';
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

Logged.muiName = 'IconMenu';

class Header extends Component {
  constructor(props) {
    super(props);
    this.state = {open: false};
  }

  handleToggle = () => this.setState({open: !this.state.open});

  render() {
    return (
      <div>
        <AppBar
          title="NGUTANGIN"
          iconElementRight={<Logged />}
          iconElementLeft={
            <IconButton onTouchTap={this.handleToggle}>
              <NavigationMenu color="white" />
            </IconButton>
          }
        />
        <Drawer open={this.state.open}>
          <MenuItem primaryText="NGUTANGIN" leftIcon={<Payment />} style={{height: '64px', fontsize: '24px', backgroundcolor: 'cyan500',}} onTouchTap={this.handleToggle} />
          <Divider />
          <MenuItem primaryText="My Debts" leftIcon={<Payment />} />
          <MenuItem primaryText="Their debts" leftIcon={<AccountBalanceWallet />} />
          <MenuItem primaryText="My Contacts" leftIcon={<Contacts />} />
        </Drawer>
      </div>
    );
  }
}

export default Header;
