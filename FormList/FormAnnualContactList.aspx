<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormAnnualContactList.aspx.cs" Inherits="Virweb2.FormList.FormAnnualContactList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self" />
	<title>:::Annual Contact List:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    function RefreshMyData()    
    {
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '1';        
        window.document.AnnualContactList.submit(); 
        window.focus();   
    }
    function add_click(uci)
    {
       document.location.replace("FormAnnualContactInfo.aspx?UCI="+uci+"&type=add");
       //window.showModalDialog("ChangeConsumerAddr.aspx?UCI="+uci, self, "status:no;dialogWidth:400px;dialogHeight:200px;help:no;scroll:no;resizable:yes;");

    }

    function addRecord(changedate, changereason)
    {
        var c_key = document.AnnualContactList.c_key.value.toString();
        document.location.replace("FormAnnualContactInfo.aspx?UCI=" + c_key + "&type=add");
    }
    </script>        
</head>
<body>
    <form id="AnnualContactList" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="c_key" id="c_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div algin="left" style="WIDTH:100%;height:auto">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" height="100%">
	    <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	        <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                src="../img/add.ico" title="New" />         
            &nbsp;
            <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                src="../img/back.ico" title="Back"
                onclick="javascript:document.location.replace('../WebList/WebForms.aspx');return false;" />          
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

    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
		<asp:datagrid id="dg_FormAnnualContactList" runat="server" AllowPaging="false" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="false" 
            ondeletecommand="dg_FormAnnualContactList_DeleteCommand" 
            onitemdatabound="dg_FormAnnualContactList_ItemDataBound" >
			<HeaderStyle CssClass="grd_head"></HeaderStyle>
			<ItemStyle CssClass="grd_item"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
                <asp:BoundColumn DataField="uci" HeaderText="uci"  Visible="false">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="entereddate" HeaderText="entereddate" Visible="false">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="entereddate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="c_review_pcp_ifsp_date" HeaderText="IPP Review Date" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="Contactdate" HeaderText="Contact Date" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="" HeaderText="Status">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
				<asp:TemplateColumn HeaderText="View/Edit">
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
		</asp:datagrid>
	</div>
    </form>
</body>
</html>
