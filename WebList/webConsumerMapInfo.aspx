
<%@ Page Language="c#" Inherits="Virweb2.WebList.webConsumerMapInfo" Codebehind="webConsumerMapInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::Client Map Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css"> 
    <script src="https://apis.google.com/js/api.js"></script>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map_canvas {
        width: 880px; 
        height: 640px;
      } 
    </style>

    <script type="text/javascript">        
        var map;
        var oneaddress;
        var geocoder;
        var setcenter = 0;
        var counter = 0;
        var xhr;
        var locations = [];
        var markerinfo = [];

        // Multiple Markers
        var addresses = [
            'London Eye, London',
            'Palace of Westminster, London'];

        function initialize() {
            var myOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }

            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        }

        function setoneaddr(addr) {
            oneaddress = addr
        }

        function setMultiAddress(addr) {
            locations.push(addr);
        }

        function sleep(milliSeconds) {
            var startTime = new Date().getTime();
            while (new Date().getTime() < startTime + milliSeconds);
        }

        function showAddressMulti() {
            var bounds = new google.maps.LatLngBounds();
            var myOptions = {
                mapTypeId: 'roadmap'
            };

            geocoder = new google.maps.Geocoder();
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

            if (geocoder) {
                for (var x = 0; x < locations.length; x++) {
                //for (var x = 0; x < 10; x++) { 
                    geocoder.geocode({
                        'address': locations[x]
                    }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
                                sleep(200);
                                var marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map,
                                    title: String(locations[counter])
                                });

                                counter = counter + 1;

                                // Automatically center the map fitting all markers on the screen
                                bounds.extend(results[0].geometry.location);
                                map.fitBounds(bounds);
                            }
                        }
                    });
                    
                }
            }
        }

        function showAddress(address, uci, uci_name) {

            var myOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }

            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

            // how a json request is made
            // https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY 
            if (oneaddress != null) {
                var updated_addr = oneaddress.toString();
                updated_addr = updated_addr.replace(" ", "+");
                updated_addr = updated_addr.replace(/,/g, ",+"); 
                var addr_req = "https://maps.googleapis.com/maps/api/geocode/json?address=" + updated_addr + "&key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4";
                 
                xhr = new XMLHttpRequest();
                xhr.open('GET', addr_req, true);
                xhr.send();
                xhr.onreadystatechange = processRequest;
            }
        }

        // 7-31-2019 - F.Vang
        // This function was added to allow for an address to be called instead of using an user id to grab info from the db
        function showAtOnce(address) { 
            var myOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }

            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
         
            // how a json request is made
            // https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY 
            if (oneaddress != null) {
                var updated_addr = oneaddress.toString();
                updated_addr = updated_addr.replace(" ", "+");
                updated_addr = updated_addr.replace(/,/g, ",+");
                 
                var addr_req = "https://maps.googleapis.com/maps/api/geocode/json?address=" + updated_addr + "&key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4";
                   
                xhr = new XMLHttpRequest();
                xhr.open('GET', addr_req, true);
                xhr.send();
                xhr.onreadystatechange = processRequest;
            }
        }

        function processRequest(e) {
            if (xhr.readyState == 4) {
                // time to partay!!!
                var apidata = JSON.parse(xhr.responseText);
                var longaddress = apidata.results[0].formatted_address;
                var latval = apidata.results[0].geometry.location.lat;
                var longval = apidata.results[0].geometry.location.lng;

                map.setCenter(apidata.results[0].geometry.location);
                var marker = new google.maps.Marker({
                    zoom: 15,
                    map: map_canvas,
                    animation: google.maps.Animation.DROP,
                    title: longaddress,
                    position: apidata.results[0].geometry.location
                });

                marker.setMap(map);
            }
        }
    </script>   
    
    <!-- Put Google Key Here 
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAddress">
    </script> 
        -->
</head>
<body>
    <form id="form1" runat="server">      
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/print.ico" class="print" alt="print" title="print" onclick="window.print();" /> 
        <br /> 
        <center>     
        <div id="map_canvas" ></div>
        <br />
     </center>   
    </form>
     
</body>


</html>
