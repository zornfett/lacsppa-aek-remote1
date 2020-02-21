<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormMissingPersonInfo.aspx.cs" Inherits="Virweb2.FormList.FormMissingPersonInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Missing Person Info:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript" type="text/javascript" >
        function print_click() {
            // PopupMessage(10);

            var entrykey = document.MissingPerson.entrykey.value.toString();
            var UserAct = document.MissingPerson.UserAct.value.toString();
            var consumer_key = document.MissingPerson.consumer_key.value.toString();
            var url = "PrintFormMissingPerson.aspx?entrykey=" + entrykey + "&consumer_key=" + consumer_key + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormMissingPerson');
        }

        function save_click() {
            return true;
        }

        function verify_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormMissingPersonList.aspx');
        }
    </script>

</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="MissingPerson" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
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
        <table class="table_maindiv" width="100%">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr style="height:30px">
                                <td valign="middle" align="center">
                                     <asp:Label ID="Label7" runat="server" Font-Size="Large" Font-Bold="True" ForeColor="blue"
                                                    Width="100%">Missing Person</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                    <td> 
                                      <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 120px;">
                                                <asp:Label ID="lblcreatedate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="createdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" >
                                                </asp:TextBox>
                                            </td>
                                            <td width="20px">
                                            </td>
                                            <td align="left" class="td_label" style="width: 180px;">
                                                <asp:Label ID="Label16" runat="server" Text="Date Client Found:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="founddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" >
                                                </asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto">
                                            </td>
                                        </tr>
                                      </table>
                                    </td>
                                    <td rowspan="6" width="300px">   
                                      <asp:ImageButton ID="viewphoto" runat="server" Height="100px" 
                                         ImageUrl="ImageDisplay.aspx?height=100&width=100" 
                                         OnClientClick="popupDialogSmall('ImageMissingPerson.aspx');" />
                                    </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                    <td>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                      <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 120px;">
                                                <asp:Label ID="Label21" runat="server" Text="Consumer Name:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_unline" style="width: 220px;">
                                                <asp:Label ID="ConsumerName" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td width="20px">
                                            </td>
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label2" runat="server" Text="DOB:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:Label ID="c_dob" runat="server" CssClass="infaceText" ></asp:Label>
                                            </td>
                                        </tr>
                                      </table>
                                    </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                    <td>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                      <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label1" runat="server" Text="Height:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_unline" style="width: 120px;">
                                                <asp:Label ID="c_height_weight" runat="server" CssClass="infaceText" Width="60px"></asp:Label>&nbsp;Inches
                                            </td>
                                            <td width="10px">
                                            </td>
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label4" runat="server" Text="Weight:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:Label ID="c_weight" runat="server" CssClass="infaceText" Width="60px"></asp:Label>&nbsp;Pounds
                                            </td>
                                            <td width="10px">
                                            </td>
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label6" runat="server" Text="Ethnicity:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:Label ID="EthnicityName" runat="server" CssClass="infaceText" ></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="11">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label3" runat="server" Text="Hair:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_unline" style="width: 120px;">
                                                <asp:Label ID="HairColorName" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td width="10px">
                                            </td>
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label12" runat="server" Text="Eyes:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:Label ID="EyeColorName" runat="server" CssClass="infaceText" ></asp:Label>
                                            </td>
                                            <td width="10px">
                                            </td>
                                            <td align="left" class="td_label" style="width: 80px;">
                                                <asp:Label ID="Label20" runat="server" Text="Language:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:Label ID="LanguageName" runat="server" CssClass="infaceText" ></asp:Label>
                                            </td>
                                        </tr>
                                      </table>
                                    </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                    <td>
                                    </td>
                                    </tr>
                                   </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label">
                                                <asp:Label ID="Label5" runat="server" Text="Noticeable Characteristics:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                                <asp:TextBox ID="noticeablechar" runat="server" Height="100px" TextMode="MultiLine" 
                                                    Width="100%"  ></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label">
                                                <asp:Label ID="Label8" runat="server" Text="Level of Functioning:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                                <asp:TextBox ID="functioning_level" runat="server" Height="160px" TextMode="MultiLine" 
                                                    Width="100%"  ></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 140px;">
                                                <asp:Label ID="Label10" runat="server" Text="Date Last Seen:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 140px;">
                                                <asp:TextBox ID="lastseendate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" Width="140px">
                                                </asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label">
                                                <asp:Label ID="Label9" runat="server" Text="Description of Clothing:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                                <asp:TextBox ID="dress_discription" runat="server" Height="100px" TextMode="MultiLine" 
                                                    Width="100%"  ></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 300px;">
                                                <asp:Label ID="Label13" runat="server" Text="Contact Persons/Phone Number(s):" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td_unline" colspan="2" align="left">
                                                <asp:TextBox ID="contact_phone" CssClass="inface" runat="server" Width="100%" MaxLength="100">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        
                                        <tr style="height: 5px;">
                                            <td colspan="4">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 300px;">
                                                <asp:Label ID="Label11" runat="server" Text="Service Coordinator:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_unline" align="left" style="width: 400px;">
                                                <asp:Label ID="CaseMgrName" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width:200px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="4">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 300px;">
                                                <asp:Label ID="Label14" runat="server" Text="Service Provider/Caregiver:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" align="left" style="width: 400px">
                                                <asp:TextBox ID="service_provider" Height="50px" MaxLength="500" TextMode="MultiLine" CssClass="inface" runat="server">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width:200px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="4">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 300px;">
                                                <asp:Label ID="Label15" runat="server" Text="Police Department and Phone Number:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" align="left" style="width: 400px">
                                                <asp:DropDownList ID="policy_department" runat="server" DataValueField="id" DataTextField="namephone"
                                                     CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:200px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 20px;">
                                <td>
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
