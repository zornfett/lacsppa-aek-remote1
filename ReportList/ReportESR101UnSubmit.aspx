<%@ page language="C#" inherits="Virweb2.ReportList.ReportESR101UnSubmit" Codebehind="ReportESR101UnSubmit.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::ES Un-Submitted Referrals List:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	
	  <script language="javascript">
	  <!--
        function print_report()
        {
           var StartDate,EndDate;
           StartDate=document.form1.startdate.value;
           EndDate = document.form1.enddate.value;
           Terminated = document.form1.terminated.value;
           SortBy = document.form1.sortedby.value;
           winhref("PrintESR101UnSubmit.aspx?startdate="+StartDate+"&EndDate="+EndDate+"&Terminated="+Terminated+"&SortBy="+SortBy,"PrintESR101UnSubmit");           
        }
      //-->  
    </script> 
</head>
<body >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
         <center>
         <div style="WIDTH:98%">
          <br />
          <asp:label id="InfoTitle" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Red">ES Un-Submitted Referrals List</asp:label>
          <br />
          <br />
          <table cellspacing="0" cellpadding="0"  border="0"  class="table_common" width="80%">
              <tr style="height:25px">
                 <td>Please Enter Start Date for ES Call Date:</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr>   
              <tr style="height:25px">
                 <td>Please Enter End Date for ES Call Date:</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="3"></td>
              </tr> 
              <tr style="height:25px">
                 <td>Include Terminated Referrals:</td>
                 <td class="td_unline" width="200px">
                    <asp:DropDownList ID="terminated" runat="server"  Width="80px">
                        <asp:ListItem Selected="true" Value="true">Yes</asp:ListItem>
                        <asp:ListItem Value="false">No</asp:ListItem>
                    </asp:DropDownList> 
                 </td>
              </tr>
              <tr style="height:25px">
                 <td colspan="3"></td>
              </tr> 
              <tr style="height:25px">
                 <td>Sorted By:&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" align="left" width="200px">
                    <asp:DropDownList ID="sortedby" runat="server"  Width="180px">
                        <asp:ListItem Selected="true" Value="name_last">Last Name</asp:ListItem>
                        <asp:ListItem Value="dob">Date Of Birth</asp:ListItem>
                        <asp:ListItem Value="ref_date">Call Date</asp:ListItem>
                    </asp:DropDownList>                 
                 </td>
                 <td width="200px"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="3"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="2" align="center" >
                     <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   runat="server"  onclick="javascript:print_report();" />
                 </td>
                 <td width="200px"></td>
              </tr>
              <tr style="height:400px">
                 <td colspan="3"></td>
              </tr> 
          </table>
         </div>
         </center>
    </form>
</body>
</html>
