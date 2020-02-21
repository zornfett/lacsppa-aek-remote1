<%@ Page Language="C#" Inherits="Virweb2.FormList.FormCDER08List" Codebehind="FormCDER08List.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
        <base target="_self" />
		<title>:::CDER08--Client Development Evaluation List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript" src="../js/common.js"></script>
        <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.CDER08List.submit(); 
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
    <form id="CDER08List" method="post" runat="server">
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
            <div algin="center" style="WIDTH:100%;">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle">
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                       src="../img/add.ico" title="New" />
                    <input type="image" id="btnEdit" runat="server" alt="Modify" style="width: 25px;height:25px" visible="false" 
                       src="../img/edit.ico" title="Modify" />           
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print" visible="false"
                       onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />          
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
                <b>CURRENT CDER</b>
                <div style="position:relative;WIDTH:100%;height:60px;overflow:auto;vertical-align:top">
				<asp:datagrid id="dg_FormCDER08" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
                        <asp:BoundColumn DataField="uci" HeaderText="uci"  Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="entrykey" HeaderText="entrykey"  Visible="false"></asp:BoundColumn>
						<asp:BoundColumn DataField="rptdte" HeaderText="Face/Face Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="SandisDate" HeaderText="SANDIS Entry Date">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="cderdt" HeaderText="Expiration Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Diagnosis" HeaderText="Diagnosis">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>		          									
						<asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>										
					</Columns>
				</asp:datagrid>
                </div>
                <br />
                <b>NEW CDER MODIFICATION</b>
                <div style="position:relative;WIDTH:100%;height:200px;overflow:auto;vertical-align:top">
				<asp:datagrid id="dg_FormCDER08New" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
                        <asp:BoundColumn DataField="uci" HeaderText="uci"  Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="entrykey" HeaderText="entrykey"  Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="rptdte" HeaderText="Face/Face Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="entrydate" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="uploaddate" HeaderText="Transmit Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="employeename" HeaderText="Entered By" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Diagnosis" HeaderText="Diagnosis">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
						<asp:BoundColumn DataField="Validated" HeaderText="Validated">
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
                <b>CDER MODIFICATION HISTORY</b>
                <div style="position:relative;WIDTH:100%;height:200px;overflow:auto;vertical-align:top">
				<asp:datagrid id="dg_FormCDER08His" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
                        <asp:BoundColumn DataField="uci" HeaderText="uci"  Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="entrykey" HeaderText="entrykey"  Visible="false"></asp:BoundColumn>
						<asp:BoundColumn DataField="rptdte" HeaderText="Face/Face Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="entrydate" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="uploaddate" HeaderText="Transmit Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="updatedate" HeaderText="Update Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="employeename" HeaderText="Entered By" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Diagnosis" HeaderText="Diagnosis">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
						<asp:BoundColumn DataField="Validated" HeaderText="Validated">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	                                            		          									
						<asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>									
					</Columns>
				</asp:datagrid>
                </div>
			</div>
    </form>
</body>
</html>
