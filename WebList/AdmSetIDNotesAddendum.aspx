<%@ Page Language="C#" Inherits="Virweb2.WebList.AdmSetIDNotesAddendum" Codebehind="AdmSetIDNotesAddendum.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>:::Case Notes Addendum</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.IDNotesAddendumList.submit(); 
          window.focus();   
        }
    </script> 
</head>
<body>
    <form id="IDNotesAddendumList" method="post" runat="server">
	    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
		<div align="left" style="WIDTH:98%">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	           <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
	             <td width="80%" align="center" >
		                     <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">
                             <asp:Label ID="Title" runat="server" Text="Case Notes"></asp:Label> ADDENDUM LIST</asp:label>
			     </td>
			     <td align=left width="100px">
				    <asp:Button ID="btnAdd" Runat="server" Text="Add Case Notes Addendum" CssClass="buttonbluestyle" Visible="False"></asp:Button>
		         </td>
		       </tr>				
		</table>
		</div>	
        <br />		
		<div align="center" style="position:relative;WIDTH:100%;height:500px;  overflow: auto ">
		    <asp:datagrid id="dg_idaddendum" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="add_code" HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="add_name" HeaderText="Addendum Name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="View">
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


