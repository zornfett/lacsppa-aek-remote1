<%@ Page Language="C#" Inherits="Virweb2.FormList.FormSirList" Codebehind="FormSirList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
		<base target="_self"></base>
		<title>:::Consumer SIR List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="Text/JavaScript" src="../js/common.js"></script>
		<script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.SirList.submit(); 
          window.focus();   
        }
        
        function print_click()
        {
          //PopupMessage(10);
        }

        function back_click() {
          document.location.replace('../weblist/webConsumerList.aspx');
        }
        </script> 
	</head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
		<form id="SirList" method="post" runat="server">
		    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
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
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SIR List:</asp:label>
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
				<asp:datagrid id="dg_sir" runat="server" AllowPaging="False" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="s_rpt_date" HeaderText="Report Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_rpt_date">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="s_incident_dt" HeaderText="Date of Incident" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_incident_dt">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="s_last_mod_date" HeaderText="Last Update" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_last_mod_date">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="s_incident_type" HeaderText="Type of Incident" SortExpression="s_incident_type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="s_type" HeaderText="RPT" SortExpression="s_type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="TransmitYN" HeaderText="TRN" SortExpression="TransmitYN">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="s_status" HeaderText="STS" SortExpression="s_status">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_vendor_number" HeaderText="Vendor #" SortExpression="s_vendor_number" Visible=false>
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
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
				</asp:datagrid>
			</div>
		</form>
	</body>
</html>

