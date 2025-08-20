const express = require('express');
const session = require('express-session');
const cookieParser = require('cookie-parser');
const app = express();
const port = 3000;
var bodyParser = require("body-parser");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json()); 
app.set('view engine', 'ejs'); 
app.use(express.static(__dirname + '/public')); 


app.use(cookieParser());
app.use(session({
    secret: 'your_secret_key',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false }
}));

const sqlite3 = require('sqlite3').verbose();
global.db = new sqlite3.Database('./database.db', function(err) {
    if (err) {
        console.error(err);
        process.exit(1);
    } else {
        console.log("Database connected");
        global.db.run("PRAGMA foreign_keys=ON");
    }
});

const mainRoutes = require('./routes/main');
app.use('/', mainRoutes);

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
});

module.exports = app;
