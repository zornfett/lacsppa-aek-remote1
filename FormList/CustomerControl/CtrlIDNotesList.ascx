<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlIDNotesList.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlIDNotesList" %>
<script type="text/javascript">
<!--
    function MaximumMyData3() {
        //window.top.bg_change(3);
        window.top.Menu_Click(3);
        return false;
    }
//-->
</script>
<div align="center" style="WIDTH:100%;overflow: auto">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
    <tr>
        <td class="td_label">
            <asp:Label ID="curuci" runat="server" Font-Bold="True" Text="Today's Notes for "></asp:Label>
        </td>
        <td class="td_label" style="width:5px"></td>
        <td class="td_label">
            <asp:Label ID="curunits" runat="server" Font-Bold="True" Text="Units: "></asp:Label>
        </td>
        <td class="td_label" style="width:5px"></td>
        <td class="td_label">
            <asp:Label ID="curhours" runat="server" Font-Bold="True" Text="Hours: "></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="td_label">
            <asp:Label ID="alluci" runat="server" Font-Bold="True" Text="Today's Notes for All"></asp:Label>
        </td>
        <td class="td_label" style="width:5px"></td>
        <td class="td_label">
            <asp:Label ID="allunits" runat="server" Font-Bold="True" Text="Units: "></asp:Label>
        </td>
        <td class="td_label" style="width:5px"></td>
        <td class="td_label">
            <asp:Label ID="allhours" runat="server" Font-Bold="True" Text="Hours: "></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top" align="center" width="100%" height="100%" colspan="5">
            <asp:datagrid id="dg_idnotes" runat="server" CssClass="ctrl_body" BorderColor="White"
            AutoGenerateColumns="False" Border="0" AllowSorting="False" 
                    OnItemDataBound="dg_idnotes_ItemDataBound">
			        <HeaderStyle CssClass="ctrl_head"></HeaderStyle>
			        <ItemStyle CssClass="ctrl_item"></ItemStyle>
                    <AlternatingItemStyle CssClass="ctrl_alitem"></AlternatingItemStyle>
			        <Columns>
                        <asp:BoundColumn DataField="tx_date" HeaderText="" Visible="false"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Service Date">
			              <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"  />
			 	          <ItemTemplate>
					        <asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.tx_date", "{0:MM/dd/yyyy}") %>'  
                                                  style="cursor:hand;text-decoration:underline;" >
					        </asp:HyperLink>
		                  </ItemTemplate>
		                </asp:TemplateColumn>					
			            <asp:BoundColumn DataField="txty_text" HeaderText="Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>						
			            <asp:BoundColumn DataField="tx_minutes" HeaderText="Minutes" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
				        <asp:BoundColumn DataField="tx_createdate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
			            <asp:BoundColumn DataField="txd_eyecolorstr" HeaderText="Category" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>						
			            <asp:BoundColumn DataField="txd_statusstr" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>						                				       
			        </Columns>
		        </asp:datagrid>
        </td>
    </tr>
</table>
</div>

