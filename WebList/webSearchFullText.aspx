<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webSearchFullText.aspx.cs"
    Inherits="Virweb2.WebList.webSearchFullText" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>::Search Result List:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
</head>
<body>
    <form id="fulltextlist" runat="server" method="post">
    <div algin="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%"
            height="100%">
            <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:document.location.replace('../webPartsMain.aspx');return false;" />
                </td>
                <td align="left" width="60%">
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px"
                        src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
            <tr style="height: 8px">
                <td colspan="3">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
            <tr>
                <td colspan="3" height="5px">
                </td>
            </tr>
            <tr style="height: 10px;">
                <td align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
                        <asp:Label ID="l_stxt" runat="server" Visible="true"></asp:Label></b>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <asp:DataGrid ID="dg_FormProfile" runat="server" AllowPaging="false" CssClass="grd_body"
                        Visible="False" AutoGenerateColumns="False" AllowSorting="false" OnItemDataBound="dg_FormProfile_ItemDataBound">
                        <HeaderStyle CssClass="grd_head"></HeaderStyle>
                        <ItemStyle CssClass="grd_item"></ItemStyle>
                        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                        <Columns>
                            <asp:BoundColumn HeaderText="c_key" DataField="c_key">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="labels" HeaderText="In">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="View">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                <ItemTemplate>
                                    <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                        BorderWidth="0"></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                    <asp:DataGrid ID="dg_FormIDNotes" runat="server" AllowPaging="false" CssClass="grd_body"
                        Visible="False" AutoGenerateColumns="False" AllowSorting="false" OnItemDataBound="dg_FormIDNotes_ItemDataBound">
                        <HeaderStyle CssClass="grd_head"></HeaderStyle>
                        <ItemStyle CssClass="grd_item"></ItemStyle>
                        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                        <Columns>
                            <asp:BoundColumn HeaderText="c_key" DataField="c_key">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn HeaderText="tx_date" DataField="tx_date" Visible="false"></asp:BoundColumn>
                            <asp:BoundColumn DataField="labels" HeaderText="In">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="View">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                <ItemTemplate>
                                    <asp:HyperLink NavigateUrl="#herf_md" Visible="false" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                        BorderWidth="0"></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
