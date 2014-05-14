var sampleApp = angular.module('phonecatApp', ['ngRoute']);
sampleApp.config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
        when('/Login', {
            templateUrl: 'views/Login.html',
            controller: 'LoginController'
        }).
          when('/hello', {
              templateUrl: 'views/Hello.html',
              controller: 'HelloController'
          }).
        otherwise({
            redirectTo: '/Login'
        });
  }]);