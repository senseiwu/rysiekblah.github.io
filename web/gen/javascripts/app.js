// Generated by CoffeeScript 1.11.1
(function() {
  var app, dependencies;

  dependencies = ['ngRoute', 'ngCookies', 'ui.calendar', 'ui.bootstrap', 'mpApp.routeConfig', 'mpApp.services', 'mpApp.controllers'];

  app = angular.module('mpApp', dependencies);

  angular.module('mpApp.routeConfig', ['ngRoute']).config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/', {
        templateUrl: 'pages/dashboard.html'
      }).when('/venue', {
        templateUrl: 'pages/venue.html'
      }).when('/company', {
        templateUrl: 'pages/company.html'
      }).when('/event', {
        templateUrl: 'pages/event.html'
      }).when('/info', {
        templateUrl: 'pages/info.html'
      }).otherwise({
        redirectTo: '/'
      });
    }
  ]);

  this.controllersModule = angular.module('mpApp.controllers', []);

  this.servicesModule = angular.module('mpApp.services', []);

}).call(this);
