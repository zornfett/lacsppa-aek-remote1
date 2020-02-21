<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConsumerFaceSheet.aspx.cs" Inherits="Virweb2.WebList.WebConsumerFaceSheet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::Face Sheet:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">   
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>  
    <script language="javascript">
    <!--
        function sendemail_click() {
            NoConfirmExit();
            var EmailAdd = document.ConsumerInfo.c_email.value.toString();
            //alert(EmailAdd);
            window.location.href = "mailto:" + EmailAdd;
        }
        function display_weather() {
            var zipcode = "";
            zipcode = document.ConsumerInfo.c_address_zip.value.toString();
            if (JTrim(zipcode) == "") {
                alert("Please input zipcode!");
            }
            else {
                var url = "weather.aspx?zipcode=" + zipcode.toString();
                window.showModalDialog(url, self, 'status:yes;dialogWidth:400px;dialogHeight:400px;help:no;scroll:no;resizable:yes');
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

      function Refresh_Data() {
            alert("Update successful!");
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshMyData();
            }
            else {
                window.opener.RefreshMyData();
            }
            window.focus();
        }
      
     function print_click()
     {
        NoConfirmExit();
        var flag="1";   
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        var UserAct=document.ConsumerInfo.UserAct.value.toString();         
        winhref("PrintConsumerInfo.aspx?c_key="+consumer_key+"&flag="+flag+"&UserAct="+UserAct,"PrintConsumerInfo");          
     }

    //-->
    </script>  
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
    <!--
        function ShowAddress() {
            if (document.getElementById("map_canvas").style.display == "") {
                document.getElementById("map_canvas").style.display = "none";
                document.getElementById("c_school").style.display = "";
                document.getElementById("c_residence_current").style.display = "";
                document.getElementById("c_legal_county").style.display = "";
                return;

            } else {
                document.getElementById("map_canvas").style.display = "";
                document.getElementById("c_school").style.display = "none";
                document.getElementById("c_residence_current").style.display = "none";
                document.getElementById("c_legal_county").style.display = "none";
            }
            var geocoder = new google.maps.Geocoder();
            var myOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            var address = $("#streetText input").attr('value') + ', ' + $("#cityText input").attr('value') + ', ' + $("#stateText input").attr('value') + ', ' + $("#zipCodeText input").attr('value');
            if (geocoder) {
                geocoder.geocode({ 'address': address }, function (results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        map.setCenter(results[0].geometry.location);
                        var marker = new google.maps.Marker({
                            map: map,
                            position: results[0].geometry.location
                        });
                        var message = address;
                        var infowindow = new google.maps.InfoWindow(
               { content: message
               });
                        google.maps.event.addListener(marker, 'click', function () {
                            infowindow.open(map, marker);
                        });
                    }
                    else {
                        document.getElementById("map_canvas").style.display = "none";
                        switch (status) {
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
    //-->
    </script>
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ConsumerInfo" runat="server">
         <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
         <input id="NoConfirm" type="hidden" value="0" />
          <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />  
          
          <input id="SaveSameName"  type="hidden" runat="server" value="0" />
          <input id="NewSameName"   type="hidden" runat="server" value="0" />
         <div align="center" style="width: 100%;  height:40px">
            <table class="table_common" border="0" cellpadding="0" style="border-collapse: collapse" >                
                <tr style="height: 30px" valign="top">
                    <td align="left" valign="middle" >
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CONSUMER INFO</asp:Label>
                    </td>
                    <td align="left" valign="middle" width="150px">                        
                        <asp:Button ID="btnEdit" runat="server" Text="Save"  Style="width: 60px"
                            CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" 
                            onclick="btnEdit_Click" ></asp:Button>
                        <input type="button" id="btnPrint" name="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();" runat="server" />
                    </td>
                </tr>
                <tr valign="top">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" style="position:relative;WIDTH:100%; height:590px; overflow: auto ">
           <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" style="width:90%">
                <tr class="tr_common">
                    <td colspan="2" style="height: 3px;" align="right"> 
                         <input type="button" ID="btnimage" runat="server" value="Document List" style="width:100px;"  class="buttonbluestyle"  tabindex="-1"  />
                         <input type="button" id="btntickler" value="Tickler List" style="width:100px;"  class="buttonbluestyle"  runat="server"  tabindex="-1"  onclick="popupDialogWideWithWindow('webTicklerTaskList.aspx?tickler_flag=2', window.mainlist)" />
                    </td>
                 </tr>
                 <tr>
                      <td colspan="2"  class="td_thicksepline"></td>
                 </tr>
                 <tr class="tr_common">
                     <td>
                          <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width:100%">
                                 <tr style="height: 20px;">
                                        <td  style="width:120px;" align="right" class="td_label">
                                            <b><asp:Label ID="l_c_name_last" runat="server" Text="Name:"></asp:Label></b></td>
                                        <td  width="5px"></td>
                                        <td width="290px">
                                           <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width:100%">
                                             <tr>
                                               <td class="td_unline" align="left" width="120px">
                                                <asp:TextBox ID="c_name_first" runat="server" CssClass="inface" MaxLength="20" TabIndex="1"></asp:TextBox>
                                               </td>
                                               <td width="10px"></td> 
                                               <td class="td_unline" align="left"  width="25px">   
                                                   <asp:TextBox ID="c_name_mi" runat="server" CssClass="inface"  MaxLength="1"  TabIndex="1"></asp:TextBox>
                                               </td> 
                                               <td width="10" ></td>  
                                               <td class="td_unline" align="left" width="120px">
                                                <asp:TextBox ID="c_name_last" runat="server" CssClass="inface" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td>     
                                             </tr>   
                                           </table>       
                                        </td>
                                    </tr>
                                    <tr style="height:16px">
                                        <td></td>
                                        <td  colspan="2" >
                                        <asp:RequiredFieldValidator ControlToValidate="c_name_first" Display="dynamic" ErrorMessage="Please enter first name"
							                       runat="server" ID="vNameFirst"  tabindex="-1"/>
							            <asp:RequiredFieldValidator ControlToValidate="c_name_last" Display="dynamic" ErrorMessage="Please enter last name"
							                       runat="server" ID="vNameLast" tabindex="-1" />
                                        </td>
                                    </tr>
                                    <tr class="tr_common" style="height: 20px;">
                                        <td style="width:120px;" align="right" class="td_label">
                                            <b><asp:Label ID="l_c_name_aka_last" runat="server" Text="AKA Name (s):"></asp:Label></b></td>
                                        <td  width="5px">
                                        </td>
                                        <td >
                                           <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width:100%">
                                             <tr>
                                               <td class="td_unline" align="left" width="120px">
                                                 <asp:TextBox ID="c_name_aka_first" runat="server" CssClass="inface" MaxLength=20  TabIndex="1"></asp:TextBox>
                                             </td>
                                               <td width="10px"></td> 
                                               <td class="td_unline" align="left" width="25px">   
                                                <asp:TextBox ID="c_name_aka_mi" runat="server" CssClass="inface"  MaxLength=1  TabIndex="1"></asp:TextBox>
                                               </td> 
                                               <td width="10px"></td>  
                                               <td class="td_unline" align="left" width="120px">
                                                <asp:TextBox ID="c_name_aka_last" runat="server" CssClass="inface" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td>     
                                             </tr>   
                                           </table>  
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="height: 3px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common" style="height: 20px">
                                        <td style="width:120px;" align="right" class="td_label" >
                                            <b><asp:Label ID="l_c_name_maiden_last" runat="server" Text="Maiden Name:"></asp:Label></b></td>
                                        <td   width="5px">
                                        </td>
                                        <td >
                                           <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width:100%">
                                             <tr>
                                               <td class="td_unline" align="left"width="120px" >
                                                <asp:TextBox ID="c_name_maiden_first" runat="server" CssClass="inface" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td> 
                                               <td width="10px"></td> 
                                               <td  width="25px">                                                  
                                               </td> 
                                               <td class="td_unline" align="left" width="120px"> 
                                                 <asp:TextBox ID="c_name_maiden_last" runat="server" CssClass="inface" MaxLength="20"  TabIndex="1"></asp:TextBox>
                                               </td>     
                                             </tr>   
                                           </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                     <td  align="center"  style="width:220px">
                                &nbsp;<asp:ImageButton ID="viewphoto" runat="server" Height="100px" 
                                    ImageUrl="ImageThumbeNail.aspx?height=100&width=100" 
                                    OnClientClick="popupDialogSmall('ConsumerIMG.aspx');"  tabindex="-1" />
                      </td>
                 </tr>
                 <tr>
                      <td colspan="2" class="td_thicksepline"></td>
                 </tr>
                 <tr style="height:5px">
                     <td colspan="2">
                          <asp:Label ID="c_uci" runat="server" CssClass="infaceText" Visible=false></asp:Label>
                     </td>
                 </tr>
                 <tr class="tr_common">
                     <td colspan="2">
                          <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0"  style="width:100%">
                               <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                          <b><asp:Label ID="l_c_dob" runat="server" Text="Date of Birth:"></asp:Label></b></td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px">
                                         <asp:TextBox ID="c_dob" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="1"></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td align="right" class="td_label" style="width:120px;">
                                          <b><asp:Label ID="l_c_gender" runat="server" Text="Gender:"></asp:Label></b></td>
                                   <td width="5px"></td>
                                   <td width="270px" >
                                      <asp:DropDownList ID="c_gender" runat="server"  Width="210px" OnClick="DataChanged();" TabIndex="2">
                                         <asp:ListItem Value=""></asp:ListItem>
                                         <asp:ListItem Value="M">Male</asp:ListItem>
                                         <asp:ListItem Value="F">Female</asp:ListItem>
                                     </asp:DropDownList>
                                   </td>
                               </tr>
                               <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                               </tr>
                               <tr class="tr_common">
                                    <td style="width:120px;" align="right"  class="td_label">
                                         <b><asp:Label ID="l_c_birthplace" runat="server" Text="Place of Birth:"></asp:Label></b></td>
                                     <td width="5px"></td>
                                    <td class="td_unline" align="left" width="270px">
                                       <asp:TextBox ID="c_birthplace" runat="server" CssClass="inface" MaxLength=50 TabIndex="1"></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td align="right" class="td_label" style="width:120px;">
                                      <b><asp:Label ID="l_c_ethnicity" runat="server" Text="Ethnicity:"></asp:Label></b></td>
                                   <td width="5px"></td>
                                   <td width="270px" >
                                     <asp:DropDownList ID="c_ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                         Width="210px" OnClick="DataChanged()" TabIndex="2">
                                     </asp:DropDownList>
                                     <input type="button" id="btnAdd1" value="Add"  class="buttonbluestyle" style="height:20px;"  onclick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Ethnicity&QueryField=ETHN&CheckField=c_ethnicity');"  TabIndex="-1"  runat="server" />
                                   </td>
                               </tr>
                               <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                               </tr>
                               <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                       <b><asp:Label ID="l_c_marital_status" runat="server" Text="Marital Status:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td width="270px" >
                                      <asp:DropDownList ID="c_marital_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                            Width="210px" OnClick="DataChanged()" TabIndex="1">
                                     </asp:DropDownList>
                                     <input type="button" id="btnAdd2" value="Add"  class="buttonbluestyle"  style="height:20px;" runat="server"
                                         onclick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Marital Status&QueryField=MARS&CheckField=c_marital_status')" TabIndex="-1" />
                                  </td>
                                  <td></td>
                                  <td style="width:120px;" align="right" class="td_label" >
                                      <b><asp:Label ID="l_c_language" runat="server" Text="Language:"></asp:Label></b>
                                  </td>
                                  <td width="5px"></td>
                                  <td width="270px" >
                                      <asp:DropDownList ID="c_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="210px" OnClick="DataChanged()" TabIndex="2">
                                      </asp:DropDownList>
                                      <input type="button" id="btnAdd3" value="Add" style="height:20px;" class="buttonbluestyle"  runat="server"
                                         onclick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Language&QueryField=LANG&CheckField=c_language')" TabIndex="-1" />
                                  </td>
                              </tr>
                              <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                       <b><asp:Label ID="l_c_height_weight" runat="server" Text="Heigth/Weight:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                       <asp:TextBox ID="c_height_weight" runat="server" CssClass="inface" MaxLength=20 TabIndex="1"></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                       <b><asp:Label ID="l_c_hair_color" runat="server" Text="Hair Color:"></asp:Label></b>
                                  </td>
                                  <td width="5px"></td>
                                  <td width="270px" >
                                        <asp:DropDownList ID="c_hair_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                           Width="210px" OnClick="DataChanged()" TabIndex="2">
                                        </asp:DropDownList>
                                        <input type="button" id="btnAdd4" value="Add"  class="buttonbluestyle" style="height:20px;"  runat="server"
                                          onclick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Hair Color&QueryField=CONSUMER HAIR COLOR&CheckField=c_hair_color')" TabIndex="-1" />
                                   </td>
                              </tr>
                              <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_phone_1" runat="server" Text="Home Phone:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                       <asp:TextBox ID="c_phone_1" runat="server" CssClass="inface" MaxLength=15 TabIndex="1"></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_eye_color" runat="server" Text="Eye Color:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td width="270px" >
                                        <asp:DropDownList ID="c_eye_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                           Width="210px" OnClick="DataChanged()" TabIndex="2">
                                        </asp:DropDownList>
                                        <input type="button" id="btnAdd5" value="Add"  class="buttonbluestyle" style="height:20px;"  runat="server"
                                          onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Eye Color&QueryField=CONSUMER EYE COLOR&CheckField=c_eye_color')"  TabIndex="-1" />
                                   </td>
                              </tr>
                              <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_phone_2" runat="server" Text="work Phone:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                       <asp:TextBox ID="c_phone_2" runat="server" CssClass="inface" MaxLength=15 TabIndex="1" ></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_email" runat="server" Text="Email:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px" >
                                        <asp:TextBox ID="c_email" runat="server" CssClass="inface" MaxLength=45  Width="180px" TabIndex="2"></asp:TextBox>
                                        <input type="button" id="btnSendEmail" name="btnSendEmail" value="SendEmail" class="buttonbluestyle"  style="width:80px;"
                                              onclick="javascript:sendemail_click();" TabIndex="-1" /> 
                                   </td>
                              </tr>
                              <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_phone_3" runat="server" Text="Cell Phone:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                       <asp:TextBox ID="c_phone_3" runat="server" CssClass="inface" MaxLength=15 TabIndex="1"></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_fax" runat="server" Text="Fax No:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px" >
                                        <asp:TextBox ID="c_fax" runat="server" CssClass="inface" MaxLength=12 TabIndex="2"></asp:TextBox>
                                   </td>
                              </tr>
                              <tr style="height:5px">
                                    <td colspan="7"></td>
                              </tr>
                              <tr>
                                 <td colspan="7"  class="td_thicksepline"></td>
                              </tr>
                              <tr style="height:5px">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td  colspan="3" align="center" class="td_label" >
                                        <b>Current Address</b>
                                   </td>                                   
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="Label2" runat="server" Text="Mailing Address"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  width="270px" >
                                          <asp:Button ID="btnMailAdd" runat="server" Text="Same as the current address"  
                                              CssClass="buttonbluestyle"  style="width:250px"  
                                              onclientclick="NoConfirmExit();" TabIndex="-1" onclick="btnMailAdd_Click"></asp:Button>
                                   </td>
                              </tr>
                              <tr class="tr_common" style="height:3px;">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_address_line_1" runat="server" Text="Name:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                       <asp:TextBox ID="c_address_line_1" runat="server" CssClass="inface" MaxLength="30" TabIndex="3"></asp:TextBox>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                   </td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px" >
                                         <asp:TextBox ID="c_mailing_address_line_1" runat="server" CssClass="inface" MaxLength="30" TabIndex="4"></asp:TextBox>
                                   </td>
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_address_line_2" runat="server" Text="Street:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                        <span style="float:left;" id="streetText">
                                           <asp:TextBox ID="c_address_line_2" runat="server" CssClass="inface" MaxLength="30" width="200px" TabIndex="3"></asp:TextBox>
                                        </span>
								        <span style="float:right;padding-right:5px;padding-bottom:1px;" id="mapHref">
								           <div id="map_canvas" style="width: 500px; height: 300px;position: absolute;display:none;margin-top:25px;"></div>
								           <a href="#" onclick="ShowAddress(); return false;" title="Map" tabindex="-1" >
                                                <img src="~/img/map.gif" border="0" style="width:24px;height:24px" id="map" runat="server" title="map" />
								           </a>
							  	       </span>&nbsp;<a href="#" onclick="javascript:display_weather();" tabindex="-1" >
								       <img src="~/img/weather.gif" border="0" style="width:24px;height:24px" id="weather" runat="server" title="weather" /></a>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                   </td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px" >
                                         <asp:TextBox ID="c_mailing_address_line_2" runat="server" CssClass="inface" MaxLength="30" TabIndex="4"></asp:TextBox>
                                   </td>
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_address_city" runat="server" Text="City and State:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  width="270px" >
                                       <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width:100%">
                                             <tr class="tr_common">
                                                 <td class="td_unline" align="left" width="180px"  id="cityText">
                                                     <asp:TextBox ID="c_address_city" runat="server" CssClass="inface" MaxLength="19" TabIndex="3"></asp:TextBox>
                                                 </td>
                                                <td width="10px" ></td> 
                                                <td class="td_unline" align="left" width="60px"  id="stateText">    
                                                    <asp:TextBox ID="c_address_state" runat="server" CssClass="inface"  MaxLength="2" TabIndex="3"></asp:TextBox>
                                                </td>
                                             </tr>
                                       </table>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                   </td>
                                   <td width="5px"></td>
                                   <td  width="270px" >
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width:100%">
                                             <tr class="tr_common">
                                                 <td class="td_unline" align="left" width="180px"  id="Td1">
                                                    <asp:TextBox ID="c_mailing_address_city" runat="server" CssClass="inface" MaxLength="19" TabIndex="4"></asp:TextBox>
                                                 </td>
                                                <td width="10px" ></td> 
                                                <td class="td_unline" align="left" width="60px"  id="Td2">    
                                                    <asp:TextBox ID="c_mailing_address_state" runat="server" CssClass="inface"  MaxLength="2" TabIndex="4"></asp:TextBox>
                                                </td>
                                             </tr>
                                       </table>
                                   </td>
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_address_zip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="270px" >
                                       <asp:TextBox ID="c_address_zip" runat="server" CssClass="inface" Width="100px" MaxLength=10 TabIndex="3"></asp:TextBox>
                                       <asp:DropDownList ID="c_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                             Width="160px" OnClick="DataChanged()" Visible="false" TabIndex="3">
                                       </asp:DropDownList>     
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                   </td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px" >
                                         <asp:TextBox ID="c_mailing_address_zip" runat="server" CssClass="inface" Width="100px" MaxLength=10 TabIndex="4"></asp:TextBox>
                                         <asp:DropDownList ID="c_mailing_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                             Width="160px" OnClick="DataChanged()" visible="false" TabIndex="4">
                                         </asp:DropDownList>
                                   </td>
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_physical_county" runat="server" Text="Physical County:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td   width="270px" >
                                         <asp:DropDownList ID="c_physical_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                            Width="210px" OnClick="DataChanged()" TabIndex="3">
                                         </asp:DropDownList>
                                        <input type="button" id="btnAdd8" value="Add"  class="buttonbluestyle"  runat="server" style="height:20px;"
                                             onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Physical County&QueryField=LEGAL CNTY&CheckField=c_physical_county')" TabIndex="-1" />                            
                                
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_legal_county" runat="server" Text="Legal County:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  width="270px" >
                                        <asp:DropDownList ID="c_legal_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                          Width="210px" OnClick="DataChanged()" TabIndex="4" >
                                        </asp:DropDownList>
                                        <input type="button" id="btnAdd9" value="Add"  class="buttonbluestyle"  runat="server" style="height:20px;"
                                            onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Legal County&QueryField=LEGAL CNTY&CheckField=c_legal_county')" TabIndex="-1" />                            
                                
                                   </td>
                              </tr>
                              <tr style="height:5px">
                                    <td colspan="7"></td>
                              </tr>
                              <tr>
                                 <td colspan="7"  class="td_thicksepline"></td>
                              </tr>
                              <tr style="height:5px">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_attention" runat="server" Text="Attention:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  class="td_unline" align="left" width="660px" colspan="5">
                                       <asp:TextBox ID="c_attention" runat="server" CssClass="inface" MaxLength=60 TabIndex="5"></asp:TextBox>
                                   </td>                                   
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_program_primary" runat="server" Text="Day Activity:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td   width="270px" >
                                         <asp:DropDownList ID="c_program_primary" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                             Width="210px" OnClick="DataChanged()" TabIndex="5">
                                         </asp:DropDownList>
                                         <input type="button" id="btnAdd10" value="Add"  class="buttonbluestyle"  runat="server"  style="height:20px;"
                                            onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Day Activity&QueryField=DAYP&CheckField=c_program_primary')" TabIndex="-1" />
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_school" runat="server" Text="School:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  width="270px" >
                                       <asp:DropDownList ID="c_school" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                           Width="210px" OnClick="DataChanged()" TabIndex="5">
                                       </asp:DropDownList>
                                       <input type="button" id="btnAdd11" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                           onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=School&QueryField=SCHL&CheckField=c_school')" TabIndex="-1" />                            
                                
                                   </td>
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_residence_current" runat="server" Text="Residence Type:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td  width="660px" align="left" colspan="5">
                                      <asp:DropDownList ID="c_residence_current" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                           Width="600px" OnClick="DataChanged()" TabIndex="5" >
                                      </asp:DropDownList>                               
                                      <input type="button" id="btnAdd12" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                          onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Residence Type&QueryField=RESIDENCE TYPE&CheckField=c_residence_current')"  TabIndex="-1" />
                                   </td>                                   
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_cm_id" runat="server" Text="Coordinator:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td   width="270px" >
                                        <asp:DropDownList ID="c_cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                           Width="210px" OnClick="DataChanged();" TabIndex="5" >
                                        </asp:DropDownList>
                                   </td>
                                   <td></td>
                                   <td style="width:120px;" align="right" class="td_label" >
                                        <b><asp:Label ID="l_c_residence_date" runat="server" Text="Start Date:"></asp:Label></b>
                                   </td>
                                   <td width="5px"></td>
                                   <td class="td_unline" align="left" width="270px" >
                                        <asp:TextBox ID="c_residence_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="5" ></asp:TextBox>
                                   </td>
                              </tr>
                              <tr style="height:5px;">
                                    <td colspan="7"></td>
                              </tr>
                               <tr>
                                 <td colspan="7"  class="td_thicksepline"></td>
                              </tr>
                              <tr style="height:5px;">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td colspan="3"  align="center">
                                        <asp:label id="l_ContactList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">CONTACT LIST</asp:label>
                                   </td>                                  
                                   <td></td>
                                   <td  colspan="3" align="center" >
                                        <asp:Button ID="BtnAddCo" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px"></asp:Button>
                                   </td>
                                   
                              </tr>
                              <tr class="tr_common">
                                    <td colspan="7"></td>
                              </tr>
                              <tr class="tr_common">
                                   <td colspan="7"  align="center">
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
							                       	<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="~/img/view.gif" BorderWidth="0"></asp:HyperLink>
							                     </ItemTemplate>
						                    </asp:TemplateColumn>
						                    <asp:TemplateColumn HeaderText="DELETE">
							                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                       <ItemTemplate>
								                 <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="~/img/delete.gif"
								 	                BorderWidth="0"></asp:ImageButton>
							                   </ItemTemplate>
						                   </asp:TemplateColumn>
						                   <asp:BoundColumn DataField="s_group" HeaderText="s_group" Visible="False"></asp:BoundColumn>
					                   </Columns>
					                   <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				                       </asp:datagrid> 
                                   </td>                          
                              </tr>
                              <tr class="tr_common" style="height:30px">
                                    <td colspan="7"></td>
                              </tr>
                         </table>
                     </td>
                 </tr>                 
             </table>
        </div>
    </form>
</body>
</html>