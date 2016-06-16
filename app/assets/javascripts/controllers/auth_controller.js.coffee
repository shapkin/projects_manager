angular.module('projectsManager').controller 'AuthController', ['$scope', '$state', 'Auth', ($scope, $state, Auth) ->
  $scope.login = ->
    Auth.login($scope.user).then ->
      $state.go('home')
    , (response) ->
      $scope.error = response.data.error

  $scope.register = ->
    Auth.register($scope.user).then ->
      $state.go('home')
    , (response) ->
      $scope.error = response.data.errors
]
