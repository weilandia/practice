//include lodash
var _ = require("lodash");
var filterwhere = function (users) {
  return _.filter(users, { active: true });
};

module.exports = filterwhere;
