<%@ Page Language="C#" Inherits="Virweb2.WebList.webEventList" Codebehind="webEventList.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
		<title>::Information Changes Event::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		
		<script type="text/JavaScript" src="../js/common.js"></script>
		<script language="javascript">
		<!--
		  function search_click()
		  {
		     if (IsDate(document.TraceList.sStart.value, false) != "true") {
		         alert("Please input Begin Date!");
                 document.TraceList.sStart.focus();
                 return false;          
             }
		     
		     if (IsDate(document.TraceList.sEnd.value, false) != "true") {
		        alert("Please input End Date!");
		        document.TraceList.sEnd.focus();
                return false;          
             }
		     
		     return true;
		  }
		  
		  function print_click()
          {
            var tablename = document.TraceList.tablename.value.toString();
            var loginID = document.TraceList.loginID.value.toString();
            var keyID = document.TraceList.keyID.value.toString();
            var StartDate = document.TraceList.StartDate.value.toString();
            var EndDate = document.TraceList.EndDate.value.toString();
            var OrderBy = document.TraceList.OrderBy.value.toString();
            var UserAct = document.TraceList.UserAct.value.toString();            
            winhref("PrintTraceListReport.aspx?tablename="+tablename+"&loginID="+loginID+"&keyID="+keyID+"&StartDate="+StartDate+"&EndDate="+EndDate+"&OrderBy="+OrderBy+"&UserAct="+UserAct,"PrintTraceList");          
          }
		//-->
		</script>
	</head>
	<body onload="onloadsizechg(175);" onresize="onloadsizechg(175);">
	    <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="TraceList" method="post" runat="server">
		    <input type="hidden" name="tablename" id="tablename" value="" runat="server" />
		    <input type="hidden" name="loginID" id="loginID" value="" runat="server" />
		    <input type="hidden" name="keyID" id="keyID" value="" runat="server" />
		    <input type="hidden" name="StartDate" id="StartDate" value="" runat="server" />
		    <input type="hidden" name="EndDate" id="EndDate" value="" runat="server" />
		    <input type="hidden" name="OrderBy" id="OrderBy" value="" runat="server" />
		    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
            <div align="center" style="WIDTH:100%;">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('../weblist/webConsumerList.aspx');return false;" />          
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Document List:</asp:label>
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
            <div align="center" style="WIDTH:100%">  
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
               <tr class="tr_common">   
			     <td colspan="5" align=left style="font-weight: bold">
                   Please enter search criteria and click "Search Event" button
                 </td>
                 <td colspan="4" align=left>
                    <asp:Button ID="btnSearch" Runat="server" Text="Search Event" CssClass="buttonbluestyle" OnClick="btnSearch_Click"></asp:Button>
                    <input type="reset" name="btn_reset" id="btn_reset" value="Reset" Class="buttonbluestyle" runat="server" />
                    <input type="button" id="btnPrint" value="Print" style="width: 60px;" Class="buttonbluestyle" onclick="javascript:print_click();" runat="server" />
                 </td>
               </tr>
               <tr>  
                 <td colspan="9" height="10px">
                 </td>
               </tr>  
		       <tr class="tr_common">
		         <td style="width: 150px" class="td_label"><b>Type:</b></td>
		         <td width="5">
		         <td style="width: 150px">
		         	<asp:dropdownlist id="sTable" runat="server" DataTextField="TextField" DataValueField="ValueField" 
                             CssClass="infaceDrop">					
					</asp:dropdownlist>
				 </td>
				 <td style="width: 150px" class="td_label"><b>Changed By:</b></td>
				 <td width="5"></td>
		         <td class="td_unline" style="width: 150px">
		            <asp:DropDownList ID="sLogin" runat="server" DataValueField="employeeID" DataTextField="employeeName"
                             CssClass="infaceDrop">
                    </asp:DropDownList>
		         </td>
		         <td style="width: 150px">
		         </td>
		         <td style="height: 20px">
                 </td>
		         <td style="width: 150px">
		         </td>
		       </tr>
		       <tr> 
                 <td colspan="9" height="5px">
                 </td> 
		       </tr>
		       <tr class="tr_common">
		         <td style="width: 150px" class="td_label"><b>Log Start Date:</b></td>
		         <td width="5">
		         <td class="td_unline" style="width: 150px">
		            <asp:TextBox MaxLength="10" ID="sStart" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:TextBox>	
				 </td>
				 <td style="width: 150px" class="td_label"><b>Log End Date:</b></td>
				 <td width="5">
		         <td class="td_unline" style="width: 150px">
		            <asp:TextBox MaxLength="10" ID="sEnd" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:TextBox>		                     
		         </td>
		         <td></td>
		         <td></td>
		         <td></td>              
		       </tr> 
		       <tr> 
                 <td colspan="9" height="20px">
                 </td> 
		       </tr>  
		       </table>
            </div>
            <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
				<asp:datagrid id="dg_tracelist" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False"  AllowSorting="True">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem" ></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="TableName" HeaderText="Type" SortExpression="TableName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="KeyID" HeaderText="UCI" SortExpression="KeyID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="ConsumerName" HeaderText="Consumer Name" SortExpression="ConsumerName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="Op_DT" HeaderText="Changed D/T" SortExpression="Op_DT" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="Update_Field" HeaderText="Field" SortExpression="Update_Field" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="old_value" HeaderText="Old Data" SortExpression="old_value" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="new_value" HeaderText="Changed Data" SortExpression="new_value" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
						<asp:BoundColumn DataField="LoginName" HeaderText="Changed By" SortExpression="LoginName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>
					</Columns>
					<PagerStyle Mode="NumericPages" Visible="True" CssClass="grd_paitem"  ></PagerStyle>
				</asp:datagrid>
			</div>
		</form>
	</body>
</html>


