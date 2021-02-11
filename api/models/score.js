'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class score extends Model {
    
     // The `models/index` file will call this method automatically.
    
    static associate(models) {
      // define association here
    }
  };
  score.init({
    candidate_id: {
        type: DataTypes.ENUM,
        values: ["1", "2", "3"]
      },
    test_level: DataTypes.INTEGER,
    test_score: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'score',
  });
  return score;
};
