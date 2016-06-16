angular.module('projectsManager').controller 'ProjectsController', ($scope) ->
  $scope.projects = [
    {name: 'Google'},
    {name: 'Yahoo'},
    {name: 'Bing'}
  ]
