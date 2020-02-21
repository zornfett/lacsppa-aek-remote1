<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPMedicationInfo.aspx.cs" Inherits="Virweb2.FormList.FormIFSPMedicationInfo" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self" />
    <title>Medication Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function Refresh_Data(flag) {
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshMedicationList();
            }
            else {
                window.opener.RefreshMedicationList();
            }
            if (flag == 1) {
                window.close();
            }
            else {
                window.focus();
            }
        }

        function save_click() {
            NoConfirmExit();
            return true;
        }

        function getMedicationChanges(obj) {
            document.MedicalMC.isChange.value = "1";
            document.MedicalMC.MedicationChanges.value += obj.toString() + ";";
        }
    </script>
</head>
<body id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="MedicalMC" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="entry_key" id="entry_key" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="isChange" id="isChange" value="0" runat="server" />
    <input type="hidden" name="MedicationChanges" id="MedicationChanges" value="" runat="server" />
    <input id="NoConfirm" type="hidden" value="0" />
    <div align="left" style="width: 100%">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr style="height: 25px;" align="center" valign="bottom">
                <td colspan="2">
                    <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">MEDICATION INFORMATION</asp:Label>
                </td>
            </tr>
            <tr style="height: 30px;" align="left" valign="middle">
                <td>
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Medication For</asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                        CssClass="buttonbluestyle" OnClientClick="save_click();" OnClick="btnEdit_Click">
                    </asp:Button>
                    <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                        CssClass="buttonbluestyle" OnClientClick="save_click();" OnClick="btnAdd_Click">
                    </asp:Button>
                    <input type="button" id="btnHelp" value="Help" Visible="False" style="width: 60px;" class="buttonbluestyle"
                        onclick="winhref('./HelpFile/.html','help')" runat="server" />
                </td>
            </tr>
            <tr style="height: 15px">
                <td colspan="2">
                    <hr />
                </td>
            </tr>
        </table>
    </div>
    <div align="center" valign="top" style="position: relative; width: 100%; height: 550px;
        overflow: auto">
        <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0"
            style="width: 98%">
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr class="tr_common">
                            <td style="width: 120px" class="td_label">
                                <asp:Label ID="l_medication" runat="server" Text="Medication:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 600px"  width="600" class="td_unline" >
                                <asp:TextBox ID="medication" onchange="getMedicationChanges('medication');" runat="server"
                                    CssClass="inface" MaxLength="100"></asp:TextBox>
                            </td>
                            <td width="20" >
                            </td>
                            <td width="150" >
                                <a href="javascript:winhref('http://www.nlm.nih.gov/medlineplus/druginformation.html', 'DurgList');">
                                   <b><u>Go To The Drug Listing</u></b></a>
                            </td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr class="tr_common">
                            <td  style="width: 120px" class="td_label">
                                <asp:Label ID="l_dosage" runat="server" Text="Dosage:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 250px"  width="250" class="td_unline" >
                                <asp:TextBox ID="dosage" onchange="getMedicationChanges('dosage');" runat="server"
                                    CssClass="inface" MaxLength="100"></asp:TextBox>
                            </td>
                            <td width="10" >
                            </td>
                            <td  style="width: 120px" class="td_label">
                                <asp:Label ID="l_frequency" runat="server" Text="Frequency:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 250px"  width="250" class="td_unline" >
                                <asp:DropDownList ID="frequency" onchange="getMedicationChanges('frequency');" runat="server"
                                    DataValueField="tb_entry_text" DataTextField="tb_entry_text"  CssClass="infaceDrop"
                                    OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr class="tr_common">
                            <td  style="width: 120px" class="td_label">
                                <asp:Label ID="l_purpose" runat="server" Text="Reason For Use:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="40" >
                            </td>
                            <td class="td_label" style="width: 250px"  width="250" >
                                <asp:CheckBox ID="purposeunknown" onclick="getMedicationChanges('purposeunknown');"
                                    runat="server" Text=""></asp:CheckBox><b>Reason For Use Unknown</b>
                            </td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td >
                    <asp:TextBox ID="purpose" onchange="getMedicationChanges('purpose');" runat="server"
                        TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Width="98%" Height="60">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr class="tr_common">
                            <td  style="width: 120px" class="td_label">
                                <asp:Label ID="l_startdate" runat="server" Text="Start Date:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 120px"  width="120" class="td_unline" >
                                <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);getMedicationChanges('startdate');"
                                    onfocus="DataChanged();showcalendar(event, this);getMedicationChanges('startdate');"></asp:TextBox>
                            </td>
                            <td width="10" >
                            </td>
                            <td  style="width: 120px" class="td_label">
                                <asp:Label ID="l_prescribedby" runat="server" Text="Prescribed By:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 250px"  width="250" class="td_unline" >
                                <asp:TextBox ID="prescribedby" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td width="10" >
                            </td>
                            <td  style="width: 120px" class="td_label">
                                <asp:Label ID="l_mdreviewdate" runat="server" Text="MD's Review Date:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 120px"  width="120" class="td_unline" >
                                <asp:TextBox ID="mdreviewdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);"
                                    onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr class="tr_common">
                            <td class="td_label" style="width: 150px"  width="150" >
                                <asp:CheckBox ID="discontinued" onclick="getMedicationChanges('discontinued');" runat="server"
                                    CssClass="inface" Text=""></asp:CheckBox><b>Discontinued</b>
                            </td>
                            <td width="10" >
                            </td>
                            <td  style="width: 100px" class="td_label">
                                <asp:Label ID="l_endwhy" runat="server" Text="Reason:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: 500px"  width="500" class="td_unline" >
                                <asp:TextBox ID="endwhy" onchange="getMedicationChanges('endwhy');" runat="server"
                                    CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td  class="td_label">
                    <asp:Label ID="l_text" runat="server" Text="Comments/Special Instructions:" Font-Bold="true"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common" style="height: 100px;">
                <td>
                    <asp:TextBox ID="Text" onchange="getMedicationChanges('text');" runat="server" TextMode="MultiLine"
                        Wrap="true" BorderStyle="Solid" Width="98%" Height="100">
                    </asp:TextBox>
                    <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Text" ShowModal="true" runat="server">
                    </cc1:UltimateSpell>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr style="height: 15px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td  class="td_label">
                    <b>Entered By:</b>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="EnterBy" runat="server" CssClass="infaceText"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Last Mod By:</b>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lastmodby" runat="server" CssClass="infaceText"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 5px;">
                </td>
            </tr>
            <tr class="tr_common">
                <td  class="td_label">
                    <b>Entered Date:</b>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="entrydate" runat="server" CssClass="infaceText"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Modify Date:</b>&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lastmoddate" runat="server" CssClass="infaceText"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
