<%@ Page Language="C#" Inherits="Virweb2.FormList.FormGPOSList" Codebehind="formGPOSList.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<base target="_self" />
	<title>:::Consumer General POS List:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.PosList.submit(); 
          window.focus();   
        }
        </script>            		
</head>
<body>
    <form id="PosList" method="post" runat="server">
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
         <div align="left" style="WIDTH:98%">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	           <tr style="height: 30px;" valign=middle>
	             <td align=center>
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">Consumer</asp:label>
			     </td>
			     <td align=left width="300px">
				    <asp:Button ID="btnAdd" Runat="server" Text="Add POS" CssClass="buttonbluestyle" Visible="False" Style="width:125px"></asp:Button>
		            <asp:Button ID="btnReAdd" Runat="server" Text="Renewal POS" CssClass="buttonbluestyle" Visible="False" Style="width:125px"></asp:Button>
                 </td>
		       </tr>
		       <tr style="height: 10px;">
		         <td></td>
		       </tr>
		       <tr style="height: 20px;">
		         <td align="center">
			        <asp:label id="TitlePos" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">General POS list</asp:label>
		         </td>
		       </tr>				
		       </table>
		    </div>	
		    <div align="center" style="position:relative;WIDTH:100%;height:610px;  overflow: auto ">
				<asp:datagrid id="dg_pos" runat="server" PageSize="21" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True">
					<HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="p_key" HeaderText="p_key" Visible="False"></asp:BoundColumn>
					    <asp:BoundColumn DataField="p_vendor_name" HeaderText="Vendor Name" SortExpression="p_vendor_name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="p_vendor_number" HeaderText="Vendor#" SortExpression="p_vendor_number">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="p_vendor_svcc" HeaderText="SRVR Code" SortExpression="p_vendor_svcc">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="p_date_start" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="p_date_start">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_date_end" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="p_date_end">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>                        
						<asp:BoundColumn DataField="P_balance" HeaderText="Balance" SortExpression="P_balance">
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
						<asp:BoundColumn DataField="p_date" HeaderText="Date/Time" SortExpression="p_date" Visible="False">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					</Columns>
					<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				</asp:datagrid>
			</div>			
    </form>
</body>
</html>
