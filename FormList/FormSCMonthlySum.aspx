<%@ page language="C#" inherits="Virweb2.FormList.FormSCMonthlySum" Codebehind="FormSCMonthlySum.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self"></base>
	<title>:::Caseload Monthly Statistical Report:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css"> 
	<script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    <!--
    function RefreshMyData()    
    {
      var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
      myHdnRefreshData.value = '1';        
      window.document.MonthlyList.submit(); 
      window.focus();   
    }

    function Chg_InitEOM(monthyear, coordinator, InitEOM)
    {
      window.showModalDialog("ChangeSCMonthInitEOM.aspx?monthyear="+monthyear+"&coordinator="+coordinator+"&InitEOM="+InitEOM, self, 
              "status:no;dialogWidth:500px;dialogHeight:200px;help:no;scroll:no;resizable:yes;");
    }
    
    function Reload_Item(monthyear, coordinator)
    {
      var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
      myHdnRefreshData.value = '2';
      var cur_coordinator = document.getElementById(<%= "'" + cur_coordinator.ClientID + "'" %>);        
      cur_coordinator.value = coordinator;
                    
      window.document.MonthlyList.submit(); 
      window.focus();   
    }

    function print_click()
    {
       var strMonth = document.MonthlyList.month.value;
       var strYear = document.MonthlyList.year.value;
       var strGroupList = document.MonthlyList.GroupList.value;
       var strOwnReport = document.MonthlyList.OwnReportOnly.value
       var url = "PrintFormSCMonthlySum.aspx?year="+strYear+"&month="+strMonth+"&grouplist="+strGroupList+"&ownreportonly="+strOwnReport;
       winhref(url, 'PrintFormSCMonthlySum');
    }

    function back_click() {
      document.location.replace('../WebList/WebForms.aspx');
    }
    //-->
    </script>            		
</head>
<body onload="onloadsizechg(110);" onresize="onloadsizechg(110);">
    <form id="MonthlyList" method="post" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
        <input type="hidden" name="cur_coordinator" id="cur_coordinator" value="" runat="server" />
        <input type="hidden" name="OwnReportOnly" id="OwnReportOnly" value="" runat="server" />
        <div align="center" style="WIDTH:100%;">
		    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print"
                       onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Caseload Monthly Statistical Report</asp:label>
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
		            <td colspan="5" height="5px" ></td>
		       </tr>
		       <tr style="height: 22px;">
	             <td width="20"></td>
		         <td style="WIDTH: 200px" align="right" bgColor="#9fb0f4" height="20">
		              <b>Please Select Month/Year:</b>
                 </td>
                 <td width="20" height="20"></td>
		         <td width="400" height="20" style="width: 570px">
		              <b style="color: blue">Month:</b>
					  <asp:dropdownlist id="month" runat="server" Width="100" >
                           <asp:ListItem Value="1">January</asp:ListItem>
                           <asp:ListItem Value="2">February</asp:ListItem>
                           <asp:ListItem Value="3">March</asp:ListItem>
                           <asp:ListItem Value="4">April</asp:ListItem>
                           <asp:ListItem Value="5">May</asp:ListItem>
                           <asp:ListItem Value="6">June</asp:ListItem>
                           <asp:ListItem Value="7">July</asp:ListItem>
                           <asp:ListItem Value="8">August</asp:ListItem>
                           <asp:ListItem Value="9">September</asp:ListItem>
                           <asp:ListItem Value="10">October</asp:ListItem>
                           <asp:ListItem Value="11">November</asp:ListItem>
                           <asp:ListItem Value="12">December</asp:ListItem>
		              </asp:dropdownlist>
		              &nbsp;&nbsp;&nbsp;<b>Year</b>
		              <asp:dropdownlist id="year" runat="server" Width="80" >
						   
						   <asp:ListItem Value="2009">2009</asp:ListItem>
						   <asp:ListItem Value="2010" Selected>2010</asp:ListItem>
						   <asp:ListItem Value="2011">2011</asp:ListItem>
						   <asp:ListItem Value="2012">2012</asp:ListItem>
						   <asp:ListItem Value="2013">2013</asp:ListItem>
						   <asp:ListItem Value="2014">2014</asp:ListItem>
						   <asp:ListItem Value="2015">2015</asp:ListItem>
						   <asp:ListItem Value="2016">2016</asp:ListItem>
						   <asp:ListItem Value="2017">2017</asp:ListItem>
						   <asp:ListItem Value="2018">2018</asp:ListItem>
						   <asp:ListItem Value="2019">2019</asp:ListItem>
						   <asp:ListItem Value="2020">2020</asp:ListItem>
						   <asp:ListItem Value="2021">2021</asp:ListItem>
						   <asp:ListItem Value="2022">2022</asp:ListItem>
						   <asp:ListItem Value="2023">2023</asp:ListItem>
						   <asp:ListItem Value="2024">2024</asp:ListItem>
						   <asp:ListItem Value="2025">2025</asp:ListItem>
		              </asp:dropdownlist>
				  </td>
				  <td>
                  </td>
		       </tr>
		       <tr>
                 <td colspan="5" height="5">
                 </td>
               </tr>
               <tr style="height: 22px;">
	             <td width="20"></td>
		         <td style="WIDTH: 200px" align="right" bgColor="#9fb0f4" height="20">
		              <b>Please Select Group:</b>
                 </td>
                 <td width="20" height="20"></td>
		         <td width="400" height="20" style="width: 570px">
					  <asp:dropdownlist id="GroupList" runat="server"
							   DataValueField="GroupID" DataTextField="GroupName" Height="20" Width="150">
				      </asp:dropdownlist>
				  </td>
				  <td>
				     <asp:button id="btnSearch" Runat="server" Text="Search" style="width:100px" CssClass="buttonbluestyle" onclick="btnSearch_Click"></asp:button>
                  </td>
		       </tr>
		       <tr>
                 <td colspan="5" height="8">
                 </td>
               </tr>        
            </table>
		 </div>	
         <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
            <asp:DataGrid ID="dg_FormSCMonthly" runat="server" AllowPaging="False" CssClass="grd_body"
                    Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="monthyear" HeaderText="Month/Year" SortExpression="yearmonth">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="coordinator" HeaderText="ID" SortExpression="coordinator">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="InitEOM" HeaderText="InitEOM" SortExpression="InitEOM" Visible=false>
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CoordinatorName" HeaderText="Coordinator" SortExpression="CoordinatorName">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="PreEOMInit" HeaderText="Cases C/O" SortExpression="PreEOMInit">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col1" HeaderText="OPEN INTK" SortExpression="Col1">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col2" HeaderText="OPEN IRCT" SortExpression="Col2">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col3" HeaderText="OPEN ELIG" SortExpression="Col3">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col4" HeaderText="OPEN HR" SortExpression="Col4">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col5" HeaderText="OPEN HRAC" SortExpression="Col5">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col6" HeaderText="OPEN DVC" SortExpression="Col6">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col7" HeaderText="OPEN REACT" SortExpression="Col7">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col8" HeaderText="TRANS IN" SortExpression="Col8">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col9" HeaderText="TRANS UNIT" SortExpression="Col9" Visible=false>
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col10" HeaderText="SUB TOTAL" SortExpression="Col10">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col11" HeaderText="CLOSE TRNSRC" SortExpression="Col11">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col12" HeaderText="CLOSE AM/OOJ" SortExpression="Col12">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col13" HeaderText="CLOSE DECEAS" SortExpression="Col13">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col14" HeaderText="CLOSE INCOMP" SortExpression="Col14">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col15" HeaderText="CLOSE NOTDD" SortExpression="Col15">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col16" HeaderText="CLOSE INACT" SortExpression="Col16">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col17" HeaderText="TRANS OUT" SortExpression="Col17">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col18" HeaderText="SHARED IN/OUT" SortExpression="Col18">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Col19" HeaderText="DEV CTR" SortExpression="Col19">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="EOM" HeaderText="EMO TOTAL" SortExpression="EOM">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression ="CreateDate" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Init EOM">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Reload">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md2" ID="hy_edit2" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
				</asp:datagrid>
                    <div id="TotalInfo" align="left" runat="server">
                        <br />
		                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Total" runat="server" Text=""></asp:Label><br />	
                    </div>
			</div>
		</form>
	</body>
</html>

