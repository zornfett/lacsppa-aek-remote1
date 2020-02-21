<%@ Page Language="C#" Inherits="Virweb2.AdmPage.AdmTraceLogInfo" Codebehind="AdmTraceLogInfo.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <title>User Login Tracking</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">		
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
		<!--
		  function Print_Report()
		  {
		      var strFromDate = JTrim(document.getElementById("sStart").value)
		      if (strFromDate == "") {
		          alert("Please input Start Date!");
		          document.getElementById("sStart").focus();
		          return false;
		      }
		      var strToDate = JTrim(document.getElementById("sEnd").value)
		      if (strToDate == "") {
		          alert("Please input End Date!");
		          document.getElementById("sEnd").focus();
		          return false;
		      }

		      var userid = document.getElementById("ddlist_userinfo").value;

		      var rbltable = document.getElementById("rbt_rpttype");
		      var rbs = rbltable.getElementsByTagName("INPUT");
		      for (var i = 0; i < rbs.length; i++) {
		          if (rbs[i].checked) {
		              var strRptType = rbs[i].value;
		          }
		      }
		      winhref("../weblist/PrintWebSupManageRpt.aspx?userid="+ userid +"&fromdate=" + strFromDate + "&todate=" + strToDate + "&rpttype=" + strRptType, "PrintWebSupManageRpt");
		  }
		//-->
		</script>

</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <script language="javascript" type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
       <div algin="left" style="WIDTH:100%;">
       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">User List:</asp:label>
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
        <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" width="100%">
            <tr>
		        <td colspan="12" height="5px" ></td>
		    </tr>
            <tr class="tr_common">
                <td colspan="12" align="center" style="color: red; font-weight: bold">
                    USER LOGIN TRACE
                </td>
            </tr>
            <tr>
                <td colspan="12" height="10px">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="5" align="left" style="font-weight: bold">
                    Please enter search criteria and click view button
                </td>
                <td colspan="6" align="left">
                    <input type="button" name="btnSearch" id="btnSearch" value="View" class="buttonbluestyle" style="width:60px;"   
                          onclick="javascript:Print_Report();" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" name="btn_reset" id="btn_reset" value="Reset" Class="buttonbluestyle"
                        runat="server" onserverclick="btn_reset_ServerClick" />
                </td>
                <td width="200px"></td>
            </tr>
            <tr>
                <td colspan="12" height="10px">
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width: 100px"><b>User Name:</b></td>
                <td width="5px"></td>
                <td class="td_unline" style="width: 200px">
                    <asp:DropDownList ID="ddlist_userinfo" runat="server" DataValueField="employeeid"
                        DataTextField="loginname" CssClass="infaceDrop" Enabled="false">
                    </asp:DropDownList>
                </td>
                <td width="10px"></td>
                <td class="td_label" style="width: 100px"><b>Start Date:</b></td>
                <td width="5px"></td>
                <td class="td_unline" style="width: 120px">
                    <asp:TextBox ID="sStart" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  
                       runat="server"></asp:TextBox>
                </td>
                <td width="10px"></td>
                <td class="td_label" style="width: 100px"><b>End Date:</b></td>
                <td width="5px"></td>
                <td class="td_unline" style="width: 120px">
                    <asp:TextBox ID="sEnd" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  
                       runat="server"></asp:TextBox>
                </td>
                <td width="200px"></td>
            </tr>
            <tr>
                <td colspan="12" height="20px">
                </td>
            </tr>
            <tr align="left" style="height: 60px">
                <td class="td_label" valign="top" style="width: 100px"><b>Selet Report:</b></td>                
                <td colspan="10">
                    <asp:RadioButtonList ID="rbt_rpttype" runat="server" Width="320px">
                        <asp:ListItem Selected="True" Value="6"><b>User Login Summary</b></asp:ListItem>
                        <asp:ListItem Value="1"><b>User Login Time Details</b></asp:ListItem>
                        <asp:ListItem Value="5"><b>User Average Login Time</b></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td></td>
            </tr>
        </table>
        </div>		
    </form>
</body>
</html>
