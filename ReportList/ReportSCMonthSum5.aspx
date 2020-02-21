<%@ page language="C#" inherits="Virweb2.ReportList.ReportSCMonthSum5" Codebehind="ReportSCMonthSum5.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::Case From Intake Referrals:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	
	  <script type="text/JavaScript">
	  <!--
        function print_report()
        {
           var stdate = document.form1.startdate.value;
           var enddate = document.form1.enddate.value;
           winhref("PrintSCMonthSum5.aspx?startdate=" + stdate + "&enddate=" + enddate, "PrintSCMonthSum5");           
        }
      //-->  
    </script> 
</head>
<body >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
         <center>
          <br />
          <table cellspacing="0" cellpadding="0"  border="0"  class="table_common" width="80%">
              <tr style="height:25px"><td colspan="3"></td></tr>
              <tr style="height:50px">
                  <td colspan="2" align="center"><asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">Cases From Intake Referrals</asp:Label></td>
                  <td></td>
              </tr>
              <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Start Date:</b>
                 </td>
                 <td class="td_unline" align="left" width="200px">
                 &nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" 
                                onfocus="showcalendar(event, this);" width="150px"></asp:TextBox>
                 </td>
                 <td width="auto"></td>
              </tr>   
              <tr style="height:10px">
                 <td colspan="3"></td>
              </tr>
              <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>End Date:</b>
                 </td>
                 <td class="td_unline" align="left" width="200px">
                 &nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" 
                                onfocus="showcalendar(event, this);" Width="150px"></asp:TextBox>
                 </td>
              </tr>   
              <tr style="height:25px"><td colspan="3"></td></tr>
              <tr style="height:25px">
                 <td colspan="2">
                 <asp:button id="btn_ok" Runat="server" Text="Submit" style="width:60px" CssClass="buttonbluestyle" onclick="BtnSubmit_Click"></asp:button>
                 </td>
                 <td width="auto"></td>
              </tr>
              <tr style="height:250px">
                 <td colspan="3"></td>
              </tr>
          </table>
         </center>
    </form>
</body>
</html>
