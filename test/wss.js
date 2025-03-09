module.exports = {
  processMessage: function (message, userContext, events, done) {
    console.log("Mensaje recibido:", message);
    return done();
  }
};
