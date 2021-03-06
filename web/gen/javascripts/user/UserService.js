// Generated by CoffeeScript 1.11.1
(function() {
  var UserService;

  UserService = (function() {
    UserService.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    UserService.defaultConfig = {
      headers: UserService.headers
    };

    function UserService($log, $http, $q, $cookieStore) {
      this.$log = $log;
      this.$http = $http;
      this.$q = $q;
      this.$cookieStore = $cookieStore;
      this.$log.debug("constructing UserService");
      this.user = this.$cookieStore.get('userdata');
    }

    UserService.prototype.details = function(username) {
      var deffer;
      deffer = this.$q.defer();
      return this.$http.get('/usersdata/' + username).success((function(_this) {
        return function(data, status, headers) {
          return deffer.resolve(data);
        };
      })(this)).error((function(_this) {
        return function(data, status, headers) {
          return deffer.reject(data);
        };
      })(this));
    };

    UserService.prototype.suggestions = function(username) {
      var deffer;
      deffer = this.$q.defer();
      return this.$http.get('/suggestions/' + username).success((function(_this) {
        return function(data, status, headers) {
          return deffer.resolve(data);
        };
      })(this)).error((function(_this) {
        return function(data, status, headers) {
          return deffer.reject(data);
        };
      })(this));
    };

    UserService.prototype.signin = function(user) {
      var deffer;
      deffer = this.$q.defer();
      return this.$http.post('/signin', user).success((function(_this) {
        return function(data, status, headers) {
          return deffer.resolve(data);
        };
      })(this)).error((function(_this) {
        return function(data, status, headers) {
          return deffer.reject(data);
        };
      })(this));
    };

    UserService.prototype.update = function(username, user) {
      var deffer;
      deffer = this.$q.defer();
      return this.$http.put('/user/#{username}', user).success((function(_this) {
        return function(data, status, headers) {
          return deffer.resolve(data);
        };
      })(this)).error((function(_this) {
        return function(datamstatus, headers) {
          return deffer.reject(data);
        };
      })(this));
    };

    UserService.prototype.auth = function(value) {
      return this.user = value;
    };

    UserService.prototype.httpCall = function(url) {
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

    return UserService;

  })();

  servicesModule.service('UserService', ['$log', '$http', '$q', '$cookieStore', UserService]);

}).call(this);
