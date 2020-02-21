<%@ Page Language="C#" Inherits="Virweb2.FormList.FormSCDcasStat" Codebehind="FormSCDcasStat.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <base target="_self"></base>
	<title>:::DCAS STATISTICS:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javaScript" src="../js/common.js"></script> 
    <script type="text/javascript">
    function ReGenerate()    
    {
      var myHdnReGenerateData = document.getElementById(<%= "'" + hdnReGenerate.ClientID + "'" %>);      
      if (confirm('Do you really want to regenerate the list? Regenerating the list will overwrite the data you saved before.'))
      { 
         myHdnReGenerateData.value = '1';
      }
      else
      {
         myHdnReGenerateData.value = '0';
      }        
    }

    function print_click()
    {
       var strMonth = document.DcasList.month.value;
       var strYear = document.DcasList.year.value;
       var chklist = document.DcasList.chSelectGroup.value;
       var url = "PrintFormSCDcasStat.aspx?year="+strYear+"&month="+strMonth+"&chklist="+chklist;
       winhref(url, 'PrintFormSCDcasStat');
    }
    </script>     
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);">
	<form id="DcasList" method="post" runat="server">
	   <asp:hiddenfield id="hdnReGenerate" runat="server" value="0" />
	   <asp:hiddenfield id="chSelectGroup" runat="server" value="" />
       <div align="center" style="WIDTH:100%;">
		  <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	         <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	           <td align="left" valign="middle" width="25%">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                     src="../img/print.ico" title="Print" visible="false"
                     onclick="javascript:print_click();return false;" />
               </td>  
               <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">DCAS Statistics</asp:label>
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
	           <td width="400" height="20" style="width: 400px">
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
					   <asp:ListItem Value="2010">2010</asp:ListItem>
					   <asp:ListItem Value="2011">2011</asp:ListItem>
					   <asp:ListItem Value="2012">2012</asp:ListItem>
					   <asp:ListItem Value="2013">2013</asp:ListItem>
					   <asp:ListItem Value="2014">2014</asp:ListItem>
					   <asp:ListItem Value="2015" seleced>2015</asp:ListItem>
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
			     <asp:button id="btnSearch" Runat="server" Text="Search" style="width:100px" CssClass="buttonbluestyle" onclick="btnSearch_Click"></asp:button>
			     &nbsp;&nbsp;&nbsp;&nbsp;
			     <asp:button id="btnReGenerate" Runat="server" Text="ReGenerate" style="width:100px" CssClass="buttonbluestyle" OnClientClick="ReGenerate();" Visible="false"></asp:button>
               </td>
	         </tr>
	         <tr>
               <td colspan="5" height="5">
               </td>
             </tr>
	     </table>
	   </div>	
       <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
		    <asp:datagrid id="dg_scdcas" runat="server" PageSize="100" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True">
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<EditItemStyle ForeColor="#004040" BackColor="Lime"></EditItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
				<Columns>
					<asp:EditCommandColumn ButtonType="PushButton" UpdateText="Update" CancelText="Cancel" EditText="Edit">
					   <ItemStyle HorizontalAlign="Center"></ItemStyle>
				    </asp:EditCommandColumn>
				    <asp:BoundColumn DataField="monthyear" HeaderText="Month/Year" Visible="False" ReadOnly=true></asp:BoundColumn>
				    <asp:BoundColumn DataField="groupid" HeaderText="GroupID" Visible="False" ReadOnly=true></asp:BoundColumn>
				    <asp:BoundColumn DataField="unit" HeaderText="UNIT" SortExpression="unit" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
			        <asp:BoundColumn DataField="SpanishStaff" HeaderText="SPANISH <br> STAFF" SortExpression="SpanishStaff">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
				    <asp:BoundColumn DataField="EnglishStaff" HeaderText="ENGLISH <br> STAFF" SortExpression="EnglishStaff">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
				    <asp:BoundColumn DataField="TotalStaff" HeaderText="TOTAL <br> STAFF" SortExpression="TotalStaff" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
				    <asp:BoundColumn DataField="SpanishConsumer" HeaderText="SPANISH <br> CONSUMERS" SortExpression="SpanishConsumer" HeaderStyle-HorizontalAlign="Center">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="SpanishRate" HeaderText="" SortExpression="SpanishRate" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
				    <asp:BoundColumn DataField="EnglishConsumer" HeaderText="ENGLISH <br> CONSUMERS" SortExpression="EnglishConsumer" HeaderStyle-HorizontalAlign=Center >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="EnglishRate" HeaderText="" SortExpression="EnglishRate" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="WaiverCase" HeaderText="WAIVER" SortExpression="WaiverCase">
                        <ItemStyle HorizontalAlign="center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="OtherCase" HeaderText="OTHER" SortExpression="OtherCase">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
				    <asp:BoundColumn DataField="TotalConsumer" HeaderText="TOTAL <br> CONSUMERS" SortExpression="TotalConsumer" ReadOnly=true HeaderStyle-HorizontalAlign=Center>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="TotalRate" HeaderText="" SortExpression="EnglishRate" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="TotalUnit" HeaderText="# OF<br>UNIT" SortExpression="TotalUnit" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="OutCompliance" HeaderText="OUT OF<br> COMPLIANCE" SortExpression="OutCompliance" ReadOnly=true HeaderStyle-HorizontalAlign=Center>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="OutRate" HeaderText="" SortExpression="OutRate" ReadOnly=true>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="TotalTick" HeaderText="" SortExpression="TotalTick" ReadOnly=true Visible=false >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundColumn>		
                    <asp:TemplateColumn HeaderText="Select">
						<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						<ItemTemplate>
                             <asp:CheckBox ID="chkSelect" runat="server" Checked=true />
						</ItemTemplate>
					</asp:TemplateColumn>				    
				</Columns>
                <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
			</asp:datagrid>
	      <br />
	      <br />
		  <table cellSpacing="0" cellPadding="0" align="center" border="2" frame=border >
             <tr>
          	    <td colspan=4 align=left>
			     <asp:button id="btnRefresh" Runat="server" Text="Refresh" style="width:100px" CssClass="buttonbluestyle" onclick="btnRefresh_Click"></asp:button>
                </td>
             </tr>
		     <tr>
                <td height="20"><b>&nbsp;&nbsp;DEPARTMENT OVERALL TOTAL:&nbsp;&nbsp;</b></td>
                <td height="20"><b>&nbsp;&nbsp;Current Staff&nbsp;&nbsp;</b></td>
                <td height="20"><b>&nbsp;&nbsp;Current Consumer&nbsp;&nbsp;</b></td>
                <td height="20"><b>&nbsp;&nbsp;Ratio&nbsp;&nbsp;</b></td>
                <td height="20"><b>&nbsp;&nbsp;Need Staff&nbsp;&nbsp;</b></td>
             </tr>  
             <tr>
                <td height="20">  Total:  </td>
                <td height="20"><asp:Label ID="TotalStaff" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="TotalConsumer" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="TotalRatio" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="TotalNeed" runat="server" ></asp:Label></td>
             </tr>
             <tr>
                <td height="20">  English-Speaking:  </td>
                <td height="20"><asp:Label ID="EnglishStaff" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="EnglishConsumer" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="EnglishRatio" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="EnglishNeed" runat="server" ></asp:Label></td>
             </tr>
             <tr>
                <td Height="20">  Spanish-Speaking:  </td>
                <td height="20"><asp:Label ID="SpanishStaff" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="SpanishConsumer" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="SpanishRatio" runat="server" ></asp:Label></td>
                <td height="20"><asp:Label ID="SpanishNeed" runat="server" ></asp:Label></td>
             </tr>
             <tr>
                <td colspan=5 height="20"></td>
             </tr>
             <tr>
                <td height="20">  Waiver (62/1) Total:  </td>
                <td colspan=4 height="20"><asp:Label ID="WaiverTotal" runat="server" ></asp:Label></td>
             </tr>
             <tr>
                <td height="20">  Other (66/1) Total:  </td>
                <td colspan=4 height="20"><asp:Label ID="OtherTotal" runat="server" ></asp:Label></td>
             </tr>
             <tr>
                <td height="20">  Total Consumers:  </td>
                <td colspan=4 height="20"><asp:Label ID="ConsumerTotal" runat="server" ></asp:Label></td>
             </tr>
             <tr>
                <td height="20">  Total Staffing needed:  </td>
                <td colspan=4 height="20"><asp:Label ID="StaffNeed" runat="server" ></asp:Label></td>
             </tr>
		  </table>
		</div>
	</form>
</body>
</html>
