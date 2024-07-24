const express = require('express');
const crypto = require('crypto');
const wrRoute = express.Router();
const connection = require('../db');

wrRoute.post('/api/orders', function (req, res, next) {
    if (!req.body.password) {
        return res.status(400).send('Password is required.');
    }

    let mypass = crypto.createHash('md5').update(req.body.password).digest("hex");
    connection.execute(`INSERT INTO orderdb (order_id, customer_name, product, quantity, order_date, status, password) VALUES (?, ?, ?, ?, ?, ?, ?);`,
        [req.body.order_id, req.body.customer_name, req.body.product, req.body.quantity, req.body.order_date, req.body.status, mypass])
        .then(() => {
            console.log('Insert successful');
            res.status(201).send("Insert Successfully");
        }).catch((err) => {
            console.error('Insert failed:', err);
            res.status(500).send("Insert Failed");
        });
});

wrRoute.get('/api/orders', function (req, res, next) {
    connection.execute('SELECT * FROM orderdb')
        .then((result) => {
            var rawData = result[0];
            res.send(JSON.stringify(rawData));
        }).catch((err) => {
            console.log(err);
            res.status(500).send("Error fetching orders.");
        });
});

wrRoute.post('/check', function (req, res, next) {
    if (!req.body.password) {
        return res.status(400).send('Password is required.');
    }

    let mypass = crypto.createHash('md5').update(req.body.password).digest("hex");
    connection.execute('SELECT * FROM users_epy WHERE username=? AND password=?;',
        [req.body.username, mypass]).then((result) => {
            var data = result[0];
            if (data.length === 0) {
                res.sendStatus(400);
            } else {
                res.sendStatus(200);
            }
        }).catch((err) => {
            console.error('Error checking user:', err);
            res.status(500).send("Error checking user.");
        });
});

wrRoute.use('/', function (req, res, next) {
    res.sendStatus(404);
});

module.exports = wrRoute;
