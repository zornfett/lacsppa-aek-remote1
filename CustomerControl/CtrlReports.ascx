<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlReports.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlReports" %>
<script type="text/javascript">
<!--
    function MaximumMyData7() {
        //window.top.bg_change(7);
        window.top.Menu_Click(7);
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
            	<asp:BoundColumn DataField="crfLinkName" HeaderText="crfLinkName" Visible="False"></asp:BoundColumn>
                <asp:BoundColumn DataField="" HeaderText=""></asp:BoundColumn>					
			    <asp:TemplateColumn HeaderText="Report Name" SortExpression="crfName">
				    <ItemTemplate>
					   <asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.crfName") %>' 
                       style="cursor:hand;text-decoration:underline;" >
					   </asp:HyperLink>
					</ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"  width="150px"/>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="tb_entry_text" HeaderText="Category" SortExpression="tb_entry_text" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="crfFormat" HeaderText="crfFormat" Visible="False"></asp:BoundColumn>
			</Columns>
		</asp:datagrid>
    </div>


