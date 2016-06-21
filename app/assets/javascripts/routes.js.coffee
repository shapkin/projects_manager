angular.module('projectsManager').config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->

  # $locationProvider.html5Mode(true)

  $stateProvider.state 'home', { url: '/home', controller: 'HomeController', templateUrl: '_home.html' }
    .state 'projects', { url: '/projects', controller: 'ProjectsController', templateUrl: 'projects/_index.html' }
    .state 'new_project', { url: '/projects/new', controller: 'ProjectsController', templateUrl: 'projects/_new.html' }
    .state 'login', { url: '/login', templateUrl: 'auth/_login.html', controller: 'AuthController' }
    .state 'register', {
      url: '/register',
      templateUrl: 'auth/_register.html',
      controller: 'AuthController',
      onEnter: [ '$state', 'Auth', ($state, Auth) ->
        Auth.currentUser().then ->
          $state.go('projects')
      ]
    }

  $urlRouterProvider.otherwise('home')
]

angular.module('projectsManager').config (RestangularProvider) ->
  RestangularProvider.setRequestSuffix('.json')
