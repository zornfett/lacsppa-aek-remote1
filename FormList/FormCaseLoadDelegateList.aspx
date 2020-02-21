﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCaseLoadDelegateList.aspx.cs" Inherits="Virweb2.FormList.FormCaseLoadDelegateList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
        <base target="_self" />
		<title>:::Tickler Reassignment List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript" src="../js/common.js"></script>
        <script type="text/javascript">
        function print_click()
        {
          PopupMessage(10);
        }
        </script>        
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);">
    <form id="CaseLoadDelegateList" method="post" runat="server">
        <div algin="center" style="WIDTH:100%;">
		    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	            <tr style="height: 30px;background-color: #EAF4FF" valign="middle">
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
                        onclick="javascript:document.location.replace('../weblist/webForms.aspx');return false;" />          
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
            <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 95%">
                <tr>
                  <td align="left" style="width:550px">
                  </td>
                  <td align="left" style="width:250px">
                     <asp:button id="btnDispReturn" Runat="server" Text="Include Returned" style="width:200px" CssClass="buttonbluestyle" onclick="btnDispReturn_Click"></asp:button>
                  </td>
                </tr>
            </table>
		</div>	
		<div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
			<asp:datagrid id="dg_FormCaseLoadDelegate" runat="server" AllowPaging="false" CssClass="grd_body"
				Visible="True" AutoGenerateColumns="False" AllowSorting="true">
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
				<Columns>
                    <asp:BoundColumn DataField="ID" HeaderText="ID"  Visible="false">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" SortExpression="ConsumerName">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="AssignedName" HeaderText="Assigned SC" SortExpression="AssignedName">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="DelegateName" HeaderText="Re Assigned SC" SortExpression="DelegateName">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="startdate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="startdate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="enddate" HeaderText="End Date"  DataFormatString="{0:MM/dd/yyyy}" SortExpression="enddate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="statusDesc" HeaderText="Status" SortExpression="statusDesc">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	           									
					<asp:TemplateColumn HeaderText="Edit">
						<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						<ItemTemplate>
							<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Delete">
						<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						<ItemTemplate>
                            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
						</ItemTemplate>
					</asp:TemplateColumn>								
				</Columns>
			</asp:datagrid>
		</div>
    </form>
</body>
</html>
