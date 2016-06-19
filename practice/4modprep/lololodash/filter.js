var _ = require("lodash");

// module.exports = function(collection) {
//   var avg = collection.map(function(e) {
//     return e.income
//   })
//
//   avg = avg.reduce( (prev, curr) => prev + curr) / avg.length
//
//   var underperform = _.filter(collection, function(item) {
//     return item.income <= avg;
//   });
//
//   var overperform = _.filter(collection, function(item) {
//     return item.income > avg;
//   });
//
//   var result = {
//     "average": avg,
//     "underperform": _.sortBy(underperform, "income"),
//     "overperform": _.sortBy(overperform, "income")
//   }
//
//   return result;
// };

module.exports = function(item) {
  var average,
      underperform,
      overperform;

  item = _.sortBy(item, "income");

  average = _.reduce(item, function(sum, num) {
    return sum + num.income;
  }, 0);

  average = average / item.length;

  underperform = _.filter(item, function(num) {
    return num.income <= average;
  });

  overperform = _.filter(item, function(num) {
    return num.income > average;
  });

  return {
    average: average,
    underperform: underperform,
    overperform: overperform
  };
};
