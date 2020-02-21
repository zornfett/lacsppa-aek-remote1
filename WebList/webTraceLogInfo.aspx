<%@ Page Language="C#" Inherits="Virweb2.WebList.webTraceLogInfo" Codebehind="webTraceLogInfo.aspx.cs" AutoEventWireup="True" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <title>User Login Tracking</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">		
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
		<!--
		  function search_click()
		  {
		     var searchbegindt=document.form1.sStart.value;
		     if (JTrim(searchbegindt)!="")
		     {
		        if (IsDate(JTrim(searchbegindt),false)!="true") {
                     document.form1.sStart.focus();
                     return false;          
                 }
		     }
		     var searchenddt=document.form1.sEnd.value;
		     if (JTrim(searchenddt)!="")
		     {
		        if (IsDate(JTrim(searchenddt),false)!="true") {
                     document.form1.sEnd.focus();
                     return false;          
                 }
		     }
		     return true;
		  }
		//-->
		</script>

</head>
<body onload="onloadsizechg(150);" onresize="onloadsizechg(150);">    
    <script language="javascript" type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">  
        <div align="left" style="WIDTH:100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Trace Log Info</asp:Label>
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
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 25px;height:25px"  
                        src="../img/exit button.ico" title="Logout"
                        onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                    &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                <td colspan="3" style="background-color:#137AC5"></td> <!-- #AAFFC4-->
            </tr>         
        </table>
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
            <tr>
		        <td colspan="9" height="5px" ></td>
		    </tr>
            <tr>
                <td colspan="9" align="center" style="color: red; font-weight: bold">
                    User Login Tracking
                </td>
            </tr>
            <tr>
                <td colspan="9" height="10px">
                </td>
            </tr>
            <tr>
                <td colspan="5" align="left" style="font-weight: bold">
                    Please enter search criteria and select Search
                </td>
                <td colspan="4" align="left">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="buttonbluestyle"
                        OnClick="btnSearch_Click"></asp:Button>
                    <input type="button" name="btn_reset" id="btn_reset" value="Reset" Class="buttonbluestyle"
                        runat="server" onserverclick="btn_reset_ServerClick" />
                </td>
            </tr>
            <tr>
                <td colspan="9" height="10px">
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 100px" bgcolor="#9fb0f4" height="20"><b>User Name:</b></td>
                <td style="height: 20px" height="20" width="5">
                <td class="td_unline" style="width: 150px">
                    <asp:DropDownList ID="ddlist_userinfo" runat="server" DataValueField="employeeid"
                        DataTextField="loginname" Height="20" Width="120">
                    </asp:DropDownList>
                </td>
                <td align="right" style="width: 100px" bgcolor="#9fb0f4" height="20"><b>Start Date:</b></td>
                <td style="height: 20px" height="20" width="5">
                <td class="td_unline" style="width: 150px">
                    <asp:TextBox ID="sStart" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 100px" bgcolor="#9fb0f4" height="20"><b>End Date:</b></td>
                <td style="height: 20px" height="20" width="5">
                <td class="td_unline" style="width: 150px">
                    <asp:TextBox ID="sEnd" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="9" height="20px">
                </td>
            </tr>
        </table>
        </div>		
	    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;overflow: auto ">
            <asp:DataGrid ID="dg_tracelist" runat="server" PageSize="50" AllowPaging="True" CssClass="grd_body"
                Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head"></HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn DataField="LoginName" HeaderText="User Name" SortExpression="LoginName"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                    <asp:BoundColumn DataField="LoginDT" HeaderText="Login Time" SortExpression="LoginDT"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                    <asp:BoundColumn DataField="LogoutDT" HeaderText="Logout Time" SortExpression="LogoutDT"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                    <asp:BoundColumn DataField="dtpart" HeaderText=" How long" SortExpression="dtpart"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                </Columns>
                <PagerStyle Mode="NumericPages" Visible="True" CssClass="grd_paitem"></PagerStyle>
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
