<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ReportPropertyDetail.aspx.cs" Inherits="Virweb2.ReportList.ReportPropertyDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Property Details:::.....</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
            function print_report() {
                var status;
                stdate = document.form1.startdate.value;
                enddate = document.form1.enddate.value;
                status = document.form1.status.value;
                winhref("PrintPropertyDetail.aspx?status=" + status + "&startdate=" + stdate + "&enddate=" + enddate, "PrintPropertyDetail");
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
                        Property Details</h3> 
                 </td>
            </tr>
            <tr style="height:30px">
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
                    <b>Status:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td align="left" width="600px">
                    <asp:DropDownList ID="status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
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
