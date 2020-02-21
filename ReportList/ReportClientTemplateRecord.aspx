<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ReportClientTemplateRecord.aspx.cs" Inherits="Virweb2.ReportList.ReportClientTemplateRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Case load Report:::.....</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report() {           
            var uci = document.getElementById("tx_uci").value;
            var first = document.getElementById("tx_first").value;
            var last = document.getElementById("tx_last").value;

            var cateValue = document.getElementById("data_cate").value;
            var cateSelect = document.getElementById("data_cate");
            var cateText = cateSelect.options[cateSelect.selectedIndex].text;
            if (cateValue == '')
            {
                alert('Please Select Client Doc Category');
                return;
            }
            var typeSelect = document.getElementById("doc_type");
            var typeText = typeSelect.options[typeSelect.selectedIndex].text;
           
            var dateText = document.getElementById("doc_date").value;


            winhref("PrintReportClientTemplateRecord.aspx?uci=" + uci + "&first=" + first + "&last=" + last + "&cateVal=" + cateValue + "&cate=" + cateText + "&type=" + typeText + "&date=" + dateText, "PrintReportClientTemplateRecord");
        }
    </script>
</head>
<body>
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <center>

            <div style="height: 25px; width: 40%; text-align: left; display: block" align="left">
                <asp:Label ID="lbl_template" runat="server" Text="Template:"></asp:Label>
                &nbsp;
                <asp:DropDownList ID="template" runat="server" Style="width: 420px">
                    <asp:ListItem Text="Client Records" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <table cellspacing="0" cellpadding="0" align="center" border="0" style="background-color: #EAF4FF; width: 30%; text-align: left">


                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <b>UCI#</b>
                    </td>

                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <asp:TextBox ID="tx_uci" runat="server" CssClass="inface" Width="250" Style="width: 500px" AutoPostBack="True" OnTextChanged="uci_textChange"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <b>First Name:</b>
                    </td>
                </tr>

                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <asp:TextBox ID="tx_first" runat="server" CssClass="inface" Width="250" Style="width: 500px"></asp:TextBox>
                    </td>
                </tr>


                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <b>Last Name:</b>
                    </td>

                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <asp:TextBox ID="tx_last" runat="server" CssClass="inface" Width="250" Style="width: 500px"></asp:TextBox>
                    </td>

                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <b>Client Doc Category:</b>
                    </td>
                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <asp:DropDownList ID="data_cate" runat="server"
                            OnSelectedIndexChanged="catagory_SelectedIndexChanged"
                            AutoPostBack="true"
                            DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Style="width: 500px;"
                            CssClass="infaceDrop">
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <b>Client Doc Type:</b>
                    </td>
                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <asp:DropDownList ID="doc_type" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Style="width: 500px;"
                            CssClass="infaceDrop">
                        </asp:DropDownList>
                    </td>

                </tr>

                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <b>Client Doc Date:</b>
                    </td>

                </tr>
                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left">
                        <asp:TextBox ID="doc_date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" Width="250" Style="width: 500px;" onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                    </td>

                </tr>

                <tr style="height: 25px">
                    <td style="width: 720px; height: 20px;" align="left"></td>
                </tr>


                <tr style="height: 25px">
                    <td colspan="2" align="center">
                        <input type="button" name="btn_ok" id="btn_ok" value="Print" class="buttonbluestyle" style="width: 80px;"
                            runat="server" onclick="javascript: print_report();" />
                    </td>
                    <td width="720px"></td>
                </tr>
            </table>
        </center>
    </form>
</body>
</html>
