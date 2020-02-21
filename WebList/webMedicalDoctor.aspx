<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webMedicalDoctor.aspx.cs" Inherits="Virweb2.WebList.webMedicalDoctor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self" />
    <title>Medical Doctors Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_click() {
            var consumer_key = document.MedicalDT.consumer_key.value.toString();
            var UserAct = document.MedicalDT.UserAct.value.toString();
            var s_number = document.MedicalDT.s_number.value.toString();
            var url = "PrintMedicalDoctor.aspx?consumer_key=" + consumer_key + "&s_number=" + s_number + "&UserAct=" + UserAct;
            winhref(url, "PrintMedicalDoctor");
        }

        function save_click() {
            NoConfirmExit();
            return true;
        }
    </script>
</head>
<body id="body" runat="server">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="MedicalDT" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
        <input type="hidden" name="s_number" id="s_number" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="width: 100%">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 25px;" align="center" valign="bottom">
                    <td colspan="2">
                        <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">MEDICAL DOCTOR INFORMATION</asp:Label>
                    </td>
                </tr>
                <tr style="height: 30px;" align="left" valign="middle">
                    <td>
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Contact For</asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px" CssClass="buttonbluestyle" OnClientClick="save_click();" OnClick="btnEdit_Click"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px" CssClass="buttonbluestyle" OnClientClick="save_click();" OnClick="btnAdd_Click"></asp:Button>
                        <input type="button" id="btnPrint" value="Print" style="width: 60px;" class="buttonbluestyle" onclick="javascript: print_click(); return false;" runat="server" />
                        <input type="button" id="btnHelp" value="Help" visible="False" style="width: 60px;" class="buttonbluestyle" onclick="winhref('./HelpFile/.html', 'help')" runat="server" />
                    </td>
                </tr>
                <tr style="height: 15px">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" valign="top" style="position: relative; width: 100%; height: 550px; overflow: auto">
            <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" style="width: 98%">
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_group" runat="server" Text="Group:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td width="120">
                        <asp:Label ID="s_group" runat="server" CssClass="infaceText"></asp:Label>
                    </td>
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_relationship" runat="server" Text="Relationship:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td colspan="3">
                        <asp:DropDownList ID="s_relationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text" TabIndex="1"
                            Height="20" Width="180" OnClick="DataChanged()">
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr class="tr_common">
                    <td colspan="9" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_name_last" runat="server" Text="Name:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td colspan="4" height="20" style="height: 20px">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td class="td_unline" align="left" width="120">
                                    <asp:TextBox ID="s_name_first" runat="server" CssClass="inface" MaxLength="20" TabIndex="1"></asp:TextBox>
                                </td>
                                <td width="5" style="height: 20px"></td>
                                <td class="td_unline" align="left" width="30" style="height: 20px">
                                    <asp:TextBox ID="s_name_mi" runat="server" CssClass="inface" Width="20" MaxLength="1" TabIndex="1"></asp:TextBox>
                                </td>
                                <td width="5" style="height: 20px"></td>
                                <td class="td_unline" align="left" width="120" style="height: 20px">
                                    <asp:TextBox ID="s_name_last" runat="server" CssClass="inface" MaxLength="20" TabIndex="1"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                   
                    <td width="5" height="20"></td>
                    <td width="195"></td>
                </tr>
                <tr class="tr_common">
                    <td colspan="9" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td colspan="3" align="left" class="td_label" height="20">
                        <b>No Longer A Provider</b><asp:CheckBox ID="s_previousprovider" runat="server" Text="" TabIndex="1"></asp:CheckBox>
                    </td>
                    <td align="left" style="width: 1%;">&nbsp;
                    </td>

                    <td colspan="3" align="left" class="td_label" height="20" style="position:relative;left:-45px;">
                        <b>
                            <asp:CheckBox ID="s_primary_doctor"  runat="server" Text="Primary Doctor"></asp:CheckBox></b>
                    </td>
                        <td align="left" style="width: 1%">&nbsp;
                    </td>
                    <td colspan="3" align="left" class="td_label" height="20" style="position:relative;left:-129px;">
                        <b>
                            <asp:Label runat="server" ID="Label23">Last Visit:</asp:Label>
                        <asp:TextBox runat="server" ID="last_hea_psy_con" Style="padding: -15px -15px -15px -15px; margin-left: 10px; text-align: left;" onclick="DataChanged();showcalendar(event, this);"
                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                    </td>



                    <td></td>
                    
                </tr>
                <tr style="height: 5px">
                    <td colspan="9"></td>
                </tr>
                <tr>
                    <td colspan="9" class="td_thicksepline"></td>
                </tr>
                <tr style="height: 5px">
                    <td colspan="9"></td>
                </tr>
            </table>
            <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" style="width: 98%">
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_phone_1" runat="server" Text="Primary Phone:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td width="340">
                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td align="center" width="10px">(</td>
                                <td class="td_unline" align="left" width="30px">
                                    <asp:TextBox ID="s_phone_1_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.MedicalDT.s_phone_1_2);"></asp:TextBox>
                                </td>
                                <td align="center" width="15px">) </td>
                                <td class="td_unline" align="left" width="30px">
                                    <asp:TextBox ID="s_phone_1_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.MedicalDT.s_phone_1_3);"></asp:TextBox>
                                </td>
                                <td align="center" width="10px">-</td>
                                <td class="td_unline" align="left" width="40px">
                                    <asp:TextBox ID="s_phone_1_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="right" width="100" class="td_label" height="20">(optional)
                    </td>
                    <td width="5" height="20"></td>
                    <td width="300" height="20">
                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td style="width: 120px" align="right" width="120" class="td_label">
                                    <asp:DropDownList ID="s_phone_3_label" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Height="20" Width="80" OnClick="DataChanged()" TabIndex="2">
                                    </asp:DropDownList>
                                </td>
                                <td width="5" height="20"></td>
                                <td align="center" width="10px">(</td>
                                <td class="td_unline" align="left" width="30px">
                                    <asp:TextBox ID="s_phone_3_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                                        onKeyup="autotab(this, document.MedicalDT.s_phone_3_2);"></asp:TextBox>
                                </td>
                                <td align="center" width="15px">) </td>
                                <td class="td_unline" align="left" width="30px">
                                    <asp:TextBox ID="s_phone_3_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                                        onKeyup="autotab(this, document.MedicalDT.s_phone_3_3);"></asp:TextBox>
                                </td>
                                <td align="center" width="10px">-</td>
                                <td class="td_unline" align="left" width="40px">
                                    <asp:TextBox ID="s_phone_3_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="2"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_phone_2" runat="server" Text="Work Phone:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td width="340">
                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td align="center" width="10px">(</td>
                                <td class="td_unline" align="left" width="30px">
                                    <asp:TextBox ID="s_phone_2_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.MedicalDT.s_phone_2_2);"></asp:TextBox>
                                </td>
                                <td align="center" width="15px">) </td>
                                <td class="td_unline" align="left" width="30px">
                                    <asp:TextBox ID="s_phone_2_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                                        onKeyup="autotab(this, document.MedicalDT.s_phone_2_3);"></asp:TextBox>
                                </td>
                                <td align="center" width="10px">-</td>
                                <td class="td_unline" align="left" width="40px">
                                    <asp:TextBox ID="s_phone_2_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="right" width="100" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_email" runat="server"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td class="td_unline" align="left" width="300">
                        <asp:TextBox ID="s_email" runat="server" CssClass="inface" MaxLength="40" TabIndex="3"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px">
                    <td colspan="6"></td>
                </tr>
                <tr>
                    <td colspan="6" class="td_thicksepline"></td>
                </tr>
                <tr style="height: 5px">
                    <td colspan="6"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20"></td>
                    <td width="5" height="20"></td>
                    <td class="td_unline" align="left" width="340">
                        <b>Current Address</b>
                    </td>
                    <td colspan="3" class="td_unline" align="left">
                        <b>Mailing Address</b> (if different)
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="6" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_address_name" runat="server" Text="C/O Name:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td class="td_unline" align="left" width="340">
                        <asp:TextBox ID="s_address_name" runat="server" CssClass="inface" MaxLength="50" TabIndex="3"></asp:TextBox>
                    </td>
                    <td colspan="3" class="td_unline" align="left">
                        <asp:TextBox ID="s_employer" runat="server" CssClass="inface" MaxLength="40" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="6" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_address_line_1" runat="server" Text="Address Line 1:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td class="td_unline" align="left" width="340">
                        <asp:TextBox ID="s_address_line_1" runat="server" CssClass="inface" MaxLength="30" TabIndex="1"></asp:TextBox>
                    </td>
                    <td colspan="3" class="td_unline" align="left">
                        <asp:TextBox ID="s_work_address_line_1" runat="server" CssClass="inface" MaxLength="30" TabIndex="2"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px">
                    <td colspan="6"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_address_line_2" runat="server" Text="Address Line 2:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td class="td_unline" align="left" width="340">
                        <asp:TextBox ID="s_address_line_2" runat="server" CssClass="inface" MaxLength="30" TabIndex="3"></asp:TextBox>
                    </td>
                    <td colspan="3" class="td_unline" align="left">
                        <asp:TextBox ID="s_work_address_line_2" runat="server" CssClass="inface" MaxLength="30" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="6" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_address_city" runat="server" Text="City and State:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td width="340">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td class="td_unline" align="left" width="290" style="height: 20px">
                                    <asp:TextBox ID="s_address_city" runat="server" CssClass="inface" Width="270" MaxLength="50" TabIndex="3"></asp:TextBox>
                                </td>
                                <td width="10" style="height: 20px"></td>
                                <td class="td_unline" align="left" width="30" style="height: 20px">
                                    <asp:TextBox ID="s_address_state" runat="server" CssClass="inface" Width="20" MaxLength="2" TabIndex="3"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="3">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td class="td_unline" align="left" width="290" style="height: 20px">
                                    <asp:TextBox ID="s_work_address_city" runat="server" CssClass="inface" Width="270" MaxLength="15" TabIndex="4"></asp:TextBox>
                                </td>
                                <td width="10" style="height: 20px"></td>
                                <td class="td_unline" align="left" width="30" style="height: 20px">
                                    <asp:TextBox ID="s_work_address_state" runat="server" CssClass="inface" Width="20" MaxLength="2" TabIndex="4"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="6" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_address_zip" runat="server" Text="Zip/Mail Codes:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td class="td_unline" align="left" width="345">
                        <asp:TextBox ID="s_address_zip" runat="server" CssClass="inface" Width="140" MaxLength="10" TabIndex="3"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="s_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="150" OnClick="DataChanged()" TabIndex="3">
                    </asp:DropDownList>
                    </td>
                    <td colspan="3" class="td_unline" align="left">
                        <asp:TextBox ID="s_work_address_zip" runat="server" CssClass="inface" Width="140" MaxLength="10" TabIndex="4"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="s_work_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="150" OnClick="DataChanged()" TabIndex="4">
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 5px">
                    <td colspan="6"></td>
                </tr>
                <tr>
                    <td colspan="6" class="td_thicksepline"></td>
                </tr>
                <tr style="height: 5px">
                    <td colspan="6"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                        <b>
                            <asp:Label ID="l_s_comment_1" runat="server" Text="Comments:"></asp:Label></b>
                    </td>
                    <td width="5" height="20"></td>
                    <td colspan="4" class="td_unline" align="left">
                        <asp:TextBox ID="s_comment_1" runat="server" CssClass="inface" MaxLength="250" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="6" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20"></td>
                    <td width="5" height="20"></td>
                    <td colspan="4" class="td_unline" align="left">
                        <asp:TextBox ID="s_comment_2" runat="server" CssClass="inface" MaxLength="250" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="6" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 150px" align="right" width="150" class="td_label" height="20"></td>
                    <td width="5" height="20"></td>
                    <td colspan="4" class="td_unline" align="left">
                        <asp:TextBox ID="s_comment_3" runat="server" CssClass="inface" MaxLength="250" TabIndex="4"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
