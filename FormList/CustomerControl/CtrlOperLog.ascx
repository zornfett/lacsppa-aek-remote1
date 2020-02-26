<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlOperLog.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlOperLog" %>
<script type="text/javascript">
<!--
    function MaximumMyData11() {
        //window.top.bg_change(11);
        window.top.Menu_Click(11);
        return false;
    }
//-->
</script>
 
<div align="center" style="WIDTH:100%; overflow: auto " >
  <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">                 
  <tr><td align="left"> 
    <b><asp:Label ID="l_consumer" runat="server" Text="Consumer"></asp:Label>:</b>
  </td></tr>
  <tr><td>
    <asp:datagrid id="dg_client" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" Border="0" Width="100%">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<Columns>
            <asp:TemplateColumn HeaderText="">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ConsumerName") %>' 
                       OnClick='<%# DataBinder.Eval(Container, "DataItem.logname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="uci" HeaderText=""></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="right" DataField="OperDT" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Access"></asp:BoundColumn>
		</Columns>
	</asp:datagrid>
  </td></tr>
  <tr><td align="left">
    <b><asp:Label ID="l_casenotes" runat="server" Text="ID Notes"></asp:Label>s:</b>
  </td></tr>
  <tr><td>
    <asp:datagrid id="dg_idnotes" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" Border="0" width="100%">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<Columns>
            <asp:TemplateColumn HeaderText="">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ConsumerName") %>' 
                       OnClick='<%# DataBinder.Eval(Container, "DataItem.logname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="uci" HeaderText=""></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="txdate" HeaderText="" Visible="false"></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="right" DataField="OperDT" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Access"></asp:BoundColumn>
		</Columns>
	</asp:datagrid>
  </td></tr>
  <tr><td align="left"> 
    <b><asp:Label ID="l_resource" runat="server" Text="Vendor"></asp:Label>:</b>
  </td></tr>
  <tr><td>
    <asp:datagrid id="dg_resource" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" Border="0" Width="100%">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<Columns>
            <asp:TemplateColumn HeaderText="">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ResourceName") %>' 
                       OnClick='<%# DataBinder.Eval(Container, "DataItem.logname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="resourceid" HeaderText=""></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="right" DataField="OperDT" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Access"></asp:BoundColumn>
		</Columns>
	</asp:datagrid>
  </td></tr>
  <tr><td align="left">
    <b><asp:Label ID="l_residnotes" runat="server" Text="ID Notes"></asp:Label>s:</b>
  </td></tr>
  <tr><td>
    <asp:datagrid id="dg_residnotes" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" Border="0" width="100%">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<Columns>
            <asp:TemplateColumn HeaderText="">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ResourceName") %>' 
                       OnClick='<%# DataBinder.Eval(Container, "DataItem.logname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="resourceid" HeaderText=""></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="txdate" HeaderText="" Visible="false"></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="right" DataField="OperDT" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Access"></asp:BoundColumn>
		</Columns>
	</asp:datagrid>
  </td></tr>
  <tr><td align="left">
    <b>Forms:</b>
    <asp:datagrid id="dg_forms" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" Border="0" Width="100%">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<Columns>
            <asp:TemplateColumn HeaderText="">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.filename") %>' 
                       OnClick='<%# DataBinder.Eval(Container, "DataItem.logname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="right" DataField="OperDT" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Access"></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="ConsumerName" HeaderText="" Visible="false"></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="uci" HeaderText="" Visible="false"></asp:BoundColumn>
		</Columns>
	</asp:datagrid>
  </td></tr>
  <tr><td align="left">
    <b>Reports:</b>
  </td></tr>
  <tr><td>
    <asp:datagrid id="dg_reports" runat="server" CssClass="ctrl_body" BorderColor="White"
    AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" Border="0" Width="100%">
		<HeaderStyle CssClass="ctrl_head"></HeaderStyle>
	    <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<Columns>
            <asp:TemplateColumn HeaderText="">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.filename") %>' 
                       OnClick='<%# DataBinder.Eval(Container, "DataItem.logname") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
			    </ItemTemplate>
			</asp:TemplateColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="right" DataField="OperDT" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Access"></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="ConsumerName" HeaderText="" Visible="false"></asp:BoundColumn>
            <asp:BoundColumn ItemStyle-HorizontalAlign="Left" DataField="uci" HeaderText="" Visible="false"></asp:BoundColumn>		
        </Columns>
	</asp:datagrid>
  </td></tr>
  </table>
 </div>