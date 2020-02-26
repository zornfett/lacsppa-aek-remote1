<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlUserList.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlUserList" %>
<script type="text/javascript">
<!--
    function MaximumMyData5() {
        //window.top.bg_change(5);
        window.top.Menu_Click(5);
        return false;
    }
//-->
</script>		
<div align="center" style="width: 100%; overflow: auto">
    <asp:DataGrid ID="dg_userinfo" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" Border="0" OnItemDataBound="dg_userinfo_ItemDataBound">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
		<ItemStyle CssClass="ctrl_item"></ItemStyle>
        <AlternatingItemStyle CssClass="ctrl_alitem"></AlternatingItemStyle>
		<Columns>
            <asp:BoundColumn DataField="" HeaderText=""></asp:BoundColumn>
			<asp:BoundColumn DataField="EmployeeID" HeaderText="User ID" SortExpression="EmployeeID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="User Name" SortExpression="LoginName">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.loginname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
		        </ItemTemplate>
		    </asp:TemplateColumn>
            <asp:BoundColumn DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
			<asp:BoundColumn DataField="LastName" HeaderText="Last Name" SortExpression="LastName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
		</Columns>
    </asp:DataGrid>
</div>