<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.FormVendorMapServiceInfo" Codebehind="FormVendorMapServiceInfo.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
     <base target="_self" />
     <title>:::Service Info:::...</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	 <script type="text/javascript" src="../js/common.js"></script>
</head>
<body>
<form id="ServiceInfo" method="post" runat="server">
    <div align="left" style="WIDTH:98%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	       <tr style="height: 40px;" valign="middle">
	          <td align="center">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Service Information</asp:label>
			  </td>
		   </tr>				
		</table>
    </div>	
	<div align="center" style="position:relative;WIDTH:98%; height:90%; overflow: auto " >  
        <asp:datagrid id="dg_info" runat="server" AllowPaging="False" CssClass="grd_body" Width="96%"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" 
					BorderStyle="None" Font-Bold="True">
		    <HeaderStyle CssClass="grd_head"></HeaderStyle>
		    <ItemStyle CssClass="grd_item"></ItemStyle>
		    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>	
                        <asp:BoundColumn DataField="psrvnd" HeaderText="Vendor" SortExpression="psrvnd">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>						
                        <asp:BoundColumn DataField="psrscd" HeaderText="SvcCode" SortExpression="psrscd">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="psrsub" HeaderText="SubCode" SortExpression="psrsub">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="psrcur" HeaderText="Rate" SortExpression="psrcur">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn> 
                        <asp:BoundColumn DataField="prsutp" HeaderText="UnitType" SortExpression="prsutp">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>   		
                        <asp:BoundColumn DataField="SvrDesc" HeaderText="Service Description" SortExpression="SvrDesc">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
			</Columns>
		</asp:datagrid>
    </div>
</form>
</body>
</html>
