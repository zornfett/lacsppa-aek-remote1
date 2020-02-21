<%@ Page Language="C#" Inherits="Virweb2.FormList.FormVendorShowRoute" Codebehind="FormVendorShowRoute.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head runat="server">
    <base target="_self" /> 
    <title>Show Vendor's Driving Route</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">   
        var map;    
        var directionDisplay;          
        var directionsService = new google.maps.DirectionsService();
       
        function initialize() {   
           directionsDisplay = new google.maps.DirectionsRenderer();                
            var myOptions = {
               zoom: 8,   
               mapTypeId: google.maps.MapTypeId.ROADMAP
           }
           map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);          
           directionsDisplay.setMap(map);	
           directionsDisplay.setPanel(document.getElementById("directionsPanel"));   
           calcRoute();         
        }    
        function calcRoute()
        {
           var origin=document.getElementById("origin").value;
           var destination=document.getElementById("destination").value;
           var selectedMode = document.getElementById("mode").value;        
           var request = {
                 origin:origin, 
                 destination:destination,
                 travelMode: google.maps.DirectionsTravelMode[selectedMode]
               };
            directionsService.route(request, function(response, status) {
                  if (status == google.maps.DirectionsStatus.OK) {
                     directionsDisplay.setDirections(response);    
                  }   
                  else
                  {
                       alert(" not successful for the following reason: " + status);
                  }               
            });   
        } 
    </script>
</head>
<body onload="javascript:initialize();">
    <form id="form1" runat="server">
        <input type="hidden" name="origin" id="origin" value="" runat="server" />
        <input type="hidden" name="destination" id="destination" value="" runat="server" />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
        <tr valign="top">
            <td style="width:70%"><div id="map_canvas" style="float:left;width:100%; height:100%"></div></td>
            <td style="width:30%" valign="top">
               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
                   <tr><td valign="top"><b>&nbsp;&nbsp;Mode of Travel: </b>
                   <select id="mode" onchange="calcRoute();">
                         <option value="DRIVING"  selected >Driving</option>
                         <option value="WALKING">Walking</option>
                         <option value="BICYCLING">Bicycling</option>
                   </select>
                   </td></tr>
                   <tr><td><div id="directionsPanel" style="float:right;width:100%;height:100%"></div></td></tr>
               </table>
                
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
