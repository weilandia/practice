var _ = require("lodash");

// module.exports = function(collection) {
//   var grouped = _.groupBy(collection, "article");
//
//   function reduce(result, value, key) {
//     result += value.quantity;
//     return result;
//   };
//
//   var results = [];
//   _.forEach(grouped, function(value, key) {
//     results.push({article: parseInt(key), total_orders: _.reduce(value, reduce, 0)});
//   });
//   return _.sortBy(results, "total_orders").reverse();
// };

module.exports = function(orders) {
  var overviewarray = [],
      total = 0;

  orders = _.groupBy(orders, "article");

  _.forEach(orders, function(item, key) {
    key = parseInt(key);
    total = 0;

    if (item.length === 1) {
      total = item[0].quantity;
    } else {
      total = _.reduce(item, function(sum, item) {
        return sum + item.quantity;
      }, 0);
    }

    overviewarray.push({
      article: key,
      total_orders: total
    });
  });

  overviewarray = _.sortBy(overviewarray, "total_orders").reverse();

  return overviewarray;
};
