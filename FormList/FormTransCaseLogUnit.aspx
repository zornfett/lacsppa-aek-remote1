<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.FormTransCaseLogUnit"
    CodeBehind="FormTransCaseLogUnit.aspx.cs" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>SCLARC Unit Transfer Case Logs</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
     <!--
        function save_click() {
            var str = JTrim(document.getElementById("DateCaseTrans").value)
            if (str == "") {
                alert("Please enter a date for Date Case(s) Transferred!");
                document.getElementById("DateCaseTrans").focus();
                return false;
            }
            var str = JTrim(document.getElementById("Volumes").value)
            if (str != "") {
                if (isNaN(str) == true) {
                    alert("Please enter a numerical number for Volumes!");
                    document.getElementById("Volumes").focus();
                    return false;
                }
            }

            NoCreateIDNotes();
            return true;

        }

        function ReassFlag_Click() {
            if (document.getElementById("ReassFlag").checked) {
                document.getElementById("ReassDate").disabled = false;
            }
            else {
                document.getElementById("ReassDate").value = "";
                document.getElementById("ReassDate").disabled = true;
            }
        }

        function submitcalendar(boxid) {
            var eligstr = document.getElementById("<%=IPPDateElig.ClientID %>").value;
            //var eligdate = new Date(eligstr);
            //eligdate.setMonth(eligdate.getMonth() + 2);
            //var datestr = padStr(1 + eligdate.getMonth()) + "/" + padStr(eligdate.getDate()) + "/" + padStr(eligdate.getFullYear())
            //document.getElementById("<%=IPPDate.ClientID %>").value = datestr;
        }

        function print_click() {
            //PopupMessage(10);
            var uci = document.TransCaseLogForm.consumer_key.value.toString();
            var createdate = document.TransCaseLogForm.CreateDate.value.toString();
            var url = "PrintFormTransCaseLogUnit.aspx?UCI=" + uci + "&CreateDate=" + createdate;
            winhref(url, 'PrintFormTransCaseLogUnit');
        }

        function back_click() {
            document.location.replace('FormTransCaseLogListUnit.aspx');
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
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
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
                        <tr class="tr_common">
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label1" runat="server" Text="UCI#:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="UCI" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label2" runat="server" Text="MW:" Font-Bold="true" />
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
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label3" runat="server" Text="Last Name:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="c_name_last" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label">
                                <asp:Label ID="Label4" runat="server" Text="First Name:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:Label ID="c_name_first" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label5" runat="server" Text="Date Case(s) Transferred:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="DateCaseTrans" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label6" runat="server" Text="Case Transferred to:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="CaseTransferTo" runat="server" CssClass="infaceDrop" OnClick="DataChanged()"
                                    OnSelectedIndexChanged="casetransferto_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="Unit 1">Unit 1</asp:ListItem>
                                    <asp:ListItem Value="Unit 2">Unit 2</asp:ListItem>
                                    <asp:ListItem Value="Unit 3">Unit 3</asp:ListItem>
                                    <asp:ListItem Value="Unit 4">Unit 4</asp:ListItem>
                                    <asp:ListItem Value="Unit 5">Unit 5</asp:ListItem>
                                    <asp:ListItem Value="Unit 6">Unit 6</asp:ListItem>
                                    <asp:ListItem Value="Unit 7">Unit 7</asp:ListItem>
                                    <asp:ListItem Value="Unit 8">Unit 8</asp:ListItem>
                                    <asp:ListItem Value="Unit 9">Unit 9</asp:ListItem>
                                    <asp:ListItem Value="Unit 10">Unit 10</asp:ListItem>
                                    <asp:ListItem Value="Unit 11">Unit 11</asp:ListItem>
                                    <asp:ListItem Value="Unit 70">Unit 70</asp:ListItem>
                                    <asp:ListItem Value="Unit 90">Unit 90</asp:ListItem>
                                    <asp:ListItem Value="Unit 95">Unit 95</asp:ListItem>
                                    <asp:ListItem Value="SSU">SSU</asp:ListItem>
                                    <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                                    <asp:ListItem Value="Intake">Lanterman Intake</asp:ListItem>
                                    <asp:ListItem Value="Early Start Intake">Early Start Intake</asp:ListItem>
                                    <asp:ListItem Value="Transfer Unit">Transfer Unit</asp:ListItem>
                                    <asp:ListItem Value="Storage">Storage</asp:ListItem>
                                    <asp:ListItem Value="Prevention">Prevention</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label7" runat="server" Text="Case Transferred from:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width:200px">
                                <asp:DropDownList ID="CaseTransferFrom" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="Unit 1">Unit 1</asp:ListItem>
                                    <asp:ListItem Value="Unit 2">Unit 2</asp:ListItem>
                                    <asp:ListItem Value="Unit 3">Unit 3</asp:ListItem>
                                    <asp:ListItem Value="Unit 4">Unit 4</asp:ListItem>
                                    <asp:ListItem Value="Unit 5">Unit 5</asp:ListItem>
                                    <asp:ListItem Value="Unit 6">Unit 6</asp:ListItem>
                                    <asp:ListItem Value="Unit 7">Unit 7</asp:ListItem>
                                    <asp:ListItem Value="Unit 8">Unit 8</asp:ListItem>
                                    <asp:ListItem Value="Unit 9">Unit 9</asp:ListItem>
                                    <asp:ListItem Value="Unit 10">Unit 10</asp:ListItem>
                                    <asp:ListItem Value="Unit 11">Unit 11</asp:ListItem>
                                    <asp:ListItem Value="Unit 70">Unit 70</asp:ListItem>
                                    <asp:ListItem Value="Unit 90">Unit 90</asp:ListItem>
                                    <asp:ListItem Value="Unit 95">Unit 95</asp:ListItem>
                                    <asp:ListItem Value="SSU">SSU</asp:ListItem>
                                    <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                                    <asp:ListItem Value="Lanterman Intake">Lanterman Intake</asp:ListItem>
                                    <asp:ListItem Value="Early Start Intake">Early Start Intake</asp:ListItem>
                                    <asp:ListItem Value="Transfer Unit">Transfer Unit</asp:ListItem>
                                    <asp:ListItem Value="Storage">Storage</asp:ListItem>
                                    <asp:ListItem Value="Prevention">Prevention</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label8" runat="server" Text="Case Status:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="CaseStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID" 
                                      CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label9" runat="server" Text="Case Type:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="CaseType" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="Prevention">Prevention</asp:ListItem>
                                    <asp:ListItem Value="At Risk">At Risk</asp:ListItem>
                                    <asp:ListItem Value="Intake">Intake</asp:ListItem>
                                    <asp:ListItem Value="DCAS">DCAS</asp:ListItem>
                                    <asp:ListItem Value="SSU">SSU</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label10" runat="server" Text="# of Volumes:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="Volumes" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label11" runat="server" Text="If from Intake, Eligibility Date:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="IPPDateElig" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);"
                                    onfocus="showcalendarsubmit(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label12" runat="server" Text="Reason for Transfer:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="ReasonTrans" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="Change in Address">Change in Address</asp:ListItem>
                                    <asp:ListItem Value="Feeder School">Feeder School</asp:ListItem>
                                    <asp:ListItem Value="Facility Liaison">Facility Liaison</asp:ListItem>
                                    <asp:ListItem Value="Zip Code">Zip Code</asp:ListItem>
                                    <asp:ListItem Value="Other">Other</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label13" runat="server" Text="If from Intake, Initial IPP Due:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="IPPDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label14" runat="server" Text="High Profile Case?" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="HighProfileCase" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                    <asp:ListItem Value="No">No</asp:ListItem>
                                    <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label15" runat="server" Text="Physical Case(s) Received by Unit:"
                                    Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="ReceiveDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label16" runat="server" Text="Case assigned to SC:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td style="width: 200px;">
                                <asp:DropDownList ID="CaseAsgToSC" runat="server" DataValueField="employeeID"
                                    DataTextField="employeeName" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" style="width: 350px;">
                                <asp:Label ID="Label17" runat="server" Text="If High Profile Case Date Team Agreed on Transfer:"
                                    Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="ProfileCaseDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label18" runat="server" Text="IPP Due Date:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="IPPDue" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td colspan="7">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td valign="middle" class="td_label" style="width: 100px;">
                                            <asp:Label ID="Label19" runat="server" Text="Comments:" Font-Bold="true" />
                                        </td>
                                        <td style="width:5px"></td>	
                                        <td style="width: 100%">
                                            <asp:TextBox ID="Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                                Width="99%" Height="150"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Comments" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td class="td_label" style="width: 350px;">
                                <asp:CheckBox ID="ReassFlag" runat="server" Text="" /><b>Reassessment Required</b>
                            </td>
                            <td style="width:5px"></td>	
                            <td></td>
                            <td style="width: auto">
                            </td>
                            <td class="td_label" style="width: 200px;">
                                <asp:Label ID="Label20" runat="server" Text="Reassessment Date:" Font-Bold="true" />
                            </td>
                            <td style="width:5px"></td>	
                            <td class="td_unline" style="width: 200px;">
                                <asp:TextBox ID="ReassDate" runat="server" CssClass="infaceText" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);" ReadOnly="false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
                            </td>
                        </tr>
                        <tr class="tr_common" >
                            <td colspan="7">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td valign="middle" class="td_label" style="width: 100px;">
                                            <asp:Label ID="Label21" runat="server" Text="Comments:" Font-Bold="true" />
                                        </td>
                                        <td style="width:5px"></td>	
                                        <td style="width: 100%">
                                            <asp:TextBox ID="Comments1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="150"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Comments1" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px">
                            <td colspan="7">
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
