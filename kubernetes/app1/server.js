"use strict";

const express = require('express');

//constants

const PORT = 8080;
const HOST = '0.0.0.0';

//APP

const app = express();
app.listen(8080), () => {console.log('api on')}
app.get('/', (req, res) => {
  res.send('Hello World');

});

