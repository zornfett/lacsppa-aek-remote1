<%@ Page Language="C#" Inherits="Virweb2.WebList.webUserList" Codebehind="webUserList.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
		<title>::User List::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
		<script type="text/javascript">
        function RefreshMyData()    
        {        
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';       
          window.document.UserList.submit(); 
          window.focus();   
        }
        </script> 
	</head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
	<form id="UserList" method="post" runat="server">
	<asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <div algin="left" style="WIDTH:100%;height:auto">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" height="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                  src="../img/add.ico" title="New" 
                  onclick="javascritp:document.location.replace('webUserInfo.aspx?type=add');return false;" />
            &nbsp;
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">User List:</asp:label>
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
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 25px;height:25px"  
                src="../img/exit button.ico" title="Logout"
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
		<asp:datagrid id="dg_userinfo" runat="server" PageSize="500" AllowPaging="True" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
			<HeaderStyle CssClass="grd_head"></HeaderStyle>
			<ItemStyle CssClass="grd_item"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
				<asp:BoundColumn DataField="EmployeeID" HeaderText="User ID" SortExpression="EmployeeID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
		        <asp:BoundColumn DataField="LoginName" HeaderText="Login Name" SortExpression="LoginName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
				<asp:BoundColumn DataField="LastName" HeaderText="Last Name" SortExpression="LastName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
				<asp:BoundColumn DataField="TypeName" HeaderText="User Type" SortExpression="TypeName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
				<asp:BoundColumn DataField="Email1Link" HeaderText="Email" SortExpression="Email1Link" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
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
						<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
							BorderWidth="0"></asp:ImageButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
			<PagerStyle Mode="NumericPages" Visible="True" CssClass="grd_paitem"></PagerStyle>
		</asp:datagrid>
	</div>
		</form>
	</body>
</HTML>
