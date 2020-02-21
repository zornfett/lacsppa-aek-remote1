<%@ Page Language="C#" Inherits="Virweb2.FormList.FormPosList" Codebehind="FormPosList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
		<base target="_self"></base>
		<title>:::Consumer POS List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript" src="../js/common.js"></script>
        <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.PosList.submit(); 
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
		<form id="PosList" method="post" runat="server">
		    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
		    <div align="center" style="WIDTH:100%;">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Modify" Style="width: 25px;height:25px"
                       ImageURL="../img/edit.ico" ToolTip="Modify" 
                       OnClick="btnModify_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnPosUsfReAuth" runat="server" AlternateText="Re-Authorize" Style="width: 25px;height:25px"
                       ImageURL="../img/reauth.jpg" ToolTip="Re-Authorize" 
                       OnClick="btnPosUfsReAuth_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnCancel" runat="server" AlternateText="Cancel" Style="width: 25px;height:25px"
                       ImageURL="../img/cancel.jpg" ToolTip="Cancel" 
                       OnClick="btnCancel_Click" >
                    </asp:ImageButton>
                    
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print" visible="false"
                       onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />          
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">POS List:</asp:label>
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
                  <td align="left" style="width:200px">
                     <asp:button id="btnPosAdd" Runat="server" Text="Create New POS" style="width:125px" CssClass="buttonbluestyle"></asp:button>
                  </td>
                  <td align="center" style="width:400px">
			         <b>NEW PURCHASE OF SERVICE REQUESTS</b>
			      </td>
                  <td align="left" style="width:200px">
                     <asp:button id="btnPosHist" Runat="server" Text="View History" style="width:125px" CssClass="buttonbluestyle" onclick="btnPosHist_Click"></asp:button>
                  </td>
                  </tr>
                </table>
               <div style="position:relative;WIDTH:100%;height:140px;overflow:auto;vertical-align:top">
				<asp:datagrid id="dg_pos" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="p_key" HeaderText="p_key" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Type" HeaderText="Type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_date" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_resource_name" HeaderText="Vendor Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_resource_number" HeaderText="Vendor#">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_vendor_svcc" HeaderText="Code">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_date_start" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="p_date_end" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Status" HeaderText="Status">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="p_ipp" HeaderText="IPP Section">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Qualifiers" HeaderText="Qualifiers">
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
					    <asp:BoundColumn DataField="speccolor" HeaderText="speccolor" Visible="False"></asp:BoundColumn>
					    <asp:BoundColumn DataField="specbkcolor" HeaderText="specbkcolor" Visible="False"></asp:BoundColumn>
					</Columns>
				</asp:datagrid>
               </div>
               <br />
                <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 95%">
                  <tr>
                  <td align="left" style="width:200px">
                     <asp:button id="btnTsrAdd" Runat="server" Text="Create New TSR" style="width:125px" CssClass="buttonbluestyle"></asp:button>
                  </td>
                  <td align="center" style="width:400px">
                     <b>TRANSPORTATION SERVICE REQUESTS</b>
			      </td>
                  <td align="left" style="width:200px">
                     <asp:button id="btnTsrHist" Runat="server" Text="View History" style="width:125px" CssClass="buttonbluestyle" onclick="btnTsrHist_Click"></asp:button>
                  </td></tr>
                </table>
               <div style="position:relative;WIDTH:100%;height:140px;overflow:auto;vertical-align:top">
                <asp:datagrid id="dg_tsr" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="t_key" HeaderText="t_key" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Type" HeaderText="Type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="t_date" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="t_trans_name" HeaderText="Vendor Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="t_trans_number" HeaderText="Vendor#">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="t_trans_svcc" HeaderText="Code">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="t_trans_subc" HeaderText="Sub">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="t_date_start" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="t_date_end" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Status" HeaderText="Status">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="t_ipp" HeaderText="IPP Section">
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
                        <asp:BoundColumn DataField="speccolor" HeaderText="speccolor" Visible="False"></asp:BoundColumn>
					    <asp:BoundColumn DataField="specbkcolor" HeaderText="specbkcolor" Visible="False"></asp:BoundColumn>
					</Columns>
				</asp:datagrid>
               </div>
                <br />
                <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 95%">
                  <tr>
                  <td align="left" style="width:200px">
                  </td>
                  <td align="center" style="width:400px">
                     <b>AUTHORIZED PURCHASE OF SERVICE</b>
			      </td>
                  <td width="200px" align="left">
                     <asp:button id="btnPosUfsHist" Runat="server" Text="View History" style="width:125px" CssClass="buttonbluestyle" onclick="btnPosUfsHist_Click"></asp:button>
                  </td>
                  </tr>
                </table>
               <div style="position:relative;WIDTH:100%;height:160px;overflow:auto;vertical-align:top">
				<asp:datagrid id="dg_posufs" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="rap_auth" HeaderText="Auth#" SortExpression="rap_auth">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_vid_name" HeaderText="Vendor Name" SortExpression="rap_vendor_name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_vid" HeaderText="Vendor#" SortExpression="rap_vid">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_svc_code" HeaderText="Code" SortExpression="rap_svc_code">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="rap_sub_code" HeaderText="Sub" SortExpression="rap_sub_code">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" SortExpression="rap_start_dt">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" SortExpression="rap_term_dt">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>		
                        <asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>	
                        <asp:BoundColumn DataField="speccolor" HeaderText="speccolor" Visible="False"></asp:BoundColumn>
					    <asp:BoundColumn DataField="specbkcolor" HeaderText="specbkcolor" Visible="False"></asp:BoundColumn>		
					</Columns>
				</asp:datagrid>
              </div> 
			</div>
		</form>
	</body>
</html>

