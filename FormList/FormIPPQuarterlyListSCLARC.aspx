<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIPPQuarterlyListSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIPPQuarterlyListSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self" />
    <title>:::IPP Quarterly:::...</title>
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
        function add_click(uci)
        {
            document.location.replace("FormIPPQuarterlyInfoSCLARC.aspx?ClientID="+uci+"&type=add");
        }
        function back_click() {
            document.location.replace('../weblist/webConsumerList.aspx');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
        <div algin="left" style="WIDTH:100%;">
		    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	        <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	            <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                    src="../img/add.ico" title="New" />         
                &nbsp;
                <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                    src="../img/print.ico" title="Print" visible="false"
                    onclick="javascript:print_click();return false;" />
                &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                    src="../img/back.ico" title="Back"
                    onclick="javascript:back_click();return false;" />          
                </td>  
                <td align="left" width="60%">
			    <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Client:</asp:label>
			    </td>
                <td align="left" width="15%">
                <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                    src="../img/supportdesk.ico" title="Support"
                    onclick="javascript:window.top.outsidelinks(1);return false;" />             
                &nbsp;
                <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                    src="../img/help.ico" title="Help"
                    onclick="javascript:window.top.outsidelinks(2);return false;" />             
                &nbsp;
                <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                    src="../img/logout.jpg" title="Logout"
                    onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                <td colspan="3" style="background-color:#137AC5"></td> 
		    </tr>
            <tr style="height:8px">
                <td colspan="3"></td> 
		    </tr>
		    </table>
		</div>	
        <div align="center" style="position: relative; width: 100%; height: 600px; overflow: auto">
            <asp:DataGrid ID="dg_IPPQuartely" runat="server" AllowPaging="false" CssClass="grd_body"
				Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>     
                    <asp:BoundColumn DataField="ID" HeaderText="ID" Visible="False">
                    </asp:BoundColumn>  
                    <asp:BoundColumn DataField="IPPID" HeaderText="IPPID" Visible="False">
                    </asp:BoundColumn>        
                    <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False">
                    </asp:BoundColumn>          
                    <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="AnnouncedDesc" HeaderText="Announced" >
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="VisitDate" HeaderText="Visit Date"  DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="QuarterlyType" HeaderText="Type">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
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
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
