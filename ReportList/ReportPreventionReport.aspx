<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportPreventionReport.aspx.cs"
    Inherits="Virweb2.ReportList.ReportPreventionReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self" />
    <title>:::Prevention Program Report:::.....</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report() {
            var stdate, enddate,stat;
            stdate = document.PreventionRpt.rpt_startdate.value;
            enddate = document.PreventionRpt.rpt_enddate.value;
            stat = document.PreventionRpt.rpt_status.value;
            winhref("PrintPreventionReport.aspx?startdate=" + stdate + "&enddate=" + enddate + "&status=" + stat ,"PrintPreventionReport");
        }
    </script>
    <style type="text/css">
        .style5
        {
            height: 39px;
        }
    </style>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="PreventionRpt" method="post" runat="server">
    
        <table width="700px">
            <tr class="tr_common">
                <td colspan="4" style="height:70px">
                    <asp:Label ID="prpt" runat="server" Text="Prevention Program Report" Font-Bold="True"
                        Font-Names="Arial" Font-Size="X-Large" Font-Strikeout="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr class="tr_common">
                <td align="left" style="height:40px; width:140px" >
                    <asp:Label ID="lblstartdate" runat="server" Text="Report Start Date:" 
                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="height:40px; width:100px">
                    <asp:TextBox ID="rpt_startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                        onfocus="showcalendar(event, this);">
                    </asp:TextBox>
                </td>
                <td width="auto">
                    <asp:RequiredFieldValidator ID="rfv_starttime" runat="server" 
                        ErrorMessage="This is a Request Field. Please select a date" 
                        ControlToValidate="rpt_startdate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tr_common">
                <td align="left" style="height:40px; width:140px" >
                    <asp:Label ID="lblenddate" runat="server" Text="Report End Date:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px" class="style5">
                </td>
                <td style="height:40px; width:100px">
                    <asp:TextBox ID="rpt_enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                        onfocus="showcalendar(event, this);">
                    </asp:TextBox>
                </td>
                <td width="auto">
                    <asp:RequiredFieldValidator ID="rfv_enddate" runat="server" 
                        ErrorMessage="This is a Request Field. Please select a date" 
                        ControlToValidate="rpt_enddate" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tr_common">
                <td align="left" style="height:40px; width:140px" >
                    <asp:Label ID="lblstatus" runat="server" Text="Report Status:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px" class="style5">
                </td>
                <td class="style14">
                    <asp:dropdownlist id="rpt_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="180">
                        <asp:ListItem Value="Active">Active</asp:ListItem>
                        <asp:ListItem Value="Post due">Post due</asp:ListItem>
	                </asp:dropdownlist>
                </td>
                <td width="auto">
                </td>
            </tr>

            <tr class="tr_common">
                <td align="left" colspan="4" class="style5">
                    <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   
                           runat="server"  onclick="javascript:print_report();" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
