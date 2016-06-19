var _ = require("lodash");
//Iter 1
// var sorted = function (collection) {
//   return _.sortBy(collection, "quantity").reverse();
// }

//Iter 2
var sorted = function (collection) {
  return _.sortBy(collection, function(item) {
    return -item.quantity;
  });
}

module.exports = sorted;
