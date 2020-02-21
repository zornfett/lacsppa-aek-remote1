<%@ Page Language="C#" Inherits="Virweb2.FormList.FormGuardianReport" Codebehind="FormGuardianReport.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <base target="_self"></base>
    <title>:::Colorado Court Report for GSF:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    <!--
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.form1.submit(); 
          window.focus();   
        }
    //-->    
    </script>

</head>
<body>
    <form id="form1" runat="server" method="post">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
        <div align="left" style="width: 98%">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 30px;" valign="middle">
                    <td align="center">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                            Height="18px">Client:</asp:Label>
                    </td>
                    <td align="left" width="300px">
                        <asp:Button ID="btnAdd" runat="server" Text="Add Report" CssClass="buttonbluestyle"
                            Visible="False" Style="width: 125px"></asp:Button>
                    </td>
                </tr>
                <tr style="height: 20px;">
		         <td></td>
		        </tr>
		        <tr style="height: 20px;">
		         <td align="center">
                    <asp:Label ID="TitlePos" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">Guardian's Report List</asp:Label>
		         </td>
		        </tr>
            </table>
        </div>
        <div align="center" style="position:relative;WIDTH:100%;height:660px;  overflow: auto ">
            <asp:DataGrid ID="dg_FormGudrdianReport" runat="server" PageSize="100" AllowPaging="True"
                CssClass="grd_body" Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head">
                </HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn DataField="createdate" HeaderText="Date" SortExpression="createdate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ctType_name" HeaderText="Court" SortExpression="ctType">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ctCounty" HeaderText="County" SortExpression="ctCounty">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="attyName" HeaderText="Attorney" SortExpression="attyName">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="casenum" HeaderText="Case Number" SortExpression="casenum">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="div" HeaderText="Division" SortExpression="div">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ctRoom" HeaderText="Court Room" SortExpression="ctRoom">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="View/Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
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
                </Columns>
                <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
