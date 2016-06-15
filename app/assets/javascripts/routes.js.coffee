angular.module('projectsManager').config ($stateProvider, $stateParamsProvider, $urlRouterProvider, $locationProvider) ->

  $locationProvider.html5Mode(true)

  $urlRouterProvider.otherwise('/')

  # Home
  $stateProvider.state 'home',
    url: '/'
    controller: 'HomeController'
    templateUrl: '_home.html'

  # Projects
  $stateProvider.state 'projects',
    url: '/projects'
    controller: 'ProjectsController'
    templateUrl: 'projects/_index.html'
