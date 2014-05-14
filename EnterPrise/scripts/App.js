
angular.module('enterPrise', ['ngRoute'])
.config(function ($routeProvider) {
    $routeProvider
        .when("/", { templateUrl: "/EnterPrise/Views/crew.html", controller: "AppCtrl" })
         .when("/new", { templateUrl: "/EnterPrise/Views/edit.html", controller: "NewCtrl" });
});

function NewCtrl($scope, $location) {
    $scope.person = { name: "", description: "" };
    $scope.save = function () {
        $scope.crew.push($scope.person);
        $location.path("/");
    };
}
function AppCtrl($scope) {
    window.scope = $scope;
    $scope.crew = [
        { name: "Picard", description: "Captain" },
        { name: "Pcicard", description: "Capdddtain" },
        { name: "Picacccrd", description: "Captaddddin" }
    ];
}