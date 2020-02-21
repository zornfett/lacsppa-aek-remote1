<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefDropDown.aspx.cs" Inherits="Virweb2.WebList.DefDropDown" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html>
 <head>
    <base target="_self"></base>
	<title>:::Definitions DropDown List:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/JavaScript" src="../js/common.js"></script>		
</head>
<body >
    <form id="FormDropDown" method="post" runat="server">
            <div align="left" style="WIDTH:98%">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">				
		       <tr style="height: 20px;">
		         <td style="width:20px"></td>
		         <td colspan=7 align="center">
		            <asp:label id="TitleCons" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="Blue" Height="18px">Consumer List</asp:label>
		         <td>
		       </tr>
		       <tr style="height: 10px;">
		         <td colspan=8>
		         </td>
		       </tr>
		       <tr style="height: 20px;">
		         <td style="width:20px"></td>
		         <td colspan=7 align="left">
		            Internal Code is a unique code to identify an entry, it can be any number or no more than 3 letters. 
		         <td>
		       </tr>
		       <tr class="tr_common">
		         <td style="width:20px"></td>
				 <td style="WIDTH: 120px" align="right" width="120" class="td_label" height="25"><b>Internal Code:</b>
				 </td>
				 <td Width="5" Height="20"></td>
				 <td class="td_unline" align="left" width="50" style="width: 50px">
					<asp:textbox id="n_tb_entry_name" runat="server" CssClass="inface" MaxLength=3></asp:textbox>
				 </td>
				 <td style="WIDTH: 120px" align="right" width="120" class="td_label" height="25"><b>Description:</b>
				 </td>
				 <td Width="5" Height="20"></td>
				 <td class="td_unline" align="left" width="350" style="width: 300px">
					<asp:textbox id="n_tb_entry_text" runat="server" CssClass="inface" MaxLength=100></asp:textbox>
				 </td>
				 <td width="150" style="width: 150px" align=center>
				    <asp:Button ID="btnAdd" runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle" OnClick="btnAdd_Click"></asp:Button>
				 </td>
			   </tr>
		       </table>
		    </div>
		    <br />		    
		    <div align="center" style="position:relative;WIDTH:100%;height:350px;  overflow: auto ">		        
				<asp:datagrid id="dg_tblist" runat="server" PageSize="10" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem" BackColor="#C0FFC0" Font-Bold="True"></FooterStyle>
					<Columns>
                        <asp:BoundColumn DataField="tb_entry_name" HeaderText="Internal Code" SortExpression="tb_entry_name" ReadOnly=true>
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundColumn> 
                        <asp:TemplateColumn HeaderText="Description" SortExpression="tb_entry_text">
					        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="400px" />
						    <ItemTemplate>
							  <asp:Label ID="tb_entry_text" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.tb_entry_text") %>'>
							  </asp:Label>
						    </ItemTemplate>
						    <EditItemTemplate>
							  <asp:TextBox id=txttb_entry_text runat="server" Width="350px" Text='<%# DataBinder.Eval(Container, "DataItem.tb_entry_text") %>' MaxLength="20">
							  </asp:TextBox>
						    </EditItemTemplate>
					    </asp:TemplateColumn>
                        <asp:EditCommandColumn ButtonType="PushButton" UpdateText="Update" CancelText="Cancel" EditText="Edit">
						   <ItemStyle HorizontalAlign="Center"></ItemStyle>
					    </asp:EditCommandColumn>
					    <asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="~/img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
					<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				</asp:datagrid>
			</div>
    </form>
</body>
