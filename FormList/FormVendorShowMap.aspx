<%@ Page Language="C#" Inherits="Virweb2.FormList.FormVendorShowMap" Codebehind="FormVendorShowMap.aspx.cs" AutoEventWireup="True" %>

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
        var userinfo;
        var infoStr;
        var customerflag=1;

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

        function setUserInfo(usrinfo)
        {
            userinfo = usrinfo;
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

                            if (status != google.maps.GeocoderStatus.ZERO_RESULTS && customerflag == 1) {
                                sleep(200);
                                var image = 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
                                var marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map,
                                    zoom: 8,
                                    icon: image,
                                    title: userinfo
                                });

                                counter = counter + 1;
                                customerflag = 0;

                                // Automatically center the map fitting all markers on the screen
                                bounds.extend(results[0].geometry.location);
                                map.fitBounds(bounds);
                            }
                            else
                            {
                                sleep(200);
                                var marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map,
                                    zoom: 8,
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
        <br /> 
        <center>     
        <div id="map_canvas" ></div>
        <br />
     </center>   
    </form>
     
</body>


</html>
