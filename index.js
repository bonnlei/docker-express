var express = require('express');

// Constants
var PORT = 3010;

// App
var app = express();
app.get('/', function (req, res) {
    res.send('Hello world from express!\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
