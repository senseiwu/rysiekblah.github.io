dependencies = [
    'ngRoute',
    'ngCookies',
    'ui.calendar',
    'ui.bootstrap',
    'ui.select',
    'ngSanitize'
    'mpApp.filters',
    'mpApp.directives',
    'mpApp.routeConfig',
    'mpApp.services',
    'mpApp.controllers',
]

app = angular.module('mpApp', dependencies)

angular.module('mpApp.routeConfig', ['ngRoute'])
    .config(['$routeProvider', ($routeProvider) ->
        console.log('########### otherwise: ' + $routeProvider.route);
        $routeProvider
            .when('/', {
                templateUrl: 'pages/venue.html'
            })
            .when('/register', {
                templateUrl: 'pages/createUser.html'
            })
            .when('/dashboard', {
                templateUrl: 'pages/dashboard.html'
            })
            .when('/event/:eventName', {
                templateUrl: 'pages/event.html'
            })
            .when('/newevent', {
                templateUrl: 'pages/venueProfile.html'
            })
            .when('/b2bwellcome', {
                templateUrl: 'pages/businessWellcome.html'
            })
            .when('/b2bcreate', {
                templateUrl: 'pages/createBusinessUser.html'
            })
            .otherwise({
              redirectTo: '/'
            })])
    .config(['$locationProvider', ($locationProvider) ->
        $locationProvider.html5Mode({
            enabled: true,
            requireBase: false
        })])


@controllersModule = angular.module('mpApp.controllers', [])
@servicesModule = angular.module('mpApp.services', [])
@directivesModule = angular.module('mpApp.directives', [])
@filtersModule = angular.module('mpApp.filters', [])
