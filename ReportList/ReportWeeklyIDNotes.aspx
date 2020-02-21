<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.ReportList.ReportWeeklyIDNotes" Codebehind="ReportWeeklyIDNotes.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Weely Notes Report:::...</title>
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
                <td colspan="2" align="center" style="font-family: Arial"><h3>
                        Weekly Notes Report</h3></td>
            </tr>
            
            <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td><asp:Label ID="selectclient" runat="server">Please select Client</asp:Label></td>    
                <td><asp:DropDownList ID="consumerlist" runat="server" DataValueField="c_key" DataTextField="ConsumerUCIName"
                                    Height="20" Width="230px" >
                    </asp:DropDownList>
                </td>              
            </tr>
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>Please select the year:</td>    
                <td>
		              <asp:dropdownlist id="drpyear" runat="server" Width="100px" >
						   <asp:ListItem Value="2000">2000</asp:ListItem>
						   <asp:ListItem Value="2001">2001</asp:ListItem>
						   <asp:ListItem Value="2002">2002</asp:ListItem>
						   <asp:ListItem Value="2003">2003</asp:ListItem>
						   <asp:ListItem Value="2004">2004</asp:ListItem>
						   <asp:ListItem Value="2005">2005</asp:ListItem>
						   <asp:ListItem Value="2006">2006</asp:ListItem>
						   <asp:ListItem Value="2007">2007</asp:ListItem>
						   <asp:ListItem Value="2008">2008</asp:ListItem>
						   <asp:ListItem Value="2009">2009</asp:ListItem>
						   <asp:ListItem Value="2010">2010</asp:ListItem>
						   <asp:ListItem Value="2011">2011</asp:ListItem>
						   <asp:ListItem Value="2012">2012</asp:ListItem>
						   <asp:ListItem Value="2013">2013</asp:ListItem>
						   <asp:ListItem Value="2014">2014</asp:ListItem>
		              </asp:dropdownlist>
                </td>              
            </tr> 
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>    
            <tr>
                <td>Please select the month:</td>    
                <td><asp:dropdownlist id="drpmonth" runat="server" Width="100" >
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
		              </asp:dropdownlist></td>              
            </tr>
            <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    &nbsp;<asp:Button ID="btnPrint" runat="server" OnClick="btnPrint_Click" Text="Print out the Weekly Notes Report" />
                </td>    
            </tr>            
        </table>
        </center>        
    </form>
</body>
</html>

