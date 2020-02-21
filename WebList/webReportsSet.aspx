<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.WebList.webReportsSet" Codebehind="webReportsSet.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>:::Reports Settings:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.ReportList.submit(); 
          window.focus();   
        }
    </script> 
</head>
<body>
<form id="ReportList" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <div align="left" style="WIDTH:98%">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	           <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
	             <td width="80%" align="center" >
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">REPORTS SETTING</asp:label>
			     </td>
		       </tr>				
		       </table>
    </div>			
    <br />
	<div align="left">
		    <asp:datagrid id="dg_cr" runat="server" PageSize="15" AllowPaging="True" CssClass="grd_body" Width="96%"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" OnItemDataBound="dg_cr_ItemDataBound"  >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
			    <asp:BoundColumn DataField="crfName" HeaderText="Report Name" SortExpression="crfName" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>	
				<asp:BoundColumn DataField="crfID" HeaderText="crfID" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="crfLinkName" HeaderText="crfLinkName" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="crfType" HeaderText="crfType" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="crfLinkDesc" HeaderText="Report Description" SortExpression="crfLinkDesc" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="crfAgency" HeaderText="Agency" SortExpression="crfAgency" ></asp:BoundColumn>
				<asp:BoundColumn DataField="tb_entry_text" HeaderText="Category" SortExpression="tb_entry_text" ></asp:BoundColumn>
				<asp:BoundColumn DataField="IsAdmin" HeaderText="Admin Only" SortExpression="IsAdmin"></asp:BoundColumn> 
				<asp:TemplateColumn HeaderText="Preview">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:linkbutton id="btnPreview" Runat="server" Text="Preview" style="width:60px" BorderStyle=Outset></asp:linkbutton>
							</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Enable/Disable" SortExpression="crfType" >
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:linkbutton id="btnEnable" Runat="server" Text="Enable" style="width:60px" BorderStyle=Outset></asp:linkbutton>
							</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
			<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
		</asp:datagrid>
    </div>    
</form>
</body>
</html>

