<%@ page language="C#" inherits="Virweb2.ReportList.ReportSCMonthSum3" Codebehind="ReportSCMonthSum3.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::Monthly Case Activity:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	
	  <script type="text/JavaScript">
	  <!--
        function print_report()
        {
           var tj_year;
           tj_year=document.form1.txt_year.value;
           winhref("PrintSCMonthSum3.aspx?tj_year="+tj_year,"PrintSCMonthSum3");           
        }
      //-->  
    </script> 
</head>
<body >
    <form id="form1" runat="server">
         <center>
          <br />
          <table cellspacing="0" cellpadding="0"  border="0"  class="table_common" width="80%">
              <tr style="height:25px"><td colspan="3"></td></tr>
              <tr style="height:50px">
                  <td colspan="2" align="center"><asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">Monthly Case Activity</asp:Label></td>
                  <td></td>
              </tr>
              <tr style="height:25px" class="tr_common">
                 <td width="200px" class="td_label">Please select Fiscal Year:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                 <td width="150px">&nbsp;&nbsp;<asp:dropdownlist id="txt_year" runat="server" Width="80" >
						   <asp:ListItem Value="2009">2009</asp:ListItem>						  
						   <asp:ListItem Value="2010">2010</asp:ListItem>
						   <asp:ListItem Value="2011">2011</asp:ListItem>
						   <asp:ListItem Value="2012">2012</asp:ListItem>
						   <asp:ListItem Value="2013">2013</asp:ListItem>
						   <asp:ListItem Value="2014">2014</asp:ListItem>
						   <asp:ListItem Value="2015">2015</asp:ListItem>
						   <asp:ListItem Value="2016">2016</asp:ListItem>
						   <asp:ListItem Value="2017">2017</asp:ListItem>
						   <asp:ListItem Value="2018">2018</asp:ListItem>
						   <asp:ListItem Value="2019">2019</asp:ListItem>
						   <asp:ListItem Value="2020">2020</asp:ListItem>
		              </asp:dropdownlist>
                 </td>
                 <td width="auto"></td>
              </tr>     
              <tr style="height:25px"><td colspan="3"></td></tr>
              <tr style="height:25px">
                 <td colspan="2">
                 <asp:button id="btn_ok" Runat="server" Text="Submit" style="width:60px" CssClass="buttonbluestyle" onclick="BtnSubmit_Click"></asp:button>
                 </td>
                 <td width="auto"></td>
              </tr>
          </table>
         </center>
    </form>
</body>
</html>
