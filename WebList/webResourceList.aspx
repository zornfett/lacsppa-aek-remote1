<%@ Page Language="c#" Inherits="Virweb2.WebList.webResourceList" CodeBehind="webResourceList.aspx.cs"
    AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>::Resource List::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javascript" src="../js/common.js"></script>

<script language="javascript" type="text/javascript">
/*
       var sessionTimeoutWarning = "<%= System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()%>";
       var sessionTimeout = "<%= Session.Timeout %>";
       
       var sTimeout = (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning)) * 60 * 1000;
       setTimeout('SessionWarning()', sTimeout);

       function SessionWarning() {
         var message = "Your session will expire in another " + 
            parseInt(sessionTimeoutWarning) + 
            " mins! Please Save the data before the session expires";
         alert(message);
       }
*/
</script>

    <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.ResourceList.submit(); 
          window.focus();   
        }
        
        function display_resourcemap()
        {
        /*
            var select_resource=document.getElementById("select_resource_id").value;                 
            if  (select_resource=="")
            {
                alert("Resource Not Exist!");
                return;
            }
            else
            {
                popupDialogWithWindow("webResourceListMapInfo.aspx?select_resource="+select_resource.toString());
            }
        */
        }

        function print_click()
        { 
            var criteria=document.ResourceList.criteria.value.toString();   
            var orderby=document.ResourceList.orderby.value.toString();
            var UserAct=document.ResourceList.UserAct.value.toString();  
            winhref("PrintResourceList.aspx?orderby=" + orderby + "&criteria=" + criteria + "&UserAct=" + UserAct,"PrintResourceList");
        }

        function setScrollPositionGrid(pos) 
        {
            document.getElementById("maindiv").scrollTop = pos*1.25;
        }

        function SetInitSelectedVal(index, color)
        {
           var aa=document.getElementById("dg_resourceinfo");
           lastrow = aa.rows[index+1];
           lastcolor = color;
        }

        function hideWaiting()
        {
           document.getElementById('waiting').style.visibility='hidden';
        }

    </script>
</head>
<body onload="hideWaiting();onloadsizechg(160);" onresize="onloadsizechg(160);">
    <form id="ResourceList" method="post" runat="server" defaultbutton="btnSearch" action="webResourceList.aspx">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="criteria" id="criteria" value="" runat="server" />
    <input type="hidden" name="initcriteria" id="initcriteria" value="" runat="server" />
    <input type="hidden" name="orderby" id="orderby" value="" runat="server" /> 
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" /> 
    <input type="hidden" name="select_resource_id" id="select_resource_id" value="" runat="server" />
 <DIV id="waiting" style="position:absolute; left:25px; top:50px; WIDTH:300px; height:200px; overflow: auto; font-size: medium; vertical-align: middle;" align=center>
     <img src="../img/loading.gif" height=150px />
     <font color="Green">Loading! Please wait !!!</font><br />
 </DIV>
    <div align="center" style="width: 100%">
        <table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="Add" style="width: 25px; height: 25px"
                        visible="false" src="../img/add.ico" title="New" onclick="javascript:document.location.replace('webResourceInfo.aspx?type=add');return false;" />
                    &nbsp;
                    <input type="image" id="btnMap" runat="server" alt="Map" style="width: 25px; height: 25px"
                        visible="false" src="../img/map.gif" title="Map" onclick="javascript:display_resourcemap();" />
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Resource</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;
                        height: 25px" src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
                <!-- #AAFFC4-->
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
            <tr>
                <td colspan="3" height="5px">
                </td>
            </tr>
            <tr style="height: 22px;">
                <td style="width: 40%" align="left" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;<b>
                        <asp:Label ID="SelResourceTitle" runat="server">Select Criteria:</asp:Label>
                    </b>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="rs_type" runat="server" style="width:200px" OnSelectedIndexChanged="RsType_SelectedIndexChanged"
			                     DataTextField="search_name" AutoPostBack="true" CssClass="infaceDrop">          
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="3" height="2px">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;<b>
                        <asp:Label ID="SearchTitle" runat="server">Search resources by:</asp:Label>
                    </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vendor Number:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="vendornum" runat="server" Style="width: 110px" Width="110px" MaxLength="25"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vendor Name:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="vendorname" runat="server" Style="width: 110px" Width="110px" MaxLength="25"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" style="width: 10%">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="buttonbluestyle"
                        Width="90px" OnClick="btnSearch_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td colspan="3" height="2px">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; height: 450px;
        overflow: auto">
        <asp:DataGrid ID="dg_resourceinfo" runat="server" PageSize="1000" AllowPaging="False"
            CssClass="grd_body" Visible="True" AutoGenerateColumns="False" AllowSorting="True"
            ShowFooter="true">
            <HeaderStyle CssClass="grd_head"></HeaderStyle>
            <ItemStyle CssClass="grd_item"></ItemStyle>
            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
            <Columns>
                <asp:BoundColumn DataField="r_resource_id" HeaderText="r_resource_id" Visible="False">
                </asp:BoundColumn>
                <asp:TemplateColumn HeaderText="">
					<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px"></ItemStyle>
					<ItemTemplate>
						<asp:HyperLink NavigateUrl="#herf_imgg" ID="image_green" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                        </asp:HyperLink>
                        <asp:HyperLink NavigateUrl="#herf_imgb" ID="image_blue" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                        </asp:HyperLink>
                        <asp:HyperLink NavigateUrl="#herf_imgp" ID="image_purple" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                        </asp:HyperLink><br />
                        <asp:HyperLink NavigateUrl="#herf_imgt" ID="image_turquoise" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                        </asp:HyperLink>
                        <asp:HyperLink NavigateUrl="#herf_imgr" ID="image_red" Runat="server" ImageUrl="../img/circle-gray.png" BorderWidth="0">
                        </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
                <asp:BoundColumn DataField="r_vendor_number" HeaderText="Vendor Number" SortExpression="r_vendor_number"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="r_resource_name" HeaderText="Name" SortExpression="r_resource_name"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="r_site_address_city" HeaderText="City" SortExpression="r_site_address_city"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="r_site_phone_1" HeaderText="Phone Number" SortExpression="r_site_phone_1"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="r_service_code" HeaderText="Code" SortExpression="r_service_code"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="tb_entry_text" HeaderText="Service Code Description"
                    SortExpression="tb_entry_text" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_administrator" HeaderText="Administrator" SortExpression="r_administrator"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="r_insurance_exp_date" HeaderText="Ins Exp Date" DataFormatString="{0:MM/dd/yyyy}"
                    SortExpression="r_insurance_exp_date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                </asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Edit">
					<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
					<ItemTemplate>
						<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="DELETE">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                    <ItemTemplate>
                        <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                            ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="r_ar_checklist_date" HeaderText="r_ar_checklist_date" Visible="False">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_sir_date" HeaderText="r_sir_date" Visible="False">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_profile_csd" HeaderText="r_profile_csd" Visible="False">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_status" HeaderText="r_status" Visible="False">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_profile_grants" HeaderText="r_profile_grants" Visible="False">
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
                <asp:BoundColumn DataField="r_ar_follow_up" HeaderText="r_ar_follow_up" Visible="False">
                </asp:BoundColumn>
            </Columns>
        </asp:DataGrid>
    </div>
    <div id="DescInfo" align="left" runat="server">
        <br />
        <br />	
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/rect-red.png" alt="Red" height="12" width="12"><b>&nbsp;Do Not Refer&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/rect-pink.png" alt="Pink" height="12" width="12"><b>&nbsp;Contact CSD (Issue but not on DNR)&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/rect-yellow.png" alt="Yellow" height="12" width="12"><b>&nbsp;In-Activated Vendor&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/rect-orange.png" alt="orange" height="12" width="12"><b>&nbsp;Grants/Special Focus&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/circle-green.png" alt="Green" height="12" width="12">&nbsp;<b>Expired Contracts</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/circle-blue.png" alt="Blue" height="12" width="12">&nbsp;<b>Expired Payment Agreements</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/circle-purple.png" alt="Purple" height="12" width="12">&nbsp;<b>Expired License (anything pertaining to Licenses)</b>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img src="../img/circle-turquoise.png" alt="Turquoise" height="12" width="12">&nbsp;<b>Expired Insurance (Anything pertaining to an insurance)</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../img/circle-red.png" alt="Red" height="12" width="12">&nbsp;<b>Expired Disclosure Date</b>
    </div>
    </form>
</body>
</html>
