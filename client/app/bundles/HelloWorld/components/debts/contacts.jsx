import React, {Component} from 'react';
import LayoutsHeader from '../layouts/header';
import {Paper, GridList, GridTile, IconButton, Subheader, FloatingActionButton} from 'material-ui/';
import StarBorder from 'material-ui/svg-icons/toggle/star-border';
import LayoutsFooter from '../layouts/footer';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import ContentAdd from 'material-ui/svg-icons/content/add';


const styles = {
  root: {
    display: 'flex',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
  },
  gridList: {
    width: 500,
    height: 450,
    overflowY: 'auto',
  },
};

const tilesData = [
  {
    img: 'images/grid-list/jensmith.jpg',
    name: 'Jennifer Smith',
    created_at: 'May 15th, 2017',
  },
  {
    img: 'images/grid-list/jenduns.jpg',
    name: 'Jennifer Duns',
    created_at: 'Apr 13th, 2017',
  },
  {
    img: 'images/grid-list/jentan.jpg',
    name: 'Jennifer Tan',
    created_at: 'Apr 13th, 2017',
  },
  {
    img: 'images/grid-list/josmith.jpg',
    name: 'Jojo Smith',
    created_at: 'Apr 13th, 2017',
  },
  {
    img: 'images/grid-list/jeduns.jpg',
    name: 'Jenny Duns',
    created_at: 'Apr 13th, 2017',
  },
  {
    img: 'images/grid-list/jatan.jpg',
    name: 'Jane Tan',
    created_at: 'Apr 13th, 2017',
  }
]

class Contacts extends Component {
  render() {
    return (
      <div>
        <LayoutsHeader />
          <Paper className="styles-paper-content">
            <h3>My Contact</h3>
            <div style={styles.root}>
              <GridList
                cellHeight={180}
                style={styles.gridList}
              >
                <Subheader><h3>Total: 2500</h3></Subheader>
                {tilesData.map((tile) => (
                  <GridTile
                    key={tile.img}
                    title={tile.name}
                    subtitle={<span>join since <b>{tile.created_at}</b></span>}
                    actionIcon={<IconButton><StarBorder color="white" /></IconButton>}
                  >
                    <img src={tile.img} />
                  </GridTile>
                ))}
              </GridList>
            </div>
            <div className="button-add">
              <FloatingActionButton>
                <ContentAdd />
              </FloatingActionButton>
            </div>
          </Paper>

        <LayoutsFooter />
      </div>
    );
  }
}

const ContactsComponent = () => (
  <MuiThemeProvider>
    <Contacts />
  </MuiThemeProvider>
);


export default ContactsComponent;
