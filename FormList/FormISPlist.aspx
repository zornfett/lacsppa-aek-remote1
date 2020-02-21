<%@ Page Language="C#" Inherits="Virweb2.FormList.FormISPlist" Codebehind="FormISPlist.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self" />
    <title>:::Individual Service Plan:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.form1.submit(); 
          window.focus();   
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
         <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
         <div style="width: 98%; height: 60px">
            <table border="0" cellpadding="0" style="border-collapse: collapse; width: 100%;
                height: 100%">
                <tr style="height: 30px;" valign="middle">
                    <td align="center">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                            Height="18px">Client:</asp:Label>
                    </td>
                    <td align="left">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="buttonbluestyle"
                            Visible="False" Style="width: 120px"></asp:Button>
                    </td>
                </tr>
                <tr style="height: 20px;">
                    <td align="center" colspan="2">
                        <asp:Label ID="Title1" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                            Height="18px">Individual Service Plan</asp:Label>
                    </td>
                </tr>
            </table>
        </div>
         <div align="center" style="position: relative; width: 100%; height: 600px; overflow: auto">
            <asp:DataGrid ID="dg_FormISP" runat="server" PageSize="20" AllowPaging="True"
                CssClass="grd_body" Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head">
                </HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>     
                    <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" SortExpression="CreateDate"  Visible="false">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>               
                    <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" SortExpression="CreateDate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="EnterByName" HeaderText="Entered By" SortExpression="EnterByName" >
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="TargetArea1" HeaderText="Target 1" SortExpression="TargetArea1">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="TargetArea2" HeaderText="Target 2" SortExpression="TargetArea2">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="TargetArea3" HeaderText="Target 3" SortExpression="TargetArea3">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle" />
                    </asp:BoundColumn>     
                    <asp:BoundColumn DataField="TargetArea4" HeaderText="Target 4" SortExpression="TargetArea4">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle" />
                    </asp:BoundColumn>     
                    <asp:BoundColumn DataField="TargetArea5" HeaderText="Target 5" SortExpression="TargetArea5">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle" />
                    </asp:BoundColumn>      
                    <asp:TemplateColumn HeaderText="View/Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle"></ItemStyle>
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
