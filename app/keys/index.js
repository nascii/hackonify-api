var fs;

fs = require("fs");

exports.gcs = {
  bucket: "brainarium",
  gaid: "531732897109-1il56g6kqbuis1h09n9kun9q7jcbv5u0@developer.gserviceaccount.com",
  secret: "nMougpnERgGhECml-0zyt1rR",
  pem: fs.readFileSync(rootDir + "keys/gcs.pem")
};
