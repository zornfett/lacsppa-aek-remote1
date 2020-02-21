<%@ Page Language="C#" Inherits="Virweb2.FormList.FormSCMonthlyInfo" CodeBehind="FormSCMonthlyInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::SC Monthly Statistical Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
        function doseltd(obj) {
            /*
            if (isIE())
            {            
            for(var i=0;i<tr_info.childNodes.length;i++)
            {
            var e=tr_info.childNodes[i];		        	   
            e.style.color="#000000";
            e.style.cursor="hand";		        	        
            }
            obj.style.color="#FFFF00";
            obj.style.cursor="auto";
            }
            else */
            {
                SCM_PAGE1.style.color = "";
                //SCM_PAGE1.style.cursor="pointer";
                SCM_PAGE2.style.color = "";
                //SCM_PAGE2.style.cursor="pointer";
                SCM_PAGE3.style.color = "";
                //SCM_PAGE3.style.cursor="pointer";

                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            SCLMonthly_1.style.display = "none";
            SCLMonthly_2.style.display = "none";
            SCLMonthly_3.style.display = "none";
            switch (obj.id) {
                case "SCM_PAGE1":
                    SCLMonthly_1.style.display = "";
                    document.SCMonthlyInfo.now_div_flag.value = "1";
                    break;
                case "SCM_PAGE2":
                    SCLMonthly_2.style.display = "";
                    document.SCMonthlyInfo.now_div_flag.value = "2";
                    break;
                case "SCM_PAGE3":
                    SCLMonthly_3.style.display = "";
                    document.SCMonthlyInfo.now_div_flag.value = "3";
                    break;
            }
        }

        function doseltdbyid(obj_id) {
            /*
            if (isIE())
            {            
            for(var i=0;i<tr_info.childNodes.length;i++)
            {
            var e=tr_info.childNodes[i];		        	   
            if((e.id!=obj_id))
            {
            e.background="img/lable_unselect.gif";
            e.style.color="#000000";
            e.style.cursor="hand";
            }
            else
            {
            e.background="img/lable_select.gif";
            e.style.color="#FFFF00";
            e.style.cursor="auto";
            }
            }
            }
            else */
            {
                SCM_PAGE1.style.color = "";
                //SCM_PAGE1.style.cursor="pointer";
                SCM_PAGE2.style.color = "";
                //SCM_PAGE2.style.cursor="pointer";
                SCM_PAGE3.style.color = "";
                //SCM_PAGE3.style.cursor="pointer";
            }
            SCLMonthly_1.style.display = "none";
            SCLMonthly_2.style.display = "none";
            SCLMonthly_3.style.display = "none";

            switch (obj_id) {
                case "SCM_PAGE1":
                    SCLMonthly_1.style.display = "";
                    SCM_PAGE1.style.color = "#990066";
                    //SCM_PAGE1.style.cursor="auto";
                    document.SCMonthlyInfo.now_div_flag.value = "1";
                    break;
                case "SCM_PAGE2":
                    SCLMonthly_2.style.display = "";
                    SCM_PAGE2.style.color = "#990066";
                    //SCM_PAGE2.style.cursor="auto";
                    document.SCMonthlyInfo.now_div_flag.value = "2";
                    break;
                case "SCM_PAGE3":
                    SCLMonthly_3.style.display = "";
                    SCM_PAGE3.style.color = "#990066";
                    //SCM_PAGE3.style.cursor="auto";
                    document.SCMonthlyInfo.now_div_flag.value = "3";
                    break;
            }
        }

        function doseltdbyflag(flag) {
            /*
            if (isIE())
            {  
            for(var i=0;i<tr_info.childNodes.length;i++)
            {
            var e=tr_info.childNodes[i];

            e.style.color="#000000";
            e.style.cursor="hand";
            }
            }
            else
            */
            {
                SCM_PAGE1.style.color = "";
                //SCM_PAGE1.style.cursor="pointer";
                SCM_PAGE2.style.color = "";
                //SCM_PAGE2.style.cursor="pointer";
                SCM_PAGE3.style.color = "";
                //SCM_PAGE3.style.cursor="pointer";
            }
            SCLMonthly_1.style.display = "none";
            SCLMonthly_2.style.display = "none";
            SCLMonthly_3.style.display = "none";

            switch (flag) {
                case 1:
                    SCLMonthly_1.style.display = "";
                    SCM_PAGE1.style.color = "#990066";
                    //SCM_PAGE1.style.cursor="auto";
                    document.SCMonthlyInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    SCLMonthly_2.style.display = "";
                    SCM_PAGE2.style.color = "#990066";
                    //SCM_PAGE2.style.cursor="auto";
                    document.SCMonthlyInfo.now_div_flag.value = "2";
                    break;
                case 3:
                    SCLMonthly_3.style.display = "";
                    SCM_PAGE3.style.color = "#990066";
                    //SCM_PAGE3.style.cursor="auto";
                    document.SCMonthlyInfo.now_div_flag.value = "3";
                    break;
            }
        }

        function print_click() {
            var strMonth = document.SCMonthlyInfo.month.value.toString();
            var strYear = document.SCMonthlyInfo.year.value.toString();
            var strCoordinator = document.SCMonthlyInfo.coordinator.value.toString();
            var url = "PrintFormSCMonthlyInfo.aspx?userid=" + strCoordinator + "&year=" + strYear + "&month=" + strMonth;
            winhref(url, 'PrintFormSCMonthlyInfo');
        }

        function save_click() {
            var str1 = JTrim(document.getElementById("del_uci1").value)
            if ((str1 != "") && (document.getElementById("del_sel1_1").checked != true) &&
                  (document.getElementById("del_sel1_2").checked != true) && (document.getElementById("del_sel1_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str1);
                return false;
            }

            var str2 = JTrim(document.getElementById("del_uci2").value)
            if ((str2 != "") && (document.getElementById("del_sel2_1").checked != true) &&
                  (document.getElementById("del_sel2_2").checked != true) && (document.getElementById("del_sel2_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str2);
                return false;
            }

            var str3 = JTrim(document.getElementById("del_uci3").value)
            if ((str3 != "") && (document.getElementById("del_sel3_1").checked != true) &&
                  (document.getElementById("del_sel3_2").checked != true) && (document.getElementById("del_sel3_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str3);
                return false;
            }

            var str4 = JTrim(document.getElementById("del_uci4").value)
            if ((str4 != "") && (document.getElementById("del_sel4_1").checked != true) &&
                  (document.getElementById("del_sel4_2").checked != true) && (document.getElementById("del_sel4_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str4);
                return false;
            }

            var str5 = JTrim(document.getElementById("del_uci5").value)
            if ((str5 != "") && (document.getElementById("del_sel5_1").checked != true) &&
                  (document.getElementById("del_sel5_2").checked != true) && (document.getElementById("del_sel5_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str5);
                return false;
            }

            var str6 = JTrim(document.getElementById("del_uci6").value)
            if ((str6 != "") && (document.getElementById("del_sel6_1").checked != true) &&
                  (document.getElementById("del_sel6_2").checked != true) && (document.getElementById("del_sel6_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str6);
                return false;
            }

            var str7 = JTrim(document.getElementById("del_uci7").value)
            if ((str7 != "") && (document.getElementById("del_sel7_1").checked != true) &&
                  (document.getElementById("del_sel7_2").checked != true) && (document.getElementById("del_sel7_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str7);
                return false;
            }

            var str8 = JTrim(document.getElementById("del_uci8").value)
            if ((str8 != "") && (document.getElementById("del_sel8_1").checked != true) &&
                  (document.getElementById("del_sel8_2").checked != true) && (document.getElementById("del_sel8_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str8);
                return false;
            }

            var str9 = JTrim(document.getElementById("del_uci9").value)
            if ((str9 != "") && (document.getElementById("del_sel9_1").checked != true) &&
                  (document.getElementById("del_sel9_2").checked != true) && (document.getElementById("del_sel9_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str9);
                return false;
            }

            var str10 = JTrim(document.getElementById("del_uci10").value)
            if ((str10 != "") && (document.getElementById("del_sel10_1").checked != true) &&
                  (document.getElementById("del_sel10_2").checked != true) && (document.getElementById("del_sel10_3").checked != true)) {
                alert("In REPORTS COMPLETED THIS MONTH section, Please select one option for UCI: " + str10);
                return false;
            }

            return true;

        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormSCMonthly.aspx');
        }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="SCMonthlyInfo" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="month" id="month" value="" runat="server" />
    <input type="hidden" name="year" id="year" value="" runat="server" />
    <input type="hidden" name="coordinator" id="coordinator" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnEdit_Click"></asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">SC For</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;
                        height: 25px" src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label" cellspacing="0" cellpadding="0" runat="server">
                        <tr id="tr_info">
                            <td id="SCM_PAGE1" style="color: #990066;" class="tab_sel" onclick="doseltd(this);"
                                width="110">
                                <b><u>PAGE 1</u></b>
                            </td>
                            <td id="SCM_PAGE2" class="tab_sel" onclick="doseltd(this);" width="110">
                                <b><u>PAGE 2</u></b>
                            </td>
                            <td id="SCM_PAGE3" class="tab_sel" onclick="doseltd(this);" width="110">
                                <b><u>PAGE 3</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr style="height: 30px">
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">CASE MANAGEMENT MONTHLY STATISTICAL REPORT</asp:Label>
                </td>
                <td  style="width: 330px">
                    <asp:Button ID="btnVerify" runat="server" Text="Verify" Visible="False" Style="width: 60px"
                        CssClass="buttonbluestyle" OnClick="btnVerify_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="5px">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 470px;" align="left" class="td_label">
                    <b>Program Manager:
                        <asp:Label ID="ProgManager" runat="server"></asp:Label></b>
                </td>
                <td style="width: 330px;" align="left" class="td_label">
                    <b>Service Coordinator:
                        <asp:Label ID="ServCoord" runat="server"></asp:Label></b>
                </td>
            </tr>
            <tr>
                <td colspan="2" height="5px">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 470px;" align="left" class="td_label">
                    <b>Reporting Month:
                        <asp:Label ID="label_curmonth" runat="server"></asp:Label></b>
                </td>
                <td style="width: 330px;" align="left" class="td_label">
                    <b>Date Verified:
                        <asp:Label ID="verified" runat="server"></asp:Label></b>
                    <asp:Label ID="CreateDate" runat="server" Visible="false"></asp:Label>
                </td>
            </tr>
            <tr style="height: 2px;">
                <td bgcolor="#006600" colspan="2">
                </td>
            </tr>
            <tr>
                <td colspan="2" height="5px">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="SCLMonthly_1">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                                <td colspan="9" style="width: 730px;" align="left" class="td_label">
                                    <b>Number of cases carried from last month</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="carr_lastmon" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" align="left" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Intake</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="carr_lastmon_1" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inter-Regional Center transfer</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="carr_lastmon_2" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Intra-Regional Center transfer (SCLARC-units other
                                    than intake)</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="carr_lastmon_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Re-Activations</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="carr_lastmon_4" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>Number of cases deleted this month</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="del_thismon" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inactivations</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="del_thismon_1" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inter-Regional Center transfer</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="del_thismon_2" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Intra-Regional Center (SCLARC) transfer</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="del_thismon_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr  class="tr_common">
                                <td  colspan="11" style="width: 800px;" class="td_label">
                                    <b>CASELOAD</b>
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of cases reported last month</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_1" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of cases received this month for case management</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_2" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of cases inactivated from caseload</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_3" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px; height: 21px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of in-home cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px; height: 21px;">
                                    <asp:TextBox ID="caseload_4" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px; height: 21px;">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px; height: 21px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of in-home Medicaid Waiver cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px; height: 21px;">
                                    <asp:TextBox ID="caseload_5" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px; height: 21px;">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of residential cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_6" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of residential Medicaid Waiver cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_7" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of Medicaid Waiver cases on caseload</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_8" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of Spanish-speaking cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_9" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Grand number of cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload_g" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SANDIS grand number of cases</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="caseload" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="11" style="width: 800px;" class="td_label">
                                    <b>CDER'S</b>
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of CDER'S due this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Not Complete</b>
                                </td>
                                <td style="width: 5px"></td> 
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="cder_1_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Completed</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="cder_1_c" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="cder_1" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of CDER'S completed this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Delinquent</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="cder_2_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Current</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="cder_2_c" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="cder_2" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of CDER'S not done</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="cder_3" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of current CDER'S year-to-date</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="cder_4" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of 30 days IPP completed / Other</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="ipp_c30" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="11" style="width: 800px;" class="td_label">
                                    <b>INITIAL IPP'S</b>
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Initial IPP's due this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Not Complete</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="ipp_1_d" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Completed</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="ipp_1_c" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="ipp_1" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Initial IPP's completed this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Delinquent</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="ipp_2_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Current</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="ipp_2_c" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="ipp_2" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of initial IPP's outstanding more than 30 days</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="ipp_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="11" style="width: 800px;" class="td_label">
                                    <b>ANNUAL CONTACT/IPP'S</b>
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Annual Reviews/IPP'S due this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Not Complete</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="arev_1_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Completed</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="arev_1_c" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 40px;">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="arev_1" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px;">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Annual Reviews/IPP'S completed this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Delinquent</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="arev_2_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Current</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="arev_2_c" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="arev_2" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of Annual Reviews/IPP'S not done</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="arev_3" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of Annual Reviews/IPP's completed year-to-date</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="arev_4" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of 30 days IPP completed / Other</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="ipp_c30_b" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="11" style="width: 800px;" class="td_label">
                                    <b>QUARTERLY REVIEW'S</b>
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Quarterly Review's due this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Not Complete</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="qrev_1_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Completed</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="qrev_1_c" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="qrev_1" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  style="width: 450px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Quarterly Review's completed this month</b>
                                </td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Delinquent</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="qrev_2_d" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td  style="width: 60px;" class="td_label">
                                    <b>Current</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 40px;">
                                    <asp:TextBox ID="qrev_2_c" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="qrev_2" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total number of Quarterly Reviews not done</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="qrev_3" runat="server" CssClass="inface" MaxLength="4" ReadOnly="true"
                                        BackColor="powderblue"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="12" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td  colspan="9" style="width: 730px;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Number of Quarterly Reviews outstanding more than 60 days</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td  class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="qrev_4" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="SCLMonthly_2" style="display: none">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 99%">
                            <tr class="tr_common">
                                <td colspan="3" class="td_label">
                                    <b>PLACEMENT ACTIVITY</b>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td style="width: auto;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Placement Cases Reported Last Month</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="place_1" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td style="width: auto;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Placement Cases Received This Month For Placement</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="place_2" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td style="width: auto;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Initial Placements Completed This Month</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="place_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td style="width: auto;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Re-Placements Completed This Month</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="place_4" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td style="width: auto;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Facilities</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="place_5" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td colspan="3" class="td_label">
                                    <b>FACE-TO-FACE CONTACT</b>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td style="width: auto;" class="td_label">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Face to Face Contacts</b>
                                </td>
                                <td style="width: 5px"></td>
                                <td class="td_unline" style="width: 50px;">
                                    <asp:TextBox ID="contact_1" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 20px">
                                </td>
                            </tr>
                            <tr><td colspan="4" style="height:5px"></td></tr>
                            
                            <tr>
                                <td colspan="3">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 450px;" class="td_label">
                                                <b>MEETINGS ATTENDED</b>
                                            </td>
                                            <td style="width: 60px"  class="td_label">
                                            </td>
                                            <td style="width: 120px;" class="td_label">
                                                <b>DATE</b>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_1" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_2" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_3" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_4" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_5" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_5" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_6" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_6" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_7" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_7" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_8" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_8" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_9" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_9" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_10" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_10" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_11" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_11" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_12" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_12" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_13" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_13" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_14" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_14" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>
                                        <tr><td colspan="4" style="height:5px"></td></tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 450px;">
                                                <asp:TextBox ID="meeting_15" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="meetingdate_15" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: auto;"></td>
                                        </tr>    
                                    </table>
                                </td>
                            </tr>
                            
                        </table>
                    </div>
                    <div id="SCLMonthly_3" style="display: none">
                        <br />
                        <b>REPORTS COMPLETED THIS MONTH</b><br />
                        <br />
                        <asp:DataGrid ID="dg_complete" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                            </HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn DataField="c_name_last" HeaderText="Last Name" SortExpression="c_name_last">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_name_first" HeaderText="First Name" SortExpression="c_name_first">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_uci" HeaderText="UCI#" SortExpression="c_uci">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_dob" HeaderText="DOB:" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="c_dob">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="com_rev" HeaderText="Comp Rev" SortExpression="com_rev">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="cder" HeaderText="CDER" SortExpression="cder">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ipp" HeaderText="Initial IPP" SortExpression="ipp">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="qual" HeaderText="Q" SortExpression="qual">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="visit_date" HeaderText="Date of Visit" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="visit_date">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="write_date" HeaderText="Date Written" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="write_date">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                        <br />
                        <br />
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 99%">
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci1" runat="server" Width="80" CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view1" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name1" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel1_1" GroupName="del_sel1" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel1_2" GroupName="del_sel1" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel1_3" GroupName="del_sel1" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act1" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci2" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view2" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name2" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel2_1" GroupName="del_sel2" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel2_2" GroupName="del_sel2" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel2_3" GroupName="del_sel2" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act2" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci3" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view3" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name3" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel3_1" GroupName="del_sel3" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel3_2" GroupName="del_sel3" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel3_3" GroupName="del_sel3" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act3" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci4" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view4" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name4" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel4_1" GroupName="del_sel4" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel4_2" GroupName="del_sel4" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel4_3" GroupName="del_sel4" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act4" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci5" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view5" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name5" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel5_1" GroupName="del_sel5" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel5_2" GroupName="del_sel5" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel5_3" GroupName="del_sel5" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act5" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci6" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view6" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name6" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel6_1" GroupName="del_sel6" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel6_2" GroupName="del_sel6" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel6_3" GroupName="del_sel6" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act6" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci7" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view7" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name7" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel7_1" GroupName="del_sel7" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel7_2" GroupName="del_sel7" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel7_3" GroupName="del_sel7" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act7" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci8" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view8" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name8" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel8_1" GroupName="del_sel8" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel8_2" GroupName="del_sel8" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel8_3" GroupName="del_sel8" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act8" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci9" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view9" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name9" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel9_1" GroupName="del_sel9" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel9_2" GroupName="del_sel9" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel9_3" GroupName="del_sel9" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act9" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="del_uci10" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="del_view10" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnDelView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="del_name10" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <asp:RadioButton Text="" ID="del_sel10_1" GroupName="del_sel10" runat="server" /><b>Del IPP/AR/CDER</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel10_2" GroupName="del_sel10" runat="server" /><b>Del Initial IPP</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton Text="" ID="del_sel10_3" GroupName="del_sel10" runat="server" /><b>Del QR</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox Text="" ID="del_act10" runat="server" /><b>Inactivate/Transfer</b>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 99%">
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="ipp_uci1" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="ipp_view1" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnIppView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="ipp_name1" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <b>30 Days IPP's completed / Other</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="ipp_uci2" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="ipp_view2" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnIppView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="ipp_name2" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <b>30 Days IPP's completed / Other</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="ipp_uci3" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="ipp_view3" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnIppView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="ipp_name3" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <b>30 Days IPP's completed / Other</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="ipp_uci4" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="ipp_view4" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnIppView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="ipp_name4" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <b>30 Days IPP's completed / Other</b>
                                </td>
                            </tr>
                            <tr><td colspan="3" style="height:5px"></td></tr>
                            <tr class="tr_common">
                                <td class="td_unline" style="width: 48%;">
                                    <asp:TextBox ID="ipp_uci5" runat="server" Width="80"  CssClass="inface"/>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="ipp_view5" runat="server" Width="100" Text="CheckName"
                                        CssClass="buttonbluestyle" OnClick="btnIppView_Click" />&nbsp&nbsp;&nbsp;
                                    <asp:Label ID="ipp_name5" runat="server" CssClass="infaceLabel" Width="240" />
                                </td>
                                <td style="width: 4%">
                                </td>
                                <td class="td_label" style="width: 48%;">
                                    <b>30 Days IPP's completed / Other</b>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <b>CURRENT MONTH SPECIAL INCIDENT REPORTS</b><br />
                        <br />
                        <asp:DataGrid ID="dg_sir" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                            </HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn DataField="c_name_last" HeaderText="Last Name" SortExpression="c_name_last">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_name_first" HeaderText="First Name" SortExpression="c_name_first">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_uci" HeaderText="UCI#" SortExpression="c_uci">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="complete_date" HeaderText="Date Complete" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="complete_date">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="follow_date" HeaderText="Follow-up Date" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="follow_date">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="type_incident" HeaderText="Type of Incident" SortExpression="type_incident">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                        <br />
                        <br />
                        <b>LAST MONTH SPECIAL INCIDENT REPORTS</b><br />
                        <br />
                        <asp:DataGrid ID="dg_sir2" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                            </HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn DataField="c_name_last" HeaderText="Last Name" SortExpression="c_name_last">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_name_first" HeaderText="First Name" SortExpression="c_name_first">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_uci" HeaderText="UCI#" SortExpression="c_uci">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="complete_date" HeaderText="Date Complete" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="complete_date">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="follow_date" HeaderText="Follow-up Date" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="follow_date">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="type_incident" HeaderText="Type of Incident" SortExpression="type_incident">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                        <br />
                        <br />
                        <b>SIR ADDENDUMS NOT COMPLETED WINTHIN 90 DAYS</b><br />
                        <br />
                        <asp:DataGrid ID="dg_siradd" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                            </HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn DataField="c_uci" HeaderText="UCI#" SortExpression="c_uci">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="sa_incident_dt" HeaderText="DOI" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="sa_incident_dt">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="s_incident_type_desc" HeaderText="Type of Incident" SortExpression="s_incident_type_desc">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="sa_complete_by" HeaderText="SC Code" SortExpression="sa_complete_by">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="sa_rpt_dt" HeaderText="Addendums DT" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="sa_rpt_dt">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ConsumerName" HeaderText="Consumer Name" SortExpression="ConsumerName">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="sa_due_dt" HeaderText="Due DT" DataFormatString="{0:MM/dd/yyyy}"
                                    SortExpression="sa_due_dt">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="sastatus" HeaderText="Complete/Verified" SortExpression="sastatus">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
