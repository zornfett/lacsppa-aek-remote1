<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webTicklerInfo.aspx.cs" Inherits="Virweb2.WebList.webTicklerInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self"></base>
    <title>:::Tickler info:::...</title>   
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javascript" src="../js/common.js"></script> 
    <script language="javascript">
    <!--
        function save_submit() {
            if (JTrim(document.TicklerInfo.txt_days.value) != "") {
                if (IsInteger(JTrim(document.TicklerInfo.txt_days.value))) {
                    if (parseInt(JTrim(document.TicklerInfo.txt_days.value), 10) > 0) {
                    }
                    else {
                        alert("Please input Days to finish each task !");
                        document.TicklerInfo.txt_days.focus();
                        return false;
                    }
                }
                else {
                    alert("Please input Days to finish each task !");
                    document.TicklerInfo.txt_days.focus();
                    return false;
                }
            }
            else {
                alert("Please input Days to finish each task !");
                document.TicklerInfo.txt_days.focus();
                return false;
            }

            if (JTrim(document.TicklerInfo.txt_startdate.value) == "") {
                alert("Please input Start Date !");
                document.TicklerInfo.txt_startdate.focus();
                return false;
            }
            if (document.TicklerInfo.rb_enddate2.checked) {
                if (JTrim(document.TicklerInfo.txt_enddate.value) == "") {
                    alert("Please input End Date !");
                    document.TicklerInfo.txt_enddate.focus();
                    return false;
                }
            }

            return true;
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
            window.close();
        }
    //-->
    </script>

</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="TicklerInfo" method="post" runat="server">
        <input id="NoConfirm" type="hidden" value="1" />
        <input type="hidden" name="txt_tickler_key" id="txt_tickler_key" runat="server" value="" />
        <input type="hidden" name="txt_CoordinatorID" id="txt_CoordinatorID" runat="server" />
        <input type="hidden" name="txt_enterby" id="txt_enterby" runat="server" value="" />
        <input type="hidden" name="txt_uci" id="txt_uci" runat="server" value="" />          
        <div align="center">
            <table id="TABLE_Label">
                <tr align="center" valign="bottom">
                    <td colspan="2">
                        <asp:Label ID="Title" runat="server" Font-Size="12pt" Font-Bold="True" ForeColor="Navy">Tickler Information For</asp:Label>
                    </td>
                </tr>
                <tr style="height: 30px;" align="left" valign="middle">
                    <td width="70%">
                    </td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Text="Save" Style="width: 60px" CssClass="buttonbluestyle"
                            OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click"></asp:Button>
                        <input type="button" id="btnPrint" value="Print" style="width: 60px;" class="buttonbluestyle"  runat="server"
                            onclick="javascript:window.print();" />
                        <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle" runat="server" />
                    </td>
                </tr>
                <tr style="height: 15px">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
            <table class="table_common" cellspacing="0" cellpadding="0" border="0" width="60%">
                <tr class="tr_common" style="height: 20pt">
                    <td style="width: 200px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="lbl_Coordinator" runat="server" Text="[Coordinator]" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td class="td_unline" align="left" width="300px">
                        <asp:TextBox ID="txt_Coordinator" runat="server" CssClass="infaceText" Style="width: 200px"  ReadOnly=true></asp:TextBox>
                    </td>
                    <td width="40%">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 200px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="lbl_Entered" runat="server" Text="Entered By:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td class="td_unline" align="left" width="200px">
                        <asp:TextBox ID="txt_Entered" runat="server" CssClass="infaceText" Style="width: 200px" ReadOnly=true></asp:TextBox>
                        <td>
                        </td>
                        <td>
                        </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 200px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="Label1" runat="server" Text="Tickler Type:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddlst_type" runat="server" CssClass="infaceDrop" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Height="20" Width="210">
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 200px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="Label2" runat="server" Text="Days to finish each task:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td class="td_unline" align="left" width="210px">
                        <asp:TextBox ID="txt_days" runat="server" Width="160" CssClass="inface"></asp:TextBox><asp:Label
                            ID="Label3" runat="server" Text="(Days)"></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 200px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="Label4" runat="server" Text="Recurrence:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddlst_recurrence" runat="server" CssClass="infaceDrop" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Height="20" Width="210">
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 200px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="Label5" runat="server" Text="Start:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td class="td_unline" align="left" width="210px">
                        <asp:TextBox ID="txt_startdate" runat="server" Width="210" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" ></asp:TextBox></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 200px;" align="right" class="td_label">
                        <asp:Label ID="Label6" runat="server" Text="End:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td colspan="3" align="left">
                        <table  cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td>
                                    <asp:RadioButton ID="rb_enddate1" runat="server" Text="No end date" GroupName="enddate" Width="120px"
                                         Checked="true"   />
                                </td>
                                <td>
                                    <asp:RadioButton ID="rb_enddate2" runat="server" Text="End by:" GroupName="enddate" Width="80px"
                                         /></td>
                                <td class="td_unline" align="left" width="100px">
                                    <asp:TextBox ID="txt_enddate" runat="server" Width="100px" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" > </asp:TextBox>
                                </td>
                                <td width="20%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px; height: 20px;" align="right" class="td_label">
                        <asp:Label ID="Label7" runat="server" Text="Description:" Font-Bold=true></asp:Label>&nbsp;&nbsp;</td>
                    <td colspan="3" class="td_unline" align="left" style="height: 20pt">
                        <asp:TextBox ID="txt_desc" runat="server" Width="400" CssClass="inface" MaxLength=500> </asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
