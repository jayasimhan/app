var express = require('express');
var router = express.Router();
var pg = require("pg");
var config = require("../config")[process.env.NODE_ENV||"development"];
var client = new pg.Client(config.db);

client.connect(function(err){
  if (err) throw err;
}

);
/* GET home page. */
router.get('/', function(req, res, next) {
  // execute a query on our database
  var name = req.query.name || "No Name"
  client.query('SELECT $1::text as name', [name], function (err, result) {
    res.render('index', { title: result.rows[0].name });
  });
});


router.get('/quote/:id', function(req, res, next) {
  // execute a query on our database
  var name = req.query.name || "No Name"
  client.query('SELECT title,quoteText from quote where id = $1::int', [req.params.id], function (err, result) {
    console.log(result.rows[0])
    res.render('quote', { title: result.rows[0].title, text:result.rows[0].quotetext });
  });
});

module.exports = router;
