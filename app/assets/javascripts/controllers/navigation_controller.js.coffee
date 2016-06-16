angular.module('projectsManager').controller 'NavigationController', ['$scope', '$location', '$state', 'Auth', ($scope, $location, $state, Auth) ->
  $scope.signedIn = Auth.isAuthenticated
  $scope.logout = Auth.logout

  Auth.currentUser().then (user) ->
    $scope.user = user

  $scope.$on 'devise:new-registration', (e, user) ->
    $scope.user = user

  $scope.$on 'devise:login', (e, user) ->
    $scope.user = user

  $scope.$on 'devise:logout', (e, user) ->
    $scope.user = {}
]
