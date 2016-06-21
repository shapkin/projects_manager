angular.module('projectsManager').controller 'ProjectsController', ['$scope', '$state', 'Restangular', ($scope, $state, Restangular) ->
  projects = Restangular.all('projects')

  $scope.projects = projects.getList().$object

  $scope.createProject = (project) ->
    projects.post(project).then ->
      $state.go 'projects', {}, { reload: true }
]
