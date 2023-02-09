const express = require('express');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');

app.get('/', (req, res) => {
  res.render('index', { version: process.env.APP_VERSION });
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
