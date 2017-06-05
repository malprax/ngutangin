// import React, {Component} from 'react';
// import LayoutsHeader from '../layouts/header';
// import {Paper, GridList, GridTile, IconButton, Subheader, FloatingActionButton} from 'material-ui/';
// import StarBorder from 'material-ui/svg-icons/toggle/star-border';
// import LayoutsFooter from '../layouts/footer';
// import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
// import ContentAdd from 'material-ui/svg-icons/content/add';
// import Grid from 'material-ui/Grid';
//
//
// const styles = {
//   root: {
//     flexGrow: 1,
//     marginTop: 30,
//   },
//   paper: {
//     padding: 16,
//     textAlign: 'center',
//     color: theme.palette.text.secondary,
//   },
// };
//
// const tilesData = [
//   {
//     img: 'images/grid-list/jensmith.jpg',
//     name: 'Jennifer Smith',
//     created_at: 'May 15th, 2017',
//   },
//   {
//     img: 'images/grid-list/jenduns.jpg',
//     name: 'Jennifer Duns',
//     created_at: 'Apr 13th, 2017',
//   },
//   {
//     img: 'images/grid-list/jentan.jpg',
//     name: 'Jennifer Tan',
//     created_at: 'Apr 13th, 2017',
//   },
//   {
//     img: 'images/grid-list/josmith.jpg',
//     name: 'Jojo Smith',
//     created_at: 'Apr 13th, 2017',
//   },
//   {
//     img: 'images/grid-list/jeduns.jpg',
//     name: 'Jenny Duns',
//     created_at: 'Apr 13th, 2017',
//   },
//   {
//     img: 'images/grid-list/jatan.jpg',
//     name: 'Jane Tan',
//     created_at: 'Apr 13th, 2017',
//   }
// ]
//
// class Contacts extends Component {
//   render() {
//     return (
//       <div className={classes.root}>
//         <Grid container gutter={24}>
//           <Grid item xs={12}>
//             <Paper className={classes.paper}>
//               xs=12
//             </Paper>
//           </Grid>
//           <Grid item xs={6}>
//             <Paper className={classes.paper}>
//               xs=6
//             </Paper>
//           </Grid>
//           <Grid item xs={6}>
//             <Paper className={classes.paper}>
//               xs=6
//             </Paper>
//           </Grid>
//           <Grid item xs={3}>
//             <Paper className={classes.paper}>
//               xs=3
//             </Paper>
//           </Grid>
//           <Grid item xs={3}>
//             <Paper className={classes.paper}>
//               xs=3
//             </Paper>
//           </Grid>
//           <Grid item xs={3}>
//             <Paper className={classes.paper}>
//               xs=3
//             </Paper>
//           </Grid>
//           <Grid item xs={3}>
//             <Paper className={classes.paper}>
//               xs=3
//             </Paper>
//           </Grid>
//         </Grid>
//       </div>
//     );
//   }
// }
//
// const ContactsComponent = () => (
//   <MuiThemeProvider>
//     <Contacts />
//   </MuiThemeProvider>
// );
//
//
// export default ContactsComponent;
