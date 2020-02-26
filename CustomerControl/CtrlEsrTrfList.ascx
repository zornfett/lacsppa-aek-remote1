<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlEsrTrfList.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlEsrTrfList" %>
<script type="text/javascript">
<!--
/*
    function MaximumMyData3() {
        //window.top.bg_change(3);
        window.top.Menu_Click(3);
        return false;
    }
*/
//-->
</script>		
<div align="center" style="width: 100%; overflow: auto">
    <asp:DataGrid ID="dg_esrtrfinfo" runat="server" CssClass="ctrl_body" AutoGenerateColumns="False" Border="0" OnItemDataBound="dg_esrtrfinfo_ItemDataBound">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
		<ItemStyle CssClass="ctrl_item"></ItemStyle>
        <AlternatingItemStyle CssClass="ctrl_alitem"></AlternatingItemStyle>
		<Columns>
            <asp:BoundColumn DataField="TrfID" HeaderText="" Visible="False"></asp:BoundColumn>
            <asp:BoundColumn DataField="" HeaderText=""></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="UCI">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.UCI") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
		        </ItemTemplate>
		    </asp:TemplateColumn>
            <asp:BoundColumn DataField="FirstName" HeaderText="First Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
			<asp:BoundColumn DataField="LastName" HeaderText="Last Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
			<asp:BoundColumn DataField="SubmittedDate" HeaderText="Referral Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
		</Columns>
    </asp:DataGrid>
</div>