<%@ Page Language="C#" Inherits="Virweb2.WebList.webTicklerSCLARC" CodeBehind="webTicklerSCLARC.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>::Tickler List::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">

    <style type="text/css">
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            background-color: black;
            z-index: 99;
            opacity: 0.8;
            filter: alpha(opacity=80);
            -moz-opacity: 0.8;
            min-height: 100%;
            width: 100%;
        }

        .loading {
            font-family: Arial;
            font-size: 10pt;
            //border: 5px solid #67CFF5;
            width: 200px;
            height: 100px;
            display: none;
            position: fixed;
            background-color: White;
            z-index: 999;
        }
    </style>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        function ShowProgress() {
            setTimeout(function () {
                var modal = $('<div />');
                modal.addClass("modal");
                //$('body').append(modal);
                var loading = $(".loading");
                loading.show();
                var top = Math.max($(window).height() / 2 - loading[0].offsetHeight/0.5 , 0);
                var left = Math.max($(window).width() / 2 - loading[0].offsetWidth/0.5 , 0);
                loading.css({ top: top, left: left });
            }, 200);
        }
        $('form').live("submit", function () {
            ShowProgress();
        });
    </script>


    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript">
        function save_click() {
            NoCreateIDNotes();
            return true;
        }
        var uci = "";
        var nextdate = "";
        var report = "";
        var basemonth = "";
        var ippnum = "";
        var cmid = "";
        function setItemValues(inuci, innextdate, inreport, inbasemonth, inippnum, incmid) {
            uci = inuci;
            nextdate = innextdate;
            report = inreport;
            basemonth = inbasemonth;
            ippnum = inippnum;
            cmid = incmid;
        }

        function checkfillin(event, control) {
            var curid = control.id;
            var curpos = -1;
            var meetcontrol;
            //alert(curid);
            curpos = curid.indexOf("tk_date_report_complete");
            if (curpos > 0) {
                meetcontrol = document.getElementById(curid.substring(0, curpos) + "tk_date_meeting");
                if (meetcontrol.value == "") {
                    alert("Please enter the date for Face To Face Meeting before enter the Complete Date");
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
            var AppDate = "", MeetDate = "", CompDate = "";
            var curpos = -1;
            curpos = curid.indexOf("tk_date_appointment");
            if (curpos >= 0)
                AppDate = inputdate;
            else {
                curpos = curid.indexOf("tk_date_meeting");
                if (curpos >= 0)
                    MeetDate = inputdate;
                else {
                    curpos = curid.indexOf("tk_date_report_complete");
                    if (curpos >= 0)
                        CompDate = inputdate;
                }
            }

            document.location.replace("../WebList/webIDNotesInfo.aspx?type=add&c_key=" + uci + "&IDNotesType=" + document.forms[0].IDNotestype.value +
                    "&IDNotesTemplate=" + document.forms[0].IDNotestemplate.value + "&tckuci=" + uci + "&tcknextdate=" + nextdate + "&tckreport=" +
                    report + "&tckbasemonth=" + basemonth + "&tckippnum=" + ippnum + "&tckcmid=" + cmid +
                    "&tckAppDate=" + AppDate + "&tckMeetDate=" + MeetDate + "&tckCompDate=" + CompDate);
        }

        function display_consumermap() {
            var select_consumer = document.getElementById("select_c_key").value;
            if (select_consumer == "") {
                PopupMessage(3);
                return;
            }
            else {
                popupDialogWithWindow("webConsumerMapInfo.aspx?select_consumer=" + select_consumer.toString());
            }
        }

        function printAppLetter(uci, duedate, report, index) {
            index = index + 2;
            var apptdate, appttime, apptloc;
            if (index < 10) {
                apptdate = document.getElementById("dg_tickler_ctl0" + index + "_tk_date_appointment").value;
                appttime = document.getElementById("dg_tickler_ctl0" + index + "_tk_time_appointment").value;
                apptloc = document.getElementById("dg_tickler_ctl0" + index + "_tk_location_appointment").value;
            }
            else {
                apptdate = document.getElementById("dg_tickler_ctl" + index + "_tk_date_appointment").value;
                appttime = document.getElementById("dg_tickler_ctl" + index + "_tk_time_appointment").value;
                apptloc = document.getElementById("dg_tickler_ctl" + index + "_tk_location_appointment").value;
            }

            if ((apptdate == "") || (appttime == "")) {
                PopupMessage(27);
                return false;
            }

            winhref("PrintWebTicklerApp.aspx?uci=" + uci + "&DueDate=" + duedate + "&Report=" + report + "&ApptDate=" + apptdate + "&ApptTime=" + appttime + "&ApptLoc=" + apptloc,
                       "PrintWebTicklerApp");
            return false;
        }

        function printCompLetter(uci, duedate, report, index) {
            index = index + 2;
            var compdate;
            if (index < 10) {
                //compdate = document.getElementById("dg_tickler_ctl0" + index + "_tk_date_report_complete").value;
                compdate = document.getElementById("dg_tickler_ctl0" + index + "_tk_date_meeting").value;
            }
            else {
                //compdate = document.getElementById("dg_tickler_ctl" + index + "_tk_date_report_complete").value;
                compdate = document.getElementById("dg_tickler_ctl" + index + "_tk_date_meeting").value;
            }

            if (compdate == "") {
                PopupMessage(27);
                return false;
            }

            winhref("PrintWebTicklerComp.aspx?uci=" + uci + "&DueDate=" + duedate + "&Report=" + report + "&CompDate=" + compdate,
                       "PrintWebTicklerComp");
            return false;
        }

        function ChangeBaseMonth(uci, index) {
            popupDialogSmall("webTicklerSCLARCBaseMon.aspx?uci=" + uci + "&index=" + index,
                       "webTicklerSCLARCBaseMon");
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

        function display_consumerinfo(key) {
            //var url = "../WebList/webConsumerInfoSCLARC.aspx?c_key=" + key + "&tabflag=3&popupw=1";
            var url = "../WebList/webConsumerInfo.aspx?c_key=" + key + "&tabflag=3&popupw=1";
            popupDialogWide(url);
        }

        function print_click() {
            var UserID = document.TicklerList.UserID.value.toString();
            var UserAct = document.TicklerList.UserAct.value.toString();
            var yer = document.TicklerList.yer.value.toString();
            var mon = document.TicklerList.mon.value.toString();
            var CompItemsStat = document.TicklerList.CompItemsStat.value.toString();
            var FaceItemsStat = document.TicklerList.FaceItemsStat.value.toString();
            var GroupID = document.TicklerList.GroupID.value.toString();
            var OwnRpt = document.TicklerList.OwnRpt.value.toString();
            var url = "PrintWebTicklerSCLARC.aspx?UserID=" + UserID + "&yer=" + yer + "&mon=" + mon +
            "&CompItemsStat=" + CompItemsStat + "&FaceItemsStat=" + FaceItemsStat + "&GroupID=" + GroupID + "&OwnRpt=" + OwnRpt + "&UserAct=" + UserAct;
            winhref(url, "PrintWebTicklerSCLARC");
        }

        function hideWaiting() {
            document.getElementById('waiting').style.visibility = 'hidden';
        }

    </script>
</head>
<body onload="hideWaiting();onloadsizechg(50);" onresize="onloadsizechg(50);" onunload="CreateIDNotes('Tickler');">
    <!--<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);"> -->
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="TicklerList" method="post" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
        <input type="hidden" name="IDNotespopup" id="IDNotespopup" value="Y" runat="server" />
        <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
        <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
        <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
        <input type="hidden" name="select_c_key" id="select_c_key" value="" runat="server" />
        <input type="hidden" name="AllowChgA" id="AllowChgA" value="" runat="server" />
        <input type="hidden" name="AllowChgM" id="AllowChgM" value="" runat="server" />
        <input type="hidden" name="UserID" id="UserID" value="" runat="server" />
        <input type="hidden" name="yer" id="yer" value="" runat="server" />
        <input type="hidden" name="mon" id="mon" value="" runat="server" />
        <input type="hidden" name="CompItemsStat" id="CompItemsStat" value="" runat="server" />
        <input type="hidden" name="FaceItemsStat" id="FaceItemsStat" value="" runat="server" />
        <input type="hidden" name="GroupID" id="GroupID" value="" runat="server" />
        <input type="hidden" name="OwnRpt" id="OwnRpt" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />

        <div id="waiting" style="position: absolute; left: 25px; top: 50px; width: 300px; height: 200px; overflow: auto; font-size: medium; vertical-align: middle;" align="center">
            <img src="../img/loading.gif" height="150px" />
            <font color="Green">Loading! Please wait !!!</font><br />
        </div>
        <div algin="left" style="width: 100%;">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
                    <td align="left" valign="middle" width="25%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Style="width: 25px; height: 25px"
                ImageUrl="../img/save.ico" ToolTip="Save" Visible="false"
                OnClientClick="return save_click();" OnClick="btnEdit_Click"></asp:ImageButton>
                        &nbsp;
            <input type="image" id="btnMap" runat="server" alt="Map" style="width: 25px; height: 25px"
                src="../img/map.gif" title="Map"
                onclick="javascript: display_consumermap();" />
                        <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px; height: 25px"
                            src="../img/print.ico" title="Print" onclick="javascript: print_click(); return false;" />
                        &nbsp;
                    </td>
                    <td align="left" width="60%">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Tickler List:</asp:Label>
                    </td>
                    <td align="left" width="15%">
                        <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px; height: 25px"
                            src="../img/supportdesk.ico" title="Support"
                            onclick="javascript: window.top.outsidelinks(1); return false;" />
                        &nbsp;
            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                src="../img/help.ico" title="Help"
                onclick="javascript: window.top.outsidelinks(2); return false;" />
                        &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px"
                src="../img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('../webLogout.aspx'); return false;" />
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 2px">
                    <td colspan="3" style="background-color: #137AC5"></td>
                </tr>
                <tr style="height: 8px">
                    <td colspan="3"></td>
                </tr>
            </table>
        </div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; height: 450px; overflow: auto">
            <table class="table_common" cellspacing="0" cellpadding="0">
                <tr class="tr_common">
                    <td align="left" style="width: 160px">Please select the year:</td>
                    <td align="left" style="width: 60px">
                        <asp:DropDownList ID="drpyear" runat="server" Width="100px">
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
                        </asp:DropDownList>
                    </td>
                    <td align="left" style="width: 80px">month:</td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="drpmonth" runat="server" Width="100">
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
                        </asp:DropDownList>
                    </td>
                    <td style="width: 20px"></td>
                    <td align="left" style="width: 450px">
                        <asp:CheckBox ID="CompItems" runat="server" Text="Include Completed Items" onchange="NoCreateIDNotes();"
                            OnCheckedChanged="compitems_CheckedChanged" AutoPostBack="true" /></b> 
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="FaceItems" runat="server" Text="No Face to Face Contact" onchange="NoCreateIDNotes();"
                        OnCheckedChanged="faceitems_CheckedChanged" AutoPostBack="true" /></b> 
                    </td>
                </tr>
                <tr>
                    <td colspan="6" height="5"></td>
                </tr>
            </table>
            <table class="table_common" cellspacing="0" cellpadding="0">
                <tr class="tr_common">
                    <td align="left" style="width: 160px">Please Select Group:</td>
                    <td style="width: 550px">
                        <asp:DropDownList ID="GroupList" runat="server" OnSelectedIndexChanged="grouplist_SelectedIndexChanged"
                            DataValueField="GroupID" DataTextField="GroupName" Height="20" Width="220" AutoPostBack="true">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="UserList" runat="server"
                          DataValueField="employeeID" DataTextField="employeeName" Height="20" Width="220">
                      </asp:DropDownList>
                    </td>
                    <td style="width: 100px">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" Style="width: 80px" CssClass="buttonbluestyle" OnClick="btnSearch_Click"></asp:Button>
                    </td>
                    <td></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="errMsg"  Text="" runat="server" style="font-size:20px;font-weight:bold"/>
            <asp:DataGrid ID="dg_tickler" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
                AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
                <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
                <ItemStyle CssClass="grd_itemborder"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn DataField="c_uci" HeaderText="UCI" Visible="false"></asp:BoundColumn>
                    <asp:BoundColumn DataField="date_next_due" HeaderText="NextDue" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>
                    <asp:BoundColumn DataField="report" HeaderText="Report" Visible="false"></asp:BoundColumn>
                    <asp:BoundColumn DataField="c_cm_id" HeaderText="CaseManager" Visible="false"></asp:BoundColumn>
                    <asp:BoundColumn DataField="tk_case_manager" HeaderText="EnterBy" Visible="false"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                <tr style="height: 10px">
                                    <td>
                                        <asp:Label ID="c_medicaid_waiver" runat="server" CssClass="infaceText"
                                            Text='<%# DataBinder.Eval(Container.DataItem, "c_medicaid_waiver") %>' Visible="false"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 250px" class="td_label">
                                                    <b>Consumer:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 100px" class="td_label">
                                                    <b>DOB:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 300px" class="td_label">
                                                    <b>ResidenceType:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 120px" class="td_label">
                                                    <b>Vendor#:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 100px" class="td_label">
                                                    <b>Due Date:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td style="width: 5px"></td>
                                                <td style="width: 250px" align="left" class="td_unline">
                                                    <asp:Label ID="ConsumerUCI" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "ConsumerUCI") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 100px" align="left" class="td_unline">
                                                    <asp:Label ID="c_dob" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "c_dob", "{0:d}") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 300px" align="left" class="td_unline">
                                                    <asp:Label ID="ResidenceType" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "ResidenceType") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 120px" align="left" class="td_unline">
                                                    <asp:Label ID="c_residence_number" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "c_residence_number") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 100px" align="left" class="td_unline">
                                                    <asp:Label ID="DueDate" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "DueDate", "{0:d}") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="height: 5px">
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 220px" class="td_label">
                                                    <b>Report:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 80px" class="td_label">
                                                    <b>Base:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 120px" class="td_label">
                                                    <b>Last Tickler:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 100px" class="td_label">
                                                    <b>CDER/ESR:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 220px" class="td_label">
                                                    <b>Appt Date & Time:</b>
                                                </td>
                                                <td style="width: 30px"></td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 90px" class="td_label">
                                                    <b>Face To Face
                                                            <br />
                                                        Meeting:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td align="left" style="width: 120px" class="td_label">
                                                    <b>Completed
                                                            <br />
                                                        Documentation:</b>
                                                </td>
                                                <td style="width: 5px"></td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td style="width: 5px"></td>
                                                <td style="width: 220px" align="left" class="td_unline">
                                                    <asp:Label ID="ReportName" runat="server" CssClass="infaceText"
                                                        Text='<%# String.Concat(DataBinder.Eval(Container.DataItem, "ReportName"),"  (",
                                    DataBinder.Eval(Container.DataItem, "IPPNumName").ToString().Trim(),")")%>'>
                                                    </asp:Label>
                                                    <asp:Label ID="IPPNum" runat="server" Visible="false"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "IPPNum") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 80px" align="left" class="td_unline">
                                                    <asp:HyperLink NavigateUrl="#herf_md" ID="BaseMonth" runat="server" CssClass="infaceText" Font-Underline="true"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "BaseMonth") %>'></asp:HyperLink>
                                                    <asp:Label ID="base_month" runat="server" Visible="false"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "base_month") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 120px" align="left" class="td_unline">
                                                    <asp:Label ID="tk_date_prior" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_prior", "{0:d}") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 100px" align="left" class="td_unline">
                                                    <asp:Label ID="c_review_cder_esr_date" runat="server" CssClass="infaceText"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "c_review_cder_esr_date", "{0:d}") %>'></asp:Label>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 220px" align="left" class="td_unline">
                                                    <asp:TextBox ID="tk_date_appointment" runat="server" CssClass="inface"
                                                        onclick='<%# GetPopupScript() %>' onfocus='<%# GetPopupScript() %>'
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_appointment", "{0:d}") %>' Width="75px"></asp:TextBox>
                                                    <asp:DropDownList ID="tk_time_appointment" runat="server" CssClass="infaceDrop"
                                                        DataValueField="TimeInt" DataTextField="TimeInt" Width="75px">
                                                    </asp:DropDownList>
                                                    <asp:Label ID="lb_tk_time_appointment" runat="server" Visible="false"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "tk_time_appointment") %>'></asp:Label>
                                                    <asp:DropDownList ID="tk_location_appointment" runat="server" CssClass="infaceDrop" Width="80px">
                                                        <asp:ListItem Value=""></asp:ListItem>
                                                        <asp:ListItem Value="1">Home</asp:ListItem>
                                                        <asp:ListItem Value="3">Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:Label ID="lb_tk_location_appointment" runat="server" Visible="false"
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "tk_location_appointment") %>'></asp:Label>
                                                </td>
                                                <td style="width: 30px">
                                                    <asp:HyperLink NavigateUrl="#herf_md" ID="btnPrintApp" runat="server" ImageUrl="../img/print.ico"
                                                        BorderWidth="0" Style="width: 25px; height: 25px"></asp:HyperLink>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 90px" align="center" class="td_unline">
                                                    <asp:TextBox ID="tk_date_meeting" runat="server" CssClass="inface"
                                                        onclick='<%# GetPopupScript() %>' onfocus='<%# GetPopupScript() %>'
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_meeting", "{0:d}") %>' Width="75px"></asp:TextBox>
                                                </td>
                                                <td style="width: 5px"></td>
                                                <td style="width: 120px" align="left" class="td_unline">
                                                    <asp:TextBox ID="tk_date_report_complete" runat="server" CssClass="inface"
                                                        onclick='<%# GetPopupScript() %>' onfocus='<%# GetPopupScript() %>'
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "tk_date_report_complete", "{0:d}") %>' Width="75px"></asp:TextBox>
                                                    &nbsp;
                          <asp:HyperLink NavigateUrl="#herf_md" ID="btnPrintComp" runat="server" ImageUrl="../img/print.ico"
                              BorderWidth="0" Style="width: 25px; height: 25px"></asp:HyperLink>
                                                </td>
                                                <td style="width: 5px"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
            <br />
            <asp:Label ID="PCPNum" runat="server"></asp:Label>&nbsp;<b>PCP;</b>&nbsp;&nbsp;&nbsp;
        <asp:Label ID="SANum" runat="server"></asp:Label>&nbsp;<b>SAR;</b>&nbsp;&nbsp;&nbsp;
        <asp:Label ID="QNum" runat="server"></asp:Label>&nbsp;<b>Q;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="MeetNum" runat="server"></asp:Label>&nbsp;<b>Meeting(s) Held;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="TotalNum" runat="server"></asp:Label>&nbsp;<b>Reports Due;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="CompleteNum" runat="server"></asp:Label>&nbsp;<b>Report(s) Completed</b>
            <br />
            <asp:Label ID="IFSPNum" runat="server"></asp:Label>&nbsp;<b>IFSP;</b>&nbsp;&nbsp;&nbsp;
        <asp:Label ID="PRNum" runat="server"></asp:Label>&nbsp;<b>PR;</b>&nbsp;&nbsp;&nbsp;
        <asp:Label ID="E32MNum" runat="server"></asp:Label>&nbsp;<b>32M;</b>&nbsp;&nbsp;&nbsp;
        <asp:Label ID="OtherNum" runat="server"></asp:Label>&nbsp;<b>Others;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="OutCompNum" runat="server"></asp:Label>&nbsp;<b>Out of Compliance;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="CompletePrec" runat="server"></asp:Label>&nbsp;<b>% of Reports Completed</b>

                   <div id="loadImg" class="loading" align="center">
               <%-- Loading. Please wait.<br />
                <br />--%>
                <img src="../img/loading.gif" alt="" />
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

