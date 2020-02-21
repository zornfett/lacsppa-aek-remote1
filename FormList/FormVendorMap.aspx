<%@ Page Language="C#" Inherits="Virweb2.FormList.FormVendorMap" CodeBehind="FormVendorMap.aspx.cs"
    AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <base target="_self" />
    <title>:::Vendor Map Search:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
		<!--
        function show_map() {
            var customer = JTrim(document.getElementById("dlist_consumer").value);
            if (customer == "") {
                alert("Please input customer!");
                return false;
            }
            var servercode = document.getElementById("dlist_servicecode").value;
            if (servercode == "") {
                alert("Please select service cod1e");
                return false;
            }
            var regionalcenter = document.getElementById("dlist_vendor").value;

            var zip1 = JTrim(document.getElementById("zip1").value);

            if (zip1 == "") {
                alert("Please select zip code");
                return false;
            }

            /*var zip2 = JTrim(document.getElementById("zip2").value);
            var zip3 = JTrim(document.getElementById("zip3").value);
            var zip4 = JTrim(document.getElementById("zip4").value);
            var zip5 = JTrim(document.getElementById("zip5").value);
            var zip6 = JTrim(document.getElementById("zip6").value);
            winhref("FormVendorShowMap.aspx?customer=" + customer.toString() + "&servercode=" + servercode.toString() +
		      "&zip1=" + zip1.toString() + "&zip2=" + zip2.toString() + "&zip3=" + zip3.toString() + "&zip4=" + zip4.toString() + "&zip5=" + zip5.toString() + "&zip6=" + zip6.toString() +
		      "&regionalcenter=" + regionalcenter, "FormVendorShowMap");
              */
            winhref("FormVendorShowMap.aspx?customer=" + customer.toString() + "&servercode=" + servercode.toString() +
		      "&zip1=" + zip1.toString() + "&regionalcenter=" + regionalcenter, "FormVendorShowMap");
        }

        function print_click() {
            var servercode = document.getElementById("dlist_servicecode").value;
            if (servercode == "") {
                alert("Pl1ease select service code1");
                return false;
            }

            var regionalcenter = document.getElementById("dlist_vendor").value;

            var zip1 = JTrim(document.getElementById("zip1").value);
            if (zip1 == "") {
                alert("Please select zip code");
                return false;
            }

            /*var zip2 = JTrim(document.getElementById("zip2").value);
            var zip3 = JTrim(document.getElementById("zip3").value);
            var zip4 = JTrim(document.getElementById("zip4").value);
            var zip5 = JTrim(document.getElementById("zip5").value);
            var zip6 = JTrim(document.getElementById("zip6").value);*/
            
            winhref("PrintFormVendorMap.aspx?servercode=" + servercode.toString() +
		      "&zip1=" + zip1.toString() + "&regionalcenter=" + regionalcenter, "PrintFormVendorMap");

        }

        function ServiceInfo() {
            var servercode = document.getElementById("dlist_servicecode").value;
            if (servercode == "") {
                alert("Please select service code");
                return false;
            }

            popupDialogSmall("FormVendorMapServiceInfo.aspx?servercode=" + servercode.toString());
        }

        function back_click() {
            document.location.replace('../WebList/WebForms.aspx');
        }
		//-->
    </script>
</head>
<body onload="onloadsizechg(150);" onresize="onloadsizechg(150);">
    <form id="form1" runat="server">
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Vendor Map:</asp:Label>
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
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </t
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse;" width="95%">
            <tr>
                <td colspan="6"  height="10px">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 80px;" class="td_label">
                    <b><asp:Label ID="l_consumer" runat="server" Text="Consumer:"></asp:Label></b>
                </td>
                <td style="width: 5px">
                </td>
                <td align="left" class="td_unline" style="width: 280px">
                    <asp:DropDownList ID="dlist_consumer" runat="server" DataValueField="c_key" DataTextField="ConsumerUCIName"
                        Width="200">
                    </asp:DropDownList>
                </td>
                <td style="width: 120px;" class="td_label">
                    <b><asp:Label ID="l_select_vendors" runat="server" Text="Select Vendors:"></asp:Label></b>
                </td>
                <td style="width: 5px">
                </td>
                <td align="left" class="td_unline" style="width: 280px">
                    <asp:DropDownList ID="dlist_vendor" runat="server" Width="200">
                        <asp:ListItem Value="">All the Vendors</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="6"  height="5">
                </td>
            </tr>
            <tr  class="tr_common">
                <td style="width: 80px;" class="td_label">
                    <b><asp:Label ID="l_service_code" runat="server" Text="Service Code:"></asp:Label></b>
                </td>
                <td style="width: 5px">
                </td>
                <td align="left" class="td_unline" style="width: 280px">
                    <asp:DropDownList ID="dlist_servicecode" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" Width="280">
                    </asp:DropDownList>
                </td>
                <td colspan="3">
                    <asp:Button ID="btnSearch" runat="server" Text="List Vendors" Style="width: 120px"
                        CssClass="buttonbluestyle" OnClick="btnSearch_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
                    <input type="button" runat="server" name="btnServiceInfo" id="btnServiceInfo" value="Service Info"
                        style="width: 120px" class="buttonbluestyle" onclick="javascript:return ServiceInfo();" />&nbsp;&nbsp;&nbsp;
                    <input type="button" runat="server" name="btnshow" id="btnshow" value="Map Vendors"
                        style="width: 100px;" class="buttonbluestyle" onclick="javascript:return show_map();" />&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="6"  height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6">
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                        <tr>
                            <td style="width: 80px;" class="td_label">
                                <b>Zip1:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td align="left" class="td_unline" >
                                <asp:TextBox ID="zip1" runat="server" Style="width: 80px;" MaxLength="5"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>

                            <!-- Comment out: 6/16/2018 - FV Limit the amount of zip codes they can enter

                            <td style="width: 45px;" class="td_label">
                                <b>Zip2:</b>
                            </td>
                            <td style="width: 2px">
                            </td>
                            <td align="left" class="td_unline" style="width: 80px">
                                <asp:TextBox ID="zip2" runat="server" Style="width: 80px" MaxLength="5"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 45px;" class="td_label">
                                <b>Zip3:</b>
                            </td>
                            <td style="width: 2px">
                            </td>
                            <td align="left" class="td_unline" style="width: 80px">
                                <asp:TextBox ID="zip3" runat="server" Style="width: 80px" MaxLength="5"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 45px;" class="td_label">
                                <b>Zip4:</b>
                            </td>
                            <td style="width: 2px">
                            </td>
                            <td align="left" class="td_unline" style="width: 80px">
                                <asp:TextBox ID="zip4" runat="server" Style="width: 80px" MaxLength="5"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 45px;" class="td_label">
                                <b>Zip5:</b>
                            </td>
                            <td style="width: 2px">
                            </td>
                            <td align="left" class="td_unline" style="width: 80px">
                                <asp:TextBox ID="zip5" runat="server" Style="width: 80px" MaxLength="5"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 45px;" class="td_label">
                                <b>Zip6:</b>
                            </td>
                            <td style="width: 2px">
                            </td>
                           
                            <td align="left" class="td_unline" style="width: 80px">
                                <asp:TextBox ID="zip6" runat="server" Style="width: 80px" MaxLength="5"></asp:TextBox>
                            </td>
                            -->
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="6" height="8px">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; height: 450px;
        overflow: auto">
        <asp:DataGrid ID="dg_resourceinfo" runat="server" AllowPaging="False" CssClass="grd_body"
            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
            <HeaderStyle CssClass="grd_head"></HeaderStyle>
            <ItemStyle CssClass="grd_item"></ItemStyle>
            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
            <Columns>
                <asp:BoundColumn DataField="r_vendor_number" HeaderText="Vendor#" SortExpression="r_vendor_number">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_resource_name" HeaderText="Name" SortExpression="r_resource_name">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_site_address_city" HeaderText="City" SortExpression="r_site_address_city">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_site_phone_1" HeaderText="Phone#" SortExpression="r_site_phone_1">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="r_service_code" HeaderText="SvcCode" SortExpression="r_service_code">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="psrsub" HeaderText="SubCode" SortExpression="psrsub">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="psrcur" HeaderText="Rate" SortExpression="psrcur">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="prsutp" HeaderText="UnitType" SortExpression="prsutp">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="SvrDesc" HeaderText="Service Description" SortExpression="SvrDesc">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="psrscd" HeaderText="psrscd" Visible="False" />
            </Columns>
        </asp:DataGrid>
    </div>
    </form>
</body>
</html>
