import express from 'express';
import path from 'path';
import {fakeData, pageHelp} from './utils.js'

const port = process.env.PORT || 5000;
const app = express();
const __dirname = path.resolve();

app.set('view engine', 'ejs');
app.set('views', './views');
app.use(express.static('public'))

app.get('/', function(req, res) {
  res.render('index', pageHelp('index'));
});

app.get('/patterns/:slug', function(req, res) {
  res.render(`${req.params.slug}`, {...fakeData(), ...pageHelp(req.params.slug)});
});

app.listen(port);
console.log(`Started at http://localhost:${port}`);

