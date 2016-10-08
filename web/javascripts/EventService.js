// Generated by CoffeeScript 1.11.1
(function() {
  var EventService;

  EventService = (function() {
    EventService.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    EventService.defaultConfig = {
      headers: EventService.headers
    };

    function EventService($log, $http, $q) {
      this.$log = $log;
      this.$http = $http;
      this.$q = $q;
      this.$log.debug("constructing EventService");
    }

    EventService.prototype.httpCall = function(url) {
      var deffer;
      deffer = this.$q.defer();
      this.$http.get(url).success((function(_this) {
        return function(data, status, headers) {
          return deffer.resolve(data);
        };
      })(this)).error((function(_this) {
        return function(data, status, headers) {
          return deffer.reject(data);
        };
      })(this));
      return deffer.promise;
    };

    return EventService;

  })();

  servicesModule.service('EventService', ['$log', '$http', '$q', EventService]);

}).call(this);
