import React, {Component} from 'react';
import LayoutsHeader from '../layouts/header';
import {Paper, Avatar, List, ListItem, IconButton, Subheader, FloatingActionButton} from 'material-ui/';
import StarBorder from 'material-ui/svg-icons/toggle/star-border';
import FileFolder from 'material-ui/svg-icons/file/folder';
import CommunicationChatBubble from 'material-ui/svg-icons/communication/chat-bubble';
import SocialNotifications from 'material-ui/svg-icons/social/notifications';
import LayoutsFooter from '../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import ContentAdd from 'material-ui/svg-icons/content/add';
import Divider from 'material-ui/Divider';
import {
  blue300,
  indigo900,
  orange200,
  deepOrange300,
  pink400,
  purple500,
} from 'material-ui/styles/colors';

const style = {margin: 5};

class Index extends Component {
  render() {
    return (
      <div>
        <LayoutsHeader />
          <Paper className="styles-paper-content">
            <List>
              <h3>My Debts: Rp 4500</h3>
              <ListItem
                leftAvatar={
                  <Avatar
                    color={deepOrange300}
                    backgroundColor={purple500}
                    size={30}
                    style={style}
                  >
                    J
                  </Avatar>
                }
                rightIcon={<CommunicationChatBubble />}
                primaryText="Jennifer Smith"
                secondaryText="join since May 15th, 2017"
              />
              <Divider />
              <ListItem
                leftAvatar={<Avatar
                  color={deepOrange300}
                  backgroundColor={blue300}
                  size={30}
                  style={style}
                  >
                    J
                  </Avatar>
                }
                primaryText="Jennifer Duns"
                secondaryText="join since Apr 13th, 2017"
              />
              <Divider />
              <ListItem
                leftAvatar={<Avatar
                  color={deepOrange300}
                  backgroundColor={pink400}
                  size={30}
                  style={style}
                  >
                    J
                  </Avatar>
                }
                rightIcon={<SocialNotifications />}
                primaryText="Jennifer Tan"
                secondaryText="join since Jan 9th, 2017"
              />
          </List>
          </Paper>

        <LayoutsFooter />
      </div>
    );
  }
}

const IndexComponent = () => (
  <MuiThemeProvider>
    <Index />
  </MuiThemeProvider>
);


export default IndexComponent;
