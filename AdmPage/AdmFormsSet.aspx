<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.AdmPage.AdmFormsSet" Codebehind="AdmFormsSet.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
	<title>:::Forms Settings:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
<form id="FormList" method="post" runat="server">
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Forms Settings:</asp:label>
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
            <asp:datagrid id="dg_cr" runat="server" AllowPaging="False" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
			    <asp:BoundColumn DataField="f_name" HeaderText="Form Name" SortExpression="f_name" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>			    
				<asp:BoundColumn DataField="f_desc" HeaderText="Form Description" SortExpression="f_desc">
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="f_path" HeaderText="f_path" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="f_offline" HeaderText="f_offline" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="f_agency" HeaderText="Agency" SortExpression="f_agency"></asp:BoundColumn>
				<asp:BoundColumn DataField="tb_entry_text" HeaderText="Category" SortExpression="tb_entry_text"></asp:BoundColumn> 
				<asp:BoundColumn DataField="IsAdmin" HeaderText="Admin Only" SortExpression="IsAdmin"></asp:BoundColumn> 
				<asp:TemplateColumn HeaderText="Preview">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:linkbutton id="btnPreview" Runat="server" Text="Preview" style="width:60px" BorderStyle="Outset"></asp:linkbutton>
							</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Enable/Disable" SortExpression="f_offline">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:linkbutton id="btnEnable" Runat="server" Text="Enable" style="width:60px" BorderStyle="Outset"></asp:linkbutton>
							</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
		</asp:datagrid>
    </div>   
</form>
</body>
</html>

