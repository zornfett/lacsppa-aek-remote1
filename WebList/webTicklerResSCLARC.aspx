<%@ Page Language="C#" Inherits="Virweb2.WebList.webTicklerResSCLARC" Codebehind="webTicklerResSCLARC.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>::Vendor Tickler List::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
	    function save_click() {
	        NoCreateIDNotes();
	        return true;
	    }
	    var resourceid = "";
	    var nextdate = "";
	    var report = "";
	    var basemonth = "";
	    var ippnum = "";
	    var cmid = "";
	    function setItemValues(inresourceid,innextdate,inreport,inbasemonth,inippnum,incmid) {
	        resourceid = inresourceid;
	        nextdate = innextdate;
	        report = inreport;
	        basemonth = inbasemonth;
	        ippnum = inippnum;
	        cmid = incmid;
	    }

        function checkfillin(event, control)
        {
            var curid=control.id;
            var curpos=-1;
            var monitorcontrol;
            //alert(curid);
            curpos = curid.indexOf("tk_date_report_complete");
            if (curpos>0)
            {
               monitorcontrol = document.getElementById(curid.substring(0,curpos) + "tk_date_appointment");
               if (monitorcontrol.value == "")
               {
                  alert("Please enter the date for QA Monitoring before enter the Complete Date");
                  return false;
               }
            }
            showcalendarsubmit(event, control);
        }

	    function submitcalendar(boxid) {
            if (document.TicklerList.AllowChgA.value == "Y")
               return;

	        var inputdate = boxid.value;
	        var curid = boxid.id;
            var MonitorDate = "", FollowupDate = "", CompDate = "";
            var curpos = -1;
            curpos = curid.indexOf("tk_date_appointment");
            if (curpos>=0)
               MonitorDate = inputdate;
            else
            {
               // Only generate IDNote for Visit Date
               return;
               /*
               curpos = curid.indexOf("tk_date_meeting");
               if (curpos>=0)
                  FollowupDate = inputdate;
               else
               {
                  curpos = curid.indexOf("tk_date_report_complete");
                  if (curpos>=0)
                     CompDate = inputdate;
               }
               */
            }

	        document.location.replace("../WebList/webResIDNotesInfo.aspx?type=add&ResourceId=" + resourceid + "&IDNotesType=" + document.forms[0].IDNotestype.value +
                    "&IDNotesTemplate=" + document.forms[0].IDNotestemplate.value + "&tckresourceid=" + resourceid + "&tcknextdate=" + nextdate + "&tckreport=" +
                    report + "&tckbasemonth=" + basemonth + "&tckippnum=" + ippnum + "&tckcmid=" + cmid + 
                    "&tckMonitorDate=" + MonitorDate + "&tckFollowupDate=" + FollowupDate + "&tckCompDate=" + CompDate);
	    }

        function ChangeBaseMonth(resourceid, index) {
            popupDialogSmall("webTicklerResSCLARCBaseMon.aspx?resourceid=" + resourceid +"&index=" + index,
                       "webTicklerResSCLARCBaseMon");
            return false;
        }

        function UpdateBaseMonth(index, basemonval) {
            /*
            index = index + 2;
            if (index < 10) 
                document.getElementById("dg_tickler_ctl0" + index + "_base_month").value = basemonval;
            else
                document.getElementById("dg_tickler_ctl" + index + "_base_month").value = basemonval;
            */
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.TicklerList.submit();
            window.focus();   
        }

	    function display_resourceinfo(resourceid) {
	    //    var url = "../WebList/webResourceInfo.aspx?r_resource_id=" + resourceid +"&popup=1";
	    //    popupDialogWide(url);
	    }

        function print_click() {  
            var UserID = document.TicklerList.UserID.value.toString();
            var UserAct = document.TicklerList.UserAct.value.toString();
            var yer = document.TicklerList.yer.value.toString();
            var mon = document.TicklerList.mon.value.toString();
            var CompItemsStat = document.TicklerList.CompItemsStat.value.toString();
            var GroupID = document.TicklerList.GroupID.value.toString();
            var OwnRpt = document.TicklerList.OwnRpt.value.toString();
            var url = "PrintWebTicklerResSCLARC.aspx?UserID=" + UserID + "&yer=" + yer + "&mon=" + mon +
            "&CompItemsStat=" + CompItemsStat + "&GroupID=" + GroupID +"&OwnRpt=" + OwnRpt +"&UserAct=" + UserAct;
            winhref(url, "PrintWebTicklerSCLARC");
        }
        
    </script> 
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);" onunload="CreateIDNotes('Tickler');">
<!--<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);"> --> 
    <script type="text/JavaScript" src="../js/calendar.js"></script>
	<form id="TicklerList" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" value="Y" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
    <input type="hidden" name="AllowChgA" id="AllowChgA" value="" runat="server" />
    <input type="hidden" name="AllowChgM" id="AllowChgM" value="" runat="server" />
    <input type="hidden" name="UserID" id="UserID" value="" runat="server" />
    <input type="hidden" name="yer" id="yer" value="" runat="server" />
    <input type="hidden" name="mon" id="mon" value="" runat="server" />
    <input type="hidden" name="CompItemsStat" id="CompItemsStat" value="" runat="server" />
    <input type="hidden" name="GroupID" id="GroupID" value="" runat="server" />
    <input type="hidden" name="OwnRpt" id="OwnRpt" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save" Visible="false"
                OnClientClick="return save_click();" OnClick="btnEdit_Click">
            </asp:ImageButton>
            &nbsp;
            <input type="image" id="btnMap" runat="server" alt="Map" style="width: 25px;height:25px"  
                src="../img/map.gif" title="Map" visible="false"
                onclick="javascript:display_resourcemap();" />
            <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px;
                height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
            &nbsp;
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Vendor Tickler List:</asp:label>
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
       <table class="table_common" cellspacing="0" cellpadding="0">
            <tr class="tr_common">
                <td align="left" style="width:160px">Please select the year:</td>    
                <td align="left" style="width:60px">
                     <asp:dropdownlist id="drpyear" runat="server" Width="100px" onchange="NoCreateIDNotes();"
                        OnSelectedIndexChanged="drpmonth_SelectedIndexChanged" AutoPostBack="true">
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
                <td align="left" style="width:80px">month:</td>    
                <td align="left" style="width:100px">
                    <asp:dropdownlist id="drpmonth" runat="server" Width="100" onchange="NoCreateIDNotes();"
                        OnSelectedIndexChanged="drpmonth_SelectedIndexChanged" AutoPostBack="true">
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
                </td>  
                <td style="width:100px"></td>
                <td align="left" style="width:300px">
                    <asp:CheckBox ID="CompItems" runat="server" Text="Include Completed Items" onchange="NoCreateIDNotes();"
                         OnCheckedChanged="compitems_CheckedChanged" AutoPostBack="true" /></b> 
                </td>            
            </tr>
            <tr>
                <td colspan="6" height="5">
                </td>
            </tr>
       </tabe>
       <table class="table_common" cellspacing="0" cellpadding="0">
            <tr class="tr_common">
		         <td align="left" style="width:160px">Please Select Group:</td>
		         <td style="width: 550px">
					  <asp:dropdownlist id="GroupList" runat="server" OnSelectedIndexChanged="grouplist_SelectedIndexChanged"
							   DataValueField="GroupID" DataTextField="GroupName" Height="20" Width="220" AutoPostBack=true>
				      </asp:dropdownlist>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:dropdownlist id="UserList" runat="server"
							   DataValueField="employeeID" DataTextField="employeeName" Height="20" Width="220">
				      </asp:dropdownlist>
				 </td>
				 <td style="width:100px">
				     <asp:button id="btnSearch" Runat="server" Text="Search" style="width:80px" CssClass="buttonbluestyle" onclick="btnSearch_Click"></asp:button>
                 </td>
                 <td></td>
		    </tr>
        </table>
        <br />
		<asp:datagrid id="dg_tickler" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
		        AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
		  <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
		  <ItemStyle CssClass="grd_itemborder"></ItemStyle>
		  <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
		  <FooterStyle CssClass="grd_fsitem"></FooterStyle>
		  <Columns>
		  <asp:BoundColumn DataField="r_resource_id" HeaderText="ResourceID"  Visible="false"></asp:BoundColumn>
		  <asp:BoundColumn DataField="date_next_due" HeaderText="NextDue" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>
		  <asp:BoundColumn DataField="report" HeaderText="Report"  Visible="false"></asp:BoundColumn>
		  <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor"  Visible="false"></asp:BoundColumn>
          <asp:BoundColumn DataField="tk_case_manager" HeaderText="EnterBy"  Visible="false"></asp:BoundColumn>
          <asp:BoundColumn DataField="link_duedate" HeaderText="LinkDueDate" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>
		  <asp:BoundColumn DataField="link_report" HeaderText="LinkReport"  Visible="false"></asp:BoundColumn>
		  <asp:TemplateColumn HeaderText="">
			<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			<ItemTemplate>
                  <table class="table_inside" cellspacing="0" cellpadding="0">
                     <tr><td>
                      <table class="table_inside" cellspacing="0" cellpadding="0">
                      <tr class="tr_common">
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 150px" class="td_label" >
                          <b>Vendor#</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 350px" class="td_label" >
                          <b>Vendor Name:</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width:150px" class="td_label" >
                          <b>Vendored Date:</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 150px" class="td_label" >
                          <b>Service#</b>
                        </td>
                        <td style="width:5px">
                        </td>
                      </tr>
                      <tr class="tr_common">
                        <td style="width:5px">
                        </td>
                        <td style="width: 150px" align="left" class="td_unline">
                          <asp:label ID="ResourceID" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "ResourceID") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 350px" align="left" class="td_unline">
                          <asp:label ID="r_resource_name" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "r_resource_name") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 150px" align="left" class="td_unline">
                          <asp:label ID="r_vendor_register_date" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "r_vendor_register_date", "{0:d}") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 120px" align="left" class="td_unline">
                          <asp:label ID="r_service_code" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "r_service_code") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                      </tr> 
                      </table>
                     </td></tr>
                     <tr style="height:5px">
                       <td>
                       </td>
                     </tr>
                     <tr><td>
                      <table class="table_inside" cellspacing="0" cellpadding="0">
                      <tr class="tr_common">
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 220px" class="td_label" >
                          <b>Report:</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 80px" class="td_label" >
                          <b>Base:</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 120px" class="td_label" >
                          <b>Last Tickler:</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 150px" class="td_label" >
                          <b>QA Monitoring/Follow-Up:</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 150px" class="td_label" >
                          <b>Next Follow-up</b>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td align="left" style="width: 150px" class="td_label" >
                          <b>Complete</b>
                        </td>
                        <td style="width:5px">
                        </td>
                      </tr>
                      <tr class="tr_common">
                        <td style="width:5px">
                        </td>
                        <td style="width: 220px" align="left" class="td_unline">
                          <asp:label ID="ReportName" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "ReportName") %>'>
                          </asp:label>
                          <asp:label ID="IPPNum" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "IPPNum") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 80px" align="left" class="td_unline">
                          <asp:HyperLink NavigateUrl="#herf_md" ID="BaseMonth" Runat="server" CssClass="infaceText" Font-Underline=true 
                           Text='<%# DataBinder.Eval(Container.DataItem, "BaseMonth") %>'></asp:HyperLink> 
                          <asp:label ID="base_month" runat="server" Visible="false"
                           Text='<%# DataBinder.Eval(Container.DataItem, "base_month") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 120px" align="left" class="td_unline">
                          <asp:label ID="tk_date_prior" runat="server" CssClass="infaceText"
                           Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_prior", "{0:d}") %>'></asp:label>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 150px" align="left" class="td_unline">
                          <asp:Textbox ID="tk_date_appointment" runat="server" CssClass="inface" 
                           onclick='<%# GetPopupScript() %>' onfocus='<%# GetPopupScript() %>' 
                           Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_appointment", "{0:d}") %>' width="120px">
                          </asp:TextBox>
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 150px" align="left" class="td_unline">
                          <asp:Textbox ID="tk_date_meeting" runat="server" CssClass="inface" 
                           onclick='<%# GetPopupScript() %>' onfocus='<%# GetPopupScript() %>' 
                           Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_meeting", "{0:d}") %>' Width="120px">
                          </asp:TextBox> 
                        </td>
                        <td style="width:5px">
                        </td>
                        <td style="width: 150px" align="left" class="td_unline">
                          <asp:Textbox ID="tk_date_report_complete" runat="server" CssClass="inface" 
                           onclick='<%# GetPopupScript() %>' onfocus='<%# GetPopupScript() %>' 
                           Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_report_complete", "{0:d}") %>' Width="120px">
                          </asp:TextBox>
                        </td>
                        <td style="width:5px">
                        </td>
                      </tr>
                      </table> 
                     </td></tr>
                     <tr style="height:10px">
                       <td>
                       </td>
                     </tr>
                  </table>
		      </ItemTemplate>
		  </asp:TemplateColumn>
		  </Columns>
		</asp:datagrid>
	</div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</HTML>

