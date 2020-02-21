<%@ Page Language="C#" Inherits="Virweb2.FormList.FormTimecardList" Codebehind="FormTimecardList.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self" />
    <title>:: Non-exempt Timecard List:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    <!--
        function RefreshMyData()    
        {         
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.FormTimeCard.submit(); 
          window.focus();   
        }

        function back_click() {
          document.location.replace('../WebList/WebForms.aspx');
        }
     //-->   
    </script>
</head>
<body onload="onloadsizechg(110);" onresize="onloadsizechg(110);">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="FormTimeCard" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
		<div align="center" style="WIDTH:100%">  
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	       <tr style="height: 30px; background-color: #EAF4FF">
             <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
             </td>
             <td align="left" valign="middle" width="60%">
		        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" >Non-exempt TimeCard</asp:label>
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
             <td colspan="3" style="background-color:#137AC5"></td> <!-- #AAFFC4-->
           </tr>         
           </table>
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
            <tr>
		        <td height="5px" ></td>
		    </tr>
            <tr style="height: 22px;">
                <td align="left">
                     <asp:Label ID="Label1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;<b>Select Year:</b></asp:Label>&nbsp;&nbsp;&nbsp;
                     <asp:dropdownlist id="year" runat="server" Width="100" 
                        OnSelectedIndexChanged="SearchYear_SelectedIndexChanged" AutoPostBack="true">
                       <asp:ListItem Value="" Selected></asp:ListItem>
					   <asp:ListItem Value="2010">2010</asp:ListItem>                             
					   <asp:ListItem Value="2011">2011</asp:ListItem>
					   <asp:ListItem Value="2012">2012</asp:ListItem>
					   <asp:ListItem Value="2013">2013</asp:ListItem>
					   <asp:ListItem Value="2014">2014</asp:ListItem>
		             </asp:dropdownlist>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		                 
		             <asp:Label ID="TitleGroup" runat="server"><b>Please Select Group:</b></asp:Label>&nbsp;&nbsp;&nbsp;
				     <asp:dropdownlist id="GroupList" runat="server"
						   DataValueField="GroupID" DataTextField="GroupName" Height="20" Width="200"
						   OnSelectedIndexChanged="btnSearch_Click" AutoPostBack="true">
			         </asp:dropdownlist>
                </td>
            </tr> 
		    <tr>
		        <td height="2px" ></td>
		    </tr>
            <tr style="height: 22px;">
                <td align="left">
                     <asp:Label ID="Titleperiod" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;<b>Select Timecard Period:</b></asp:Label>&nbsp;&nbsp;&nbsp;
            	     <asp:dropdownlist id="payrollperiod" runat="server" 
					     DataValueField="payrollID" DataTextField="payrolltime" Height="25" Width="270" 
					     OnSelectedIndexChanged="btnSearch_Click" AutoPostBack="true">
		             </asp:dropdownlist>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:button id="btnClosePeriod" Runat="server" Text="Close Period" style="width:140px" CssClass="buttonbluestyle" onclick="btnClosePeriod_Click"></asp:button>
                </td>
            </tr> 
		    <tr>
		        <td height="2px" ></td>
		    </tr>
            <tr style="height: 22px;">
                <td align="left">
                     <asp:Label ID="Titledate1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;<b>Search Timecard period with start date:</b> From</asp:Label>&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="txtStartDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"  TabIndex="-1">
                     </asp:TextBox>                        
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Titledate2" runat="server">To</asp:Label>&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="txtEndDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" TabIndex="-1">
                     </asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:button id="btnSearchDate" Runat="server" Text="Search" style="width:100px" CssClass="buttonbluestyle" onclick="btnSearch_Click"></asp:button>
                </td>
            </tr> 
            <tr>
		        <td height="2px" ></td>
		    </tr>              
        </table>
        </div>		
		<div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;overflow: auto ">
			<asp:datagrid id="dg_timecard" runat="server" AllowPaging="False" CssClass="grd_body" 
				Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                </HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>              
                    <asp:BoundColumn DataField="timecardid" HeaderText="timecardid" Visible="False" ></asp:BoundColumn> 
                    <asp:BoundColumn DataField="employeeid" HeaderText="ID" Visible="True" ></asp:BoundColumn>
                    <asp:BoundColumn DataField="period" HeaderText="period" Visible="False" ></asp:BoundColumn>  
                    <asp:BoundColumn DataField="employeename" HeaderText="Name" SortExpression="employeename">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>  
                    <asp:BoundColumn DataField="startdate" HeaderText="Period Start" SortExpression="startdate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="enddate" HeaderText="Period End" SortExpression="enddate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="submitdate" HeaderText="Submit Date" SortExpression="submitdate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="closedate" HeaderText="Close Date" SortExpression="closedate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="statusstr" HeaderText="Status" SortExpression="statusstr">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="payhour" HeaderText="Regular Hours" SortExpression="payhour">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="sickhour" HeaderText="Sick Hours" SortExpression="sickhour">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="personalhour" HeaderText="Personal Hours" SortExpression="personalhour">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="vacationhour" HeaderText="Vacation Hours" SortExpression="vacationhour">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="otherhour" HeaderText="Kincare Sick" SortExpression="otherhour">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="overhour" HeaderText="Overtime Hours" SortExpression="overhour">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="createdate" HeaderText="Create Date" SortExpression="createdate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="View/Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>                 
                </Columns>
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
