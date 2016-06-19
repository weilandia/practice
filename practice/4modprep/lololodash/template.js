var _ = require("lodash");

// module.exports = function(obj) {
//   return _.template("Hello <%= name %> (logins: <%= login.length %>)")(obj)
// };

module.exports = function(inputvar) {
  var template = "Hello <%= name %> (logins: <%= login.length %>)";

  return _.template(template)(inputvar);
}
