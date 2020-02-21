<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormConsumerLocList.aspx.cs" Inherits="Virweb2.FormList.FormConsumerLocList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self" />
	<title>:::Consumer Location Flow Chart List:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    function printloc_click()
    {
       // PopupMessage(10);
       var c_key = document.ConsumerLocList.c_key.value.toString();
       var UserAct = document.ConsumerLocList.UserAct.value.toString();
       var url = "PrintFormConsumerLocList.aspx?c_key=" + c_key + "&type=0";
       winhref(url, 'PrintFormConsumerLocList');
    }
    function addloc_click() {
        if (document.ConsumerLocList.MoveOutEmpty.value == "1") {
            alert("Please enter Move Out date for the current address before create a new address");
        }
        else {
            var c_key = document.ConsumerLocList.c_key.value.toString();
            document.location.replace("FormConsumerLocInfo.aspx?UCI=" + c_key + "&type=add");
            //window.showModalDialog("ChangeConsumerAddr.aspx?UCI="+uci, self, "status:no;dialogWidth:400px;dialogHeight:200px;help:no;scroll:no;resizable:yes;");
        }
    }

    function printrel_click()
    {
        // PopupMessage(10);
       var c_key = document.ConsumerLocList.c_key.value.toString();
       var UserAct = document.ConsumerLocList.UserAct.value.toString();
       var url = "PrintFormConsumerLocList.aspx?c_key=" + c_key + "&type=1";
       winhref(url, 'PrintFormConsumerLocRelList');
    }
    function addrel_click()
    {
       var c_key = document.ConsumerLocList.c_key.value.toString();
       document.location.replace("FormConsumerLocRelInfo.aspx?UCI="+c_key+"&type=add");
       //window.showModalDialog("ChangeConsumerAddr.aspx?UCI="+uci, self, "status:no;dialogWidth:400px;dialogHeight:200px;help:no;scroll:no;resizable:yes;");
    }

    function addRecord(changedate, changereason)
    {
        var c_key = document.ConsumerLocList.c_key.value.toString();
        document.location.replace("FormConsumerLocInfo.aspx?UCI=" + c_key + "&ChangeDate=" + changedate + "&ChangeReason=" + changereason + "&type=add");
    }
    function back_click() {
        //document.location.replace('../WebList/WebConsumerInfoSCLARC.aspx');
        document.location.replace('../WebList/WebConsumerInfo.aspx');
    }
    </script>        
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="ConsumerLocList" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="c_key" id="c_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="MoveOutEmpty" id="MoveOutEmpty" value="" runat="server" />
    <div algin="center" style="WIDTH:100%;">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	    <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	        <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 95%">
            <tr>
               <td align="left" style="width:100px">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="image" id="btnAddLoc" runat="server" alt="Add" style="width: 25px;height:25px"  
                       src="../img/add.ico" title="Add" visible="false"
                       onclick="javascript:addloc_click();return false;" />
                  &nbsp;
                  <input type="image" id="btnPrintLoc" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print"
                       onclick="javascript:printloc_click();return false;" />
                  &nbsp;&nbsp;&nbsp;
               </td>
               <td align="center" style="width:350px">
			      <asp:label id="l_consumer_add" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">Consumer Address</asp:label>
			   </td>
               <td align="left" style="width:350px">
               </td>
            </tr>
        </table>
        <div style="position:relative;WIDTH:100%;height:220px;overflow:auto;vertical-align:top">
		  <asp:datagrid id="dg_FormConsumerLocList" runat="server" AllowPaging="false" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="false" 
            ondeletecommand="dg_FormConsumerLocList_DeleteCommand" 
            onitemdatabound="dg_FormConsumerLocList_ItemDataBound" >
			<HeaderStyle CssClass="grd_head"></HeaderStyle>
			<ItemStyle CssClass="grd_item"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
                <asp:BoundColumn DataField="UCI" HeaderText="UCI"  Visible="false">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="CreateDate" HeaderText="CreateDate" Visible="false">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="ChangeDate" HeaderText="Moved In" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="FacilityName" HeaderText="Name/Contact" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="FacilityAddress_desc" HeaderText="Address">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="Appliesto" HeaderText="Applies To">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="DischargeDate" HeaderText="Moved Out" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="reason_desc" HeaderText="Reason for Leaving">
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
        <br />
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 95%">
            <tr>
               <td align="left" style="width:100px">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="image" id="btnAddRel" runat="server" alt="Add" style="width: 25px;height:25px"  
                       src="../img/add.ico" title="Add" visible="false"
                       onclick="javascript:addrel_click();return false;" />
                  &nbsp;
                  <input type="image" id="btnPrintRel" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print"
                       onclick="javascript:printrel_click();return false;" />
                  &nbsp;&nbsp;&nbsp;
               </td>
               <td align="center" style="width:350px">
			      <asp:label id="l_consumer_rel" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">Relationship/Mailing Address</asp:label>
			   </td>
               <td align="left" style="width:350px">
               </td>
            </tr>
        </table>
        <div style="position:relative;WIDTH:100%;height:220px;overflow:auto;vertical-align:top">
		  <asp:datagrid id="dg_FormConsumerRelList" runat="server" AllowPaging="false" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="false" 
            ondeletecommand="dg_FormConsumerRelList_DeleteCommand" 
            onitemdatabound="dg_FormConsumerRelList_ItemDataBound" >
			<HeaderStyle CssClass="grd_head"></HeaderStyle>
			<ItemStyle CssClass="grd_item"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
                <asp:BoundColumn DataField="UCI" HeaderText="UCI"  Visible="false">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="CreateDate" HeaderText="CreateDate" Visible="false">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="FacilityName" HeaderText="Name/Contact" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="FacilityAddress_desc" HeaderText="Address">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="FacilityPhone" HeaderText="Phone">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="Appliesto" HeaderText="Applies To">
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
	</div>
    </form>
</body>
</html>
