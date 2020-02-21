<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormConsumerLocRelInfo.aspx.cs" Inherits="Virweb2.FormList.FormConsumerLocRelInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Consumer Location Flow Chart:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript" type="text/javascript" >
    <!--
        function print_click() {
            // PopupMessage(10);

            var c_key = document.LocInfo.consumer_key.value.toString();
            var CreateDate = document.LocInfo.CreateDate.value.toString();
            var url = "PrintFormConsumerLocInfo.aspx?c_key=" + c_key + "&Createdate=" + CreateDate +"&type=1";
            winhref(url, 'PrintFormConsumerLocInfo');
        }

        function save_click() {
            if ( ((document.LocInfo.FacilityPhone_1.value!="") && ((!IsInteger(document.LocInfo.FacilityPhone_1.value)) || 
                  (document.LocInfo.FacilityPhone_1.value.length!=3))) ||
                 ((document.LocInfo.FacilityPhone_2.value!="") && ((!IsInteger(document.LocInfo.FacilityPhone_2.value)) || 
                  (document.LocInfo.FacilityPhone_2.value.length!=3))) ||
                 ((document.LocInfo.FacilityPhone_3.value!="") && ((!IsInteger(document.LocInfo.FacilityPhone_3.value)) || 
                  (document.LocInfo.FacilityPhone_3.value.length!=4))) )           
            {
               alert("Wrong format for the phone number!");
               return false;
            }

            if ((document.LocInfo.FacilityState.value == "") || (document.LocInfo.FacilityZip.value == "")) 
            {
               alert("State or Zip can not be empty!");
               return false;
            }

            if ((!document.LocInfo.Father.checked) && (!document.LocInfo.Mother.checked) && (!document.LocInfo.Emergency.checked) &&
                (!document.LocInfo.ConsumerMailing.checked) && (!document.LocInfo.MailingList.checked) && (!document.LocInfo.Legal.checked) &&
                (!document.LocInfo.Bus.checked) && (!document.LocInfo.Voucher.checked) && (!document.LocInfo.Other.checked) )
            {
               alert("Please check at least one selection from apply to List");
               return false;
            }
            
            if ((document.LocInfo.HasMailingAdd.value != "Y") && (!document.LocInfo.ConsumerMailing.checked))
            {
               alert("There's no mailing address checked for this client. Update failed!");
               return false;
            }

            if ((document.LocInfo.ConsumerMailing.checked) && (document.LocInfo.MailingList.checked))
            {
               alert("'Consumer Mailing' and 'Mailing List' can not be both checked. Update failed!");
               return false;
            }

            return true;
        }

        function verify_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormConsumerLocList.aspx');
        }

        function SelectAddress(uci, createdate)
        {
            var myUCI = document.getElementById(<%= "'" + hdnAddressUCI.ClientID + "'" %>);        
            myUCI.value = uci; 
            var myCreateDate = document.getElementById(<%= "'" + hdnAddressDate.ClientID + "'" %>);        
            myCreateDate.value = createdate;    
                  
            window.document.LocInfo.submit(); 
            window.focus();   
        }

    //-->
    </script>
</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="LocInfo" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />	
    <input type="hidden" name="CreateDate" id="CreateDate" value="" runat="server" />
    <input type="hidden" name="HasMailingAdd" id="HasMailingAdd" value="" runat="server" />
    <input type="hidden" name="hdnAddressUCI" id="hdnAddressUCI" value="" runat="server" />
    <input type="hidden" name="hdnAddressDate" id="hdnAddressDate" value="" runat="server" />
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
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
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
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab1">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr height="5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Consumer Name:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td class="td_unline" style="width: 300px">
                                                <asp:Label ID="consumername" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 30px">
                                            </td>
                                            <td class="td_label" style="width: 100px">
                                                <asp:Label ID="lblUCI" runat="server" Font-Bold="True" Text="UCI #:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:Label ID="c_uci" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td style="width: 30px">
                                            </td>
                                            <td class="td_label" style="width: 100px">
                                                <asp:Label ID="lblCaseMgr" runat="server" Font-Bold="True" Text="Assigned CM:"></asp:Label>
                                            </td>
                                            <td   width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:Label ID="CaseMgrName" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td></td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Name C/O:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td colspan="11" class="td_unline" style="width: 310px">
                                                <asp:TextBox ID="FacilityName" placeholder="Name" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="14">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Address Line 1:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td colspan="11" class="td_unline">
                                                <asp:TextBox ID="FacilityAddress" placeholder="House No. Street Address" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox>
                                                 &nbsp;&nbsp;
                                                <input type="image" id="btnAddres" runat="server" alt="Select Address" style="width: 20px; height: 20px"
                                                        src="../img/address.jpg" title="Address" onclick="javascript:popupDialogWide('SearchAddress.aspx');return false;" />

                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="14">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="Address Line 2:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td colspan="11" class="td_unline">
                                                <asp:TextBox ID="FacilityAddress_2" placeholder="Apartment Suite Unit etc" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="14">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="City and State:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td class="td_unline" style="width: 300px">
                                                <asp:TextBox ID="FacilityCity" placeholder="City" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td class="td_unline" style="width: 30px">
                                                <asp:TextBox ID="FacilityState" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td  width="25">
                                            </td>
                                            <td class="td_label" style="width: 40px">
                                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Zip:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="FacilityZip" placeholder="Zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td  width="25">
                                            </td>
                                            <td class="td_label" style="width: 60px" >
                                                <asp:Label ID="l_facilityphone" runat="server" Font-Bold="True" Text="Phone:"></asp:Label>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td width="300">
                                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                                   <tr>
                                                     <td align="center" width="10px"></td>
                                                     <td class="td_unline" width="30px">
                                                        <asp:TextBox ID="FacilityPhone_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                     </td>
                                                     <td align="center" width="15px"></td>
                                                     <td class="td_unline" width="30px">
                                                        <asp:TextBox ID="FacilityPhone_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                     </td>
                                                     <td align="center" width="10px"></td>
                                                     <td class="td_unline" width="40px">
                                                        <asp:TextBox ID="FacilityPhone_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                     </td>
                                                   </tr>  
                                                </table>    
                                            </td>
                                            <td style="width: 100px"></td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="14">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="l_facilityemail" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td colspan="12" class="td_unline" style="width: 250px">
                                                <asp:TextBox ID="FacilityEmail" placeholder="Email" runat="server" CssClass="inface"  MaxLength="45"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td width="100" class="td_label">
						                      <b><asp:Checkbox ID="Father" runat="server" Text=""></asp:Checkbox>Father</b>
                                            </td>
                                            <td width="100" class="td_label">
						                      <b><asp:Checkbox ID="Mother" runat="server" Text=""></asp:Checkbox>Mother</b>
                                            </td>
                                            <td width="100" class="td_label">
						                      <b><asp:Checkbox ID="Emergency" runat="server" Text=""></asp:Checkbox>Emergency</b>
                                            </td>
                                            <td width="140" class="td_label">
						                      <b><asp:Checkbox ID="ConsumerMailing" runat="server" Text=""></asp:Checkbox>Consumer Mailing</b>
                                            </td>
                                            <td width="120" class="td_label">
						                      <b><asp:Checkbox ID="MailingList" runat="server" Text=""></asp:Checkbox>Mailing List</b>
                                            </td>
                                            <td width="140" class="td_label">
						                      <b><asp:Checkbox ID="Legal" runat="server" Text=""></asp:Checkbox>Legally Responsible</b>
                                            </td>
                                            <td width="100" class="td_label">
						                      <b><asp:Checkbox ID="Bus" runat="server" Text=""></asp:Checkbox>Bus Pass</b>
                                            </td>
                                            <td width="100" class="td_label">
						                      <b><asp:Checkbox ID="Voucher" runat="server" Text=""></asp:Checkbox>Voucher</b>
                                            </td>
                                            <td width="100" class="td_label">
						                      <b><asp:Checkbox ID="Other" runat="server" Text=""></asp:Checkbox>Other</b>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="100" class="td_unline">
						                       <asp:Label ID="Father_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="100" class="td_unline">
						                       <asp:Label ID="Mother_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="100" class="td_unline">
						                       <asp:Label ID="Emergency_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="140" class="td_unline">
						                       <asp:Label ID="ConsumerMailing_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="120" class="td_unline">
						                       <asp:Label ID="MailingList_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="140" class="td_unline">
						                       <asp:Label ID="Legal_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="100" class="td_unline">
						                       <asp:Label ID="Bus_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="100" class="td_unline">
						                       <asp:Label ID="Voucher_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                            <td width="100" class="td_unline">
						                       <asp:Label ID="Other_date" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 25px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="lblModifiedby" runat="server" Font-Bold="True" Text="Last Mod By:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:Label ID="LastModBy" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                                <asp:Label ID="LastModname" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Last Mod Date:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" width="200">
                                                <asp:Label ID="LastModDate" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                        </tr>
                                    </table>
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
