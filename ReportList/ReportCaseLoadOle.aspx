<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ReportCaseLoadOle.aspx.cs" Inherits="Virweb2.ReportList.ReportCaseLoadOle" %>

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
                var selfor;
                selfor = document.form1.selfor.value;
                winhref("PrintCaseLoadOle.aspx?selfor="+selfor, "PrintCaseLoadOle");
            }
    </script>
</head>
<body>
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server"> 
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
            <tr style="height:30px">
                 <td colspan="2"></td>                
                 <td align="left" style="font-family: Arial"><h3>
                        Case manager Case Load Report</h3> 
                 </td>
            </tr>
            <tr style="height:30px">
                 <td colspan="3"></td>
            </tr>
            <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Select Case Manager:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td align="left" width="600px">
                    <asp:textbox id="selfor" runat="server" CssClass="inface" Width="250" style="width: 250px"></asp:textbox>
                 </td>              
            </tr>
            <tr style="height:25px">
                 <td colspan="3"></td>
            </tr> 
            <tr style="height:25px">
                 <td colspan="2" align="center" >
                     <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   
                           runat="server"  onclick="javascript:print_report();" />
                 </td>
                 <td width="600px"></td>
            </tr>
        </table>
    </form>
</body>
</html>
