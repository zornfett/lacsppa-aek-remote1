<%@ Page Language="C#" Inherits="Virweb2.FormList.webSirList" Codebehind="webSirList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
		<base target="_self"></base>
		<title>:::Consumer SIR List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="Text/JavaScript" src="../js/common.js"></script>
		<script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.sirList.submit(); 
          window.focus();   
        }
        </script> 
	</head>
	<body>
		<form id="sirList" method="post" runat="server">
		    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
		    <div align="left" style="WIDTH:98%">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	           <tr style="height: 30px;" valign=middle>
	             <td align=center>
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Red" Height="18px">Consumer</asp:label>
			     </td>
			     <td align=left width="260px">
				    <asp:Button ID="btnAdd" Runat="server" Text="Add SIR" CssClass="buttonbluestyle" Visible="False"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
		       </tr>
		       <tr style="height: 20px;">
		         <td></td>
		       </tr>
		       <tr style="height: 20px;">
		         <td align="center">
			        <asp:label id="Titlesir" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">SPECIAL INCIDENT REPORTS</asp:label>
		         </td>
		       </tr>				
		       </table>
		    </div>
		    <div align="center" style="position:relative;WIDTH:100%;height:600px;  overflow: auto ">
				<asp:datagrid id="dg_sir" runat="server" PageSize="100" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" width="98%">
					<HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="s_rpt_date" HeaderText="Report Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_rpt_date">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_vendor_number" HeaderText="Vendor #" SortExpression="s_vendor_number">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_incident_site_type" HeaderText="Incident Location" SortExpression="s_incident_site_type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_incident_dt" HeaderText="Incident Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_incident_dt">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_addendums_num" HeaderText="Subst" SortExpression="s_addendums_num">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_type" HeaderText="Type" SortExpression="s_type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_verify" HeaderText="Verified" SortExpression="s_verify">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/edit.gif" BorderWidth="0"></asp:HyperLink>
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
						<asp:TemplateColumn HeaderText="Img">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:Image Runat="server" ID="imgExist" Width="15px" Height="15px" ImageUrl="../img/star.gif"
									BorderWidth="0"></asp:Image>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
					<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				</asp:datagrid>
			</div>
		</form>
	</body>
</html>

