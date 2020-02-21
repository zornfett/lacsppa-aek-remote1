<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.FormTransCaseLog"
    CodeBehind="FormTransCaseLog.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::SCLARC Transfer Case Logs:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
        function save_click() {
            var str = JTrim(document.getElementById("Date_IN").value)
            if (str == "") {
                alert("Please enter a date for Date In!");
                document.getElementById("Date_IN").focus();
                return false;
            }
            var str = JTrim(document.getElementById("Date_Sent").value)
            if (str == "") {
                alert("Please enter a date for Date Sent!");
                document.getElementById("Date_Sent").focus();
                return false;
            }
            /* var str=JTrim(document.getElementById("Final_Date").value)
            if (str=="")
            {
            alert("Please enter a date for Final Acceptance Date!");
            document.getElementById("Final_Date").focus();
            return false;
            }
            */
            var str = JTrim(document.getElementById("Volumn").value)
            if (str != "") {
                if (isNaN(str) == true) {
                    alert("Please enter a numerical number for Volumes!");
                    document.getElementById("Volumn").focus();
                    return false;
                }
            }
            else {
                alert("Please enter a numerical number for Volumes!");
                document.getElementById("Volumn").focus();
                return false;
            }
            var str1 = JTrim(document.getElementById("Residential").value)
            if (str1 != "") {
                if (isNaN(str1) == true) {
                    alert("Please enter a numerical number for Fiscal Residential!");
                    document.getElementById("Residential").focus();
                    return false;
                }
            }
            var str2 = JTrim(document.getElementById("Day_Program").value)
            if (str2 != "") {
                if (isNaN(str2) == true) {
                    alert("Please enter a numerical number for Fiscal Day Program!");
                    document.getElementById("Day_Program").focus();
                    return false;
                }
            }
            var str3 = JTrim(document.getElementById("Transportation").value)
            if (str3 != "") {
                if (isNaN(str3) == true) {
                    alert("Please enter a numerical number for Fiscal Transportation!");
                    document.getElementById("Transportation").focus();
                    return false;
                }
            }
            var str4 = JTrim(document.getElementById("Other").value)
            if (str4 != "") {
                if (isNaN(str4) == true) {
                    alert("Please enter a numerical number for Fiscal Other!");
                    document.getElementById("Other").focus();
                    return false;
                }
            }
            return true;
        }

        function print_click() {
            //PopupMessage(10);
            var uci = document.TransCaseLogForm.consumer_key.value.toString();
            var createdate = document.TransCaseLogForm.CreateDate.value.toString();
            var url = "PrintFormTransCaseLog.aspx?UCI=" + uci + "&CreateDate=" + createdate;
            winhref(url, 'PrintFormTransCaseLog');
        }

        function back_click() {
            document.location.replace('FormTransCaseLogList.aspx');
        }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="TransCaseLogForm" runat="server">
    <input type="submit" value="test" style="display: none;" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="saveflag" id="saveflag" runat="server" value="" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="CreateDate" id="CreateDate" runat="server" value="" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnEdit_Click"></asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">SCLARC Unit Transfer Case Logs</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;
                        height: 25px" src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px;">
        <table class="table_maindiv">
            <tr>
                <td valign="top">
                    <table class="table_inside">
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label1" runat="server" Text="UCI#:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="UCI" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label2" runat="server" Text="Current Status:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="c_status" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label3" runat="server" Text="Last Name:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="c_name_last" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label4" runat="server" Text="MW:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="c_medicaid_waiver" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label5" runat="server" Text="First Name:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="c_name_first" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td>
                            </td>
                            <td style="width:5px"></td>	
                            <td>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:CheckBox ID="Emergency" runat="server" Text=""/><b>Emergency</b>
                            </td>
                            <td style="width:5px"></td>	
                            <td></td>	
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label6" runat="server" Text="Date In:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Date_IN" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label8" runat="server" Text="Case Status:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="Case_Status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                        CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label9" runat="server" Text="Case Type:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="Case_Type" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="Prevention">Prevention</asp:ListItem>
                                    <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                                    <asp:ListItem Value="Intake">Intake</asp:ListItem>
                                    <asp:ListItem Value="DCAS">Case Management</asp:ListItem>
                                    <asp:ListItem Value="SSU">SSU</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label10" runat="server" Text="# of Volumes:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Volumn" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label11" runat="server" Text="Case Transfer:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="Case_Transfer" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="Incoming">Incoming</asp:ListItem>
                                    <asp:ListItem Value="Outgoing">Outgoing</asp:ListItem>
                                    <asp:ListItem Value="Shared Incoming">Shared Incoming</asp:ListItem>
                                    <asp:ListItem Value="Shared Outgoing">Shared Outgoing</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label12" runat="server" Text="Physical Case(s):" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="Physical_Case" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="Packet Incoming">Packet Incoming</asp:ListItem>
                                    <asp:ListItem Value="Packet Outgoing">Packet Outgoing</asp:ListItem>
                                    <asp:ListItem Value="CD/DVD/Data File">CD/DVD/Data File</asp:ListItem>
                                    <asp:ListItem Value="Case File">Case File</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td>
                            </td>
                            <td style="width:5px"></td>	
                            <td>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label13" runat="server" Text="Case Sent to:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="Case_To" runat="server" DataValueField="rc_id" DataTextField="rc_name"
                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label14" runat="server" Text="Case Received From:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="Case_From" runat="server" DataValueField="rc_id" DataTextField="rc_name"
                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label15" runat="server" Text="Date Sent:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Date_Sent" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label16" runat="server" Text="Proposed Acceptance Date:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Proposed_Date" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label17" runat="server" Text="Final Acceptance Date:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Final_Date" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td>
                            </td>
                            <td style="width:5px"></td>	
                            <td>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td colspan="7" class="td_label">
                                <asp:Label ID="Label18" runat="server" Text="Fiscal Summary:         (Total $ " Font-Bold="true" /><asp:Label
                                    ID="FiscalTotal" runat="server"></asp:Label><asp:Label ID="Label19" runat="server"
                                        Text=")" Font-Bold="true" />
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label20" runat="server" Text="Residential($):" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Residential" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label21" runat="server" Text="Day Program($):" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Day_Program" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label22" runat="server" Text="Transportation($):" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Transportation" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label23" runat="server" Text="Other($):" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Other" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td valign="middle" class="td_label" style="width: 200px;">
                                <asp:Label ID="Label24" runat="server" Text="Notes:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td colspan="5">
                                <asp:TextBox ID="Notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                    Width="99%" Height="150"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
