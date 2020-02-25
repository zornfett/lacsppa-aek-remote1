<%@ Page Language="C#" Inherits="Virweb2.FormList.FormTransCaseLogList" Codebehind="FormTransCaseLogList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self" />
    <title>:::SCLARC Transfer Case Logs:::...</title>
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
                
        function print_click()
        {
          PopupMessage(10);
        }

        function back_click() {
          //document.location.replace('../WebList/WebConsumerInfoSCLARC.aspx');
          document.location.replace('../WebList/WebConsumerInfo.aspx');
        }
    </script>

</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="form1" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
            <div align="center" style="WIDTH:100%;">
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
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />    
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SCLARC Transfer Case Logs</asp:label>
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
		    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
				<asp:datagrid id="dg_FormTrans" runat="server" AllowPaging="False" CssClass="grd_body"
                					Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head">
                </HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>                    
                    <asp:BoundColumn DataField="createdate" HeaderText="Create Date" SortExpression="createdate" Visible="false">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Date_IN" HeaderText="Date In" SortExpression="Date_IN" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Case_Status" HeaderText="Case Status" SortExpression="Case_Status">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Case_Type" HeaderText="Case Type" SortExpression="Case_Type">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                     <asp:BoundColumn DataField="Date_Sent" HeaderText="Date Sent" SortExpression="Date_Sent" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Final_Date" HeaderText="Final Acceptance Date" SortExpression="Final_Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                     <asp:BoundColumn DataField="Volumn" HeaderText="Volumes" SortExpression="Volumn">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Case_Transfer" HeaderText="Case Transfer" SortExpression="Case_Transfer">
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