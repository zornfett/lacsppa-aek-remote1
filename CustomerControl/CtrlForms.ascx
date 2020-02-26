<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlForms.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlForms" %>
<script type="text/javascript">
<!--
function MaximumMyData6()    
{
    //window.top.bg_change(6);
    window.top.Menu_Click(6);
    return false;
}
//-->
</script>
 
<div align="center" style="WIDTH:100%; overflow: auto " > 
    <asp:datagrid id="dg_cr" runat="server" CssClass="ctrl_body" BorderColor="White" 
    AutoGenerateColumns="False" Border="0" OnItemDataBound="dg_cr_ItemDataBound" >
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
        <AlternatingItemStyle CssClass="ctrl_alitem"></AlternatingItemStyle>
		<Columns>
			<asp:BoundColumn DataField="f_path" HeaderText="f_path" Visible="False"></asp:BoundColumn>
            <asp:BoundColumn DataField="" HeaderText=""></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="Form Name" SortExpression="f_name">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" width="150px" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.f_name") %>' 
                    style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn DataField="tb_entry_text" HeaderText="Category" SortExpression="tb_entry_text" >
				<ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
			</asp:BoundColumn>
		</Columns>
	</asp:datagrid>
 </div>