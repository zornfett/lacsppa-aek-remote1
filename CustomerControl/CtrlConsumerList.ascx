<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlConsumerList.ascx.cs"
	Inherits="Virweb2.CustomerControl.CtrlConsumerList" %>
<script type="text/javascript">
<!--
	function MaximumMyData1() {
		//window.top.bg_change(1);
		window.top.Menu_Click(1);
		return false;
	}

	function setScrollPositionGrid(pos) {
		//if (pos>0)
		//document.getElementById("mainpart").scrollTop = pos*1.1;
		document.getElementById("mainpart").scrollTop = pos*1.25;
	}

//-->
</script>

<input type="hidden" name="select_c_key" id="select_c_key" value="" runat="server" />
<input type="hidden" name="ClientID" id="ClientID" value="" runat="server" />

<div class="col-lg-6">
	<div class="card">
		<div class="card-header">
			<strong class="card-title">Basic Table</strong>
		</div>
		<div class="card-body">

			<asp:DataGrid ID="dg_consumerinfo" runat="server" AutoGenerateColumns="False" ShowFooter="true" OnItemDataBound="dg_consumerinfo_ItemDataBound">
				<Columns>
					<asp:BoundColumn DataField="c_key" HeaderText="c_key" Visible="False"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="">
						<ItemTemplate>
							<asp:HyperLink NavigateUrl="" ID="image_green" Runat="server" ImageUrl="../img/circle-green.png" BorderWidth="0">
							</asp:HyperLink>
							<asp:HyperLink NavigateUrl="" ID="image_red" Runat="server" ImageUrl="../img/circle-red.png" BorderWidth="0">
							</asp:HyperLink><br />
							<asp:HyperLink NavigateUrl="" ID="image_blue" Runat="server" ImageUrl="../img/circle-blue.png" BorderWidth="0">
							</asp:HyperLink>
							<asp:HyperLink NavigateUrl="" ID="image_purple" Runat="server" ImageUrl="../img/circle-purple.png" BorderWidth="0">
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="c_name_last" HeaderText="Last Name" SortExpression="c_name_last">
					</asp:BoundColumn>
					<asp:BoundColumn DataField="c_name_first" HeaderText="First Name" SortExpression="c_name_first">
					</asp:BoundColumn>
					<asp:TemplateColumn HeaderText="ID" SortExpression="c_uci">
						<ItemTemplate>
							<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.c_uci") %>'>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Address" SortExpression="c_address_line_2">
						<ItemTemplate>
							<asp:HyperLink id="hymoreinfo2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.c_address_line_2") %>'>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="MedicaidWaiver" HeaderText="MW" Visible="false"
						  SortExpression="MedicaidWaiver">
					</asp:BoundColumn>
					<asp:BoundColumn DataField="c_language" HeaderText="c_language" Visible="False" ></asp:BoundColumn>
					<asp:BoundColumn DataField="imaged" HeaderText="imaged" Visible="False" ></asp:BoundColumn>
					<asp:BoundColumn DataField="porder" HeaderText="porder" Visible="False" ></asp:BoundColumn>
				</Columns>
			</asp:DataGrid> 

			<div id="TotalInfo" align="left" runat="server">
				<br />
				&nbsp;<asp:Label ID="Total" runat="server" Text=""></asp:Label><br />	
			</div>
		</div>
	</div>
</div>

<!-- ASP COMPONENT DUMP



 -->