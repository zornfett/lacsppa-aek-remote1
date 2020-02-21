window.showModalDialog = window.showModalDialog || function (url, arg, feature) {
    var opFeature = feature.split(";");
    var featuresArray = new Array()
    if (document.all) {
        for (var i = 0; i < opFeature.length - 1; i++) {
            var f = opFeature[i].split("=");
            featuresArray[f[0]] = f[1];
        }
    }
    else {

        for (var i = 0; i < opFeature.length - 1; i++) {
            var f = opFeature[i].split(":");
            featuresArray[f[0].toString().trim().toLowerCase()] = f[1].toString().trim();
        }
    }



    var h = "200px", w = "400px", l = "100px", t = "100px", r = "yes", c = "yes", s = "no";
    if (featuresArray["dialogheight"]) h = featuresArray["dialogheight"];
    if (featuresArray["dialogwidth"]) w = featuresArray["dialogwidth"];
    if (featuresArray["dialogleft"]) l = featuresArray["dialogleft"];
    if (featuresArray["dialogtop"]) t = featuresArray["dialogtop"];
    if (featuresArray["resizable"]) r = featuresArray["resizable"];
    if (featuresArray["center"]) c = featuresArray["center"];
    if (featuresArray["status"]) s = featuresArray["status"];
    var modelFeature = "height = " + h + ",width = " + w + ",left=" + l + ",top=" + t + ",model=yes,alwaysRaised=yes" + ",resizable= " + r + ",celter=" + c + ",status=" + s;

    var model = window.open(url, "", modelFeature, null);

    model.dialogArguments = arg;

}
