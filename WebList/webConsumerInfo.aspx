<%@ Page Language="c#" Inherits="Virweb2.WebList.webConsumerInfo" Codebehind="webConsumerInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::General Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>

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
     
    <script type="text/JavaScript">
    <!--
       
    function doseltd(obj)
    {
       /*if (isIE())
       {            
          for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	        var e=tr_info.childNodes[i];		        	   
	 	    //e.background="../img/lable_unselect.gif";
		    e.style.color="#000000";
		    e.style.cursor="hand";	      	        
	      }
	      //obj.background="../img/lable_select.gif";
	      obj.style.color="#990066";
	      obj.style.cursor="auto";
       }
       else*/
       {
          TD_FS.style.color="#000000";
          //TD_FS.style.cursor="pointer";
          //TD_FS.style.background="url('../img/lable_unselect.gif')";
          TD_LF.style.color="#000000";
          //TD_LF.style.cursor="pointer";
          //TD_LF.style.background="url('../img/lable_unselect.gif')";
          TD_DC.style.color="#000000";
          //TD_DC.style.cursor="pointer";
          //TD_DC.style.background="url('../img/lable_unselect.gif')";
          TD_AD.style.color="#000000";
          //TD_AD.style.cursor="pointer";
          //TD_AD.style.background="url('../img/lable_unselect.gif')";
          TD_RE.style.color="#000000";
          //TD_RE.style.cursor="pointer";
          //TD_RE.style.background="url('../img/lable_unselect.gif')";
          TD_AM.style.color="#000000";
          //TD_AM.style.cursor="pointer";
          //TD_AM.style.background="url('../img/lable_unselect.gif')";  
          TD_CT.style.color="#000000";
          //TD_CT.style.cursor="pointer";
          //TD_CT.style.background="url('../img/lable_unselect.gif')";   
          TD_PG.style.color="#000000";
          //TD_PG.style.cursor="pointer";
          //TD_PG.style.background="url('../img/lable_unselect.gif')";   
  
          //obj.style.background="url('../img/lable_select.gif')";
	      obj.style.color="#990066";	
          //obj.style.cursor="auto";         
       }         
	   Consumer_FS.style.display="none";
	   Consumer_LF.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   Consumer_RE.style.display="none";
	   Consumer_AM.style.display="none";
       Consumer_CT.style.display="none";
	   Consumer_PG.style.display="none";
	   
	   switch(obj.id)
	   {
	      case "TD_FS":
			 Consumer_FS.style.display="";
			 document.ConsumerInfo.now_div_flag.value="1";	       
		     break;
		  case "TD_LF":    
			 Consumer_LF.style.display="";
			 document.ConsumerInfo.now_div_flag.value="2"; 		    	
		     break;
		  case "TD_DC":    
			 Consumer_DC.style.display="";
			 document.ConsumerInfo.now_div_flag.value="3";		    	
		     break;   
		  case "TD_AD":    
			 Consumer_AD.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="4";		    	 
		     break;    
		  case "TD_RE":    
			 Consumer_RE.style.display="";
			 document.ConsumerInfo.now_div_flag.value="5"; 		    	
		     break;    
		  case "TD_AM":    
			 Consumer_AM.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="7";	    	
		     break;   
          case "TD_CT":    
			 Consumer_CT.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="9";	    	
		     break; 
          case "TD_PG":    
			 Consumer_PG.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="8";	    	
		     break;             	                
	   }
    }    
    
    ///set div 
    function doseltdbyid(obj_id)
    {
       /*if (isIE())
       {  
          for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	   	     var e=tr_info.childNodes[i];

			 //e.background="../img/lable_unselect.gif";
		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_FS.style.color="#000000";
          //TD_FS.style.cursor="pointer";
          //TD_FS.style.background="url('../img/lable_unselect.gif')";
          TD_LF.style.color="#000000";
          //TD_LF.style.cursor="pointer";
          //TD_LF.style.background="url('../img/lable_unselect.gif')";
          TD_DC.style.color="#000000";
          //TD_DC.style.cursor="pointer";
          //TD_DC.style.background="url('../img/lable_unselect.gif')";
          TD_AD.style.color="#000000";
          //TD_AD.style.cursor="pointer";
          //TD_AD.style.background="url('../img/lable_unselect.gif')";
          TD_RE.style.color="#000000";
          //TD_RE.style.cursor="pointer";
          //TD_RE.style.background="url('../img/lable_unselect.gif')";
          TD_AM.style.color="#000000";
          //TD_AM.style.cursor="pointer";
          //TD_AM.style.background="url('../img/lable_unselect.gif')";
          TD_CT.style.color="#000000";
          //TD_CT.style.cursor="pointer";
          //TD_CT.style.background="url('../img/lable_unselect.gif')";      
          TD_PG.style.color="#000000";
          //TD_PG.style.cursor="pointer";
          //TD_PG.style.background="url('../img/lable_unselect.gif')";    
       }         
	   Consumer_FS.style.display="none";
	   Consumer_LF.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   Consumer_RE.style.display="none";
	   Consumer_AM.style.display="none";
       Consumer_CT.style.display="none";
	   Consumer_PG.style.display="none";
	  
	   switch(obj_id)
	   {
	      case "TD_FS":
			 Consumer_FS.style.display="";
			 TD_FS.style.color="#990066";
             //TD_FS.style.cursor="auto";
             //TD_FS.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="1";	       
		     break;
		  case "TD_LF":    
			 Consumer_LF.style.display="";
			 TD_LF.style.color="#990066";
             //TD_FS.style.cursor="auto";
             //TD_FS.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="2"; 		    	
		     break;
		  case "TD_DC":    
			 Consumer_DC.style.display="";
			 TD_DC.style.color="#990066";
             //TD_DC.style.cursor="auto";
             //TD_DC.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="3";		    	
		     break;   
		  case "TD_AD":    
			 Consumer_AD.style.display="";	
			 TD_AD.style.color="#990066";
             //TD_AD.style.cursor="auto";
             //TD_AD.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="4";		    	 
		     break;    
		  case "TD_RE":    
			 Consumer_RE.style.display="";
			 TD_RE.style.color="#990066";
             //TD_RE.style.cursor="auto";
             //TD_RE.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="5"; 		    	
		     break; 
		  case "TD_AM":    
			 Consumer_AM.style.display="";	
			 TD_AM.style.color="#990066";
             //TD_AM.style.cursor="auto";
             //TD_AM.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="7";	    	
		     break;  
           case "TD_CT":    
			 Consumer_CT.style.display="";	
			 TD_CT.style.color="#990066";
             //TD_CT.style.cursor="auto";
             //TD_CT.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="9";	    	
		     break;     
           case "TD_PG":    
			 Consumer_PG.style.display="";	
			 TD_PG.style.color="#990066";
             //TD_PG.style.cursor="auto";
             //TD_PG.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="8";	    	
		     break;              	                
	   }
    }  

    function doseltdbyflag(flag)
    {
    /*
       if (isIE())
       {  
	      for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	   	     var e=tr_info.childNodes[i];

			 //e.background="../img/lable_unselect.gif";
		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_FS.style.color="#000000";
          //TD_FS.style.cursor="pointer";
          //TD_FS.style.background="url('../img/lable_unselect.gif')";
          TD_LF.style.color="#000000";
          //TD_LF.style.cursor="pointer";
          //TD_LF.style.background="url('../img/lable_unselect.gif')";
          TD_DC.style.color="#000000";
          //TD_DC.style.cursor="pointer";
          //TD_DC.style.background="url('../img/lable_unselect.gif')";
          TD_AD.style.color="#000000";
          //TD_AD.style.cursor="pointer";
          //TD_AD.style.background="url('../img/lable_unselect.gif')";
          TD_RE.style.color="#000000";
          //TD_RE.style.cursor="pointer";
          //TD_RE.style.background="url('../img/lable_unselect.gif')";
          TD_AM.style.color="#000000";
          //TD_AM.style.cursor="pointer";
          //TD_AM.style.background="url('../img/lable_unselect.gif')";  
          TD_CT.style.color="#000000";
          //TD_CT.style.cursor="pointer";
          //TD_CT.style.background="url('../img/lable_unselect.gif')";  
          TD_PG.style.color="#000000";
          //TD_PG.style.cursor="pointer";
          //TD_PG.style.background="url('../img/lable_unselect.gif')";   
       }         
	   Consumer_FS.style.display="none";
	   Consumer_LF.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   Consumer_RE.style.display="none";
	   Consumer_AM.style.display="none";
       Consumer_CT.style.display="none";
	   Consumer_PG.style.display="none";

	   switch(flag)
	   {
	      case 1:
			 Consumer_FS.style.display="";
			 TD_FS.style.color="#990066";
             //TD_FS.style.cursor="auto";
             //TD_FS.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="1";	       
		     break;
		  case 2:    
			 Consumer_LF.style.display="";
			 TD_LF.style.color="#990066";
             //TD_FS.style.cursor="auto";
             //TD_FS.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="2"; 		    	
		     break;
		  case 3:    
			 Consumer_DC.style.display="";
			 TD_DC.style.color="#990066";
             //TD_DC.style.cursor="auto";
             //TD_DC.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="3";		    	
		     break;   
		  case 4:    
			 Consumer_AD.style.display="";	
			 TD_AD.style.color="#990066";
             //TD_AD.style.cursor="auto";
             //TD_AD.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="4";		    	 
		     break;    
		  case 5:    
			 Consumer_RE.style.display="";
			 TD_RE.style.color="#990066";
             //TD_RE.style.cursor="auto";
             //TD_RE.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="5"; 		    	
		     break;  
		  case 7: 	     
			 Consumer_AM.style.display="";	
			 TD_AM.style.color="#990066";
             //TD_AM.style.cursor="auto";
             //TD_AM.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="7";	    	
		     break; 
           case 9: 	     
			 Consumer_CT.style.display="";	
			 TD_CT.style.color="#990066";
             //TD_CT.style.cursor="auto";
             //TD_CT.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="9";	    	
		     break;   
           case 8: 	     
			 Consumer_PG.style.display="";	
			 TD_PG.style.color="#990066";
             //TD_PG.style.cursor="auto";
             //TD_PG.style.background="url('../img/lable_select.gif')";
			 document.ConsumerInfo.now_div_flag.value="8";	    	
		     break;            	                
	   }
    }  

    function RefreshMyField(DispField,Code)    
    {
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       var myHdnRefreshCode = document.getElementById(<%= "'" + hdnRefreshCode.ClientID + "'" %>);
       myHdnRefreshData.value = DispField; 
       myHdnRefreshCode.value = Code;             
       window.document.ConsumerInfo.submit(); 
       window.focus();   
    }
    
    function RefreshContactData()    
    {
       NoConfirmExit(); 
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '1';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }
    
    function RefreshProgData()    
    {           
       NoConfirmExit(); 
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0'; 
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '2';        
       window.document.ConsumerInfo.submit(); 
       window.focus();   
    }
    
    function save_click() {
       return true;
    }

    function print_click()
    {
       var flag=document.ConsumerInfo.now_div_flag.value.toString();   
       var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
       var UserAct=document.ConsumerInfo.UserAct.value.toString();         
       winhref("PrintConsumerInfo.aspx?c_key="+consumer_key+"&flag="+flag+"&UserAct="+UserAct,"PrintConsumerInfo");          
    }
    
    function printall_click()
    {
       var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
       var UserAct=document.ConsumerInfo.UserAct.value.toString();         
       winhref("PrintConsumerInfo.aspx?c_key="+consumer_key+"&flag=0&UserAct="+UserAct,"PrintConsumerInfo");          
    }
    
    function sendemail_click()
    {
       var EmailAdd=document.ConsumerInfo.c_email.value.toString();         
       //alert(EmailAdd);
       window.location.href="mailto:"+EmailAdd;
    }
    
    function CopyEmailAddress() 
    {
       document.ConsumerInfo.c_mailing_address_line_1.value = document.ConsumerInfo.c_address_line_1.value;
       document.ConsumerInfo.c_mailing_address_line_2.value = document.ConsumerInfo.c_address_line_2.value;
       document.ConsumerInfo.c_mailing_address_city.value = document.ConsumerInfo.c_address_city.value;
       document.ConsumerInfo.c_mailing_address_state.value = document.ConsumerInfo.c_address_state.value;
       document.ConsumerInfo.c_mailing_address_zip.value = document.ConsumerInfo.c_address_zip.value;
       document.ConsumerInfo.c_mailing_mail_code.selectedIndex = document.ConsumerInfo.c_mail_code.selectedIndex;
       document.ConsumerInfo.c_legal_county.selectedIndex = document.ConsumerInfo.c_physical_county.selectedIndex;
    }

    function window_onload()
    {
       var consumer_key=document.ConsumerInfo.consumer_key.value.toString();         
       if (consumer_key=="")     
       {              
           document.ConsumerInfo.btnPrint.disabled=true;
       }   
       else
       {
          document.ConsumerInfo.btnPrint.disabled=false;
       }   
    }
    
    function ConfirmSave()
    {     
       if (confirm('Same last name and first name already exist, do you still want to save?'))
       {
          var mySaveSameName = document.getElementById(<%= "'" + SaveSameName.ClientID + "'" %>);        
          mySaveSameName.value = '1';
          window.document.ConsumerInfo.submit(); 
          window.focus();   
       }
    }
    
    function ConfirmNew()
    {     
       if (confirm('Same last name and first name already exist, do you still want to add?'))
       {
          var myNewSameName = document.getElementById(<%= "'" + NewSameName.ClientID + "'" %>);        
          myNewSameName.value = '1';
          window.document.ConsumerInfo.submit(); 
          window.focus();   
       }
    }
        
    function Refresh_Data(flag)
    {         
        alert("Update successful!");
        var opener=window.dialogArguments; 
        if (isIE())
        {
           opener.RefreshMyData();  
        }
        else
        {
           window.opener.RefreshMyData(); 
        }
        if (flag==1)
        {
            window.close();
        }
        else
        {
           window.focus();
        }
    }
    
    function display_weather()
    {
        var zipcode="";
        zipcode=document.ConsumerInfo.c_address_zip.value.toString(); 
        if (JTrim(zipcode)=="")
        {
           alert("Please input zipcode!");             
        }
        else
        {
           var url="weather.aspx?zipcode="+zipcode.toString();
           window.showModalDialog(url, self,'status:yes;dialogWidth:400px;dialogHeight:400px;help:no;scroll:no;resizable:yes');    
        }
    }

    //-->
    </script>
    
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        function display_consumermap() {
            var select_consumer = document.getElementById("select_c_key").value;
            if (select_consumer == "") {
                PopupMessage(3);
                return;
            }
            else {
                popupDialogWithWindow("webConsumerMapInfo.aspx?select_consumer=" + select_consumer.toString());
            }
        }

     function ShowAddress() 
     {
          if(document.getElementById("map_canvas").style.display == ""){
		      document.getElementById("map_canvas").style.display = "none";	
		      document.getElementById("c_school").style.display="";
		      document.getElementById("c_residence_current").style.display="";
		      document.getElementById("c_legal_county").style.display="";	
		      return;	
				
	     } else {
		     document.getElementById("map_canvas").style.display = "";
		     document.getElementById("c_school").style.display="none";
		     document.getElementById("c_residence_current").style.display="none";
		     document.getElementById("c_legal_county").style.display="none";
		 }
          var geocoder = new google.maps.Geocoder();           
          var myOptions = {
             zoom: 15,      
             mapTypeId: google.maps.MapTypeId.ROADMAP
          }
          map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
          var address = $("#streetText input").attr('value') + ', ' + $("#cityText input").attr('value') + ', ' + $("#stateText input").attr('value') + ', ' + $("#zipCodeText input").attr('value');         
          if (geocoder) {
            geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) 
            {
               map.setCenter(results[0].geometry.location);
               var marker = new google.maps.Marker({
                  map: map, 
                  position: results[0].geometry.location
               });
               var message = address;
               var infowindow = new google.maps.InfoWindow(
               { content: message
               });
              google.maps.event.addListener(marker, 'click', function() {
                infowindow.open(map,marker);
              });
            } 
            else 
            {
             document.getElementById("map_canvas").style.display = "none";	
             switch(status)
             {
                 case "ZERO_RESULTS":
                    alert("Empty address or the address can't be found in Google Map");
                    break;
                 case "OVER_QUERY_LIMIT":
                    alert("Google Map failed because that teh request is over the maximun quota!");
                    break;
                 case "REQUEST_DENIED":
                    alert("Google Map failed bceasue that the request was denied.");
                    break;
                 case "INVALID_REQUEST":   
                    alert("Google Map failed because that the address is missing.");
                    break;                    
                 default: 
                    alert("Google Map failed with the error code: " + status); 
                    break;
             }
            }
          });
       }
     }
    </script>     

</head>
<body  id="body"  runat="server"  >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ConsumerInfo" method="post" runat="server">   
    <input type="submit" value="test" style="display:none;" /> 
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" />   
    <input type="hidden" name="consumer_dtm" id="consumer_dtm" value="10" runat="server" />
    <input id="NoConfirm"  type="hidden" value="0" />
    <asp:hiddenfield id="dataChg" runat="server" value="0" />
    <input id="SaveSameName"  type="hidden" runat="server" value="0" />
    <input id="NewSameName"   type="hidden" runat="server" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />  
    <input type="hidden" name="consumer_dtd" id="consumer_dtd" value="13" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" /> 
    <input type="hidden" name="consumer_dty" id="consumer_dty" value="18" runat="server" />
    <div align="left" style="WIDTH:100%; height:65px">
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr valign="top" style="height:35px; background-color: #EAF4FF">
        <td>
            <table id="TABLE_Label" cellspacing="0" cellpadding="0" runat="server" visible="false"  >
                <tr id="tr_info">
                    <td id="TD_FS"  style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_select.gif"  height="33">
                        <b><u>Face Sheet</u></b>
                    </td>
                    <td id="TD_LF"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Legal/Financial</u></b>
                    </td>
                    <td id="TD_DC"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Dates/Comments</u></b>
                    </td>
                    <td id="TD_AD"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Administration</u></b>
                    </td>
                    <td id="TD_RE"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Referrals</u></b>
                    </td>
                    <td id="TD_AM"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Background</u></b>
                    </td>
                    <td id="TD_CT"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Contacts</u></b>
                    </td>
                    <td id="TD_PG"  style="color:#000000;" class="tab_sel" onclick="doseltd(this);"
                        width="110" background="img/lable_unselect.gif" height="33">
                        <b><u>Group/Program</u></b>
                    </td>
                </tr>
            </table>
        </td>
        <td valign="middle" align="center">
            <asp:Label ID="lbl_err" runat="server" ForeColor="Blue"></asp:Label>
        </td>
      </tr>
    </table>
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr valign="middle" style="height:30px">
        <td>
            <asp:label id="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">ADD NEW CLIENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input UCI:</asp:label>
            <asp:TextBox ID="NewUCI" runat="server" Style="width: 65px" Width="65" MaxLength="8" Visible="false" tabindex="1"></asp:TextBox>            
        </td>
        <td align="right">
            <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" OnClick="btnEdit_Click" onclientclick="NoConfirmExit();"></asp:Button>
            <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" OnClick="btnAdd_Click" onclientclick="NoConfirmExit();"></asp:Button>
            <input type="button" id="btnPrint" name="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();" runat="server" />
			<input type="button" id="btnPrintAll" name="btnPrint" value="PrintAll" style="width:60px;"  class="buttonbluestyle" onclick="javascript:printall_click();" runat="server" />
			<input type="button" id="btnHelp" value="Help" style="width:60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" visible="false" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>   
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%; height:420px; overflow: auto ">
    <table class="table_maindiv">
        <tr>
            <td valign="top" align="center" width="100%" height="100%">
                <div id="Consumer_FS">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tr class="tr_common">
                            <td colspan="6" style="height: 3px;" align="right"> 
                                 <input type="button" ID="btnimage" runat="server" value="Document List" style="width:120px;"  class="buttonbluestyle"  tabindex="-1"  visiable="false" />
                                 <input type="button" id="btntickler" value="Tickler List" style="width:100px;"  class="buttonbluestyle" onClick="popupDialogWideWithWindow('webTicklerTaskList.aspx?tickler_flag=2', window.mainlist)"  runat="server"  tabindex="-1" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="4" style="width: 725px;">
                                <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                        <td style="width: 210px;" align="right" class="td_label">
                                            <b><asp:Label ID="l_c_name_last" runat="server" Text="Name:"></asp:Label></b></td>
                                        <td style="height: 20px" height="20" width="5">
                                        </td>
                                        <td width="300" height="20" style="height: 20px">
                                           <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                                             <tr>
                                               <td class="td_unline" align="left" width="110" style="height: 20px">
                                                <asp:TextBox ID="c_name_first" runat="server" CssClass="inface" Style="width: 100px"
                                                   Width="100" MaxLength="20" TabIndex="1"></asp:TextBox>
                                               </td>
                                               <td width="10" style="height: 20px"></td> 
                                               <td class="td_unline" align="left" width="30" style="height: 20px">   
                                                <asp:TextBox ID="c_name_mi" runat="server" CssClass="inface" Style="width: 25px"
                                                   Width="30" MaxLength="1"  TabIndex="1"></asp:TextBox>
                                               </td> 
                                               <td width="10" style="height: 20px"></td>  
                                               <td class="td_unline" align="left" width="110" style="height: 20px">
                                                <asp:TextBox ID="c_name_last" runat="server" CssClass="inface" Style="width: 100px"
                                                   Width="100" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td>     
                                             </tr>   
                                           </table>       
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td style="width: 210px "></td>
                                        <td colspan="2">
                                        <asp:RequiredFieldValidator ControlToValidate="c_name_first" Display="dynamic" ErrorMessage="Please enter first name"
							                       runat="server" ID="vNameFirst"  tabindex="-1"/>
							            <asp:RequiredFieldValidator ControlToValidate="c_name_last" Display="dynamic" ErrorMessage="Please enter last name"
							                       runat="server" ID="vNameLast" tabindex="-1" />
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 210px;" align="right" class="td_label">
                                            <b><asp:Label ID="l_c_name_aka_last" runat="server" Text="AKA Name (s):"></asp:Label></b></td>
                                        <td style="height: 20px" width="5">
                                        </td>
                                        <td width="300" style="height: 20px">
                                           <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                                             <tr>
                                               <td class="td_unline" align="left" width="110" style="height: 20px">
                                                <asp:TextBox ID="c_name_aka_first" runat="server" CssClass="inface" Style="width: 100px"
                                                   Width="100" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                             </td>
                                               <td width="10" style="height: 20px"></td> 
                                               <td class="td_unline" align="left" width="30" style="height: 20px">   
                                                <asp:TextBox ID="c_name_aka_mi" runat="server" CssClass="inface" Style="width: 25px"
                                                   Width="30" MaxLength="1"  TabIndex="1"></asp:TextBox>
                                               </td> 
                                               <td width="10" style="height: 20px"></td>  
                                               <td class="td_unline" align="left" width="110" style="height: 20px">
                                                <asp:TextBox ID="c_name_aka_last" runat="server" CssClass="inface" Style="width: 100px"
                                                   Width="100" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td>     
                                             </tr>   
                                           </table>  
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 210px" align="right" class="td_label">
                                            <b><asp:Label ID="l_c_name_maiden_last" runat="server" Text="Maiden Name:"></asp:Label></b></td>
                                        <td style="height: 20px" height="20" width="5">
                                        </td>
                                        <td width="300" height="20">
                                           <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                                             <tr>
                                               <td class="td_unline" align="left" width="110" style="height: 20px">
                                                <asp:TextBox ID="c_name_maiden_first" runat="server" CssClass="inface" Style="width: 100px"
                                                   Width="100" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td> 
                                               <td width="50" style="height: 20px"></td> 
                                               <td class="td_unline" align="left" width="110" style="height: 20px"> 
                                                 <asp:TextBox ID="c_name_maiden_last" runat="server" CssClass="inface" Style="width: 100px"
                                                    Width="100" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td>     
                                             </tr>   
                                           </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td colspan="2" style="width: 305px; height: 26px;">
                                &nbsp;<asp:ImageButton ID="viewphoto" runat="server" Height="100px" 
                                    ImageUrl="ImageThumbeNail.aspx?height=100&width=100" 
                                    OnClientClick="popupDialogSmall('ConsumerIMG.aspx');"  tabindex="-1" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                                <asp:Label ID="c_uci" runat="server" CssClass="infaceText" Visible=false></asp:Label>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_dob" runat="server" Text="Date of Birth:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_dob" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="1"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_gender" runat="server" Text="Gender:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300" height="20">
                                <asp:DropDownList ID="c_gender" runat="server" Width="235" OnClick="DataChanged();" TabIndex="2">
                                      <asp:ListItem Value=""></asp:ListItem>
                                      <asp:ListItem Value="M">Male</asp:ListItem>
                                      <asp:ListItem Value="F">Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_birthplace" runat="server" Text="Place of Birth:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_birthplace" runat="server" CssClass="inface" MaxLength=50 TabIndex="1"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_ethnicity" runat="server" Text="Ethnicity:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="2">
                                </asp:DropDownList>
                                  <input type="button" id="btnAdd1" value="Add"  class="buttonbluestyle"   onclick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Ethnicity&QueryField=ETHN&CheckField=c_ethnicity');"  TabIndex="-1"  runat="server" />
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_marital_status" runat="server" Text="Marital Status:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_marital_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd2" value="Add"  class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Marital Status&QueryField=MARS&CheckField=c_marital_status')" TabIndex="-1" />
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_language" runat="server" Text="Language:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="2">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd3" value="Add"  class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Language&QueryField=LANG&CheckField=c_language')" TabIndex="-1" />
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label" width="210" style="width: 210px">
                                <b><asp:Label ID="l_c_height_weight" runat="server" Text="Heigth/Weight:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_height_weight" runat="server" CssClass="inface" MaxLength=20 TabIndex="1"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_hair_color" runat="server" Text="Hair Color:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_hair_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="2">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd4" value="Add"  class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Hair Color&QueryField=CONSUMER HAIR COLOR&CheckField=c_hair_color')" TabIndex="-1" />
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_1" runat="server" Text="Home Phone:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td width="300">
                                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_phone_1_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1" 
                                         onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_2);" ></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_phone_1_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_3);" ></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_1_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_eye_color" runat="server" Text="Eye Color:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_eye_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="2">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd5" value="Add"  class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Eye Color&QueryField=CONSUMER EYE COLOR&CheckField=c_eye_color')"  TabIndex="-1" />
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">                            
                            <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_2" runat="server" Text="work Phone:"></asp:Label></b>
                            </td>
                            <td width="5" height="20" style="height: 20px">
                            </td>
                            <td width="300">
                                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_phone_2_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_phone_2_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_2_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td>                            
                            <td style="width: 183px" align="right" width="183" class="td_label" height="20">
                                <b><asp:Label ID="l_c_email" runat="server" Text="Email:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_email" runat="server" CssClass="inface" MaxLength=45 Width="180px" TabIndex="2"></asp:TextBox>
                               <input type="button" id="btnSendEmail" name="btnSendEmail" value="SendEmail" style="width:80px;" Class="buttonbluestyle" 
                                       OnClick="javascript:sendemail_click();" TabIndex="-1" /> 

                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_3" runat="server" Text="Cell Phone:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td width="300">
                                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_phone_3_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_phone_3_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_3_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td> 
                            
                            <td align="right" class="td_label" height="20" style="width: 183px">
                                <b><asp:Label ID="l_c_fax" runat="server" Text="Fax No:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td width="300">
                                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_fax_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_fax_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_fax_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_fax_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_fax_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="2"></asp:TextBox>
                                     </td>
                                   </tr>
                                </table>  
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px;">
                            <td colspan="6">
                            </td>
                        </tr>
                         <tr class="tr_common">
                            <td style="width: 210px;" align="right" width="210" class="td_label"></td>
                            <td colspan=2 style="width: 305px; height: 20px;" align="left" width="305" class="td_label">
                                <b>Current Address</b>
                            </td>
                            <td align="right" class="td_label" style="width: 183px; height: 20px;"><b>Mailing Address</b></td>
                            <td width="5" style="height: 20px">
                            </td>
                            <td style="width: 300px; height: 20px;" align="left" width="300">
                                <input type="button" ID="btnMainAdd" style="width:250px; height:25px;" value="Same as the current address"
									onclick="javascript:CopyEmailAddress();DataChanged();" /> 
                            </td>
                        </tr>
                         <tr class="tr_common" style="height:2px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_1" runat="server" Text="Name:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_address_line_1" runat="server" CssClass="inface" MaxLength="30" TabIndex="3"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 183px"></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_line_1" runat="server" CssClass="inface" MaxLength="30" TabIndex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_2" runat="server" Text="Street:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
							<td class="td_unline" align="left" width="300">
                                <span style="float:left;" id="streetText">
                                <asp:TextBox ID="c_address_line_2" runat="server" CssClass="inface" MaxLength="30" width="210" TabIndex="3"></asp:TextBox>
                                </span>
								<span style="float:right;padding-right:5px;padding-bottom:1px;" id="mapHref">
								<div id="map_canvas" style="width: 500px; height: 300px;position: absolute;display:none;margin-top:25px;"></div>
								<a href="#" onclick=javascript:display_consumermap(); title="Map" tabindex="-1" >
								<img src="../img/map.gif" border="0" /></a>
								</span>&nbsp;<a href="#" onclick="javascript:display_weather();" tabindex="-1" >
								<img src="../img/weather.gif" border="0" style="width:24px;height:24px" id="weather" runat="server" title="weather" /></a>
                            </td>
                            <td align="right" class="td_label" height="25" style="width: 183px"></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_line_2" runat="server" CssClass="inface" MaxLength="30" TabIndex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_city" runat="server" Text="City and State:"></asp:Label></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                               <asp:TextBox ID="c_address_city" runat="server" CssClass="inface" Width="200" MaxLength="19" TabIndex="3"></asp:TextBox>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="c_address_state" runat="server" CssClass="inface" Width="30" MaxLength="2" TabIndex="3"></asp:TextBox>  
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" height="20"></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                               <asp:TextBox ID="c_mailing_address_city" runat="server" CssClass="inface" Width="200" MaxLength="19" TabIndex="4"></asp:TextBox>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="c_mailing_address_state" runat="server" CssClass="inface" Width="30" MaxLength="2" TabIndex="4"></asp:TextBox>   
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_address_zip" runat="server" Text="Zip/Mail Code:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300" id="zipCodeText">
                                <asp:TextBox ID="c_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 TabIndex="3"></asp:TextBox>
                                <asp:DropDownList ID="c_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="120" OnClick="DataChanged()" Visible=false TabIndex="3">
                                </asp:DropDownList>                                  
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" height="20"></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 TabIndex="4"></asp:TextBox>
                                <asp:DropDownList ID="c_mailing_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="120" OnClick="DataChanged()" visible="false" TabIndex="4">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_physical_county" runat="server" Text="Physical County:"></asp:Label></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300" id="countryText">
                                <asp:DropDownList ID="c_physical_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="3">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd8" value="Add"  class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Physical County&QueryField=LEGAL CNTY&CheckField=c_physical_county')" TabIndex="-1" />                            
                                
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 183px">
                                <b><asp:Label ID="l_c_legal_county" runat="server" Text="Legal County:"></asp:Label></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300" >
                                <asp:DropDownList ID="c_legal_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Height="20" Width="235" OnClick="DataChanged()" TabIndex="4" >
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd9" value="Add"  class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Legal County&QueryField=LEGAL CNTY&CheckField=c_legal_county')" TabIndex="-1" />                            
                                
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_attention" runat="server" Text="Attention:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="776" colspan="4">
                                <asp:TextBox ID="c_attention" runat="server" CssClass="inface" MaxLength=60 TabIndex="5"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_program_primary" runat="server" Text="Day Activity:"></asp:Label></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_program_primary" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="5">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd10" value="Add"  class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Day Activity&QueryField=DAYP&CheckField=c_program_primary')" TabIndex="-1" />
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" height="20">
                                <b><asp:Label ID="l_c_school" runat="server" Text="School:"></asp:Label></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_school" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" TabIndex="5">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd11" value="Add" Class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=School&QueryField=SCHL&CheckField=c_school')" TabIndex="-1" />                            
                                
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_residence_current" runat="server" Text="Residence Type:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" colspan=4 width="788">
                                <asp:DropDownList ID="c_residence_current" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="650" OnClick="DataChanged()" TabIndex="5" >
                                </asp:DropDownList>                               
                                <input type="button" id="btnAdd12" value="Add" Class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Residence Type&QueryField=RESIDENCE TYPE&CheckField=c_residence_current')"  TabIndex="-1" />
                            </td>
                            
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" height="20">
                                <b><asp:Label ID="l_c_cm_id" runat="server" Text="Coordinator:"></asp:Label></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                    Height="20" Width="250" OnClick="DataChanged();" TabIndex="5" >
                                </asp:DropDownList>
                                
                            </td>
                            <td align="right" class="td_label" style="width: 183px">
                                <b><asp:Label ID="l_c_residence_date" runat="server" Text="Start Date:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_residence_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="5" ></asp:TextBox>
                            </td>
                        </tr>                                    
                    </table>
                </div>
                <div id="Consumer_LF" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_confidentiality" runat="server" Text="Confidentiality:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td align="left" width="625" colspan="4">
                                <asp:DropDownList ID="c_confidentiality" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="450" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd13" value="Add" Class="buttonbluestyle"  runat="server"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Confidentiality&QueryField=CONFIDENTIALITY&CheckField=c_confidentiality')"  tabindex="-1"/>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_legal_status_1" runat="server" Text="Legal Status 1:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_legal_status_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged();" tabindex="1">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd14" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=LEGAL STATUS&QueryField=LEGAL STATUS&CheckField=c_legal_status_1')"  tabindex="-1"/>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_legal_status_date_1" runat="server" Text="Legal Staus Date 1:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_legal_status_date_1"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" tabindex="1"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_legal_status_2" runat="server" Text="Legal Status 2:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_legal_status_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd15" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=LEGAL STATUS&QueryField=LEGAL STATUS&CheckField=c_legal_status_2')"  tabindex="-1"/>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_legal_status_date_2" runat="server" Text="Legal Staus Date 2:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_legal_status_date_2"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" tabindex="1"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_conservator" runat="server" Text="Conservator:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_conservator" runat="server" CssClass="inface" MaxLength=24 tabindex="1"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr> 
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ssn" runat="server" Text="Social Security Number:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td width="300">
                                <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_ssn_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_ssn_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">-</td>
                                     <td class="td_unline" width="25px">
                                        <asp:TextBox ID="c_ssn_2" runat="server" CssClass="inface" MaxLength="2" TabIndex="2"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_ssn_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_ssn_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="2"></asp:TextBox>
                                     </td>
                                   </tr>
                                </table>  
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_generic_agency_1" runat="server" Text="Generic Agency 1:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_generic_agency_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd16" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Generic Agency 1&QueryField=G&CheckField=c_generic_agency_1')"  tabindex="-1"/>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ssa" runat="server" Text="SSA Number/Suffix:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ssa" runat="server" CssClass="inface" Width="200" MaxLength=14 tabindex="2"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="c_ssa_suffix" runat="server" CssClass="inface" Width="50" MaxLength=3 tabindex="2"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label" height="20" style="width: 210px">
                                <b><asp:Label ID="l_c_residence_number" runat="server" Text="Vendor Number:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:dropdownlist id="c_residence_number" runat="server" DataValueField="r_resource_id" DataTextField="r_resource_name" 
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
				                </asp:dropdownlist>				                 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_inst_deeming" runat="server" Text="Institutional Deeming:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_inst_deeming" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="2">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd17" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Institutional Deeming&QueryField=HLTH DIST&CheckField=c_inst_deeming')" tabindex="-1" />
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_generic_agency_2" runat="server" Text="Generic Agency 2:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_generic_agency_2" runat="server" DataValueField="TrustID" DataTextField="TrustName" 
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                               
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" height="20">
                                <b></b>
                            </td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td width="300">
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_epsdt" runat="server" Text="EPSDT:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_epsdt" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd18" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=EPSDT&QueryField=EPSDT/NF&CheckField=c_epsdt')" tabindex="-1" />
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_medi_cal" runat="server" Text="MediCal Number:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_medi_cal" runat="server" CssClass="inface" MaxLength=17 tabindex="2"></asp:TextBox>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_nf" runat="server" Text="NF:"></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_nf" runat="server" CssClass="inface" MaxLength=1 tabindex="3"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_medicaid_waiver" runat="server" Text="MediCaid Waiver:"></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td width="300">
                                <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tr>
                                        <td align="left" style="width: 120px">
                                            <asp:DropDownList ID="c_medicaid_waiver" runat="server" CssClass="inface" OnClick="DataChanged()" tabindex="2">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                <asp:ListItem Value="N">No</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" height="20"></td>
                                        <td align="right" width="60" class="td_label" height="25">
                                            <b><asp:Label ID="l_c_waiver_excludability" runat="server" ></asp:Label></b></td>
                                        <td class="td_unline" align="left" width="120">
                                            <asp:TextBox ID="c_waiver_excludability" runat="server" CssClass="inface" MaxLength=1 tabindex="2"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td align="right" width="210" class="td_label" height="25">
                                <b><asp:Label ID="l_c_ihss" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ihss" runat="server" CssClass="inface" Width="120" OnClick="DataChanged()" tabindex="3">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_payee_indicator" runat="server" ></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_payee_indicator" runat="server" CssClass="inface" MaxLength=50 tabindex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" colspan="3" align=center width="210" class="td_label">
                                <b>Family Cost Participation</b></td>
                            <td width="5">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_family_income" runat="server" ></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_family_income" runat="server" CssClass="inface" MaxLength=10 tabindex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_minors_in_home" runat="server" ></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_minors_in_home" runat="server" CssClass="inface" MaxLength=3 tabindex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_family_percentage" runat="server" ></asp:Label></b></td>
                            <td height="20" style="width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_family_percentage" runat="server" CssClass="inface" MaxLength=3 tabindex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3" style="width: 210px" align="right" width="210" class="td_label"
                                height="20">
                                <asp:CheckBox ID="c_income_check" runat="server" Text="Failure to Comply:" OnClick="DataChanged()" tabindex="4"/>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                    </table>
                <br />
				<br>
			    <asp:label id="TitlePosUfs" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">AUTHORIZED PURCHASE OF SERVICE</asp:label>
				<br>
				<asp:datagrid id="dg_posufs" runat="server" PageSize="10" AllowPaging="True" CssClass="grd_body"
					AutoGenerateColumns="False" AllowSorting="True" onselectedindexchanged="dg_posufs_SelectedIndexChanged">
					<HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="rap_auth" HeaderText="Auth#" SortExpression="rap_auth">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_vid_name" HeaderText="Vendor Name" SortExpression="rap_vendor_name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_vid" HeaderText="Vendor#" SortExpression="rap_vid">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_svc_code" HeaderText="Code" SortExpression="rap_svc_code">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" SortExpression="rap_start_dt">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" SortExpression="rap_term_dt">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>						
					</Columns>
					<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				</asp:datagrid>
                </div>
                <div id="Consumer_DC" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tr style="height:5px;">
                            <td colspan="6"></td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_case_level" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20"></td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_case_level" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd19" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Frequency of Contact&QueryField=LEVL&CheckField=c_case_level')"  tabindex="-1"/>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_base_month" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20"></td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_base_month" runat="server" CssClass="inface" Width="150" OnClick="DataChanged()" tabindex="1">
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
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6"> </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_report_agency" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300" colspan="4">
                                <asp:DropDownList ID="c_report_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd20" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Report Agency&QueryField=RPT AGENCY&CheckField=c_report_agency')" tabindex="-1" />
                            </td>
                            <td colspan="3"></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_cm_agency" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd21" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Case Manager Agency&QueryField=REGC&CheckField=c_cm_agency')" tabindex="-1"/>
                            </td>
                            <td align="center" colspan="3">
                                <font color="#3366ff"><b>REPORTS</b></font></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_cm_type" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_type" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged();" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd22" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Case Manager Type&QueryField=CMTY&CheckField=c_cm_type')"  tabindex="-1"/>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_review_pcp_ifsp_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_pcp_ifsp_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" height="20">
                                <b></b>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td width="300">
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_review_cder_esr_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_cder_esr_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="3" height="20">
                                <font color="#3366ff"><b>INTAKE/ELIGIBILITY</b></font></td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_review_quarterly1_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_quarterly1_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                               <b><asp:Label ID="l_c_initial_inquiry_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_initial_inquiry_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1" ></asp:TextBox>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_review_sar_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_sar_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_initial_interview_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_initial_interview_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1" ></asp:TextBox>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_review_quarterly3_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_quarterly3_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_case_assign_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_case_assign_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1"></asp:TextBox>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_review_mw_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_mw_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_eligibility_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_eligibility_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1" ></asp:TextBox>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_date_consent" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date_consent"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                            </td>
                            <td width="5" height="20">
                            </td>
                            <td>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_date_waiver" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date_waiver"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="3">
                                <font color="#3366ff"><b>MEDICAL</b></font></td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_qol" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_qol" runat="server" CssClass="inface" MaxLength=15  TabIndex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_medical_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_medical_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="3"></asp:TextBox>
                            </td>
                            <td colspan="3"></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_psychological_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_psychological_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="3"></asp:TextBox>
                            </td>
                            <td colspan="3" style="width:515px"></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_comment_1" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_1" runat="server" CssClass="inface" MaxLength=60 TabIndex="4"></asp:TextBox>
                            </td>
                            <td colspan="2" ></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_comment_2" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_2" runat="server" CssClass="inface" MaxLength=60 TabIndex="4"></asp:TextBox>
                            </td>
                            <td colspan="2" ></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_comment_3" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_3" runat="server" CssClass="inface" MaxLength=60 TabIndex="4"></asp:TextBox>
                            </td>
                            <td colspan="2"></td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_AD" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_unit_area" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_unit_area" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd23" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Area/Group&QueryField=AREA&CheckField=c_unit_area')" tabindex="-1" />
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_mis" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mis" runat="server" CssClass="inface" MaxLength=8></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_case_assign_manager" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_case_assign_manager" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td colspan=3 width="515"></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_status" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd24" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Current Status&QueryField=STATUS&CheckField=c_status')"  tabindex="-1"/>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_status_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_status_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_previous_status" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_previous_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd25" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Previous Status&QueryField=STATUS&CheckField=c_previous_status')"  tabindex="-1"/>
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_previous_status_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_previous_status_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_offsite_location" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_offsite_location" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                   Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd26" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_offsite_location')" tabindex="-1" />
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                               <b><asp:Label ID="l_c_box_number" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_number" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_chart_2" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chart_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd27" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_chart_2')" tabindex="-1" />
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_box_2" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_2" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_chart_3" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chart_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd28" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_chart_3')" tabindex="-1" />
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_box_3" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_3" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_chart_4" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chart_4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd29" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_chart_4')"  tabindex="-1"/> 
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_box_4" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_4" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_RE" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" tabindex="1"></asp:TextBox>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_name_last" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_name_last" runat="server" CssClass="inface" MaxLength=14 tabindex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_screener" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_screener" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd30" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Screener&QueryField=SCREENER&CheckField=c_ref_screener')" tabindex="-1"/> 
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                               <b><asp:Label ID="l_c_ref_name_first" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_name_first" runat="server" CssClass="inface" MaxLength=11 tabindex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_source" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd31" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Referral Source&QueryField=REF SOURCE CODE&CheckField=c_ref_source')"  tabindex="-1"/> 
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_phone_1" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_phone_1" runat="server" CssClass="inface" MaxLength=12 tabindex="2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_relationship" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="625" colspan="4">
                                <asp:DropDownList ID="c_ref_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="25" Width="235" OnClick="DataChanged()" tabindex="1">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd32" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Relationship&QueryField=RELATIONSHIP&CheckField=c_ref_relationship')"  tabindex="-1"/> 
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:8px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_date" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" tabindex="3"></asp:TextBox>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_name_last" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_name_last" runat="server" CssClass="inface" MaxLength=14 tabindex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_screener" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_2_screener" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                   Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd33" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Screener&QueryField=SCREENER&CheckField=c_ref_2_screener')" tabindex="-1"/> 
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_name_first" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_name_first" runat="server" CssClass="inface" MaxLength=11 tabindex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_source" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" align="left" width="300">
                                <asp:DropDownList ID="c_ref_2_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd34" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Other Referral Source&QueryField=REF SOURCE CODE&CheckField=c_ref_2_source')" tabindex="-1"/> 
                            </td>
                            <td align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_phone_1" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_phone_1" runat="server" CssClass="inface" MaxLength=12 tabindex="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_relationship" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td align="left" align="left" width="625" colspan="4">
                                <asp:DropDownList ID="c_ref_2_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="20" Width="235" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                                <input type="button" id="btnAdd35" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Relationship&QueryField=RELATIONSHIP&CheckField=c_ref_2_relationship')" tabindex="-1" /> 
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" height="20">
                                <b><asp:Label ID="l_c_ref_2_agency_line_1" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_ref_2_agency_line_1" runat="server" CssClass="inface" MaxLength=30 tabindex="5"></asp:TextBox><br />
                                <asp:TextBox ID="c_ref_2_agency_line_2" runat="server" CssClass="inface" MaxLength=30 tabindex="5"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_AM" style="display: none">
                <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tr class="tr_common">
                            <td colspan="3" align="center">
                              <asp:Label ID="Label13" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="24px" Text="Education History"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="td_thicksepline">
                            </td>
                        </tr>                                            
                        <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label"><b><asp:Label ID="l_educ1" runat="server" Text="Type of school placement"></asp:Label></b></td>
                            <td style="width: 5px"></td>
                            <td align="left" class="td_unline" align="left" width="70%"><asp:TextBox ID="educ1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3" style="height: 4px;">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label"><b><asp:Label ID="l_educ2" runat="server" Text="When first entered into special education?"></asp:Label></b></td>
                            <td style="width: 5px"></td>
                            <td align="left" class="td_unline" align="left" width="70%"><asp:TextBox ID="educ2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3" style="height: 4px;">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" valign=top><b><asp:Label ID="l_educ3" runat="server" Text="History of school placements"></asp:Label></b></td>
                            <td style="width: 5px"></td>
                            <td align="left" class="td_unline" align="left" width="70%">
                               <asp:textbox id="educ3" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" height="60" width="100%" MaxLength="500"></asp:textbox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="3" style="height: 4px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="td_thicksepline">
                            </td>
                        </tr>
                         <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3" align="center"><asp:Label ID="Label16" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="24px" Text="Vocational History"></asp:Label></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label"><b><asp:Label ID="l_voca1" runat="server" Text="Employment history"></asp:Label></b></td>
                            <td style="width: 5px"></td>
                            <td align="left" class="td_unline" align="left" width="70%"><asp:TextBox ID="voca1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3" style="height: 4px;">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label"><b><asp:Label ID="l_voca2" runat="server" Text="Who obtained jobs?"></asp:Label></b></td>
                            <td style="width: 5px"></td>
                            <td align="left" class="td_unline" align="left" width="70%"><asp:TextBox ID="voca2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3" style="height: 4px;">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label"><b><asp:Label ID="l_voca3" runat="server" Text="Any terminations?"></asp:Label></b></td>
                            <td style="width: 5px"></td>
                            <td align="left" class="td_unline" align="left" width="70%"><asp:TextBox ID="voca3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>                                
                        <tr>
                            <td colspan="3" class="td_thicksepline">
                            </td>
                        </tr>
                         <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                         <tr class="tr_common">
                            <td colspan="3" align="center"><asp:Label ID="Label17" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="24px" Text="Past Agencies Involved"></asp:Label></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3">
                                <table width="100%">
                                     <tr class="tr_common">
                                         <td class="td_label"><b><asp:Label ID="l_pal1" runat="server" Text="Department of Rehab"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td align="left" width="10%"><asp:CheckBox ID="pal1" runat="server" Text="" OnClick="DataChanged()"/></td>
                                         <td width="5"></td>
                                         <td class="td_label"><b><asp:Label ID="l_pal4" runat="server" Text="Mental Health"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td align="left" width="10%"><asp:CheckBox ID="pal4" runat="server" Text="" OnClick="DataChanged()"/></td>
                                         <td width="5"></td>
                                         <td class="td_label"><b><asp:Label ID="l_pal2" runat="server" Text="Child Protection Services"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td align="left" width="10%"><asp:CheckBox ID="pal2" runat="server" Text="" OnClick="DataChanged()"/></td>
                                     </tr> 
                                     <tr class="tr_common">
                                         <td colspan="11" style="height: 4px;">
                                         </td>
                                     </tr>
                                     <tr class="tr_common">
                                         <td class="td_label"><b><asp:Label ID="l_pal5" runat="server" Text="Foster care"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td align="left" width="10%"><asp:CheckBox ID="pal5" runat="server" Text="" OnClick="DataChanged()"/></td>
                                         <td width="5"></td>
                                         <td class="td_label"><b><asp:Label ID="l_pal6" runat="server" Text="United Cerebral Palsy"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td align="left"  width="10%"><asp:CheckBox ID="pal6" runat="server" Text="" OnClick="DataChanged()"/></td>
                                         <td width="5"></td>
                                         <td class="td_label"><b><asp:Label ID="l_pal3" runat="server" Text="Adult Protection Services"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td align="left"  width="10%"><asp:CheckBox ID="pal3" runat="server" Text="" OnClick="DataChanged()"/></td>
                                     </tr> 
                                     <tr class="tr_common">
                                         <td colspan="11" style="height: 4px;">
                                         </td>
                                     </tr>
                                     <tr class="tr_common">
                                         <td valign="top" class="td_label"><b><asp:Label ID="l_pal7" runat="server" Text="Others"></asp:Label></b></td>
                                         <td width="5"></td>
                                         <td colspan=9 align="left">
                                            <asp:textbox id="pal7" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60">
                                            </asp:textbox>
                                         </td>
                                     </tr> 
                                     <tr style="height:5px;">
                                         <td colspan="11">
                                         </td>
                                     </tr>
                                     <tr >
                                         <td class="td_thicksepline" colspan="11">
                                         </td>
                                     </tr>
                                </table>
                            </td>
                        </tr>
                </table>
                </div>
                <div id="Consumer_CT" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign=middle>
	                                <td align=center>
			                           <asp:label id="l_ContactList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">CONTACT LIST</asp:label>
			                        </td>
			                        <td align=left width="300px">
				                       <asp:Button ID="BtnAddCo" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px"></asp:Button>
                                    </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_contact" runat="server" PageSize="8" AllowPaging="True" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="True" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="s_number" HeaderText="Number" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="s_name_first" HeaderText="First Name" SortExpression="s_name_first">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_name_last" HeaderText="Last Name" SortExpression="s_name_last">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="Relationship" HeaderText="Relationship" SortExpression="Relationship">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="language" HeaderText="Language" SortExpression="Language">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Deceased" HeaderText="EmergencyNotify" SortExpression="Deceased">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_phone_1" HeaderText="HomePhone" SortExpression="s_phone_1">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_phone_2" HeaderText="WorkPhone" SortExpression="s_phone_2">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="s_group" HeaderText="s_group" Visible="False"></asp:BoundColumn>
					    </Columns>
					    <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				        </asp:datagrid> 
				        	</td>
			            </tr>     
                    </table>
                </div>
                <div id="Consumer_PG" style="display: none">
                    <br />
                    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                   <tr style="height: 30px;" valign="middle">
	                      <td align="center">
			                 <asp:label id="Label1" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">PROGRAM ENROLLMENT LIST</asp:label>
			              </td>
			              <td align=left width="300px">
				             <asp:Button ID="BtnAddProg" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px"></asp:Button>
                          </td>
		               </tr>
		            </table>
				    <br />	      
                    <asp:DataGrid ID="dg_program" runat="server" CssClass="grd_body"
                         Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                    <HeaderStyle CssClass="grd_head">
                    </HeaderStyle>
                    <ItemStyle CssClass="grd_item"></ItemStyle>
                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                    <Columns>              
                       <asp:BoundColumn DataField="id" HeaderText="id" Visible="False" ></asp:BoundColumn> 
                       <asp:BoundColumn DataField="selectname" HeaderText="Program" SortExpression="selectname">
                          <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                       </asp:BoundColumn>  
                       <asp:BoundColumn DataField="enrollmentdate" HeaderText="Enrollment Date" SortExpression="enrollmentdate" DataFormatString="{0:MM/dd/yyyy}">
                          <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                       </asp:BoundColumn>
                       <asp:BoundColumn DataField="dropdate" HeaderText="Termination Date" SortExpression="dropdate" DataFormatString="{0:MM/dd/yyyy}">
                          <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                       </asp:BoundColumn>   
                       <asp:BoundColumn DataField="ProgFreqName" HeaderText="Program Frequency" SortExpression="ProgFreqName">
                          <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                       </asp:BoundColumn>         
                       <asp:TemplateColumn HeaderText="Edit">
						  <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						  <ItemTemplate>
							<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" 
							        BorderWidth="0"></asp:HyperLink>
						  </ItemTemplate>
					   </asp:TemplateColumn>
					   <asp:TemplateColumn HeaderText="DELETE">
						  <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						  <ItemTemplate>
							<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
						  </ItemTemplate>
					   </asp:TemplateColumn>     
                    </Columns>
                    </asp:DataGrid>
                </div>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
