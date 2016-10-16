dependencies = [
    'ngRoute',
    'ngCookies',
    'ui.calendar',
    'ui.bootstrap',
    'mpApp.routeConfig',
    'mpApp.services',
    'mpApp.controllers',
]

app = angular.module('mpApp', dependencies)

angular.module('mpApp.routeConfig', ['ngRoute'])
    .config(['$routeProvider', ($routeProvider) ->
        $routeProvider
            .when('/', {
                templateUrl: 'pages/dashboard.html'
            })
            .when('/venue', {
                templateUrl: 'pages/venue.html'
            })
            .when('/company', {
                templateUrl: 'pages/company.html'
            })
            .when('/event', {
                templateUrl: 'pages/event.html'
            })
            .otherwise({
              redirectTo: '/'
            })])

@controllersModule = angular.module('mpApp.controllers', [])
@servicesModule = angular.module('mpApp.services', [])
