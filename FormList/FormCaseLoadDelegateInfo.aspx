<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCaseLoadDelegateInfo.aspx.cs" Inherits="Virweb2.FormList.FormCaseLoadDelegateInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Tickler Reassignment:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_click() {
            PopupMessage(10);
        }

        function save_click() {

            if (document.getElementById("assignedSC").value == "") {
                alert("Please select assigned case manager!");
                document.CaseLoadDelegateInfo.assignedSC.focus();
                return false;
            }

            if (document.getElementById("delegateSC").value == "") {
                alert("Please select re-assign case manager!");
                document.CaseLoadDelegateInfo.delegateSC.focus();
                return false;
            }

            if (IsDate(document.getElementById("startdate").value, true) != "true") {
                alert("Please input Start Date!");
                document.CaseLoadDelegateInfo.startdate.focus();
                return false;
            }

            if (IsDate(document.getElementById("enddate").value, true) != "true") {
                alert("Please input End Date!");
                document.CaseLoadDelegateInfo.enddate.focus();
                return false;
            }

            if (document.getElementById("uci").value == "") {
                alert("Please select a consumer!");
                document.CaseLoadDelegateInfo.uci.focus();
                return false;
            }

            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormCaseLoadDelegateList.aspx');
        }

        function SelectClick() {
            if (IsDate(document.getElementById("startdate").value, true) != "true") {
                alert("Please input Start Date!");
                document.CaseLoadDelegateInfo.startdate.focus();
                return false;
            }

            if (IsDate(document.getElementById("enddate").value, true) != "true") {
                alert("Please input End Date!");
                document.CaseLoadDelegateInfo.enddate.focus();
                return false;
            }

            if (document.getElementById("assignedSC").value == "") {
                alert("Please select assigned case manager!");
                document.CaseLoadDelegateInfo.assignedSC.focus();
                return false;
            }

            var assignedSC=document.getElementById("assignedSC").value;
            var delegateSC=document.getElementById("delegateSC").value;
            var startdate=document.getElementById("startdate").value;
            var enddate = document.getElementById("enddate").value;
            var keyid = document.getElementById("keyid").value;
            var uci = document.getElementById("uci").value;

            popupDialogSmall('SelectConsumerForDelegate.aspx?ID=' + keyid + '&assignedSC=' + assignedSC + '&delegateSC=' + delegateSC +
               '&startdate=' + startdate + '&enddate=' + enddate + '&uci=' + uci);
        }

        function AddMulti(clients)
        {
            var clientList = document.getElementById("uci");
            clientList.value = clients;
            var clientListSel = document.getElementById("uci_sel");
            clientListSel.value = clients;                    
            window.focus(); 
        }
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="CaseLoadDelegateInfo" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="keyid" id="keyid" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="width: 100%;">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" 
                        OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click">
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
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 500px">
        <table class="table_maindiv" width="100%">
            <tr style="height: 5px;">
                <td>
                </td>
             </tr>
            <tr class="tr_common">
                <td valign="top" align="center" width="100%" height="100%">
                <table class="table_inside" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="td_label" style="width: 300px">
                            <asp:Label ID="l_enteredby" runat="server" Text="Entered By:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td class="td_unline" style="width: 200px">
                            <asp:Label ID="enteredby" runat="server" Width="200px" CssClass="infaceText"></asp:Label>
                        </td>
                        <td style="width: 20px">
                        </td>
                        <td class="td_label" style="width: 120px">
                            <asp:Label ID="Label3" runat="server" Text="Entered Date:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td class="td_unline" style="width: 120px">
                            <asp:Label ID="entereddate" runat="server" Width="200px" CssClass="infaceText"></asp:Label>
                        </td>
                        <td style="width: 20px">
                        </td>
                        <td class="td_label" style="width: 100px">
                            <asp:Label ID="Label6" runat="server" Text="Status:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td class="td_unline" style="width: 100px">
                            <asp:DropDownList ID="status" runat="server" CssClass="infaceDrop" OnClick="DataChanged()" Width="100px" >
                                <asp:ListItem Value="0">Active</asp:ListItem>
                                <asp:ListItem Value="1">Returned</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 50px"></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td  colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label9" runat="server" Text="Start Date:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                onfocus="showcalendar(event, this);" Width="140px">
                            </asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label12" runat="server" Text="End Date:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                onfocus="showcalendar(event, this);" Width="140px">
                            </asp:TextBox>
                        </td>
                        <td></td>
                    </tr>

                    <tr class="tr_common">
                        <td colspan="11" class="td_label">
                            <asp:Label ID="Label2" Font-Bold="True" runat="server" Text="Original Assigned:"></asp:Label>
                        </td>
                        <td style="width: 50px"></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label4" runat="server" Text="Please Select Group:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:DropDownList ID="group_from" runat="server" DataValueField="GroupID" DataTextField="GroupName"
                                OnClick="DataChanged()" AutoPostBack="true" OnSelectedIndexChanged="group_from_OnSelectedIndexChanged" CssClass="infaceDrop" Width="300px">
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label5" runat="server" Text="Please Select Assigned SC:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:DropDownList ID="assignedSC" runat="server" DataValueField="employeeID" DataTextField="employeeName"
                                OnClick="DataChanged()" CssClass="infaceDrop" Width="300px">
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label7" runat="server" Text="Please Select the Consumer:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:Textbox ID="uci" runat="server" CssClass="infaceText" Width="300px" ReadOnly="true" >
                            </asp:Textbox>
                             <input type="hidden" name="uci_sel" id="uci_sel" value="" runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="Select" style="width:100px" ID="selClient"  runat="server"  
                                   Onclick="javascript:SelectClick();" />
                        </td>
                        <td></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td  colspan="12">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="11" class="td_label">
                            <asp:Label ID="Label8" Font-Bold="True" runat="server" Text="Re Assign To:"></asp:Label>
                        </td>
                        <td style="width: 50px"></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label10" runat="server" Text="Please Select Group:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:DropDownList ID="group_to" runat="server" DataValueField="GroupID" DataTextField="GroupName"
                                OnClick="DataChanged()" AutoPostBack="true"  OnSelectedIndexChanged="group_to_OnSelectedIndexChanged" CssClass="infaceDrop" Width="300px">
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td colspan="12">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            <asp:Label ID="Label11" runat="server" Text="Please Select the Re Assign SC:"></asp:Label>
                        </td>
                        <td width="5">
                        </td>
                        <td colspan="9" class="td_unline">
                            <asp:DropDownList ID="delegateSC" runat="server" DataValueField="employeeID" DataTextField="employeeName"
                                OnClick="DataChanged()" CssClass="infaceDrop" Width="300px">
                            </asp:DropDownList>
                        </td>
                        <td></td>
                    </tr>
                </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
