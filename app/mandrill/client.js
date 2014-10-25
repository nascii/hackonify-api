var mandrill, mrClient;

mandrill = require("mandrill-api/mandrill");

mrClient = new mandrill.Mandrill("zQV3iit9tMfZOGJQDdrtEA");

module.exports = mrClient;
