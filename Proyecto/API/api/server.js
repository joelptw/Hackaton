const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');  

//Conexion
const mc = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'hackaton'
});

const port = process.env.PORT || 3000;
mc.connect();
app.listen(port);
console.log('API server started on: ' + port);

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var routes = require('./routes/appRoutes');
routes(app); 