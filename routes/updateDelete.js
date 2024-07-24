'use strict';

const express = require('express');
const udRoute = express.Router();
const connection = require('../db');

udRoute.put('/api/orders/:id ', function (req, res, next) {
    connection.execute("UPDATE orderdb SET customer_name=?, product=? WHERE id=?;",
        [req.body.customer_name,req.body.product,req.params.uid])
        .then(() => {
            console.log('Update successful');
            res.status(200).send("Update Successfully.");
        }).catch((err) => {
            console.error(err);
            res.status(500).send("Failed to update.");
        });
});

  
udRoute.delete('/api/orders/:id', function (req, res, next) {
    connection.execute("DELETE FROM orderdb WHERE id=?;",
        [req.params.uid])
        .then(() => {
            console.log('ok');
        }).catch((err) => {
            console.log(err);
        });
    res.end();
});


udRoute.use('/', function (req, res, next) {
    res.sendStatus(404);
})


module.exports = udRoute;