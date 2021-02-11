var express = require('express');
var router = express.Router();
var model = require('../models/index');
var sequelize = require('sequelize');


/* POST test score. */
router.post('/add', function (req, res, next) {
    const {
        candidate_id,
        test_level,
	test_score
    } = req.body;

     model.score.count({ where: { candidate_id: candidate_id , test_level: test_level } })
      .then(count => {

		if (count == 0) {
		    model.score.create({
		    candidate_id: candidate_id,
		    test_level: test_level,
		    test_score: test_score,

		})
		.then(score => res.status(201).json({
		    error: false,
		    data: score,
		    message: 'New test score has been created.'
		}))
		.catch(error => res.json({
		    error: true,
		    data: [],
		    error: error
		}));
 
        }else{

	return res.json("This test level already exist!");

	}

       
      });


});
 

router.get('/highest', function (req, res, next) {
    model.score.findAll({
        attributes: [
          'candidate_id',
          [sequelize.fn('sum', sequelize.col('test_score')), 'total_score'],
        ],
        group: ['candidate_id'],
	limit: 1,
        order: sequelize.literal('total_score DESC')
})
        .then(scoreData => res.json({
            error: false,
            data: scoreData
        }))
        .catch(error => res.json({
            error: true,
            data: [],
            error: error
        }));
});


router.get('/avg', function (req, res, next) {
    model.score.findAll({
        attributes: [
          'test_level',
          [sequelize.fn('AVG', sequelize.col('test_score')), 'avg_score'],
        ],
        group: ['test_level'],
        order: sequelize.literal('avg_score DESC')
})
        .then(scoreData => res.json({
            error: false,
            data: scoreData
        }))
        .catch(error => res.json({
            error: true,
            data: [],
            error: error
        }));
});

 
module.exports = router;
