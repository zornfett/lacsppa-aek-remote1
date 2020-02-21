<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportDailyIDNotes.aspx.cs" Inherits="Virweb2.ReportList.ReportDailyIDNotes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Daily Notes Report:::.....</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
            function print_report() {
                var seldate, stdate, enddate, selfor;
                seldate = document.form1.seldate.value;
                stdate = document.form1.startdate.value;
                enddate = document.form1.enddate.value;
                selfor = document.form1.selfor.value;
                winhref("PrintDailyIDNotes.aspx?seldate="+seldate+"&selfor="+selfor+"&startdate="+stdate+"&enddate="+enddate, "PrintDailyIDNotes");
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
                        Daily Notes Report</h3> 
                 </td>
            </tr>
            <tr style="height:30px">
                 <td colspan="3"></td>
            </tr>
            <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Report by:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td align="left" width="600px">
                   <asp:DropDownList ID="seldate" runat="server" Width="150px">
                        <asp:ListItem Selected="True" Value="1">Service Date</asp:ListItem>
                        <asp:ListItem Value="2">Create Date</asp:ListItem>
                   </asp:DropDownList>
                 </td>              
            </tr>
            <tr style="height:5px">
                 <td colspan="3"></td>
            </tr>
            <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Start Date:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td class="td_unline" align="left" width="600px">
                      <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" 
                                onfocus="showcalendar(event, this);" width="150px"></asp:TextBox>
                 </td>
            </tr>   
            <tr style="height:5px">
                 <td colspan="3"></td>
            </tr>
            <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>End Date:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td class="td_unline" align="left" width="600px">
                      <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" 
                                onfocus="showcalendar(event, this);" Width="150px"></asp:TextBox>
                 </td>
            </tr>
            <tr style="height:5px">
                 <td colspan="3"></td>
            </tr> 
            <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>For:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td align="left" width="600px">
                    <asp:DropDownList ID="selfor" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                           Width="250" style="width: 250px">
                    </asp:DropDownList>
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
