<%@ Page Language="C#" Inherits="Virweb2.WebList.AdmSetIDNotesTemp" Codebehind="AdmSetIDNotesTemp.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>:::Case Note Template</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.IDNotesTempList.submit(); 
          window.focus();   
        }
    </script> 
</head>
<body>
    <form id="IDNotesTempList" method="post" runat="server">
	    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
		<div align="left" style="WIDTH:98%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	    <tr style="height: 30px;" valign=middle>
	      <td colspan=2 align=center>
		     <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"><asp:Label ID="Title" runat="server" Text="Case Note"></asp:label> TEMPLATE LIST</asp:label>
		  </td>
	    </tr>
	    <tr style="height: 50px;">
	      <td align=left>
	    	Please Select the Template Type:
	    	<asp:dropdownlist id="tx_type" runat="server" 
			   DataValueField="txty_code" DataTextField="txty_text" Height="25" Width="200"
			   OnSelectedIndexChanged="txtype_SelectedIndexChanged" AutoPostBack=true>
		    </asp:dropdownlist>
		  </td>	  
		  <td align=left width="200px">
		    <asp:Button ID="btnAdd" Runat="server" Text="Add Case Note Template" CssClass="buttonbluestyle" Visible="False"></asp:Button>
		  </td>
		</tr>				
		</table>
		</div>	
        <br />	
		<div align="center" style="position:relative;WIDTH:100%;height:470px;  overflow: auto ">
		    <asp:datagrid id="dg_idtemp" runat="server" PageSize="100" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" onselectedindexchanged="dg_idtemp_SelectedIndexChanged">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="t_name" HeaderText="Name" SortExpression="t_name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="t_type" HeaderText="Type" SortExpression="t_type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="t_description" HeaderText="Description" SortExpression="t_description" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
			        <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
		    </asp:datagrid>
        </div>
    </form>
</body>
</html>



