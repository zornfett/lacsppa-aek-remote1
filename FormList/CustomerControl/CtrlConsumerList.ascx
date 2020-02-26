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

    /*
    var lastrow;
    var lastcolor;
    function SetInitSelectedVal(index, color) {
        var aa = document.getElementById("dg_consumerinfo");
        lastrow = aa.rows[index + 1];
        lastcolor = color;
    }

    function SetSessionVarAfterClick(row, clientid, index) {
        if (lastrow != null) {
            lastrow.style.backgroundColor = lastcolor;
            lastrow.style.fontWeight = '';
        }
        lastrow = row;
        lastcolor = row.style.backgroundColor;

        row.style.backgroundColor = 'LightGreen';
        row.style.fontWeight = 'bold';

        var ajaxRequest;  // The variable that makes Ajax possible!

        try {
            // Opera 8.0+, Firefox, Safari
            ajaxRequest = new XMLHttpRequest();
        }
        catch (e) {
            // Internet Explorer Browsers
            try {
                ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e) {
                try {
                    ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (e) {
                    // Something went wrong
                    alert("Your browser does not support Ajax!");
                    return false;
                }
            }
        }
        // Create a function that will receive data sent from the server
        ajaxRequest.onreadystatechange = function () {
            if (ajaxRequest.readyState == 4) {
            }
        }
        var urlstr = "CtrlConsumerList.ascx?isAjax=1&ClientID=" + clientid + "&Index=" + index + "&BackColor=" + row.style.backgroundColor;
        ajaxRequest.open("GET", urlstr, true);
        ajaxRequest.send(null);
    }
    */
//-->
</script>
<input type="hidden" name="select_c_key" id="select_c_key" value="" runat="server" />
<input type="hidden" name="ClientID" id="ClientID" value="" runat="server" />
<div ID="mainpart" align="center" style="width:100%;height:200px;overflow: auto">
    <asp:DataGrid ID="dg_consumerinfo" runat="server" CssClass="ctrl_body" BorderColor="White"
       AutoGenerateColumns="False" Border="0" ShowFooter="true" OnItemDataBound="dg_consumerinfo_ItemDataBound">
        <HeaderStyle CssClass="ctrl_head"></HeaderStyle>
        <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<AlternatingItemStyle CssClass="ctrl_alitem"></AlternatingItemStyle>
        <FooterStyle CssClass="ctrl_fsitem"></FooterStyle>
        <Columns>
            <asp:BoundColumn DataField="c_key" HeaderText="c_key" Visible="False"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="">
				<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
				<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px"></ItemStyle>
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
            <asp:BoundColumn DataField="c_name_last" HeaderText="Last Name" SortExpression="c_name_last"
                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="c_name_first" HeaderText="First Name" SortExpression="c_name_first"
                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
            </asp:BoundColumn>
            <asp:TemplateColumn HeaderText="ID" SortExpression="c_uci">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"/>
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.c_uci") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
		        </ItemTemplate>
		    </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Address" SortExpression="c_address_line_2">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"/>
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.c_address_line_2") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
		        </ItemTemplate>
		    </asp:TemplateColumn>
		    <asp:BoundColumn DataField="MedicaidWaiver" HeaderText="MW" Visible="false"
                  SortExpression="MedicaidWaiver" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
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

