function AppCtrl($scope) {
    window.scope = $scope;
    $scope.airports = {
        "PDX": {
            "code": "PDX",
            "name": "Portland Interna Airport",
            "city":"Portland"
},
        "LAX": {
            "code": "LAX",
            "name": "LosAngeles Interna Airport",
            "city": "USA"
        },
    };
    $scope.sidebarURL = "Airport.html";
    $scope.currentAirport = null;
    $scope.setAirport = function(code) {
        $scope.currentAirport = $scope.airports[code];
    };
}