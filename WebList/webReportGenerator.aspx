<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webReportGenerator.aspx.cs" Inherits="Virweb2.WebList.webReportGenerator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head id="Head1" runat="server">
    <title>Customized Report</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
</head>
<body>
    <form id="form1" method="post" runat="server">
    	<div align="left" style="WIDTH:98%">
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	       <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
	         <td width="80%" align="center" >
		        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">REPORT</asp:label>
		     </td>
		     <td align=left width="100px">
			    <asp:Button ID="btnPrint" Runat="server" Text="Print" CssClass="buttonbluestyle" Visible="False"></asp:Button>
		     </td>
		   </tr>				
		   </table>
		</div>			
        <br />
        <div align="center" style="WIDTH:100%;overflow: auto ">
        <asp:PlaceHolder ID="ReportHolder" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>

