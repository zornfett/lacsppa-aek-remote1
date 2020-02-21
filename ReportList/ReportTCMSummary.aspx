<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportTCMSummary" Codebehind="ReportTCMSummary.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::TCM Summary Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>    
</head>
<body style="font-size: 9pt">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
             <tr style="height:30px">
                <td colspan="5" align="center" style="font-family: Arial"><h3>
                        TCM Summary Report</h3></td>
            </tr>
            <tr>
		         <td colspan="5" height="20px" ></td>
		    </tr>
		    <tr style="height: 22px;">
	          <td width="20"></td>
		      <td style="WIDTH: 200px" align="right" bgColor="#9fb0f4" height="20">
		           <b>Report Start Month/Year:</b>
              </td>
              <td width="20" height="20"></td>
		      <td width="400" height="20" style="width: 570px">
		           <b style="color: blue">Month:</b>
				  <asp:dropdownlist id="startmonth" runat="server" Width="100" >
                        <asp:ListItem Value="1">January</asp:ListItem>
                        <asp:ListItem Value="2">February</asp:ListItem>
                        <asp:ListItem Value="3">March</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
		           </asp:dropdownlist>
		           &nbsp;&nbsp;&nbsp;<b>Year</b>
		           <asp:dropdownlist id="startyear" runat="server" Width="80" >
					   <asp:ListItem Value="2009">2009</asp:ListItem>
					   <asp:ListItem Value="2010">2010</asp:ListItem>
					   <asp:ListItem Value="2011">2011</asp:ListItem>
					   <asp:ListItem Value="2012">2012</asp:ListItem>
					   <asp:ListItem Value="2013">2013</asp:ListItem>
					   <asp:ListItem Value="2014">2014</asp:ListItem>
					   <asp:ListItem Value="2015">2015</asp:ListItem>
					   <asp:ListItem Value="2016" Selected="True">2016</asp:ListItem>
					   <asp:ListItem Value="2017">2017</asp:ListItem>
					   <asp:ListItem Value="2018">2018</asp:ListItem>
					   <asp:ListItem Value="2019">2019</asp:ListItem>
					   <asp:ListItem Value="2020">2020</asp:ListItem>
					   <asp:ListItem Value="2021">2021</asp:ListItem>
					   <asp:ListItem Value="2022">2022</asp:ListItem>
					   <asp:ListItem Value="2023">2023</asp:ListItem>
					   <asp:ListItem Value="2024">2024</asp:ListItem>
					   <asp:ListItem Value="2025">2025</asp:ListItem>
		           </asp:dropdownlist>
			  </td>
			  <td>
              </td>
		    </tr>
            <tr>
		         <td colspan="5" height="20px" ></td>
		    </tr>
		    <tr style="height: 22px;">
	          <td width="20"></td>
		      <td style="WIDTH: 200px" align="right" bgColor="#9fb0f4" height="20">
		           <b>Report End Month/Year:</b>
              </td>
              <td width="20" height="20"></td>
		      <td width="400" height="20" style="width: 570px">
		           <b style="color: blue">Month:</b>
				  <asp:dropdownlist id="endmonth" runat="server" Width="100" >
                        <asp:ListItem Value="1">January</asp:ListItem>
                        <asp:ListItem Value="2">February</asp:ListItem>
                        <asp:ListItem Value="3">March</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
		           </asp:dropdownlist>
		           &nbsp;&nbsp;&nbsp;<b>Year</b>
		           <asp:dropdownlist id="endyear" runat="server" Width="80" >
					   <asp:ListItem Value="2009">2009</asp:ListItem>
					   <asp:ListItem Value="2010">2010</asp:ListItem>
					   <asp:ListItem Value="2011">2011</asp:ListItem>
					   <asp:ListItem Value="2012">2012</asp:ListItem>
					   <asp:ListItem Value="2013">2013</asp:ListItem>
					   <asp:ListItem Value="2014">2014</asp:ListItem>
					   <asp:ListItem Value="2015">2015</asp:ListItem>
					   <asp:ListItem Value="2016" Selected="True">2016</asp:ListItem>
					   <asp:ListItem Value="2017">2017</asp:ListItem>
					   <asp:ListItem Value="2018">2018</asp:ListItem>
					   <asp:ListItem Value="2019">2019</asp:ListItem>
					   <asp:ListItem Value="2020">2020</asp:ListItem>
					   <asp:ListItem Value="2021">2021</asp:ListItem>
					   <asp:ListItem Value="2022">2022</asp:ListItem>
					   <asp:ListItem Value="2023">2023</asp:ListItem>
					   <asp:ListItem Value="2024">2024</asp:ListItem>
					   <asp:ListItem Value="2025">2025</asp:ListItem>
		           </asp:dropdownlist>
			  </td>
			  <td>
              </td>
		    </tr>
		    <tr>
              <td colspan="5" height="20">
              </td>
            </tr>
            <tr>
               <td colspan="2" align="center">
                    &nbsp;<asp:Button ID="btnPrint" runat="server" OnClick="btnPrint_Click" Text="Generate Report" />
               </td>    
            </tr>            
        </table>
        </center>        
    </form>
</body>
</html>

