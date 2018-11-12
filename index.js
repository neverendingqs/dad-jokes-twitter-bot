'use strict';

exports.http = (request, response) => {
  response.status(200).send(request.path);
};

exports.event = (event, callback) => {
  callback();
};
