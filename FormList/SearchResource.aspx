<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchResource" CodeBehind="SearchResource.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::Vendor Search:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function PostResource(resource_id, svc_code, sub_code, rate) {
            if (resource_id == "&nbsp;") resource_id = "";
            if (svc_code == "&nbsp;") svc_code = "";
            if (sub_code == "&nbsp;") sub_code = "";
            if (rate == "&nbsp;") rate = "";
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.SelectResource(resource_id, svc_code, sub_code, rate);
            }
            else {
                window.opener.SelectResource(resource_id, svc_code, sub_code, rate);
            }
            self.close();
        }  
    </script>
</head>
<body>
    <form id="SearchResourceForm" runat="server">
    <br />
    <br />
    <div align="center">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;" width="98%" >
            <tr>
                <td colspan="7" align="center">
                    <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                        Height="24px">Vendor Search</asp:Label><br />
                </td>
            </tr>
            <tr>
                <td style="width: 120px" align="right" width="80" bgcolor="#9fb0f4" height="20">
                    <b>Vendor Number:</b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="80" height="20" style="width: 100px">
                    <asp:TextBox ID="resource_code" runat="server" Width="80"></asp:TextBox>
                </td>
                <td style="width: 120px" align="right" width="80" bgcolor="#9fb0f4" height="20">
                    <b>Vendor Name:</b>
                </td>
                <td width="5" height="20">
                </td>
                <td height="20" style="width: 200px">
                    <asp:TextBox ID="resource_name" runat="server" Width="180"></asp:TextBox>
                </td>
                <td width="200" align="left">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"></asp:Button>                    
                </td>
            </tr>
            <tr>
                <td colspan="7" style="height:5px"></td>
            </tr>
            <tr>
                <td style="width: 120px" align="right" width="80" bgcolor="#9fb0f4" height="20">
                    <b><asp:Label ID="lb_service_code" runat="server" Text=" Service Code:"/></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="80" height="20" style="width: 100px">
                    <asp:DropDownList ID="service_code" Width="85" visible="false" runat="server" CssClass="infaceDrop">
                        <asp:ListItem Value="" Selected="True"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TxtService" runat="server" Width="85px" visible="false"></asp:TextBox>
                </td>
                <td colspan="2"></td>
                <td style="width:200px">
                     <asp:button id="btnAddition" Runat="server" Text="View Additional Rates" style="width:180px" CssClass="buttonbluestyle" onclick="btnAddition_Click"></asp:button>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <div id="maindiv" align="center" style="position: relative; width: 98%; height: 570px; overflow: auto">  
      <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;">
      <tr><td style="width:100px">&nbsp;</td>
        <td>       
        <asp:datagrid id="dg_resourceinfo" runat="server" AllowPaging="False" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="True" Width="96%">
			<HeaderStyle CssClass="grd_head"></HeaderStyle>
			<ItemStyle CssClass="grd_item"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
                <asp:TemplateColumn HeaderText="PASTE">
						<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px"></ItemStyle>
						<ItemTemplate>
							<asp:ImageButton CommandName="Edit" Runat="server" ID="imgPaste" Width="15px" Height="15px" ImageUrl="../img/view.gif"
									BorderWidth="0"></asp:ImageButton>
						</ItemTemplate>
			    </asp:TemplateColumn>
			    <asp:BoundColumn DataField="r_vendor_number" HeaderText="Vendor#" SortExpression="r_vendor_number">
			        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
			    </asp:BoundColumn>
			    <asp:BoundColumn DataField="r_resource_name" HeaderText="Name" SortExpression="r_resource_name">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="SvcCode" HeaderText="SvcCode" SortExpression="SvcCode">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="SubCode" HeaderText="SubCode" SortExpression="SubCode">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Rate" HeaderText="Rate" SortExpression="Rate">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundColumn> 
                <asp:BoundColumn DataField="UnitTypeName" HeaderText="UnitType" SortExpression="UnitTypeName">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>   		
                <asp:BoundColumn DataField="SvcName" HeaderText="Service" SortExpression="SvcName">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="SubName" HeaderText="Service Description" SortExpression="SubName">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
			</Columns>
		</asp:datagrid>
        </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
