// Generated by CoffeeScript 1.11.1
(function() {
  var B2BUserCtrl;

  B2BUserCtrl = (function() {
    function B2BUserCtrl($cookieStore, $log, $location, UserService) {
      this.$cookieStore = $cookieStore;
      this.$log = $log;
      this.$location = $location;
      this.UserService = UserService;
    }

    return B2BUserCtrl;

  })();

  controllersModule.controller('B2BUserCtrl', ['$cookieStore', '$log', '$location', 'UserService', B2BUserCtrl]);

}).call(this);
