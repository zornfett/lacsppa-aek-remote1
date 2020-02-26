<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlResourceList.ascx.cs"
    Inherits="Virweb2.CustomerControl.CtrlResourceList" %>
<script type="text/javascript">
<!--
    function MaximumMyData33() {
        //window.top.bg_change(33);
        window.top.Menu_Click(33);
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
        var aa = document.getElementById("dg_resourceinfo");
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
        var urlstr = "CtrlResourceList.ascx?isAjax=1&ClientID=" + clientid + "&Index=" + index + "&BackColor=" + row.style.backgroundColor;
        ajaxRequest.open("GET", urlstr, true);
        ajaxRequest.send(null);
    }
    */
//-->
</script>
<div ID="mainpart" align="center" style="width:100%;height:200px;overflow: auto">
    <asp:DataGrid ID="dg_resourceinfo" runat="server" CssClass="ctrl_body" BorderColor="White"
       AutoGenerateColumns="False" Border="0" ShowFooter="true" OnItemDataBound="dg_resourceinfo_ItemDataBound">
        <HeaderStyle CssClass="ctrl_head"></HeaderStyle>
        <ItemStyle CssClass="ctrl_item"></ItemStyle>
		<AlternatingItemStyle CssClass="ctrl_alitem"></AlternatingItemStyle>
        <FooterStyle CssClass="ctrl_fsitem"></FooterStyle>
        <Columns>
            <asp:BoundColumn DataField="r_resource_id" HeaderText="r_resource_id" Visible="False"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="">
				<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
				<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px"></ItemStyle>
				<ItemTemplate>
                    <asp:HyperLink NavigateUrl="" ID="image_green" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                    </asp:HyperLink>
                    <asp:HyperLink NavigateUrl="" ID="image_blue" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                    </asp:HyperLink><br />
                    <asp:HyperLink NavigateUrl="" ID="image_purple" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                    </asp:HyperLink>
                    <asp:HyperLink NavigateUrl="" ID="image_turquoise" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                    </asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Number" SortExpression="r_vendor_number">
			    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle"/>
				<ItemTemplate>
					<asp:HyperLink id="hymoreinfo" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.r_vendor_number") %>'
                       style="cursor:hand;text-decoration:underline;" >
					</asp:HyperLink>
		        </ItemTemplate>
		    </asp:TemplateColumn>
            <asp:BoundColumn DataField="r_resource_name" HeaderText="Name" SortExpression="r_resource_name"
                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_service_code" HeaderText="Code" SortExpression="r_service_code"
                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
            </asp:BoundColumn>

            <asp:BoundColumn DataField="r_monitor_date" HeaderText="r_monitor_date" Visible="False">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_sanction_date_start" HeaderText="r_sanction_date_start" Visible="False">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_delete_date" HeaderText="r_delete_date" Visible="False">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_ccl_hcl_lic_date" HeaderText="r_ccl_hcl_lic_date" Visible="False">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_insurance_exp_date" HeaderText="r_insurance_exp_date" Visible="False">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_rate_effective_date" HeaderText="r_rate_effective_date" Visible="False">
            </asp:BoundColumn>
            <asp:BoundColumn DataField="r_license_exp_date" HeaderText="r_license_exp_date" Visible="False">
            </asp:BoundColumn>
        </Columns>
    </asp:DataGrid> 
</div>

