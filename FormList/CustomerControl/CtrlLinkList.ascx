<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlLinkList.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlLinkList" %>
<script type="text/javascript">
<!--
    function MaximumMyData8() {
        //window.top.bg_change(8);
        window.top.Menu_Click(8);
        return false;
    }
//-->
</script>		
<div align="center" style="width: 100%; overflow: auto">
    <asp:DataGrid ID="dg_link" runat="server" CssClass="ctrl_body" BorderColor="White" 
    Border="0" AllowSorting="False" AutoGenerateColumns="False" ShowHeader="False">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
		<ItemStyle CssClass="ctrl_item" Height="25px"></ItemStyle>
		<Columns>
			<asp:BoundColumn DataField="LinkID" HeaderText="Link ID" Visible="false"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="" >
                <ItemStyle HorizontalAlign="left" Width="80px"></ItemStyle>
                <ItemTemplate>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img height="25px" width="25px" src='./webicon/<%# DataBinder.Eval(Container.DataItem, "linkicon") %>' /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="" >
                <ItemStyle HorizontalAlign="left" Font-Bold="true" Font-Italic="true"></ItemStyle>
                <ItemTemplate>
                <a href='<%# DataBinder.Eval(Container.DataItem, "linkurl") %>'  target='_blank'>
                    <font color="maroon"><%# DataBinder.Eval(Container.DataItem, "linkname") %></font>
                </a>
                </ItemTemplate>
            </asp:TemplateColumn>
		</Columns>
    </asp:DataGrid>
</div>