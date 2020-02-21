<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormTransferOut.aspx.cs" Inherits="Virweb2.FormList.FormTransferOut" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>::Inter Regional Center Transfer Out:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javaScript" src="../js/common.js"></script>
     <script type="text/javascript">
    <!--
         function save_click() {
             document.body.style.cursor  = 'wait';
             return true;
         }
         function print_click() {
             //PopupMessage(10);
         }

         function back_click() {
             document.location.replace('FormTransferOutList.aspx');
         }

         function download_click() {
             document.body.style.cursor  = 'wait';
             return true;
         }

         function SCSign() {
             var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
             mySignVerify.value = "1";  
             window.document.TransferOut.submit();
             window.focus();
         }

         function RMSign() {
             var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
             mySignVerify.value = "2";  
             window.document.TransferOut.submit();
             window.focus();
         }

         function ChiefSign() {
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
         }

         function Sign(UserName) {
             var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
             mySignVerify.value = "3";  
             window.document.TransferOut.submit();
             window.focus();
         }
    //-->
    
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="TransferOut" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />
    <input type="hidden" name="consumer_cm_id" id="consumer_cm_id" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" OnClick="btnAdd_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px; height: 25px" 
                        src="../img/print.ico" title="Print" visible="false"
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">&nbsp;</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px" 
                        src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 450px">
        <table class="table_maindiv" width="100%">
            <tr style="height:10px">
                <td colspan="6"></td>
            </tr>	
            <tr style="height:20px;">
                <td colspan="6"><b>INTER REGIONAL CENTER TRANSMITTAL</b>
                </td>
            </tr> 
            <tr style="height:10px">
                <td colspan="6"></td>
            </tr>
            <tr>
                <td colspan="6">
                   <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                       <tr style="height: 30px;" valign="middle" >
                          <td align="left">
                            <asp:Button ID="btnDownload" runat="server" Text="Download PDF Document" CssClass="buttonbluestyle" 
                                 OnClientClick="return download_click();" OnClick="btnDownload_Click">
                            </asp:Button>
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;" class="td_label">
                    <b><asp:Label ID="l_receiveddate" runat="server" Text="Sent Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 300px">
                    <asp:TextBox ID="receiveddate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>                  
                </td>
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_casetype" runat="server" Text="Transfer Type:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="casetype" runat="server"
                                     Width="235" OnChange="DataChanged()" >
                         <asp:ListItem Value=""></asp:ListItem>
                         <asp:ListItem Value="Transfer" Selected="true">Transfer</asp:ListItem>
                         <asp:ListItem Value="Residential Packet">Residential Packet</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_propoacceptdate" runat="server" Text="Proposed Acceptance Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 300px">
                    <asp:TextBox ID="propoacceptdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>                  
                </td>
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_casetransferto" runat="server" Text="To:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="casetransferto" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                         Width="235" OnChange="DataChanged()">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_actualacceptdate" runat="server" Text="Actual Acceptance Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 300px">
                    <asp:TextBox ID="actualacceptdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>                  
                </td>
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_casestatus" runat="server" Text="Transfer Status:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="casestatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnChange="DataChanged()" >
                         <asp:ListItem Value=""></asp:ListItem>
                         <asp:ListItem Value="Pending">Pending</asp:ListItem>
                         <asp:ListItem Value="Completed">Completed</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_completeddate" runat="server" Text="Completed Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 300px">
                    <asp:TextBox ID="completeddate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>                  
                </td>
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_emailuserid" runat="server" Text="eMail User ID & Date:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="emailuserid" runat="server" CssClass="inface" width="120" MaxLength="10"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="emaildate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
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
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_uci" runat="server" Text="UCI:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300" >
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                       <tr class="tr_common">
                           <td class="td_unline" style="width: 300px">
                               <asp:TextBox ID="uci" runat="server" CssClass="inface" width="120" MaxLength="10"></asp:TextBox>
                           </td>
                           <td style="width: 80px"  class="td_label" >
                               <b><asp:Label ID="Label1" runat="server" Text="DOB:"></asp:Label></b>
                           </td>
                           <td width="5" >
                           </td>
                           <td  style="width: 100px" >
                               <asp:TextBox ID="clientdob" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                           </td>
                       </tr>
                    </table>
                </td>
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="Label3" runat="server" Text="Contact:"></asp:Label></b>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <b><asp:Checkbox ID="contactparent" runat="server" Text="Parent Guardian"></asp:Checkbox></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                  <table align="left" cellspacing="0" cellpadding="0" border="0">
                       <tr class="tr_common">
                         <td style="width: 80px"  class="td_label">
                           <b><asp:Checkbox ID="contactother" runat="server" Text="Other"></asp:Checkbox></b>
                         </td>
                         <td width="5" >
                         </td>
                         <td class="td_unline" style="width: 200px">
                           <asp:TextBox ID="contactothercomment" runat="server" CssClass="inface" width="180" MaxLength="100"></asp:TextBox>
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
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientfirstname" runat="server" Text="First Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientfirstname" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactfirstname" runat="server" Text="First Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="contactfirstname" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_clientminame" runat="server" Text="Middle Name:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 300px"> 
                    <asp:TextBox ID="clientminame" runat="server" CssClass="inface"  Width="25px"  MaxLength="1"></asp:TextBox>
                </td>
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_contactminame" runat="server" Text="Middle Name:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 300px"> 
                    <asp:TextBox ID="contactminame" runat="server" CssClass="inface"  Width="25px"  MaxLength="1"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientlastname" runat="server" Text="Last Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientlastname" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactlastname" runat="server" Text="Last Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="contactlastname" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientfirstnameaka" runat="server" Text="AKA Name (First):"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientfirstnameaka" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactaddressline1" runat="server" Text="Address Line 1:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="contactaddressline1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientminameaka" runat="server" Text="AKA Name (Middle):"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientminameaka" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactaddressline2" runat="server" Text="Address Line 2:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="contactaddressline2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientlastnameaka" runat="server" Text="AKA Name (Last):"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientlastnameaka" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactaddresscity" runat="server" Text="City and State:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="230" style="width:230px">
                             <asp:TextBox ID="contactaddresscity" runat="server" CssClass="inface"  Width="210" MaxLength="19" ></asp:TextBox>
                          </td>
                          <td width="70" style="width:70px">
                             <asp:TextBox ID="contactaddressstate" runat="server" CssClass="inface" Width="30" MaxLength="2" ></asp:TextBox>
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
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientaddressline1" runat="server" Text="Address Line 1:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientaddressline1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactaddresszip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="contactaddresszip" runat="server" CssClass="inface" Width="80" MaxLength="10" ></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_clientaddressline2" runat="server" Text="Address Line 2:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientaddressline2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_contactphone" runat="server" Text="Phone:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td class="td_unline" width="30px">
                            <asp:TextBox ID="contactphone_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                         </td>
                         <td align="center" width="15px"></td>
                         <td class="td_unline" width="30px">
                            <asp:TextBox ID="contactphone_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                         </td>
                         <td align="center" width="10px"></td>
                         <td class="td_unline" width="40px">
                            <asp:TextBox ID="contactphone_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>   
                </td>
            </tr>
            <tr style="height:2px;">
                <td colspan="6">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
                <td colspan="3" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:1px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_clientaddresscity" runat="server" Text="City and State:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="230" style="width:230px">
                             <asp:TextBox ID="clientaddresscity" runat="server" CssClass="inface"  Width="210" MaxLength="19" ></asp:TextBox>
                          </td>
                          <td width="70" style="width:70px">
                             <asp:TextBox ID="clientaddressstate" runat="server" CssClass="inface" Width="30" MaxLength="2" ></asp:TextBox>
                          </td>
                        </tr>
                    </table>
                </td>
                <td colspan="3">
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_clientaddresszip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="clientaddresszip" runat="server" CssClass="inface" Width="80" MaxLength="10" ></asp:TextBox>
                </td>
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_judicial" runat="server" Text="Court Involvement:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300" class="td_label">
                    <asp:Radiobutton ID="judicial_yes" groupname="judicial" runat="server" Font-Bold="true" Text="Yes" /> 
                    &nbsp;&nbsp;&nbsp;
                    <asp:Radiobutton ID="judicial_no" groupname="judicial" runat="server" Font-Bold="true" Text="No" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="If Yes, explain in item 5"></asp:Label>
                </td>   
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common"> 
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_clientphone" runat="server" Text="Phone:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td class="td_unline" width="30px">
                            <asp:TextBox ID="clientphone_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                         </td>
                         <td align="center" width="15px"></td>
                         <td class="td_unline" width="30px">
                            <asp:TextBox ID="clientphone_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                         </td>
                         <td align="center" width="10px"></td>
                         <td class="td_unline" width="40px">
                            <asp:TextBox ID="clientphone_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>   
                </td>
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_edrightholder" runat="server" Text="Holder of Ed. Rights/DDM:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300" class="td_label">
                    <asp:Radiobutton ID="edrightholder_yes" groupname="edrightholder" runat="server" Font-Bold="true" Text="Yes" /> 
                    &nbsp;&nbsp;&nbsp;
                    <asp:Radiobutton ID="edrightholder_no" groupname="edrightholder" runat="server" Font-Bold="true" Text="See item 5" />
                </td>  
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_clientstatus" runat="server" Text="Case Status:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="clientstatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_placementtype" runat="server" Text="Type of Placement:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="placementtype" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px;"  class="td_label">
                    <b><asp:Label ID="l_clientlegalstatus" runat="server" Text="Legal Status:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="clientlegalstatus" runat="server" DataValueField="tb_entry_name" DataTextField="fullentry"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_unit" runat="server" Text="Unit/Group:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="unit" runat="server" DataValueField="GroupID" DataTextField="GroupName" 
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_emailaccount" runat="server" Text="eMail User Account:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="emailaccount" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>    
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_sc_code" runat="server" Text="Case Manager:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:DropDownList ID="sc_code" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     CssClass="infaceDrop" OnChange="DataChanged()">
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
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_tonotify" runat="server" Text="1. This is to Notify you that:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="450" style="width:450px">
                             <asp:DropDownList ID="tonotify" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                             </asp:DropDownList>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 80px"  width="80" class="td_label">
                               <b><asp:Label ID="l_tonotifydate" runat="server" Text="Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="tonotifydate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                          </td>
                          <td width="150" >
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
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_torequest" runat="server" Text="2. This is to Request:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="450" style="width:450px">
                             <asp:DropDownList ID="torequest" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                             </asp:DropDownList>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 80px"  width="80" class="td_label">
                               <b><asp:Label ID="l_torequestdate" runat="server" Text="Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="torequestdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                          </td>
                          <td width="150" >
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
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_topos" runat="server" Text="3. Purchase of Service:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="450" style="width:450px">
                             <asp:DropDownList ID="topos" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                             </asp:DropDownList>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 150px"  width="150" class="td_label">
                               <b><asp:Label ID="l_attachedpos" runat="server" Text="Copy of POS Attached:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="150" style="width:150px" class="td_label">
                               <asp:Radiobutton ID="attachedpos_yes" groupname="attachedpos" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="attachedpos_no" groupname="attachedpos" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="50" >
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_vendornum1" runat="server" Text="Vendor Number:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendornum1" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorname1" runat="server" Text="Vendor Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorname1" runat="server" CssClass="inface" MaxLength="40" ></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_vendorsvc1" runat="server" Text="Service Code:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorsvc1" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorsvcdesc1" runat="server" Text="Service Description:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorsvcdesc1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorhours1" runat="server" Text="Hours:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="80" style="width:80px">
                               <asp:TextBox ID="vendorhours1" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 100px"  width="100" class="td_label">
                               <b><asp:Label ID="l_vendorfreq1" runat="server" Text="Frequency:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="120" style="width:120px">
                               <asp:DropDownList ID="vendorfreq1" runat="server" CssClass="infaceDrop" OnChange="DataChanged()" >
                                  <asp:ListItem Value=""></asp:ListItem>
                                  <asp:ListItem Value="Daily">Daily</asp:ListItem>
                                  <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
                                  <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
                                  <asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
                                  <asp:ListItem Value="One Time">One Time</asp:ListItem>
                               </asp:DropDownList>
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 100px"  width="100" class="td_label">
                               <b><asp:Label ID="l_vendorexemp1" runat="server" Text="Exemption:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="120" style="width:120px" class="td_label">
                               <asp:Radiobutton ID="vendorexemp1_yes" groupname="vendorexemp1" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="vendorexemp1_no" groupname="vendorexemp1" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="5" >
                          </td>
                          <td width="250" style="width:250px">
                               <asp:DropDownList ID="vendorexempdesc1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                               </asp:DropDownList>
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_vendornum2" runat="server" Text="Vendor Number:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendornum2" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorname2" runat="server" Text="Vendor Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorname2" runat="server" CssClass="inface" MaxLength="40" ></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_vendorsvc2" runat="server" Text="Service Code:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorsvc2" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorsvcdesc2" runat="server" Text="Service Description:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorsvcdesc2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorhours2" runat="server" Text="Hours:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="80" style="width:80px">
                               <asp:TextBox ID="vendorhours2" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 100px"  width="100" class="td_label">
                               <b><asp:Label ID="l_vendorfreq2" runat="server" Text="Frequency:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="120" style="width:120px">
                               <asp:DropDownList ID="vendorfreq2" runat="server" CssClass="infaceDrop" OnChange="DataChanged()" >
                                  <asp:ListItem Value=""></asp:ListItem>
                                  <asp:ListItem Value="Daily">Daily</asp:ListItem>
                                  <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
                                  <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
                                  <asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
                                  <asp:ListItem Value="One Time">One Time</asp:ListItem>
                               </asp:DropDownList>
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 100px"  width="100" class="td_label">
                               <b><asp:Label ID="l_vendorexemp2" runat="server" Text="Exemption:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="120" style="width:120px" class="td_label">
                               <asp:Radiobutton ID="vendorexemp2_yes" groupname="vendorexemp2" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="vendorexemp2_no" groupname="vendorexemp2" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="5" >
                          </td>
                          <td width="250" style="width:250px">
                               <asp:DropDownList ID="vendorexempdesc2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                               </asp:DropDownList>
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_vendornum3" runat="server" Text="Vendor Number:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendornum3" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorname3" runat="server" Text="Vendor Name:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorname3" runat="server" CssClass="inface" MaxLength="40" ></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 210px"  width="210" class="td_label">
                    <b><asp:Label ID="l_vendorsvc3" runat="server" Text="Service Code:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorsvc3" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>   
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorsvcdesc3" runat="server" Text="Service Description:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" width="300">
                    <asp:TextBox ID="vendorsvcdesc3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_vendorhours3" runat="server" Text="Hours:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="80" style="width:80px">
                               <asp:TextBox ID="vendorhours3" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                          </td>
                          <td width="5">
                          </td>
                          <td style="width: 100px"  width="100" class="td_label">
                               <b><asp:Label ID="l_vendorfreq3" runat="server" Text="Frequency:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="120" style="width:120px">
                               <asp:DropDownList ID="vendorfreq3" runat="server" CssClass="infaceDrop" OnChange="DataChanged()" >
                                  <asp:ListItem Value=""></asp:ListItem>
                                  <asp:ListItem Value="Daily">Daily</asp:ListItem>
                                  <asp:ListItem Value="Weekly">Weekly</asp:ListItem>
                                  <asp:ListItem Value="Monthly">Monthly</asp:ListItem>
                                  <asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
                                  <asp:ListItem Value="One Time">One Time</asp:ListItem>
                               </asp:DropDownList>
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 100px"  width="100" class="td_label">
                               <b><asp:Label ID="l_vendorexemp3" runat="server" Text="Exemption:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="120" style="width:120px" class="td_label">
                               <asp:Radiobutton ID="vendorexemp3_yes" groupname="vendorexemp3" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="vendorexemp3_no" groupname="vendorexemp3" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="5" >
                          </td>
                          <td width="250" style="width:250px">
                               <asp:DropDownList ID="vendorexempdesc3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                               </asp:DropDownList>
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="Label4" runat="server" Text="Generic Services:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="600" style="width:600px" class="td_label">
                               <asp:Checkbox ID="ihss" runat="server" Text="IHSS/Protective Supervision:" Font-Bold="true"></asp:Checkbox>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Checkbox ID="ccs" runat="server" Text="CCS:" Font-Bold="true"></asp:Checkbox>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Checkbox ID="epsdt" runat="server" Text="EPSDT:" Font-Bold="true"></asp:Checkbox>
                          </td>
                          <td width="200" >
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
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="Label5" runat="server" Text="Date of Most Recent:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="100" style="width:100px" class="td_label_right">
                               <b><asp:Label ID="l_ippdate" runat="server" Text="IFSP/IPP:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="ippdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                          </td>
                          <td width="20" >
                          </td>
                          <td width="100" style="width:100px" class="td_label_right">
                               <b><asp:Label ID="l_ardate" runat="server" Text="AR:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="ardate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                          </td>
                          <td width="20" >
                          </td>
                          <td width="100" style="width:100px" class="td_label_right">
                               <b><asp:Label ID="l_cderdate" runat="server" Text="CDER/ESR:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="cderdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td class="td_label" colspan="6">
                    <b><asp:Label ID="Label7" runat="server" Text="4. Financial Status:"></asp:Label></b>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="Label8" runat="server" Text="Source/Amounts of Income:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 80px" width="80" class="td_label_right">
                               <b><asp:Label ID="l_ssi" runat="server" Text="SSI:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="150" style="width:150px">
                               <asp:DropDownList ID="ssi" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                               </asp:DropDownList>
                          </td>
                          <td style="width: 100px" width="100" class="td_label_right">
                               <b><asp:Label ID="l_payee" runat="server" Text="Payee:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="300" style="width:300px">
                               <asp:TextBox ID="payee" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
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
                <td  class="td_label"  style="width: 210px">
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 250px"  width="250" class="td_label">
                               <b><asp:Label ID="l_privateinsur" runat="server" Text="Private Insurance:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="privateinsur_yes" groupname="privateinsur" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="privateinsur_no" groupname="privateinsur" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="20" >
                          </td>
                          <td style="width: 250px"  width="250" class="td_label">
                               <b><asp:Label ID="l_medical" runat="server" Text="Medi-Cal:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;                          
                               <asp:Radiobutton ID="medical_yes" groupname="medical" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="medical_no" groupname="medical" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="20" >
                          </td>
                          <td style="width: 250px"  width="250" class="td_label">
                               <b><asp:Label ID="l_medicare" runat="server" Text="Medicare:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="medicare_yes" groupname="medicare" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="medicare_no" groupname="medicare" runat="server" Font-Bold="true" Text="No" />
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
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="Label12" runat="server" Text="Federal Program:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 150px" width="150" class="td_label">
                               <b><asp:Label ID="l_mw" runat="server" Text="MW:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="mw_yes" groupname="mw" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="mw_no" groupname="mw" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 150px"  width="150" class="td_label">
                               <b><asp:Label ID="l_nf" runat="server" Text="NF:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;                          
                               <asp:Radiobutton ID="nf_yes" groupname="nf" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="nf_no" groupname="nf" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 150px"  width="150" class="td_label">
                               <b><asp:Label ID="l_i1915" runat="server" Text="1915i:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="i1915_yes" groupname="i1915" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="i1915_no" groupname="i1915" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 150px"  width="150" class="td_label">
                               <b><asp:Label ID="l_mfp" runat="server" Text="MFP:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="mfp_yes" groupname="mfp" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="mfp_no" groupname="mfp" runat="server" Font-Bold="true" Text="No" />
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
                <td  class="td_label"  style="width: 210px">
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 150px" width="150" class="td_label">
                               <b><asp:Label ID="l_afpf" runat="server" Text="AFPF:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="afpf_yes" groupname="afpf" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="afpf_no" groupname="afpf" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 120px"  width="120" class="td_label">
                               <b><asp:Label ID="l_afpfpaiddate" runat="server" Text="Date Last Paid:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="afpfpaiddate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 180px"  width="180" class="td_label">
                               <b><asp:Label ID="l_afpfsibling" runat="server" Text="Siblings:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="afpfsibling_yes" groupname="afpfsibling" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="afpfsibling_no" groupname="afpfsibling" runat="server" Font-Bold="true" Text="No" />
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
                <td  class="td_label"  style="width: 210px">
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 150px" width="150" class="td_label">
                               <b><asp:Label ID="l_fcpp" runat="server" Text="FCPP:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="fcpp_yes" groupname="fcpp" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="fcpp_no" groupname="fcpp" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="10" >
                          </td>
                          <td width="60" style="width:60px">
                               <asp:TextBox ID="fcpppercentage" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                          </td>
                          <td style="width: 30px"  width="30" class="td_label">
                               <asp:Label ID="Label2" runat="server" Text="%"></asp:Label>
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 120px"  width="120" class="td_label">
                               <b><asp:Label ID="l_fcppassesseddate" runat="server" Text="Date Assessed:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="fcppassesseddate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
                          </td>
                          <td width="10" >
                          </td>
                          <td style="width: 180px"  width="180" class="td_label">
                               <b><asp:Label ID="l_fcppsibling" runat="server" Text="Siblings:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="fcppsibling_yes" groupname="fcppsibling" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="fcppsibling_no" groupname="fcppsibling" runat="server" Font-Bold="true" Text="No" />
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
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td class="td_label" colspan="6">
                    <b><asp:Label ID="Label9" runat="server" Text="5. TRANSFER SUMMARY AND COMMENTS:<br />  IDENTIFYING INFORMATION, CURRENT SITUATION, FAMILY SITUATION, HEALTH AND WELLBEING. Include other details from items 1 and 2. Include name and UCI# of other family members. Provide status of holder of Educational Rights or Developmental Services decision maker."></asp:Label></b>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td align="left" colspan="6">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td width="50" >
                          </td>
                          <td style="width: 250px" width="250" class="td_label">
                               <b><asp:Label ID="l_dangerous" runat="server" Text="Dangerous Propensity:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="dangerous_yes" groupname="dangerous" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="dangerous_no" groupname="dangerous" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="20" >
                          </td>
                          <td style="width: 250px"  width="250" class="td_label">
                               <b><asp:Label ID="l_urgent" runat="server" Text="Urgent info.:"></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="urgent_yes" groupname="urgent" runat="server" Font-Bold="true" Text="Yes" /> 
                               &nbsp;&nbsp;&nbsp;
                               <asp:Radiobutton ID="urgent_no" groupname="urgent" runat="server" Font-Bold="true" Text="No" />
                          </td>
                          <td width="20" >
                          </td>
                          <td style="width: 180px"  width="180" class="td_label">
                               <b><asp:Label ID="Label10" runat="server" Text="EXPLAIN BELOW:"></asp:Label></b>
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
                <td colspan="6">
                    <asp:TextBox ID="Comments" runat="server" Height="150px" TextMode="MultiLine"
                             Width="100%" CssClass="inface"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">  
                <td align="left" colspan="6">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 100px" width="100" class="td_label">
                               <b><asp:Label ID="l_enclosed" runat="server" Text="Enclosed:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td style="width: 800px"  width="800">
                               <asp:TextBox ID="enclosed" runat="server" CssClass="inface" MaxLength="200"></asp:TextBox>
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
                <td colspan="6">
                   <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                     <tr>
                       <td width="33%" style="border: medium solid #CC99CC;">
                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                               <td colspan="5" align="center">
                                 <asp:Button ID="btnSignSC" runat="server" Text="Sign"  Style="width: 80px;height:25px" Enabled="false"
                                             OnClientClick="javascript:SCSign();return false;" />
                               </td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td colspan="5"></td>
                            </tr>
                            <tr class="tr_common">
                               <td width="10px"></td>
                               <td width="120px" class="td_label">
                                  <asp:Label ID="l_scsignature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                               </td>
                               <td width="5px">
                               </td>
                               <td class="td_unline" align="left" style="width: 300px">
                                  <asp:Label ID="scsignature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                  </asp:Label>
                               </td>
                               <td width="auto"></td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td colspan="3">
                               </td>
                               <td class="td_label">
                                  <asp:Label ID="l_scsignaturetitle" runat="server" Text="Service Coordinator"></asp:Label>
                               </td>
                               <td>
                               </td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td width="10px">
                               </td>
                               <td class="td_label" style="width: 120px">
                                  <asp:Label ID="l_scsigneddate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                               </td>
                               <td width="5px">
                               </td>
                               <td class="td_unline">
                                  <asp:Label ID="scsigneddate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                  </asp:Label>
                               </td>
                               <td width="auto"></td>
                            </tr>
                            <tr><td colspan="5" height="5px"></td></tr>
                         </table>
                       </td>
                       <td width="33%" style="border: medium solid #CC99CC;">
                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                               <td colspan="5" align="center">
                                 <asp:Button ID="btnSignRM" runat="server" Text="Sign"  Style="width: 80px;height:25px" Enabled="false"
                                             OnClientClick="javascript:RMSign();return false;" />
                               </td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td colspan="5"></td>
                            </tr>
                            <tr class="tr_common">
                               <td width="10px"></td>
                               <td width="120px" class="td_label">
                                  <asp:Label ID="l_rmsignature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                               </td>
                               <td width="5px">
                               </td>
                               <td class="td_unline" align="left" style="width: 300px">
                                  <asp:Label ID="rmsignature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                  </asp:Label>
                               </td>
                               <td width="auto"></td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td colspan="3">
                               </td>
                               <td class="td_label">
                                  <asp:Label ID="l_rmsignaturetitle" runat="server" Text="Program Manager"></asp:Label>
                               </td>
                               <td>
                               </td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td width="10px">
                               </td>
                               <td class="td_label" style="width: 120px">
                                  <asp:Label ID="l_rmsigneddate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                               </td>
                               <td width="5px">
                               </td>
                               <td class="td_unline">
                                  <asp:Label ID="rmsigneddate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                  </asp:Label>
                               </td>
                               <td width="auto"></td>
                            </tr>
                            <tr><td colspan="5" height="5px"></td></tr>
                         </table>
                       </td>
                       <td width="33%" style="border: medium solid #CC99CC;">
                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                               <td colspan="5" align="center">
                                 <asp:Button ID="btnSignChief" runat="server" Text="Sign"  Style="width: 80px;height:25px" Enabled="false"
                                             OnClientClick="javascript:CheckPwd();return false;" />
                               </td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td colspan="5"></td>
                            </tr>
                            <tr class="tr_common">
                               <td width="10px"></td>
                               <td width="120px" class="td_label">
                                  <asp:Label ID="l_chiefsignature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                               </td>
                               <td width="5px">
                               </td>
                               <td class="td_unline" align="left" style="width: 300px">
                                  <asp:Label ID="chiefsignature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                  </asp:Label>
                               </td>
                               <td width="auto"></td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td colspan="3">
                               </td>
                               <td class="td_label">
                                  <asp:Label ID="l_chiefsignaturetitle" runat="server" Text="Chief Counselor"></asp:Label>
                               </td>
                               <td>
                               </td>
                            </tr>
                            <tr>
                               <td colspan="5" height="5px">
                               </td>
                            </tr>
                            <tr class="tr_common">
                               <td width="10px">
                               </td>
                               <td class="td_label" style="width: 120px">
                                  <asp:Label ID="l_chiefsigneddate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                               </td>
                               <td width="5px">
                               </td>
                               <td class="td_unline">
                                  <asp:Label ID="chiefsigneddate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                  </asp:Label>
                               </td>
                               <td width="auto"></td>
                            </tr>
                            <tr><td colspan="5" height="5px"></td></tr>
                         </table>
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
            <tr style="height:10px">
                <td colspan="6"></td>
            </tr>	
            <tr style="height:20px;">
                <td colspan="6"><b>ACKNOWLEDGEMENT</b>
                </td>
            </tr> 
            <tr style="height:10px">
                <td colspan="6"></td>
            </tr>
            <tr class="tr_common">  
                <td  class="td_label"  style="width: 210px">
                    <b><asp:Label ID="l_tonotify2" runat="server" Text="This is to Notify You That:"></asp:Label></b>
                </td>
                <td width="5" >
                </td>
                <td align="left" colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 500px" width="500" class="td_label">
                               <asp:DropDownList ID="tonotify2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     CssClass="infaceDrop" OnChange="DataChanged()">
                               </asp:DropDownList>
                          </td>
                          <td width="10" >
                          </td>
                          <td class="td_label" style="width: 120px">
                               <asp:Label ID="l_tonotifydate2" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                          </td>
                          <td width="5px">
                          </td>
                          <td width="100" style="width:100px">
                               <asp:TextBox ID="tonotifydate2" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);" width="100" ></asp:TextBox>
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
                <td align="left" colspan="6">
                    <table align="left" cellspacing="0" cellpadding="0" border="0">
                        <tr class="tr_common">
                          <td style="width: 100px" width="100" class="td_label">
                               <b><asp:Label ID="Label14" runat="server" Text="Comments:"></asp:Label></b>
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
                <td colspan="6">
                    <asp:TextBox ID="Comments2" runat="server" Height="80px" TextMode="MultiLine"
                             Width="100%" CssClass="inface"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
