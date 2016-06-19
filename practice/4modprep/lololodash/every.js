var _ = require("lodash");

module.exports = function(collection) {
  var result = {hot: [], warm: []}

  function compare_temp (temperature) {
    return temperature > 19;
  };

  _.forEach(collection, function(key, value) {
    if (_.every(key, compare_temp)) {
      result.hot.push(value);
    } else if (_.some(key, compare_temp)) {
      result.warm.push(value);
    }
  });
  return result;
};
