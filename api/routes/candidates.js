var express = require('express');
var router = express.Router();
var model = require('../models/index');
 
/* POST candidate. */
router.post('/add', function (req, res, next) {
    const {
        name,
        email
    } = req.body;

    model.candidate.count({ where: { email: email } })
      .then(count => {
        if (count == 0) {
         console.log(count);
	 	model.candidate.create({
		    name: name,
		    email: email
		})
		.then(candidate => res.status(201).json({
		    error: false,
		    data: candidate,
		    message: 'New candidate has been created.'
		}))
		.catch(error => res.json({
		    error: true,
		    data: [],
		    error: error
		}));

        }else{

		return res.json("Email already exist!");

	}

       
      });


});
 
module.exports = router;
