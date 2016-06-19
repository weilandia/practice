var _ = require("lodash");

// module.exports = function(collection) {
//   return collection.sort().map(function(e) {
//     return e.toUpperCase() + "CHAINED"
//   });
// };

module.exports = function(collection) {
  return _.chain(collection)
    .map(function(element) {
      return element + "chained";
    })
    .map(function(element) {
      return element.toUpperCase();
    })
    .sort()
};
