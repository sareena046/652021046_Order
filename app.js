const express = require('express');
const app = express();
const PORT = process.env.PORT || 3046;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const writeRead = require('./routes/writeRead');
const updateDelete = require('./routes/updateDelete');

app.use('/wr', writeRead);
app.use('/ud', updateDelete);

app.use('/', function(req, res, next) {
    res.sendStatus(404);
});

app.listen(PORT, () => {
    console.log('server running on port:' + PORT);
});
