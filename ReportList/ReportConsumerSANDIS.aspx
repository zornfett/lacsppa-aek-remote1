<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportConsumerSANDIS"
    CodeBehind="ReportConsumerSANDIS.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::Consumer Information Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report() {
            var optionssn;
            if (document.form1.optionssn_1.checked) optionssn = 1;
            if (document.form1.optionssn_2.checked) optionssn = 2;
            var optionsel;
            if (document.form1.optionsel_1.checked) optionsel = 1;
            if (document.form1.optionsel_2.checked) optionsel = 2;
            var uci;
            uci = document.form1.uci.value;
            if (uci == '')
                alert("Please enter UCI number first");
            else
                winhref("PrintConsumerSANDIS.aspx?uci=" + uci + "&optionssn=" + optionssn + "&optionsel=" + optionsel, "PrintConsumerSANDIS");
        }
    </script>
</head>
<body style="font-size: 9pt">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
    <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
            <tr style="height: 30px">
                <td align="center" style="font-family: Arial">
                    <h3>
                        Client Face Sheet</h3>
                </td>
            </tr>
            <tr style="height: 30px">
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td style="width: 150px; height: 20px;" align="right" class="td_label">
                                <b>Enter UCI#</b>
                            </td>
                            <td style="height: 20px; width: 5px">
                            </td>
                            <td class="td_unline" align="left" width="200px">
                                <asp:TextBox ID="uci" runat="server" CssClass="inface" Width="150px" MaxLength="7"></asp:TextBox>
                            </td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 20px">
                <td>
                </td>
            </tr>


            <!--hide section in Juen 1st print only w/o SSN# by default -->
            <tr style="height: 25px ;display:none" class="tr_common">
                <td>
                    Please Select:
                </td>
            </tr>
            <tr style="height: 20px;display:none">
                <td>
                </td>
            </tr>
            <tr style="height: 25px;display:none" class="tr_common">
                <td class="td_label" align="left">
                    <asp:RadioButton ID="optionssn_1" GroupName="optionssn" runat="server" Text="Print with SS# info">
                    </asp:RadioButton>
                </td>
            </tr>
            -
            <tr style="height: 20px;display:none">
                <td>
                </td>
            </tr>
            <tr style="height: 25px;display:none" class="tr_common">
                <td class="td_label" align="left">
                    <asp:RadioButton ID="optionssn_2" GroupName="optionssn" runat="server" Text="Print without SS# info">
                    </asp:RadioButton>
                </td>
            </tr>
            <tr style="height: 20px;display:none">
                <td>
                </td>
            </tr>


            <tr style="height: 25px" class="tr_common">
                <td>
                    Please Select:
                </td>
            </tr>
            <tr style="height: 20px">
                <td>
                </td>
            </tr>
            <tr style="height: 25px" class="tr_common">
                <td class="td_label" align="left">
                    <asp:RadioButton ID="optionsel_1" GroupName="optionsel" runat="server" Text="Print Contact info (from Contacts tab)">
                    </asp:RadioButton>
                </td>
            </tr>
            <tr style="height: 20px">
                <td>
                </td>
            </tr>
            <tr style="height: 25px" class="tr_common">
                <td class="td_label" align="left">
                    <asp:RadioButton ID="optionsel_2" GroupName="optionsel" runat="server" Text="Print Only Parents info (only Mother and Father)">
                    </asp:RadioButton>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                </td>
            </tr>
            <tr style="height: 25px">
                <td align="center">
                    <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle"
                        style="width: 80px;" runat="server" onclick="javascript:print_report();" />
                </td>
            </tr>
            <tr style="height: 250px">
                <td>
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
