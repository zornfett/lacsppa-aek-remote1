<%@ page language="C#" inherits="Virweb2.WebList.webBillingReport" Codebehind="webBillingReport.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
        <base target="_self"></base>
		<title>:::Client Billing Report:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
		<script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.MonthlyList.submit(); 
          window.focus();   
        }
        
        function print_click(flag)
        {
          var cm = document.BillingList.cm.value.toString();
          var StartDate = document.BillingList.StartDT.value.toString();
          var EndDate = document.BillingList.EndDT.value.toString();
          var UserAct = document.BillingList.UserAct.value.toString();
          if (flag==0)            
            winhref("PrintBillingReport.aspx?flag=0&cm="+cm+"&startDate="+StartDate+"&endDate="+EndDate+"&UserAct="+UserAct,"PrintBillingReport");
          else
            winhref("PrintBillingReport.aspx?flag=1&cm="+cm+"&startDate="+StartDate+"&endDate="+EndDate+"&UserAct="+UserAct,"PrintBillingReport");
        }
        </script> 
	</head>
    <body onload="onloadsizechg(90);" onresize="onloadsizechg(90);">
    <script type="text/javascript" src="../js/calendar.js"></script>
		<form id="BillingList" method="post" runat="server">
		    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />	
		    <input type="hidden" name="cm" id="cm" value="" runat="server" />
		    <input type="hidden" name="StartDT" id="StartDT" value="" runat="server" />
		    <input type="hidden" name="EndDT" id="EndDT" value="" runat="server" />
		    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" /> 	     
		    <div align="center" style="WIDTH:100%">  
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	           <tr style="height: 30px; background-color: #EAF4FF">
                 <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="Add" style="width: 25px;height:25px" 
                            src="../img/add.ico" title="New"
                            onclick="javascript:document.location.replace('webIDNotesInfo.aspx?bill=1&c_key=0&type=add');return false;" />
                 </td>
                 <td align="left" valign="middle" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" >Billing Report</asp:label>
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
               </table>
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
               <tr>
		         <td colspan="3" height="5px" ></td>
		       </tr>
		       <tr>
		         <td style="WIDTH: 150px" align="right" bgColor="#9fb0f4" height="20">
		             <b><asp:Label ID="lb_coordinator" runat="server" CssClass="inface" Width="150px" Text="Choose Agent:"></asp:Label></b>
                 </td>
		         <td width="10" height="20"></td>
		         <td width="650" height="20" style="width: 650px">
					  <asp:dropdownlist id="mr_cm" runat="server" 
						DataValueField="employeeID" DataTextField="employeeName" Height="25" Width="300" CssClass="infaceDropRead" Enabled="false">
		              </asp:dropdownlist>           
				 </td>
		       </tr>
		       <tr class="tr_common">
                 <td colspan="3" height="5">
                 </td>
               </tr>
		       <tr>
		         <td style="WIDTH: 150px" align="right" bgColor="#9fb0f4" height="20">
		             <b><asp:Label ID="lb_timeperiod" runat="server" CssClass="inface" Width="150px" Text="Time Period:"></asp:Label></b>
                 </td>
                 <td width="10" height="20"></td>
		         <td width="650" height="20" style="width: 650px">
		              <b style="color: blue">Start:</b>
                      <asp:TextBox ID="startdate" runat="server" CssClass="inface" Style="width: 100px"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" >
                      </asp:TextBox>
		              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		              <b style="color: blue">End:</b>
                      <asp:TextBox ID="enddate" runat="server" CssClass="inface" Style="width: 100px"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" >
                      </asp:TextBox>
				  </td>
		       </tr>
		       <tr class="tr_common">
                 <td colspan="3" height="5">
                 </td>
               </tr>
		       <tr>
		         <td style="WIDTH: 150px" align="right" bgColor="#9fb0f4" height="20"><b>Today's Date:</b>
		         </td>
		         <td width="10" height="20"></td>
		         <td width="650" height="20" style="width: 650px">
                     <asp:Label ID="mr_date" runat="server" CssClass="inface" Width="100px"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                     <asp:button id="btnSearch" Runat="server" Text="Search" style="width:100px" CssClass="buttonbluestyle" onclick="btnSearch_Click"></asp:button>
                     &nbsp;&nbsp;&nbsp;
                    <input type="button" id="btnPrint"  value="Print" style="width: 100px;"  class="buttonbluestyle" onclick="javascript:print_click(0);" runat="server" /> 
                    &nbsp;&nbsp;&nbsp;
                    <input type="button" id="btnPrintC" value="Print With Details" style="width: 150px;"  class="buttonbluestyle" onclick="javascript:print_click(1);" runat="server" />                             
                  </td>
		       </tr>								
		       <tr>
		         <td colspan="3" height="2px" ></td>
		       </tr>			
		       </table>
            </div>		
			<div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;overflow: auto ">
				<asp:datagrid id="dg_billinfo" runat="server" AllowPaging="False" CssClass="grd_body" 
					Visible="True" AutoGenerateColumns="False" AllowSorting="False">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="tx_date" HeaderText="tx_date" Visible=False></asp:BoundColumn>
					    <asp:BoundColumn DataField="tx_date" HeaderText="Service Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="tx_entered_by_name" HeaderText="Agent">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
					    <asp:BoundColumn DataField="billtypes" HeaderText="Types">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="billtotal" HeaderText="Total" DataFormatString="{0:C}">
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
				        <asp:BoundColumn DataField="tx_validated_date" HeaderText="Final Date" Visible="false">
                        </asp:BoundColumn>
					</Columns>
				</asp:datagrid>
				<asp:Label ID="SumTotal" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"></asp:Label>
			</div>
		</form>
		<br />
	</body>
</html>

