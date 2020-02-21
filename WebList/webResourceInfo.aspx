<%@ Page Language="c#" Inherits="Virweb2.WebList.webResourceInfo" Codebehind="webResourceInfo.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
     <base target="_self"></base>
	 <title>:::Resource Info:::...</title>
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
    
    	
	 <script type="text/JavaScript" src="../js/common.js"></script>	
     <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>   
     <script type="text/JavaScript" src="../js/common.js"></script>

<script language="javascript" type="text/javascript">
/*
       var sessionTimeoutWarning = "<%= System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()%>";
       var sessionTimeout = "<%= Session.Timeout %>";
       
       var sTimeout = (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning)) * 60 * 1000;
       setTimeout('SessionWarning()', sTimeout);

       function SessionWarning() {
         var message = "Your session will expire in another " + 
            parseInt(sessionTimeoutWarning) + 
            " mins! Please Save the data before the session expires";
         alert(message);
       }
*/
</script>
       
	 <script language="javascript">	
	 <!--
	     function doseltd(obj) {
	         /*if (isIE())
	         {            
	         for(var i=0;i<tr_info.childNodes.length;i++)
	         {
	         var e=tr_info.childNodes[i];		        	   
	         e.style.color="#000000";
	         e.style.cursor="hand";		        	        
	         }
	         obj.style.color="#FFFF00";
	         obj.style.cursor="auto";
	         }
	         else */
	         {
	             RE_BI.style.color = "";
	             //RE_BI.style.cursor="pointer";
	             RE_SI.style.color = "";
	             //RE_SI.style.cursor="pointer";
	             RE_PR.style.color = "";
	             //RE_PR.style.cursor="pointer";
	             RE_RP.style.color = "";
	             //RE_RP.style.cursor="pointer";
	             RE_CM.style.color = "";
	             //RE_CM.style.cursor="pointer";
	             RE_SF.style.color = "";
	             //RE_SF.style.cursor="pointer";
	             RE_AP.style.color = "";
	             //RE_AP.style.cursor="pointer";
	             RE_SIR.style.color = "";
	             //RE_SIR.style.cursor="pointer";

	             obj.style.color = "#990066";
	             //obj.style.cursor="auto";           
	         }
	         Resource_BI.style.display = "none";
	         Resource_SI.style.display = "none";
	         Resource_PR.style.display = "none";
	         Resource_RP.style.display = "none";
	         Resource_CM.style.display = "none";
	         Resource_SF.style.display = "none";
	         Resource_AP.style.display = "none";
	         Resource_SIR.style.display = "none";
	         switch (obj.id) {
	             case "RE_BI":
	                 Resource_BI.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "1";
	                 break;
	             case "RE_SI":
	                 Resource_SI.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "2";
	                 break;
	             case "RE_PR":
	                 Resource_PR.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "3";
	                 break;
	             case "RE_RP":
	                 Resource_RP.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "4";
	                 break;
	             case "RE_CM":
	                 Resource_CM.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "5";
	                 break;
	             case "RE_SF":
	                 Resource_SF.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "6";
	                 break;
	             case "RE_AP":
	                 Resource_AP.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "7";
	                 break;
	             case "RE_SIR":
	                 Resource_SIR.style.display = "";
	                 document.ResourceInfo.now_div_flag.value = "8";
	                 break;
	         }
	     }

	     function doseltdbyid(obj_id) {
	         /*if (isIE())
	         { 
	         for(var i=0;i<tr_info.childNodes.length;i++)
	         {
	         var e=tr_info.childNodes[i];
	         if((e.id!=obj_id))
	         {
	         e.style.color="#000000";
	         e.style.cursor="hand";
	         }
	         else
	         {
	         e.style.color="#FFFF00";
	         e.style.cursor="auto";
	         }
	         }
	         }
	         else 
	         */
	         {
	             RE_BI.style.color = "";
	             //RE_BI.style.cursor="pointer";
	             RE_SI.style.color = "";
	             //RE_SI.style.cursor="pointer";
	             RE_PR.style.color = "";
	             //RE_PR.style.cursor="pointer";
	             RE_RP.style.color = "";
	             //RE_RP.style.cursor="pointer";
	             RE_CM.style.color = "";
	             //RE_CM.style.cursor="pointer";
	             RE_SF.style.color = "";
	             //RE_SF.style.cursor="pointer"; 
	             RE_AP.style.color = "";
	             //RE_AP.style.cursor="pointer";   
	             RE_SIR.style.color = "";
	             //RE_SIR.style.cursor="pointer";                   
	         }
	         Resource_BI.style.display = "none";
	         Resource_SI.style.display = "none";
	         Resource_PR.style.display = "none";
	         Resource_RP.style.display = "none";
	         Resource_CM.style.display = "none";
	         Resource_SF.style.display = "none";
	         Resource_AP.style.display = "none";
	         Resource_SIR.style.display = "none";

	         switch (obj_id) {
	             case "RE_BI":
	                 Resource_BI.style.display = "";
	                 RE_BI.style.color = "#990066";
	                 //RE_BI.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "1";
	                 break;
	             case "RE_SI":
	                 Resource_SI.style.display = "";
	                 RE_SI.style.color = "#990066";
	                 //RE_SI.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "2";
	                 break;
	             case "RE_PR":
	                 Resource_PR.style.display = "";
	                 RE_PR.style.color = "#990066";
	                 //RE_PR.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "3";
	                 break;
	             case "RE_RP":
	                 Resource_RP.style.display = "";
	                 RE_RP.style.color = "#990066";
	                 //RE_RP.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "4";
	                 break;
	             case "RE_CM":
	                 Resource_CM.style.display = "";
	                 RE_CM.style.color = "#990066";
	                 //RE_CM.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "5";
	                 break;
	             case "RE_SF":
	                 Resource_SF.style.display = "";
	                 RE_SF.style.color = "#990066";
	                 //RE_SF.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "6";
	                 break;
	             case "RE_AP":
	                 Resource_AP.style.display = "";
	                 RE_AP.style.color = "#990066";
	                 //RE_AP.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "7";
	                 break;
	             case "RE_SIR":
	                 Resource_SIR.style.display = "";
	                 RE_SIR.style.color = "#990066";
	                 //RE_SIR.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "8";
	                 break;
	         }
	     }

	     function doseltdbyflag(flag) {
	         /*
	         if (isIE())
	         {  
	         for(var i=0;i<tr_info.childNodes.length;i++)
	         {
	         var e=tr_info.childNodes[i];

	         e.style.color="#000000";
	         e.style.cursor="hand";
	         }
	         }
	         else
	         */
	         {
	             RE_BI.style.color = "";
	             //RE_BI.style.cursor="pointer";
	             RE_SI.style.color = "";
	             //RE_SI.style.cursor="pointer";
	             RE_PR.style.color = "";
	             //RE_PR.style.cursor="pointer";
	             RE_RP.style.color = "";
	             //RE_RP.style.cursor="pointer";
	             RE_CM.style.color = "";
	             //RE_CM.style.cursor="pointer";
	             RE_SF.style.color = "";
	             //RE_SF.style.cursor="pointer";
	             RE_AP.style.color = "";
	             //RE_AP.style.cursor="pointer"; 
	             RE_SIR.style.color = "";
	             //RE_SIR.style.cursor="pointer";        
	         }
	         Resource_BI.style.display = "none";
	         Resource_SI.style.display = "none";
	         Resource_PR.style.display = "none";
	         Resource_RP.style.display = "none";
	         Resource_CM.style.display = "none";
	         Resource_SF.style.display = "none";
	         Resource_AP.style.display = "none";
	         Resource_SIR.style.display = "none";

	         switch (flag) {
	             case 1:
	                 Resource_BI.style.display = "";
	                 RE_BI.style.color = "#990066";
	                 //RE_BI.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "1";
	                 break;
	             case 2:
	                 Resource_SI.style.display = "";
	                 RE_SI.style.color = "#990066";
	                 //RE_SI.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "2";
	                 break;
	             case 3:
	                 Resource_PR.style.display = "";
	                 RE_PR.style.color = "#990066";
	                 //RE_PR.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "3";
	                 break;
	             case 4:
	                 Resource_RP.style.display = "";
	                 RE_RP.style.color = "#990066";
	                 //RE_RP.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "4";
	                 break;
	             case 5:
	                 Resource_CM.style.display = "";
	                 RE_CM.style.color = "#990066";
	                 //RE_CM.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "5";
	                 break;
	             case 6:
	                 Resource_SF.style.display = "";
	                 RE_SF.style.color = "#990066";
	                 //RE_SF.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "6";
	                 break;
	             case 7:
	                 Resource_AP.style.display = "";
	                 RE_AP.style.color = "#990066";
	                 //RE_AP.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "7";
	                 break;
	             case 8:
	                 Resource_SIR.style.display = "";
	                 RE_SIR.style.color = "#990066";
	                 //RE_SIR.style.cursor="auto";
	                 document.ResourceInfo.now_div_flag.value = "8";
	                 break;
	         }
	     }

	  function display_consumerinfo(key) {
	      //var url = "../WebList/webConsumerInfoSCLARC.aspx?c_key=" + key + "&tabflag=1&popupw=1";
	      var url = "../WebList/webConsumerInfo.aspx?c_key=" + key + "&tabflag=1&popupw=1";
	      popupDialogWide(url);
	  }

	  function print_click() {
	      var flag = document.ResourceInfo.now_div_flag.value.toString();
	      var r_resource_id = document.ResourceInfo.r_resource_id.value.toString();
	      var UserAct = document.ResourceInfo.UserAct.value.toString();
	      var url = "PrintResourceInfo.aspx?r_resource_id=" + r_resource_id  + "&flag=" + flag + "&UserAct=" + UserAct;
	      winhref(url, 'PrintResourceInfo');
	  }

	  function printall_click() {
	      var r_resource_id = document.ResourceInfo.r_resource_id.value.toString();
	      var UserAct = document.ResourceInfo.UserAct.value.toString();
	      var url = "PrintResourceInfo.aspx?r_resource_id=" + r_resource_id + "&flag=0" + "&UserAct=" + UserAct;
	      winhref(url, 'PrintResourceInfo');
	  }

	  function save_click() {
	      return true;
	  }

	  function back_click() {
	      document.location.replace('webResourceList.aspx');
	  }

	  function FetchResServiceTab() {
	      var selpos = document.ResourceInfo.ServiceList.selectedIndex;
	      // alert(selpos);
	      $.ajax({
	          type: "POST",
	          data: "",
	          url: 'webResourceInfo.aspx?isAjax=true&index='+selpos,
	          dataType: "json",
	          success: function (data) {
	              if (!data.Success) { alert(data.ErrMsg); return; }

	              document.ResourceInfo.psrvnd.value=data.psrvnd;
	              document.ResourceInfo.pvsrcd.value=data.pvsrcd;
	              document.ResourceInfo.pvssub.value=data.pvssub;
	              document.ResourceInfo.tablesNameRS.value=data.tablesNameRS;
	              document.ResourceInfo.psrdes.value=data.psrdes;
	              document.ResourceInfo.psrcom.value=data.psrcom;
	              document.ResourceInfo.prsutp.value=data.prsutp;
	              document.ResourceInfo.psrbeg.value=data.psrbeg;
	              document.ResourceInfo.psrcur.value=data.psrcur;
	              document.ResourceInfo.psrend.value=data.psrend;
	              //alert(data.psrcur);
	          },
	          error: function (XMLHttpRequest, textStatus, thrownError) {
	              alert('failure: ' + data.responseText + ' == ' + textStatus);
	          }
	      });
	  }

	  function print_map() {
	      var address = "";
	      if (document.getElementById("r_address_line_2").value == "")
	          address = $("#streetText1 input").attr('value') + ', '
                   + $("#cityText input").attr('value') + ', ' + $("#stateText input").attr('value') + ', ' + $("#zipCodeText input").attr('value');
	      else
	          address = $("#streetText1 input").attr('value') + ' ' + $("#streetText2 input").attr('value') + ', '
                   + $("#cityText input").attr('value') + ', ' + $("#stateText input").attr('value') + ', ' + $("#zipCodeText input").attr('value');
          winhref("http://maps.google.com/?q=" + address);
	  }
	//-->
	</script> 

    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        var map;
        var oneaddress;
        var geocoder;
        var setcenter = 0;
        var counter = 0;
        var xhr;
        var locations = [];
        var markerinfo = [];

        function initialize() {
            var myOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }

            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        }

        function display_consumermap() { 
            oneaddress = $("#streetText1 input").attr('value') + ',+' + $("#cityText input").attr('value') + ',+' + $("#stateText input").attr('value') + ',+' + $("#zipCodeText input").attr('value');
            
            // massage "oneaddress" then send it for a one shot map display from google at webConsumerMapInfo
            if (oneaddress != null) {
                var updated_addr = oneaddress.toString();
            }
            popupDialogWithWindow("webConsumerMapInfo.aspx?display_at_once=" + updated_addr.toString());
         
        }

        function display_consumermap_s() { 
            oneaddress = $("#streetText1_s input").attr('value') + ',+' + $("#cityText input").attr('value') + ',+' + $("#stateText input").attr('value') + ',+' + $("#zipCodeText input").attr('value');
            
            // massage "oneaddress" then send it for a one shot map display from google at webConsumerMapInfo
            if (oneaddress != null) {
                var updated_addr = oneaddress.toString();
            }
            popupDialogWithWindow("webConsumerMapInfo.aspx?display_at_once=" + updated_addr.toString());
         
        }


        function ShowAddress() { 
            var myOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }

            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            oneaddress = $("#streetText1_s input").attr('value') + ',+' + $("#cityText input").attr('value') + ',+' + $("#stateText input").attr('value') + ',+' + $("#zipCodeText input").attr('value');

            // how a json request is made
            // https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY 
            if (oneaddress != null) {
                var updated_addr = oneaddress.toString();
                updated_addr = updated_addr.replace(" ", "+");
                 
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
<body scroll="auto" runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
	<form id="ResourceInfo" method="post" runat="server">
	<input id="NoConfirm" type=hidden value="0" />
    <input type="hidden" name="r_resource_id" id="r_resource_id" value="" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />

    <div align="left" style="WIDTH:100%; ">
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr valign="middle" style="height:30px; background-color: #EAF4FF">
        <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save"
                OnClientClick="return save_click();" OnClick="btnEdit_Click" >
            </asp:ImageButton>
            <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save"
                OnClientClick="return save_click();" OnClick="btnAdd_Click" >
            </asp:ImageButton>
            &nbsp;       
            <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                src="../img/print.ico" title="Print"
                onclick="javascript:print_click();return false;" />             
            &nbsp;
            <input type="image" id="btnPrintAll" runat="server" alt="Print All" style="width: 25px;height:25px"  
                src="../img/printall.ico" title="Print All"
                onclick="javascript:printall_click();return false;" />
            &nbsp;
            <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                src="../img/back.ico" title="Back"
                onclick="javascript:back_click();return false;" />        
        </td>
        <td align="left" width="60%">
            <asp:Label ID="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">Resource Info</asp:Label>
        </td>
        <td align="left" width="15%">
            <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                src="../img/supportdesk.ico" title="Support"
                onclick="javascript:window.top.outsidelinks(1);return false;" />             
            &nbsp;

            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                src="../img/help.ico" title="Help"
                onclick="javascript:window.top.outsidelinks(2);return false;" />             
            &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                src="../img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
            &nbsp;
        </td>
      </tr>
      <tr style="height:2px">
        <td colspan="3" style="background-color:#137AC5"></td> <!-- #AAFFC4-->
      </tr>
    </table>  
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr class="tab_bar">
        <td>
            <table id="TABLE_Label" cellspacing="0" cellpadding="0" runat="server">
                <tr id="tr_info">
					<td id="RE_BI" style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Basic Info</u></b>
					</td>
					<td id="RE_SI" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Site Info</u></b>
					</td>
					<td id="RE_PR" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Profile</u></b>
					</td>
					<td id="RE_RP" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Reports/Status</u></b>
					</td>
					<td id="RE_CM" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Comments</u></b>
					</td>
					<td id="RE_SF" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Service Info</u></b>
					</td>
                    <td id="RE_AP" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Auth POS</u></b>
					</td>
                    <td id="RE_SIR" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>SIR</u></b>
					</td>
				</tr>
			</table>
		</td>
      </tr>
    </table>  
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
    <table class="table_maindiv">
        <tr style="height:2px">
            <td></td>
        </tr>
        <tr>
            <td valign="top" align="center" width="100%" height="100%">
			    <div id="Resource_BI">
					<table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_vendor_number" runat="server" Text="Vendor Number:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 325px">
								<asp:textbox id="r_vendor_number" runat="server" CssClass="inface" MaxLength=12></asp:textbox>
							</td>
							<td style="WIDTH: 135px" class="td_label"><b><asp:Label ID="l_r_resource_name" runat="server" Text="Vendor Name:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" colspan="4" style="width: 300px">
							    <asp:textbox id="r_resource_name" runat="server" CssClass="inface" MaxLength=40></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td> 
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_service_code" runat="server" Text="Service Code:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" style="width: 505px">
							    <asp:dropdownlist id="r_service_code" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							         DataValueField="tb_entry_name" DataTextField="fullentry" >
		                        </asp:dropdownlist>
							</td>
							<td style="width: 5px" colspan="4"></td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_sub_code" runat="server" Text="Sub Code:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3"  style="width: 505px">
							    <asp:dropdownlist id="r_sub_code" runat="server" CssClass="infaceDrop" OnClick="DataChanged()" 
							          DataValueField="tb_entry_name" DataTextField="fullentry" >
		                        </asp:dropdownlist>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_status" runat="server" Text="Status:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 150px">
							    <asp:dropdownlist id="r_status" runat="server" CssClass="infaceDrop" OnClick="DataChanged()" 
							           DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_administrator" runat="server" Text="Administrator:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
							    <asp:textbox id="r_administrator" runat="server" CssClass="inface" MaxLength=30></asp:textbox>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_phone_1" runat="server" Text="Phone:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_phone_1" runat="server" CssClass="inface" MaxLength="12"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_address_line_1" runat="server" Text="A2ddress Line 1:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
                              <table class="table_inside">
                              <tr class="tr_common">
                              <td width="400">
                                <span style="float:left;" id="streetText1">
							    <asp:textbox id="r_address_line_1" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
                                </span>
                              </td>
                              <td width="105">
                                <span style="float:left;" id="prmap">
                                <input type="image" id="Image10" runat="server" alt="Print" style="width: 25px;height:25px"  
                                     src="../img/print.ico" title="Print"
                                      onclick="javascript:print_map();return false;" />&nbsp;&nbsp;&nbsp;
                                </span>  
                                <span style="float:left;padding-right:5px;padding-bottom:1px;" id="mapHref">
								<div id="map_canvas" style="width: 500px; height: 300px;position: absolute;display:none;margin-top:25px;" ></div>
								<a href="#" onclick="display_consumermap(); return false;" title="Map">
								<img src="../img/map.gif" border="0" /></a>
								</span>
                              </td>
                              </tr>
                              </table>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_phone_2" runat="server" Text="Admin/Emerg:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_phone_2" runat="server" CssClass="inface" MaxLength="12"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_address_line_2" runat="server" Text="Address Line 2:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
                                <span id="streetText2">
                                <asp:TextBox ID="r_address_line_2" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                                </span>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_cell_pager" runat="server" Text="Cell/Pager:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_cell_pager" runat="server" CssClass="inface" MaxLength="12"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_address_city" runat="server" Text="City and State:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
                                <span id="cityText">
							    <asp:textbox id="r_address_city" runat="server" CssClass="inface" MaxLength="25" Width="300"></asp:textbox>
                                </span>
                                <span id="stateText">
							    <asp:textbox id="r_address_state" runat="server" CssClass="inface" MaxLength="2" Width="50"></asp:textbox>
                                </span>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_fax" runat="server" Text="Fax:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_fax" runat="server" CssClass="inface" MaxLength="12"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_address_zip" runat="server" Text="Zip/Mail Codes:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
                                <span id="zipCodeText">
							    <asp:textbox id="r_address_zip" runat="server" CssClass="inface" MaxLength="5" Width="80"></asp:textbox>
                                </span>
                                &nbsp;&nbsp;&nbsp;
							    <asp:dropdownlist id="r_mail_code" runat="server" CssClass="infaceDrop" width="250px" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_email" runat="server" Text="Email:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_email" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_tax_id_number" runat="server" Text="Tax ID Number:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
							    <asp:textbox id="r_tax_id_number" runat="server" CssClass="inface" MaxLength="18"></asp:textbox>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px"  class="td_label"><b><asp:Label ID="l_r_ratio" runat="server" Text="Ratio:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_ratio" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_tax_name" runat="server" Text="Tax Name:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
							    <asp:textbox id="r_tax_name" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_level" runat="server" Text="Level:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_level" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_rate" runat="server" Text="Rate:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" class="td_unline" style="width: 505px">
							    <asp:textbox id="r_rate" runat="server" CssClass="inface" MaxLength="9"></asp:textbox>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_unit" runat="server" Text="Unit:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <asp:textbox id="r_unit" runat="server" CssClass="inface" MaxLength="6"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_last_mod_by" runat="server" Text="Last Modified By:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="3" style="width: 505px">
								<asp:dropdownlist id="r_last_mod_by" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="employeeID" DataTextField="employeeName">
		                        </asp:dropdownlist>
							</td>
							<td width="10"></td>
							<td style="WIDTH: 120px" class="td_label"><b><asp:Label ID="l_r_last_mod_date" runat="server" Text="Last Modified Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 150px">
							    <%--<asp:textbox id="r_last_mod_date" runat="server" CssClass="inface"></asp:textbox>--%>
                                <asp:TextBox ID="r_last_mod_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
							</td>
						</tr>
					</table>
				</div>
				<div id="Resource_SI" style="DISPLAY: none">
		            <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_site_name" runat="server" Text="Site Name"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:textbox id="r_site_name" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_provider_relations" runat="server" Text="See Provider Relations"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_label" style="width: 300px">
                                <asp:RadioButton  Text="" ID="r_provider_relations_yes" GroupName="r_provider_relations" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton  Text=""  ID="r_provider_relations_no" GroupName="r_provider_relations" runat="server" /><b>No</b>
                            </td>
                            <td colspan="6"></td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_site_address_line_1" runat="server" Text="Address Line 1"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
                                <span style="float:left;" id="streetText1_s">
							    <asp:textbox id="r_site_address_line_1" runat="server" CssClass="inface" MaxLength="40" Width="250px"></asp:textbox>
                                </span>
                                &nbsp;&nbsp;
                                <span style="float:left;padding-right:5px;padding-bottom:1px;" id="mapHref">
								<div id="map_canvas_s" style="width: 500px; height: 300px;position: absolute;display:none;margin-top:25px;" ></div>
								<a href="#" onclick="display_consumermap_s(); return false;" title="Map">
								<img src="../img/map.gif" border="0" /></a>
								</span>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_qa_monitor" runat="server" Text="QA Monitor"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" style="width: 300px">
                                <asp:dropdownlist id="r_qa_monitor" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="employeeID" DataTextField="employeeName" >
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_site_address_line_2" runat="server" Text="Address Line 2:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
                                <span id="streetText2_s">
								<asp:textbox id="r_site_address_line_2" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
                                </span>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_staff_liaison" runat="server" Text="Staff Liaison:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" style="width: 300px">
                                <asp:dropdownlist id="r_staff_liaison" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="employeeID" DataTextField="employeeName">
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_site_address_city" runat="server" Text="City and State:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
                                <span id="cityText_s">
								<asp:textbox id="r_site_address_city" runat="server" CssClass="inface" MaxLength="25" Width="150"></asp:textbox>
                                </span>
                                &nbsp;&nbsp;&nbsp;
                                <span id="stateText_s">
								<asp:textbox id="r_site_address_state" runat="server" CssClass="inface" MaxLength="2" Width="80"></asp:textbox>
                                </span>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_site_address_zip" runat="server" Text="Zip & Mail Codes:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" class="td_unline" style="width: 300px">
                                <span id="zipCodeText_s">
                                <asp:textbox id="r_site_address_zip" runat="server" CssClass="inface" MaxLength="5" Width="80"></asp:textbox>
                                </span>
                                &nbsp;&nbsp;&nbsp;
                                <asp:textbox id="r_site_mail_code" runat="server" CssClass="inface" MaxLength="1" Width="150"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_out_of_county_rc" runat="server" Text="Out of County Regional Center:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:textbox id="r_out_of_county_rc" runat="server" CssClass="inface" MaxLength="255"></asp:textbox>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_site_phone_1" runat="server" Text="Phone Number:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" class="td_unline" style="width: 300px">
                                <asp:textbox id="r_site_phone_1" runat="server" CssClass="inface" MaxLength="12"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_county" runat="server" Text="Physical Country:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:textbox id="r_county" runat="server" CssClass="inface" MaxLength="2"></asp:textbox>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_regional_center" runat="server" Text="Regional Center:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" class="td_unline" style="width: 300px">
                                <asp:textbox id="r_regional_center" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_language_1" runat="server" Text="Primary Language:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" style="width: 300px">
								<asp:dropdownlist id="r_language_1" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_language_2" runat="server" Text="Secondary Language:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7"  style="width: 300px">
                                <asp:dropdownlist id="r_language_2" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_license_number" runat="server" Text="License Number"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:textbox id="r_license_number" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_category_budget" runat="server" Text="Vacancies"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 70px">
                                <asp:textbox id="r_category_budget" runat="server" CssClass="inface"></asp:textbox>
                            </td>
                            <td style="width: 5px"></td>
							<td style="WIDTH: 70px" class="td_label"><b><asp:Label ID="l_r_capacity" runat="server" Text="Capacity"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td class="td_unline" style="width: 70px">
                                <asp:textbox id="r_capacity" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
                            <td colspan=2 width="auto"></td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_licensee" runat="server" Text="Licensee"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:textbox id="r_licensee" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_age_range" runat="server" Text="Age Range"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 70px">
                                <asp:textbox id="r_age_range" runat="server" CssClass="inface" MaxLength="6"></asp:textbox>
                            </td>
                            <td style="width: 5px"></td>
                            <td colspan=3 style="WIDTH: 145px" class="td_label">
                                <asp:CheckBox ID="r_coffelt_only" runat="server" Text="" /><b>Coffelt Only</b>
							</td>
                            <td colspan="1" width="auto"></td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_license_type" runat="server" Text="License Type"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:dropdownlist id="r_license_type" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
							</td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_gender_pref" runat="server" Text="Gender Preference"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" class="td_unline" style="width: 300px">
                                <asp:dropdownlist id="r_gender_pref" runat="server" CssClass="infaceDrop" OnClick="DataChanged()" Width="150px"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_license_exp_date" runat="server" Text="License Exp"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
							    <asp:textbox id="r_license_exp_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox> 
                            </td>
							<td style="WIDTH: 160px" class="td_label"><b><asp:Label ID="l_r_amb_status" runat="server" Text="Ambulatory Status"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" class="td_unline" style="width: 300px">
                                <asp:dropdownlist id="r_amb_status" runat="server" CssClass="infaceDrop" OnClick="DataChanged()" Width="150px"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_insurance_name" runat="server" Text="Insurance Name"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px">
								<asp:textbox id="r_insurance_name" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
							</td>
							<td colspan="2" style="WIDTH: 165px" class="td_label"><b>&nbsp;</b>
							</td>
							<td style="WIDTH: 70px" class="td_label"><b><asp:Label ID="l_r_ambulatory" runat="server" Text="Amb"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 70px">
                                <asp:textbox id="r_ambulatory" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 70px" class="td_label"><b><asp:Label ID="l_r_nonambulatory" runat="server" Text="NoAmb"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td class="td_unline"  style="width: 70px">
                                <asp:textbox id="r_nonambulatory" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_insurance_exp_date" runat="server" Text="Insurance Exp"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="4" class="td_unline" style="width: 300px" >
                                <asp:textbox id="r_insurance_exp_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>                                                    
							</td>
							<td colspan="2" style="WIDTH: 165px;" class="td_label"><b>Amb. Vacancies:</b>
							</td>
							<td style="WIDTH: 70px; " class="td_label"><b><asp:Label ID="l_r_amb_m" runat="server" Text="Male:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 70px">
                                <asp:textbox id="r_amb_m" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 70px;" class="td_label"><b><asp:Label ID="l_r_amb_f" runat="server" Text="Female:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td class="td_unline"  style="width: 70px; ">
                                <asp:textbox id="r_amb_f" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="15" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" class="td_label"><b><asp:Label ID="l_r_medi_cal" runat="server" Text="Medi-Cal:"></asp:Label></b>
							</td>
							<td style=" width: 5px;"></td>
							<td class="td_unline" style="width: 75px;">
                                <asp:textbox id="r_medi_cal" runat="server" CssClass="inface" MaxLength="1"></asp:textbox>
                            </td>
                            <td style="WIDTH: 150px; " class="td_label"><b><asp:Label ID="l_r_medi_cal_claim_cert" runat="server" Text="MW Billable Service:"></asp:Label></b>
							</td> 
							<td style=" width: 5px;"></td>
							<td class="td_unline" style="width: 70px;">   
                                 <asp:textbox id="r_medi_cal_claim_cert" runat="server" CssClass="inface" MaxLength="1"></asp:textbox>
							</td>
							<td colspan="2" style="WIDTH: 165px;" class="td_label"><b>Nonamb. Vacancies:</b>
							</td>
							<td style="WIDTH: 70px;" class="td_label"><b><asp:Label ID="l_r_nonamb_m" runat="server" Text="Male:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 70px;">
                                <asp:textbox id="r_nonamb_m" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 70px;" class="td_label"><b><asp:Label ID="l_r_nonamb_f" runat="server" Text="Female:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td class="td_unline" style="width: 70px;">
                                <asp:textbox id="r_nonamb_f" runat="server" CssClass="inface" MaxLength="3"></asp:textbox>
                            </td>
						</tr>
					</table>
				</div>
				<div id="Resource_PR" style="DISPLAY: none">
					<table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
				        <tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_client_type" runat="server" Text="Client Type"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td colspan="7" class="td_unline" style="width: 715px">
								<asp:textbox id="r_client_type" runat="server" CssClass="inface" MaxLength="125"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"  class="td_label"><b><asp:Label ID="l_r_profile_mr" runat="server" Text="Retardation"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_mr" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"  class="td_label"><b><asp:Label ID="l_r_profile_dual_dx" runat="server" Text="Dual Dx"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td  style="width: 75px">
                                <asp:dropdownlist id="r_profile_dual_dx" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px" class="td_label"><b>Medical Issues</b>
							</td>
                            <td colspan="2" style="WIDTH: 80px" ></td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_profile_mr_profound" runat="server" Text="Profound"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_mr_profound" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td colspan="3" style="WIDTH: 320px"><b>&nbsp;</b>
							</td>
                            <td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_profile_hearing" runat="server" Text="Hearing Impaired"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_hearing" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_profile_mr_severe" runat="server" Text="Severe"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_mr_severe" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"  class="td_label"><b><asp:Label ID="l_r_profile_behaviors" runat="server" Text="Behaviors"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_behaviors" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_profile_bates" runat="server" Text="Bates Bill"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_bates" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_profile_mr_moderate" runat="server" Text="Moderate"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_mr_moderate" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_severe" runat="server" Text="Severe Behaviors"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_severe" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_diabetes" runat="server" Text="Diabetes"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_diabetes" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_mr_mild" runat="server" Text="Mild"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_mr_mild" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_noncomp" runat="server" Text="Non-Compliance"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_noncomp" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_gtube" runat="server" Text="G-Tube"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_gtube" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_mr_border" runat="server" Text="Borderline"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_mr_border" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_tantrum" runat="server" Text="Tantrums"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_tantrum" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_nurse" runat="server" Text="Nurse on Staff"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_nurse" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td colspan="3" style="WIDTH: 320px"><b>&nbsp;</b>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_verb_aggr" runat="server" Text="Verbal Aggression"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_verb_aggr" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_other" runat="server" Text="Other"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_other" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_autism" runat="server" Text="Autism"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_autism" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_phys_aggr" runat="server" Text="Physical Aggression"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_phys_aggr" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td colspan="3" class="td_unline" style="WIDTH: 320px" width="320" height="25">
                                <asp:textbox id="r_profile_other_desc" runat="server" CssClass="inface" MaxLength="125"></asp:Textbox>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_cp" runat="server" Text="C.P."></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_cp" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_prop_destr" runat="server" Text="Property Destruction"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_prop_destr" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_csd" runat="server" Text="Contact CSD (Issue but not on DNR)"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_csd" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td colspan="3" style="WIDTH: 320px"><b>&nbsp;</b>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_biting" runat="server" Text="Biting"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_biting" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_grants" runat="server" Text="Grants/Special Focus"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_grants" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_seiz" runat="server" Text="Seizure Dx."></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_seiz" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_self_abuse" runat="server" Text="Self Abuse"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_self_abuse" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td colspan="3" ><b>&nbsp;</b>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_seiz_cont" runat="server" Text="Controlled"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_seiz_cont" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_elope" runat="server" Text="Elopement"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_elope" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td colspan="3" ><b>&nbsp;</b>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_seiz_uncont" runat="server" Text="Uncontrolled"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_seiz_uncont" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_sex" runat="server" Text="Sexually Acts Out"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_sex" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td colspan="3" ><b>&nbsp;</b>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
						    <td colspan="3" ><b>&nbsp;</b>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_pica" runat="server" Text="PICA"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_pica" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_smoking" runat="server" Text="Smoking"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_smoking" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_toilet" runat="server" Text="Toilet Trained"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_toilet" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_smear" runat="server" Text="Smearing"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_smear" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_smoke_out" runat="server" Text="Outdoors Only"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_smoke_out" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_incontinent" runat="server" Text="Incontinent"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_incontinent" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_theft" runat="server" Text="Theft"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px">
                                <asp:dropdownlist id="r_profile_theft" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
                            </td>
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_smoke_in" runat="server" Text="Indoors w/Restrictions"></asp:Label></b>
							</td>
                            <td style="width: 5px"></td>
                            <td style="WIDTH: 75px" >
                                <asp:dropdownlist id="r_profile_smoke_in" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
						</tr>
						<tr>
							<td style="height:5px" colspan="9"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_profile_bedwetting" runat="server" Text="Bedwetting"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 75px" >
								<asp:dropdownlist id="r_profile_bedwetting" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									<asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
								</asp:dropdownlist>
							</td>
							<td colspan="6" style="WIDTH: 640px"><b>&nbsp;</b>
							</td>
						</tr>
				    </table>
				</div> 
				<div id="Resource_RP" style="DISPLAY: none">
				    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
				    	<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_base_month" runat="server" Text="Base Month:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
                                <asp:DropDownList ID="r_base_month" runat="server" CssClass="infaceDrop" Width="150">
                                   <asp:ListItem Value=""></asp:ListItem>
                                   <asp:ListItem Value="1">January</asp:ListItem>
                                   <asp:ListItem Value="2">February</asp:ListItem>
                                   <asp:ListItem Value="3">March</asp:ListItem>
                                   <asp:ListItem Value="4">April</asp:ListItem>
                                   <asp:ListItem Value="5">May</asp:ListItem>
                                   <asp:ListItem Value="6">June</asp:ListItem>
                                   <asp:ListItem Value="7">July</asp:ListItem>
                                   <asp:ListItem Value="8">August</asp:ListItem>
                                   <asp:ListItem Value="9">September</asp:ListItem>
                                   <asp:ListItem Value="10">October</asp:ListItem>
                                   <asp:ListItem Value="11">November</asp:ListItem>
                                   <asp:ListItem Value="12">December</asp:ListItem>
                                </asp:DropDownList>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_rate_effective_date" runat="server" Text="Rate Effective:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_rate_effective_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_vendor_register_date" runat="server" Text="Vendored Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_vendor_register_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td colspan="3" style="WIDTH: 480px"><b>&nbsp;</b>
							</td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_qa_evaluation_date" runat="server" Text="QA Evaluation:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_qa_evaluation_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_unannounced_visit_1" runat="server" Text="Unannounced Visit 1:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_unannounced_visit_1"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_technical_assistance" runat="server" Text="Technical Assist:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_technical_assistance"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_unannounced_visit_2" runat="server" Text="Unannounced Visit 2:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_unannounced_visit_2"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_qa_eval_exit" runat="server" Text="QA Eval Exit:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_qa_eval_exit"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_monitor_date" runat="server" Text="Monitor Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_monitor_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_fiscal_evaluation_date" runat="server" Text="Fiscal Evaluation:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_fiscal_evaluation_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_ccl_hcl_lic_date" runat="server" Text="CCL/HCL Lic Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_ccl_hcl_lic_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_rate_review_date" runat="server" Text="Rate Review:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_rate_review_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_corrective_action_date" runat="server" Text="Corrective Action:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_corrective_action_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_ar_checklist_date" runat="server" Text="AR Checklist:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_ar_checklist_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_sanction_date_start" runat="server" Text="Sanction Date - Start:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_sanction_date_start"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_sir_date" runat="server" Text="SIR Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_sir_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_sanction_date_end" runat="server" Text="Sanction Date - End:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_sanction_date_end"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
                            <td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_ar_follow_up" runat="server" Text="AR Follow-up Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_ar_follow_up"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_dds_review_date" runat="server" Text="DDS Review:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_dds_review_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_ad_hoc" runat="server" Text="Ad Hoc:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:textbox id="r_ad_hoc"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
							</td>
							<td style="WIDTH: 240px"class="td_label"><b><asp:Label ID="l_r_delete_date" runat="server" Text="Delete Date:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
                                <asp:textbox id="r_delete_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
                            </td>
						</tr>
                        <tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_consultant_name" runat="server" Text="Consultant Name:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px">
								<asp:textbox id="r_consultant_name" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
							</td>
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_consultant_contact" runat="server" Text="Consultant Contact Information:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td class="td_unline" style="width: 235px">
								<asp:textbox id="r_consultant_contact" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
							</td>
						</tr>
                        <tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_consultant_type" runat="server" Text="Consultant Type:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 235px">
                                <asp:dropdownlist id="r_consultant_type" runat="server" CssClass="infaceDrop" OnClick="DataChanged()" DataValueField="tb_entry_name" DataTextField="tb_entry_text">
                                </asp:dropdownlist>
                            </td>
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_consultant_licensed_staff" runat="server" Text="Consultant Licensed Staff Name:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td class="td_unline" style="width: 235px">
								<asp:textbox id="r_consultant_licensed_staff" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
							</td>
						</tr>
                        <tr>
							<td colspan="6" height="5"></td>
						</tr>

               <div id="Profile_FDLRC" runat="server" visible=false>

						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_annual_visit_type" runat="server" Text="Next Annual Visit:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 235px">
                                <asp:DropDownList ID="r_annual_visit_type" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                   <asp:ListItem Value=""></asp:ListItem>
                                   <asp:ListItem Value="Unannounced Annual Review">Unannounced Annual Review</asp:ListItem>
                                   <asp:ListItem Value="Annual Adult Day Program">Annual Adult Day Program Review</asp:ListItem>
                                   <asp:ListItem Value="Independent Living Program">Independent Living Program Review</asp:ListItem>
                                   <asp:ListItem Value="Work Program Compliance">Work Program Compliance Review</asp:ListItem>
                                   <asp:ListItem Value="SLS Quality Assurance Evaluation">SLS Quality Assurance Evaluation Report</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td colspan=3>
                                <table class="table_inside">
		                           <tr class="tr_common">
                                      <td style="WIDTH: 80px"class="td_label">
                                         <b><asp:Label ID="l_r_annual_visit_month" runat="server" Text="Month:"></asp:Label></b>
							          </td>
							          <td style="width: 5px"></td>
							          <td class="td_unline" style="width: 150px" >
                                         <asp:DropDownList ID="r_annual_visit_month" runat="server" CssClass="infaceDrop" Width="120">
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value="1">January</asp:ListItem>
                                            <asp:ListItem Value="2">February</asp:ListItem>
                                            <asp:ListItem Value="3">March</asp:ListItem>
                                            <asp:ListItem Value="4">April</asp:ListItem>
                                            <asp:ListItem Value="5">May</asp:ListItem>
                                            <asp:ListItem Value="6">June</asp:ListItem>
                                            <asp:ListItem Value="7">July</asp:ListItem>
                                            <asp:ListItem Value="8">August</asp:ListItem>
                                            <asp:ListItem Value="9">September</asp:ListItem>
                                            <asp:ListItem Value="10">October</asp:ListItem>
                                            <asp:ListItem Value="11">November</asp:ListItem>
                                            <asp:ListItem Value="12">December</asp:ListItem>
                                         </asp:DropDownList>
							          </td>
                                      <td style="width: 20px"></td>
                                      <td style="WIDTH: 80px"class="td_label">
                                         <b><asp:Label ID="l_r_annual_visit_year" runat="server" Text="Year:"></asp:Label></b>
							          </td>
							          <td style="width: 5px"></td>
                                      <td class="td_unline" style="width: 100px">
                                         <asp:TextBox ID="r_annual_visit_year" runat="server" CssClass="inface" Width="80px"></asp:TextBox>
                                      </td>
                                      <td style="width:auto"></td>
                                   </tr>
                                </table>
                            </td>
						</tr>
                        <tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_unan_visit_type" runat="server" Text="Next Unannounced Visit:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td colspan=4>
                                <table class="table_inside">
		                           <tr class="tr_common">
                                      <td style="WIDTH: 80px"class="td_label">
                                         <b><asp:Label ID="l_r_unan_visit_month" runat="server" Text="Month:"></asp:Label></b>
							          </td>
							          <td style="width: 5px"></td>
							          <td class="td_unline" style="width: 150px" >
                                         <asp:DropDownList ID="r_unan_visit_month" runat="server" CssClass="infaceDrop" Width="120">
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value="1">January</asp:ListItem>
                                            <asp:ListItem Value="2">February</asp:ListItem>
                                            <asp:ListItem Value="3">March</asp:ListItem>
                                            <asp:ListItem Value="4">April</asp:ListItem>
                                            <asp:ListItem Value="5">May</asp:ListItem>
                                            <asp:ListItem Value="6">June</asp:ListItem>
                                            <asp:ListItem Value="7">July</asp:ListItem>
                                            <asp:ListItem Value="8">August</asp:ListItem>
                                            <asp:ListItem Value="9">September</asp:ListItem>
                                            <asp:ListItem Value="10">October</asp:ListItem>
                                            <asp:ListItem Value="11">November</asp:ListItem>
                                            <asp:ListItem Value="12">December</asp:ListItem>
                                         </asp:DropDownList>
							          </td>
                                      <td style="width: 20px"></td>
                                      <td style="WIDTH: 80px"class="td_label">
                                         <b><asp:Label ID="l_r_unan_visit_year" runat="server" Text="Year:"></asp:Label></b>
							          </td>
							          <td style="width: 5px"></td>
                                      <td class="td_unline" style="width: 100px">
                                         <asp:TextBox ID="r_unan_visit_year" runat="server" CssClass="inface" Width="80px"></asp:TextBox>
                                      </td>
                                      <td style="width:auto"></td>
                                   </tr>
                                </table>
                            </td>
						</tr>
                        <tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_cap_visit_type" runat="server" Text="Next CAP:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
                            <td colspan=4>
                                <table class="table_inside">
		                           <tr class="tr_common">
                                      <td style="WIDTH: 80px"class="td_label">
                                         <b><asp:Label ID="l_r_cap_visit_month" runat="server" Text="Month:"></asp:Label></b>
							          </td>
							          <td style="width: 5px"></td>
							          <td class="td_unline" style="width: 150px" >
                                         <asp:DropDownList ID="r_cap_visit_month" runat="server" CssClass="infaceDrop" Width="120">
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value="1">January</asp:ListItem>
                                            <asp:ListItem Value="2">February</asp:ListItem>
                                            <asp:ListItem Value="3">March</asp:ListItem>
                                            <asp:ListItem Value="4">April</asp:ListItem>
                                            <asp:ListItem Value="5">May</asp:ListItem>
                                            <asp:ListItem Value="6">June</asp:ListItem>
                                            <asp:ListItem Value="7">July</asp:ListItem>
                                            <asp:ListItem Value="8">August</asp:ListItem>
                                            <asp:ListItem Value="9">September</asp:ListItem>
                                            <asp:ListItem Value="10">October</asp:ListItem>
                                            <asp:ListItem Value="11">November</asp:ListItem>
                                            <asp:ListItem Value="12">December</asp:ListItem>
                                         </asp:DropDownList>
							          </td>
                                      <td style="width: 20px"></td>
                                      <td style="WIDTH: 80px"class="td_label">
                                         <b><asp:Label ID="l_r_cap_visit_year" runat="server" Text="Year:"></asp:Label></b>
							          </td>
							          <td style="width: 5px"></td>
                                      <td class="td_unline" style="width: 100px">
                                         <asp:TextBox ID="r_cap_visit_year" runat="server" CssClass="inface" Width="80px"></asp:TextBox>
                                      </td>
                                      <td style="width:auto"></td>
                                   </tr>
                                </table>
                            </td>
						</tr>
                        <tr>
							<td colspan="6" height="5"></td>
						</tr>
                        <tr class="tr_common">
							<td style="WIDTH: 240px" class="td_label"><b><asp:Label ID="l_r_kea_monitor" runat="server" Text="KEA QA Monitor:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td style="width: 235px">
                                <asp:dropdownlist id="r_kea_monitor" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="employeeID" DataTextField="employeeName" >
		                        </asp:dropdownlist>
                            </td>
                            <td colspan=3>
                            </td>
                        </tr>
                </div>

		            </table>
		        </div> 
		        <div id="Resource_CM" style="DISPLAY: none">
		            <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
		            	<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_f_1" runat="server" Text="Speciality 1:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:dropdownlist id="r_f_1" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text" >
		                        </asp:dropdownlist>
							</td>
							<td style="WIDTH: 290px" class="td_label"><b><asp:Label ID="l_r_language_1_SP" runat="server" Text="Language 1:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
							    <asp:dropdownlist id="r_language_1_SP" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text" >
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px" class="td_label"><b><asp:Label ID="l_r_f_2" runat="server" Text="Speciality 2:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline" style="width: 235px" >
								<asp:dropdownlist id="r_f_2" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							         DataValueField="tb_entry_name" DataTextField="tb_entry_text" >
		                        </asp:dropdownlist>
							</td>
							<td style="WIDTH: 290px" class="td_label"><b><asp:Label ID="l_r_language_2_SP" runat="server" Text="Language 2:"></asp:Label></b>
							</td>
							<td style="width: 5px"></td>
							<td class="td_unline"  style="width: 235px">
							    <asp:dropdownlist id="r_language_2_SP" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
							          DataValueField="tb_entry_name" DataTextField="tb_entry_text">
		                        </asp:dropdownlist>
                            </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr>
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_s1_1" runat="server" Text="VSN Comment:"></asp:Label></b>
							</td>
							<td style="width: 5px; height: 90px;"></td>
							<td colspan="4" style="height: 90px"  valign="top">
				                <asp:textbox id="r_s1_1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                 runat="server" Width="99%" height="90"></asp:textbox>
		                    </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_comment_1" runat="server" Text="Comments 1:"></asp:Label></b>
							</td>
							<td style="width: 5px;"></td>
							<td colspan="4">
                                <asp:textbox id="r_comment_1" runat="server" CssClass="inface" MaxLength=60></asp:textbox>
						    </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_comment_2" runat="server" Text="Comments 2:"></asp:Label></b>
							</td>
							<td style="width: 5px;"></td>
							<td colspan="4">
                                <asp:textbox id="r_comment_2" runat="server" CssClass="inface" MaxLength=60></asp:textbox>
						    </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_comment_3" runat="server" Text="Comments 3:"></asp:Label></b>
							</td>
							<td style="width: 5px;"></td>
							<td colspan="4">
                                <asp:textbox id="r_comment_3" runat="server" CssClass="inface" MaxLength=60></asp:textbox>
						    </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_comment_4" runat="server" Text="Comments 4:"></asp:Label></b>
							</td>
							<td style="width: 5px;"></td>
							<td colspan="4">
                                <asp:textbox id="r_comment_4" runat="server" CssClass="inface" MaxLength=60></asp:textbox>
						    </td>
						</tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_comment_5" runat="server" Text="Comments 5:"></asp:Label></b>
							</td>
							<td style="width: 5px;"></td>
							<td colspan="4">
                                <asp:textbox id="r_comment_5" runat="server" CssClass="inface" MaxLength=60></asp:textbox>
						    </td>
                        </tr>
						<tr>
							<td colspan="6" height="5"></td>
						</tr>
						<tr class="tr_common">
							<td style="WIDTH: 190px;" valign="top" class="td_label"><b><asp:Label ID="l_r_comment_6" runat="server" Text="Comments 6:"></asp:Label></b>
							</td>
							<td style="width: 5px;"></td>
							<td colspan="4">
                                <asp:textbox id="r_comment_6" runat="server" CssClass="inface" MaxLength=60></asp:textbox>
						    </td>
						</tr>
			        </table>
		        </div>
		        <div id="Resource_SF" style="DISPLAY: none">
		            <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
		                <tr class="tr_common">
		                    <td valign="top" style="width: 300px">
		                        <table class="table_inside">
		                        <tr  class="tr_common">
                                    <td  class="td_label">
                                        <b><asp:Label ID="l_ServiceList" runat="server" Text="Svc Code   Sub Code"></asp:Label></b>
		                            </td>
                                </tr>
                                <tr><td style="height:5px"></td></tr>
		                        <tr>
                                    <td>
		                                <asp:ListBox ID="ServiceList" runat="server" Height="225px" Width="280px" onchange="FetchResServiceTab();">
		                                </asp:ListBox>
		                            </td>
                                </tr>
		                        </table> 
		                    </td>
                            <td style="width: 5px"></td>
		                    <td>
		                        <table class="table_inside">
		                           <tr class="tr_common">
		                           	   <td style="WIDTH: 100px"  class="td_label"><b><asp:Label ID="l_psrvnd" runat="server" Text="Vendor#:"></asp:Label></b>
							           </td>
							           <td style="width: 5px"></td>
							           <td class="td_unline" style="width: 120px" >
								            <asp:textbox id="psrvnd" runat="server" CssClass="inface" ></asp:textbox>
							           </td>
							           <td style="WIDTH: 250px"  class="td_label"><b>This Information is Vendor Specific</b>
							           </td>
		                           </tr>
                                   <tr><td style="height:5px"></td></tr>
		                           <tr class="tr_common">
		                           	   <td style="WIDTH: 100px" class="td_label"><b><asp:Label ID="l_pvsrcd" runat="server" Text="Svc Code"></asp:Label></b>
							           </td>
							           <td style="width: 5px"></td>
							           <td colspan="2"  class="td_label"><b><asp:Label ID="l_srvcNameRS" runat="server" Text="Svc Code Description"></asp:Label></b>
							           </td>
		                           </tr>
		                           <tr class="tr_common">
		                   	           <td class="td_unline" style="width: 100px">
								            <asp:textbox id="pvsrcd" runat="server" CssClass="inface"></asp:textbox>
							           </td>
							           <td style="width: 5px"></td>
							           <td colspan="2" class="td_unline" style="width: 370px">
								            <asp:textbox id="tablesNameRS" runat="server" CssClass="inface"></asp:textbox>
							           </td>
		                           </tr>
                                   <tr><td style="height:5px"></td></tr>
		                           <tr class="tr_common">
		                           	   <td style="WIDTH: 100px"  class="td_label"><b><asp:Label ID="l_pvssub" runat="server" Text="Sub Code"></asp:Label></b>
							           </td>
							           <td style="width: 5px"></td>
							           <td colspan="2" style="WIDTH: 370px" class="td_label"><b><asp:Label ID="l_psrdes" runat="server" Text="Sub Code Description"></asp:Label></b>
							           </td>
		                           </tr>
		                           <tr class="tr_common">
		                   	           <td class="td_unline" style="width: 100px" width="100">
								            <asp:textbox id="pvssub" runat="server" CssClass="inface"></asp:textbox>
							           </td>
							           <td style="width: 5px"></td>
							           <td colspan="2" class="td_unline" style="width: 370px">
								            <asp:textbox id="psrdes" runat="server" CssClass="inface"></asp:textbox>
							           </td>
		                           </tr>
                                   <tr><td style="height:5px"></td></tr>
		                           <tr class="tr_common">
		                           	   <td style="WIDTH: 100px"><b>&nbsp;</b>
							           </td>
							           <td style="width: 5px"></td>
							           <td colspan="2" style="WIDTH: 370px" class="td_label"><b><asp:Label ID="l_psrcom" runat="server" Text="Comments"></asp:Label></b>
							           </td>
		                           </tr>
		                           <tr class="tr_common">
							           <td style="WIDTH: 100px"><b>&nbsp;</b>
							           </td>
							           <td style="width: 5px"></td>
							           <td colspan="2" class="td_unline" style="width: 370px">
								            <asp:textbox id="psrcom" runat="server" CssClass="inface"></asp:textbox>
							           </td>
		                           </tr>
                                   <tr><td style="height:5px"></td></tr>
		                           <tr class="tr_common">
		                           	   <td colspan="3" style="WIDTH: 225px"  class="td_label"><b><asp:Label ID="l_prsutp" runat="server" Text="Unit Type"></asp:Label></b>
							           </td>
							           <td style="WIDTH: 250px" class="td_label"><b><asp:Label ID="l_psrcur" runat="server" Text="Current Rat"></asp:Label></b>
							           </td>
		                           </tr>
		                           <tr class="tr_common">
		                   	           <td colspan="3" class="td_unline" style="width: 225px">
								            <asp:textbox id="prsutp" runat="server" CssClass="inface"></asp:textbox>
							           </td>
							           <td class="td_unline" style="width: 250px">
								            <asp:textbox id="psrcur" runat="server" CssClass="inface"></asp:textbox>
							           </td>
		                           </tr>
                                   <tr><td style="height:5px"></td></tr>
		                           <tr class="tr_common">
		                           	   <td colspan="3" style="WIDTH: 225px" class="td_label"><b><asp:Label ID="l_psrbeg" runat="server" Text="Beginning Date"></asp:Label></b>
							           </td>
							           <td style="WIDTH: 250px" class="td_label"><b><asp:Label ID="l_psrend" runat="server" Text="End Date"></asp:Label></b>
							           </td>
		                           </tr>
		                           <tr class="tr_common">
		                   	           <td colspan="3" class="td_unline" style="width: 225px">
								            <asp:textbox id="psrbeg" runat="server" CssClass="inface"></asp:textbox>
							           </td>
							           <td class="td_unline" style="width: 250px">
								            <asp:textbox id="psrend" runat="server" CssClass="inface"></asp:textbox>
							           </td>
		                           </tr>
		                        </table>
		                    </td>
		                </tr>
		            </table>
		        </div>
                <div id="Resource_AP" style="DISPLAY: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr  style="height: 30px;" valign="middle">
	                        <td align="center">
			                    <asp:label id="l_Poslist" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">POS LIST</asp:label>
			                </td>
		                </tr>
                        <tr>
                            <td style="height:5px"></td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center">
                                <asp:datagrid ID="dg_PosList" runat="server" AllowPaging="false" CssClass="grd_body"
					                AutoGenerateColumns="False" AllowSorting="true" >
                                    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="rap_auth" HeaderText="Auth #" SortExpression="rap_auth">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="rap_uci" HeaderText="UCI" SortExpression="rap_uci">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="ConsumerName" HeaderText="Name" SortExpression="ConsumerName">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="rap_start_dt">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="rap_term_dt">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="MgrName" HeaderText="SC Name" SortExpression="MgrName">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="enddate_color" HeaderText="enddate_color" Visible="False">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="MgrCode" HeaderText="SC Code" SortExpression="MgrCode">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="MgrUnit" HeaderText="SC Unit" SortExpression="MgrUnit">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
					                </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Resource_SIR" style="DISPLAY: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr  style="height: 30px;" valign="middle">
	                        <td align="center">
			                    <asp:label id="Label1" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">SIR LIST</asp:label>
			                </td>
		                </tr>
                        <tr>
                            <td style="height:5px"></td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center">
                            <asp:datagrid id="dg_sir" runat="server" AllowPaging="False" CssClass="grd_body"
					            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
					            <HeaderStyle CssClass="grd_head"></HeaderStyle>
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					                <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="s_rpt_date" HeaderText="Report Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_rpt_date">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_vendor_number" HeaderText="Vendor #" SortExpression="s_vendor_number">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_incident_site_type" HeaderText="Incident Location" SortExpression="s_incident_site_type">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_incident_dt" HeaderText="Incident Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_incident_dt">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="s_followup_person" HeaderText="Addendum" SortExpression="s_followup_person">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_addendums_num" HeaderText="Subst" SortExpression="s_addendums_num">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_type" HeaderText="Type" SortExpression="s_type">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_verify" HeaderText="Verified" SortExpression="s_verify">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:TemplateColumn HeaderText="View">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="s_uci" HeaderText="s_uci" Visible="False"></asp:BoundColumn>
					            </Columns>
				            </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                </div>
		    </td>
		</tr>
	</table>
	</div>  
	</form>
</body>
</html>

