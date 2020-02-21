<%@ Page Language="C#" Inherits="Virweb2.FormList.FormMWEList" Codebehind="FormMWEList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
        <base target="_self" />
		<title>:::DS3770--Medicaid Waiver Eligibility List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript" src="../js/common.js"></script>
        <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.MWEList.submit(); 
          window.focus();   
        }
        function print_click()
        {
          //PopupMessage(10);
        }
        function add_click(uci, type)
        {
          var DspStr = "Is this DS 3770 for an Institutional Deeming Medi-Cal referral?";
          //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          var saveflag = PromptSaveChange(1, DspStr);
          if (saveflag == "1")
          {
            if (type == 0)
              document.location.replace("FormMWEInfo.aspx?uci="+uci+"&type=add&EGroup=1");
            else
              document.location.replace("FormMWEInfoFDLRC.aspx?uci="+uci+"&type=add&EGroup=1");
          }
          else
          {
            if (type == 0)
              document.location.replace("FormMWEInfo.aspx?uci="+uci+"&type=add&EGroup=0");
            else
              document.location.replace("FormMWEInfoFDLRC.aspx?uci="+uci+"&type=add&EGroup=0");
          }
        }
        function back_click() {
          document.location.replace('../weblist/webConsumerList.aspx');
        }
        </script>        
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="MWEList" method="post" runat="server">
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
        <asp:hiddenfield id="Consult_Flag" runat="server" value="0" />
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
		    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
                <b>DS3770 MODIFICATION </b>
				<asp:datagrid id="dg_FormMWE" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
                        <asp:BoundColumn DataField="mwc_uci" HeaderText="mwc_uci"  Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="mwc_year" HeaderText="MW Year" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn  HeaderText="Type" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="mwc_eligibility_date" HeaderText="Eligibility Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="mwc_view_date" HeaderText="Signed Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="mwc_date" HeaderText="Entry Date" Visible="false" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="mwc_entered_by" HeaderText="Entered BY">
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

