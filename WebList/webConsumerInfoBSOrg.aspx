<%@ Page Language="c#" Inherits="Virweb2.WebList.webConsumerInfoBSOrg" Codebehind="webConsumerInfoBSOrg.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::General Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>     
    <script type="text/JavaScript">
    <!--
       
    function doseltd(obj)
    {
       /*if (isIE())
       {            
          for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	        var e=tr_info.childNodes[i];		        	   
		    e.style.color="#000000";
		    e.style.cursor="hand";	      	        
	      }
	      obj.style.color="#990066";
	      obj.style.cursor="auto";
       }
       else*/
       {
          TD_FS.style.color="";
          //TD_FS.style.cursor="pointer";
          TD_DC.style.color="";
          //TD_DC.style.cursor="pointer";
          TD_AD.style.color="";
          //TD_AD.style.cursor="pointer";
          
	      obj.style.color="#990066";	
          //obj.style.cursor="auto";         
       }         
	   Consumer_FS.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   
	   switch(obj.id)
	   {
	      case "TD_FS":
			 Consumer_FS.style.display="";
			 document.ConsumerInfo.now_div_flag.value="1";	       
		     break;		  
          case "TD_DC":    
			 Consumer_DC.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="2";	    	
		     break;   
          case "TD_AD":    
			 Consumer_AD.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="3";		    	 
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

		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_FS.style.color="";
          //TD_FS.style.cursor="pointer";
          TD_DC.style.color="";
          //TD_DC.style.cursor="pointer";
          TD_AD.style.color="";
          //TD_AD.style.cursor="pointer";
       }         
	   Consumer_FS.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	  
	   switch(obj_id)
	   {
	      case "TD_FS":
			 Consumer_FS.style.display="";
			 TD_FS.style.color="#990066";
             //TD_FS.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="1";	       
		     break;  
		  case "TD_DC":    
			 Consumer_DC.style.display="";
			 TD_DC.style.color="#990066";
             //TD_DC.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="2";		    	
		     break;   
		  case "TD_AD":    
			 Consumer_AD.style.display="";	
			 TD_AD.style.color="#990066";
             //TD_AD.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="3";		    	 
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

		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_FS.style.color="";
          //TD_FS.style.cursor="pointer";
          TD_DC.style.color="";
          //TD_DC.style.cursor="pointer";
          TD_AD.style.color="";
          //TD_AD.style.cursor="pointer";
       }         
	   Consumer_FS.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";

	   switch(flag)
	   {
	      case 1:
			 Consumer_FS.style.display="";
			 TD_FS.style.color="#990066";
             //TD_FS.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="1";	       
		     break;
		 
		  case 2:    
			 Consumer_DC.style.display="";
			 TD_DC.style.color="#990066";
             //TD_DC.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="2";		    	
		     break;   
		  case 3:    
			 Consumer_AD.style.display="";	
			 TD_AD.style.color="#990066";
             //TD_AD.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="3";		    	 
		     break;    
		  
	   }
    }  

    function print_click()
    {
       var flag=document.ConsumerInfo.now_div_flag.value.toString();   
       if (flag > 2)
       {
          PopupMessage(10);
       }
       else
       {
          var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
          var UserAct=document.ConsumerInfo.UserAct.value.toString();         
          winhref("PrintConsumerInfoBS.aspx?c_key="+consumer_key+"&flag="+flag+"&UserAct="+UserAct,"PrintConsumerInfoBS"); 
       }         
    }
    
    function printall_click()
    {
       PopupMessage(10);
    /*
       var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
       var UserAct=document.ConsumerInfo.UserAct.value.toString();         
       winhref("PrintConsumerInfoSCLARC.aspx?c_key="+consumer_key+"&flag=0&UserAct="+UserAct,"PrintConsumerInfoSCLARC");     
    */     
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
           document.getElementById("btnPrint").disabled=true;
       }   
       else
       {
          document.getElementById("btnPrint").disabled=false;
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
      
    function save_click() {
        NoCreateIDNotes();
        return true;
    }

    function back_click() {
        if (Confirm_Page())
           document.location.replace('webConsumerList.aspx'); 
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
     function ShowAddress() 
     {
          if(document.getElementById("map_canvas").style.display == ""){
		      document.getElementById("map_canvas").style.display = "none";	
		      return;	
				
	     } else {
		     document.getElementById("map_canvas").style.display = "";
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
<body id="body" runat="server" style="cursor:wait">  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ConsumerInfo" method="post" runat="server">   
    <input type="submit" value="test" style="display:none;" /> 
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" />   
    <input id="NoConfirm"  type="hidden" value="0" />
    <asp:hiddenfield id="dataChg" runat="server" value="0" />
    <input id="SaveSameName"  type="hidden" runat="server" value="0" />
    <input id="NewSameName"   type="hidden" runat="server" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />  
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" /> 
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" value="Y" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
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
            <asp:label id="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">ADD NEW CLIENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input UCI:</asp:label>
            <asp:TextBox ID="NewUCI" runat="server" Style="width: 65px" Width="65" MaxLength="8" Visible="false"></asp:TextBox>            
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
            <table id="TABLE_Label" cellspacing="0" cellpadding="0" runat="server" visible="false"  >
                <tr id="tr_info">
                    <td id="TD_FS"  style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Face Sheet</u></b>
                    </td>         
                    <td id="TD_DC"  class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Status Dates</u></b>
                    </td>
                    <td id="TD_AD"  class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Administration</u></b>
                    </td>                
                </tr>
            </table>
        </td>
      </tr>
    </table> 
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
    <table class="table_maindiv">
        <tr>
            <td valign="top" align="center" width="100%" height="100%">
                <div id="Consumer_FS">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" class="td_label">
                                <b><asp:Label ID="l_c_attention" runat="server" Text="Attention:" ToolTip="Attention" ></asp:Label></b></td>
                          <td width="5" >
                          </td>
                          <td colspan="4" style="width: 776px" class="td_unline" align="left" >
                                <asp:TextBox ID="c_attention" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px;" align="right" class="td_label">
                               <b><asp:Label ID="l_c_name_last" runat="server" Text="Name:"></asp:Label></b>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 300px">
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr class="tr_common">
                                 <td class="td_unline" align="left" style="width: 105px">
                                  <asp:TextBox ID="c_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>
                                 <td width="10"></td> 
                                 <td class="td_unline" align="left" style="width: 25px">   
                                  <asp:TextBox ID="c_name_mi" runat="server" CssClass="inface" MaxLength="1"></asp:TextBox>
                                 </td> 
                                 <td width="10" style="height: 20px"></td>  
                                 <td class="td_unline" align="left" width="105" style="height: 20px">
                                  <asp:TextBox ID="c_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>     
                               </tr>   
                             </table>       
                          </td>
                          <td align="right" class="td_label"  style="width: 210px">
                               <b><asp:Label ID="l_c_gender" runat="server" Text="Gender:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300" >
                                <asp:DropDownList ID="c_gender" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                          </td>
                        </tr>
                        <tr style="height: 5px;">
                          <td style="width: 210px ">
                          </td>
                          <td colspan="5">
                               <asp:RequiredFieldValidator ControlToValidate="c_name_first" Display="dynamic" ErrorMessage="Please enter first name"
							         runat="server" ID="vNameFirst" />
							   <asp:RequiredFieldValidator ControlToValidate="c_name_last" Display="dynamic" ErrorMessage="Please enter last name"
							         runat="server" ID="vNameLast" />
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_aka_last" runat="server" Text="AKA Name (s):"></asp:Label></b>
                            </td>
                            <td style="height: 20px" width="5">
                            </td>
                            <td width="300" style="height: 20px">
                               <table align="left" cellspacing="0" cellpadding="0" border="0">
                                 <tr>
                                   <td class="td_unline" align="left" width="105" style="height: 20px">
                                    <asp:TextBox ID="c_name_aka_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                   </td>
                                   <td width="10" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="25" style="height: 20px">   
                                    <asp:TextBox ID="c_name_aka_mi" runat="server" CssClass="inface" MaxLength="1"></asp:TextBox>
                                   </td> 
                                   <td width="10" style="height: 20px"></td>  
                                   <td class="td_unline" align="left" width="105" style="height: 20px">
                                    <asp:TextBox ID="c_name_aka_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                   </td>     
                                 </tr>   
                               </table>  
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_ethnicity" runat="server" Text="Ethnicity:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_maiden_last" runat="server" Text="Maiden Name:"></asp:Label></b>
                            </td>
                            <td style="height: 20px"  width="5">
                            </td>
                            <td width="300" >
                               <table align="left" cellspacing="0" cellpadding="0" border="0">
                                 <tr>
                                   <td class="td_unline" align="left" width="105" style="height: 20px">
                                     <asp:TextBox ID="c_name_maiden_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                   </td> 
                                   <td width="45" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="105" style="height: 20px"> 
                                     <asp:TextBox ID="c_name_maiden_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                   </td>     
                                 </tr>   
                               </table>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_language" runat="server" Text="Language:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_dob" runat="server" Text="Date of Birth/Loc:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                               <table cellspacing="0" cellpadding="0" border="0">
                                 <tr>
                                   <td class="td_unline" align="left" width="80" style="height: 20px">
                                       <asp:TextBox ID="c_dob" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                           onfocus="DataChanged();showcalendar(event, this);" width="80" ></asp:TextBox>
                                       
                                   </td>
                                   <td width="5" style="height: 20px"></td>
                                   <td class="td_unline" align="left" width="180" style="height: 20px">
                                     <asp:TextBox ID="c_birthplace" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                   </td>   
                                   <td width="30" style="height: 20px">
                                       <asp:CompareValidator ControlToValidate="c_dob" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="dob_dt" Width="25px"></asp:CompareValidator>
                                   </td>   
                                 </tr>   
                               </table> 
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_hair_color" runat="server" Text="Hair Color:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_hair_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_marital_status" runat="server" Text="Marital Status:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_marital_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="250" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_eye_color" runat="server" Text="Eye Color:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_eye_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_id" runat="server" Text="Case Manager:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="250" OnClick="DataChanged();" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_height_weight" runat="server" Text="CDER-ESR Ht/Wt:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_height_weight" runat="server" CssClass="inface" MaxLength="20" Width="60px"></asp:TextBox>&nbsp;inch&nbsp;/&nbsp;
                                <asp:TextBox ID="c_weight" runat="server" CssClass="inface" MaxLength="20" Width="60px"></asp:TextBox>&nbsp;lbs                                
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_1" runat="server" Text="Primary Phone:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_1_1" runat="server" CssClass="inface" MaxLength="3" 
                                         onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_1_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_3" runat="server" Text="(Optional)" Width="90"></asp:Label></b>
                                <asp:DropDownList ID="c_phone_3_label" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="80" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_3_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_3_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_phone_3_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td> 
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">                            
                            <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_2" runat="server" Text="Work Phone:"></asp:Label></b>
                            </td>
                            <td width="5"  style="height: 20px">
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_2_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_2_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td>
                            <td align="right" class="td_label"  style="width: 183px">
                                <b><asp:Label ID="l_c_text8" runat="server" Text="Survey Phone:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_text8_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_text8_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_text8_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_text8_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_text8_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>
                                </table>  
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">                              
                            <td style="width: 183px" align="right" width="183" class="td_label" >
                                <b><asp:Label ID="l_c_email" runat="server" Text="Email:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td colspan="4" class="td_unline" align="left">
                                <asp:TextBox ID="c_email" runat="server" CssClass="inface" MaxLength=45 Width="380px"></asp:TextBox>
                               <input type="button" id="btnSendEmail" name="btnSendEmail" value="SendEmail" style="width:80px;" class="buttonbluestyle" 
                                       onclick="javascript:sendemail_click();" /> 
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
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_residence_number" runat="server" Text="Vendor Number:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_residence_number" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>			                 
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_residence_current" runat="server" Text="Residence Type:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_residence_current" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="290" OnClick="DataChanged()" >
                                </asp:DropDownList>                               
                            </td>                            
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 183px">
                                <b><asp:Label ID="l_c_residence_date" runat="server" Text="Start Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_residence_date"  onclick="DataChanged();showcalendar(event, this);" 
                                   onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" width="80px"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_residence_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="residence_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_residence_prior" runat="server" Text="Prior Residence Type:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_residence_prior" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="290" OnClick="DataChanged()" >
                                </asp:DropDownList>                               
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
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" width="210" class="td_label"></td>
                            <td colspan="2" style="width: 305px; height: 20px;" align="left" width="305" class="td_label">
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
                         <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_1" runat="server" Text="C/O Name:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_address_line_1" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label"  style="width: 183px"></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_line_1" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_2" runat="server" Text="Street:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
							<td class="td_unline" align="left" width="300">
                                <span style="float:left;" id="streetText">
                                <asp:TextBox ID="c_address_line_2" runat="server" CssClass="inface" MaxLength="30" width="210"></asp:TextBox>
                                </span>
								<span style="float:right;padding-right:5px;padding-bottom:1px;" id="mapHref">
								<div id="map_canvas" style="width: 500px; height: 300px;position: absolute;display:none;margin-top:25px;" ></div>
								<a href="#" onclick="ShowAddress(); return false;" title="Map">
								<img src="../img/map.gif" border="0" /></a>
								</span>
                            </td>
                            <td align="right" class="td_label" style="width: 183px"></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_line_2" runat="server" CssClass="inface" MaxLength="30" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_city" runat="server" Text="City and State:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr><td width="230" style="width:230px">
                               <span id="cityText">
                               <asp:TextBox ID="c_address_city" runat="server" CssClass="inface" Width="210" MaxLength="19" ></asp:TextBox>
                               </span>
                               </td>
                               <td width="70" style="width:70px">
                               <span id="stateText">
                               <asp:TextBox ID="c_address_state" runat="server" CssClass="inface" Width="30" MaxLength="2" ></asp:TextBox>
                               </span>  
                               </td></tr>
                             </table>
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" ></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                               <asp:TextBox ID="c_mailing_address_city" runat="server" CssClass="inface" Width="210" MaxLength="19" ></asp:TextBox>
                               &nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="c_mailing_address_state" runat="server" CssClass="inface" Width="30" MaxLength="2" ></asp:TextBox>   
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_address_zip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300" id="zipCodeText">
                                <asp:TextBox ID="c_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 ></asp:TextBox>
                                <asp:DropDownList ID="c_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="120" CssClass="infaceDrop" OnClick="DataChanged()" >
                                </asp:DropDownList>                                  
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" ></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 ></asp:TextBox>
                                <asp:DropDownList ID="c_mailing_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="120" CssClass="infaceDrop" OnClick="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_physical_county" runat="server" Text="Physical County:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300" id="countryText">
                                <asp:DropDownList ID="c_physical_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                         Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="td_label"  style="width: 183px">
                                <b><asp:Label ID="l_c_legal_county" runat="server" Text="Legal County:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300" >
                                <asp:DropDownList ID="c_legal_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                         Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
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
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_1" runat="server" Text="Legal Status 1:"></asp:Label></b></td>
                            <td  style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_legal_status_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged();" >
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_date_1" runat="server" Text="Legal Status Date 1:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_legal_status_date_1"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="80px"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_legal_status_date_1" Operator="DataTypeCheck" Type="Date" 
                                         Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="legal_status_1_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_2" runat="server" Text="Legal Status 2:"></asp:Label></b>
                            </td>
                            <td  style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_legal_status_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_date_2" runat="server" Text="Legal Status Date 2:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_legal_status_date_2"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="80px"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_legal_status_date_2" Operator="DataTypeCheck" Type="Date" 
                                    Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="legal_status_2_dt"></asp:CompareValidator>
                            </td>
                        </tr>                                    
                    </table>
                </div>
                            
                <div id="Consumer_DC" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_status_date_dup" runat="server" Text="Status Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_status_date_dup" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_case_level" runat="server" Text="Frequency of Contact:"></asp:Label></b>
                            </td>
                            <td width="5" ></td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_case_level" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" Enabled="false">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6"> </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="3" >
                                <font color="#3366ff"><b>EARLY START INTAKE</b></font>
                            </td>
                            <td align="center" colspan="3" >
                                <font color="#3366ff"><b>TICKLER DATES</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date05" runat="server" Text="Initial Inquiry Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date05" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date05" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date05_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_pcp_ifsp_date" runat="server" Text="PCP/IFSP/PP Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_pcp_ifsp_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_pcp_ifsp_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_pcp_ifsp_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date06" runat="server" Text="Initial Interview Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date06" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date06" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date06_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date10" runat="server" Text="PCP/IFSP/PP Report:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date10" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date10" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date10_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="Label3" runat="server" Text="Proposed Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="Label4" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_quarterly1_date" runat="server" Text="Quarterly 1 Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_quarterly1_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_quarterly1_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_quarterly1_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date05_dup" runat="server" Text="Due Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_date05_dup" runat="server" CssClass="infaceText" width="80px"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_sar_date" runat="server" Text="Semi-Annual Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_sar_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_sar_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_sar_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text5" runat="server" Text="Intake CM:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_text5" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_quarterly3_date" runat="server" Text="Quarterly 3 Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_quarterly3_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_quarterly3_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_quarterly3_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date07" runat="server" Text="Assigned Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date07" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date07" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date07_dt"></asp:CompareValidator>
                                
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date12" runat="server" Text="Prior PCP/IFSP/PP Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date12" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date12" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date12_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date08" runat="server" Text="Eligibility Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date08" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date08" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date08_dt"></asp:CompareValidator>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="3">
                                <font color="#3366ff"><b>LANTERMAN INTAKE:</b></font>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_cder_esr_date" runat="server" Text="CDER/ESR:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_cder_esr_date" runat="server" CssClass="inface"  
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_cder_esr_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_cder_esr_dt"></asp:CompareValidator>
                            </td>
                        </tr>   
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>                             
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_initial_inquiry_date" runat="server" Text="Initial Inquiry Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_initial_inquiry_date" runat="server" CssClass="inface" 
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_initial_inquiry_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="initial_inquiry_dt"></asp:CompareValidator>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_date_waiver" runat="server" Text="CDER Exp. Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date_waiver" runat="server" CssClass="inface" 
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date_waiver" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date_waiver_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_initial_interview_date" runat="server" Text="Initial Interview Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_initial_interview_date" runat="server" CssClass="inface"
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_initial_interview_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="initial_interview_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_mw_date" runat="server" Text="Medicaid Waiver:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_mw_date" runat="server" CssClass="inface" 
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_mw_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_mw_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="Label6" runat="server" Text="Proposed Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="Label7" runat="server" CssClass="infaceText" Width="80"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date_consent" runat="server" Text="Consent Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date_consent" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date_consent" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date_consent_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_initial_inquiry_date_dup" runat="server" Text="Due Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_initial_inquiry_date_dup" runat="server" CssClass="infaceText" width="80"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_qol" runat="server" Text="LQA:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_qol" runat="server" CssClass="inface" MaxLength="15" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text6" runat="server" Text="Intake CM:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_text6" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date11" runat="server" Text="Assigned Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date11" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date11" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date11_dt"></asp:CompareValidator>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_eligibility_date" runat="server" Text="Eligibility Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_eligibility_date" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_eligibility_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="eligibility_dt"></asp:CompareValidator>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date01" runat="server" Text="Next Eligibility Review:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date01" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date01" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date01_dt"></asp:CompareValidator>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                    </table>
                </div>
                <div id="Consumer_AD" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_id_dup" runat="server" Text="Case Manager:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_cm_id_iddup" runat="server" CssClass="infaceText" Width="60"></asp:Label>/
                                <asp:DropDownList ID="c_cm_id_dup" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="170" ReadOnly="true" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_case_assign_date" runat="server" Text="Case Assign Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_case_assign_date" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_case_assign_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="case_assign_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_type" runat="server" Text="Case Manager Type:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_type" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnClick="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_uci" runat="server" Text="UCI Number:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_uci" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_unit_area" runat="server" Text="Area/Group:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_unit_area" runat="server" DataValueField="employeeid" DataTextField="groupname"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_mis" runat="server" Text="MIS Number"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mis" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_case_assign_manager" runat="server" Text="Supervisor"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_case_assign_manager" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_status" runat="server" Text="Current Status:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_status_date" runat="server" Text="Current Status Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_status_date" runat="server" CssClass="inface" 
                                     onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_status_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="status_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_agency" runat="server" Text="CM Agency:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnClick="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_report_agency" runat="server" Text="Report Agency:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_report_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnClick="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text4" runat="server" Text="Prior Case Manager:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_text4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_previous_status" runat="server" Text="Previous Status"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_previous_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_previous_status_date" runat="server" Text="Previous Status Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_previous_status_date" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_previous_status_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="previous_status_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_comment_1" runat="server" Text="Comments 1:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_1" runat="server" CssClass="inface" MaxLength="60" ></asp:TextBox>
                            </td>
                            <td colspan="2" ></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_comment_2" runat="server" Text="Comments 2:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_2" runat="server" CssClass="inface" MaxLength="60" ></asp:TextBox>
                            </td>
                            <td colspan="2" ></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_comment_3" runat="server" Text="Comments 3:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_3" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                            </td>
                            <td colspan="2"></td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_last_mod_by" runat="server" Text="Last Modified By:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_last_mod_by" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="235" OnClick="DataChanged()" ReadOnly="True">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_last_mod_date" runat="server" Text="Last Modified Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_last_mod_date" runat="server" CssClass="infaceText" Width="200"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_offsite_location" runat="server" Text="Chart Storage #1:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_offsite_location" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_box_number" runat="server" Text="Box #1:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_number" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_chart_2" runat="server" Text="Chart Storage #2:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chart_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_box_2" runat="server" Text="Box #2:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_2" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_chart_3" runat="server" Text="Chart Storage #3:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chart_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_box_3" runat="server" Text="Box #3:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_3" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_chart_4" runat="server" Text="Chart Storage #4:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chart_4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_box_4" runat="server" Text="Box #4:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_box_4" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
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
