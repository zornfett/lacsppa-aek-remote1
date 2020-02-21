<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormESREligibilityInfoFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormESREligibilityInfoFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base target="_self" />
    <title>:::EARLY START / PREVENTION ELIGIBILITY REVIEW:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.ESREligInfo.submit(); 
            window.focus();   
        }
        function print_click() {
            //PopupMessage(10); 
            var entrykey = document.ESREligInfo.entrykey.value.toString();
            var UserAct = document.ESREligInfo.UserAct.value.toString();
            var flag = document.ESREligInfo.now_div_flag.value.toString();
            var consumer_key = document.ESREligInfo.consumer_key.value.toString();
            var url = "PrintFormESREligibilityInfoFDLRC.aspx?entrykey=" + entrykey + "&consumer_key=" + consumer_key + "&flag=" + flag + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormESREligibilityInfoFDLRC');          
        }
        
        function verify_click() {
        return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace(document.ESREligInfo.gobackPage.value);
        }

        function doseltd(obj) {
            
            ESR_RW.style.color = "";
            ESR_MI.style.color = "";
            ESR_MD.style.color = "";

            obj.style.color = "#990066";         
            
            Esr_RW.style.display = "none";
            Esr_MI.style.display = "none";
            Esr_MD.style.display = "none";
            switch (obj.id) {
                case "ESR_RW":
                    Esr_RW.style.display = "";
                    document.ESREligInfo.now_div_flag.value = "1";
                    break;
                case "ESR_MI":
                    Esr_MI.style.display = "";
                    document.ESREligInfo.now_div_flag.value = "3";
                    break;
                case "ESR_MD":
                    Esr_MD.style.display = "";
                    document.ESREligInfo.now_div_flag.value = "4";
                    break;
            }
        }

        function doseltdbyid(obj_id) {
            
            ESR_RW.style.color = "";
            ESR_MI.style.color = "";
            ESR_MD.style.color = "";

            Esr_RW.style.display = "none";
            Esr_MI.style.display = "none";
            Esr_MD.style.display = "none";
            switch (obj_id) {
                case "ESR_RW":
                    Esr_RW.style.display = "";
                    ESR_RW.style.color = "#990066";
                    document.ESREligInfo.now_div_flag.value = "1";
                    break;
                case "ESR_MI":
                    Esr_MI.style.display = "";
                    ESR_MI.style.color = "#990066";
                    document.ESREligInfo.now_div_flag.value = "3";
                    break;
                case "ESR_MD":
                    Esr_MD.style.display = "";
                    ESR_MD.style.color = "#990066";
                    document.ESREligInfo.now_div_flag.value = "4";
                    break;
            }
        }

        function doseltdbyflag(flag) {
            ESR_RW.style.color = "";
            ESR_MI.style.color = "";
            ESR_MD.style.color = "";

            Esr_RW.style.display = "none";
            Esr_MI.style.display = "none";
            Esr_MD.style.display = "none";
            switch (flag) {
                case 1:
                    Esr_RW.style.display = "";
                    ESR_RW.style.color = "#990066";
                    document.ESREligInfo.now_div_flag.value = "1";
                    break;
                case 3:
                    Esr_MI.style.display = "";
                    ESR_MI.style.color = "#990066";
                    document.ESREligInfo.now_div_flag.value = "3";
                    break;
                case 4:
                    Esr_MD.style.display = "";
                    ESR_MD.style.color = "#990066";
                    if(btn_ad != null)
                    document.ESREligInfo.now_div_flag.value = "4";
                    break;
            }
        }

        function Sign(UserName) {
            if ( document.ESREligInfo.checksign.value == "Sign")
            {
               document.ESREligInfo.checksign.value = "Signed";
            }
            else if (document.ESREligInfo.checksign.value == "Finial")
            {          
               document.ESREligInfo.checksign.value = "Finialed";
               var nowdate = new Date();
               document.getElementById("med_records_reviewedby").value = UserName.toString();
               document.getElementById("med_records_revieweddate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            else if (document.ESREligInfo.checksign.value == "Review")
            {          
               document.ESREligInfo.checksign.value = "Reviewed";
               var nowdate = new Date();
               document.getElementById("reviewedby").value = UserName.toString();
               document.getElementById("revieweddate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            window.document.ESREligInfo.submit(); 
        }

        function CheckReviewPwd() {
            document.ESREligInfo.checksign.value = "Review";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckSignPwd() {
            document.ESREligInfo.checksign.value = "Sign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckFinialPwd() {
            document.ESREligInfo.checksign.value = "Finial";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission()
        {
            PopupMessage(42);
            return false;
        }

        function submitcalendar(boxid) {
            document.getElementById("conducteddate").value = boxid.value;
        }
        function save_click() {
            var Chronage = document.getElementById("Chronage").value;
            var Adjustedage = document.getElementById("Adjustedage").value;
            var WeeksGestation = document.getElementById("WeeksGestation").value;
            var EvaluationBy = document.getElementById("EvaluationBy").value;
            var Cognitive_Level = document.getElementById("Cognitive_Level").value;
            var FineMotor_Level = document.getElementById("FineMotor_Level").value;
            var GrossMotor_Level = document.getElementById("GrossMotor_Level").value;
            var Receptive_Level = document.getElementById("Receptive_Level").value;
            var Expresstive_Level = document.getElementById("Expresstive_Level").value;
            var Emotional_Level = document.getElementById("Emotional_Level").value;
            var Adaptive_Level = document.getElementById("Adaptive_Level").value;
            var patrn = /^\d+$/;
            //if (Chronage.toString() != "" && !patrn.exec(Chronage)) {
            //    alert("Please Enter the Digits for Chron. Age.");
            //    return false;
            //}
            //else if (Adjustedage.toString() != "" && !patrn.exec(Adjustedage)) {
            //    alert("Please Enter the Digits for Adjusted Age.");
            //    return false;
            //}
            if (Cognitive_Level.toString() != "" && !patrn.exec(Cognitive_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            else if (FineMotor_Level.toString() != "" && !patrn.exec(FineMotor_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            else if (GrossMotor_Level.toString() != "" && !patrn.exec(GrossMotor_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            else if (Receptive_Level.toString() != "" && !patrn.exec(Receptive_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            else if (Expresstive_Level.toString() != "" && !patrn.exec(Expresstive_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            else if (Emotional_Level.toString() != "" && !patrn.exec(Emotional_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            else if (Adaptive_Level.toString() != "" && !patrn.exec(Adaptive_Level)) {
                alert("Please Enter the Digits for Evaluation Level.");
                return false;
            }
            
            if (!isMaxLength(document.getElementById("sign_comments"), 500))
            {
              document.getElementById("sign_comments").focus();
              return false;
            }
        } 
    </script>

</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>   
    <form id="ESREligInfo" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="language" id="language" value="0" runat="server" />
    <input type="hidden" name="checksign" id="checksign" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormESREligibilityList.aspx" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" OnClick="btnAdd_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnPrintLetter" runat="server" alt="Print Letter" visible="false" 
                    style="width: 25px; height: 25px" src="../img/eligibility.jpg" title="Print Letter" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">&nbsp;</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px" 
                        src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="ESR_RW" style="color:#990066;" class="tab_sel" onclick="doseltd(this);" 
                                 width="150">
                                <b><u>Review</u></b>
                            </td>
                            <td id="ESR_MI" class="tab_sel" onclick="doseltd(this);"
                                 width="150">
                                <b><u>Medical Information</u></b>
                            </td>
                            <td id="ESR_MD" class="tab_sel" onclick="doseltd(this);"
                                 width="150">
                                <b><u>Medications</u></b>
                            </td>
                            <td id="ESR_RPT" class="tab_sel" onclick="popupDialog('../ReportList/ReportFormESR11.aspx');"
                                 width="150">
                                <b><u>ES Report</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>              
        </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
            <tr class="tr_common">
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Esr_RW">
                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%;height:100%">
                        <tr>
                            <td>
                                <table class="table_inside">
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="middle" align="center">
                                            <asp:Label ID="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                                Height="24px">EARLY START / PREVENTION ELIGIBILITY REVIEW</asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 180px">
                                            <asp:Label ID="Label2" runat="server" Text="Consumer:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="consumername" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="l_uci" runat="server" Text="UCI#:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="ClientID" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label6" runat="server" Text="D.O.B:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                 onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 180px">
                                            <asp:Label ID="Label4" runat="server" Text="Service Coordinator:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="CaseMgrName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label24" runat="server" Text="Chron.Age:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="Chronage" runat="server" CssClass="infaceText" Width="60px"></asp:Label>
                                            <asp:Label ID="Label27" runat="server" Text="Months" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td colspan=3>
                                        </td> 
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 180px">
                                            <asp:Label ID="Label8" runat="server" Text="Eligibility Determination:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="DecisionDate" runat="server" Width="100px" CssClass="inface" onclick="showcalendarsubmit(event, this);DataChanged();"
                                                onfocus="showcalendarsubmit(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label70" runat="server" Text="Adjusted Age:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="Adjustedage" runat="server" CssClass="infaceText" Width="60px"></asp:Label>
                                            <asp:Label ID="l_admonth" runat="server" Text="Months" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label21" runat="server" Text="Last Modified By:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="lastmodby" runat="server"  CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 180px">
                                            <asp:Label ID="Label18" runat="server" Text="Due Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:Label ID="Duedate" runat="server" Width="100px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="l_weeks" runat="server" Text="Weeks Gestation:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 200px">
                                            <asp:TextBox ID="WeeksGestation"  runat="server" CssClass="inface" Width="150px" MaxLength="50">
                                            </asp:TextBox>   
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td colspan=3>
                                        </td> 
                                        <td style="width: auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  style="width: 250px">
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_label" style="width: 250px">
                                            <font><b>Current Evaluation</b></font>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_label" style="width: 250px">
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label11" runat="server" Text="Evaluation Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="EvaluationDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline" style="width: 250px">
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label13" runat="server" Text="Assessment Tool:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="EvaluationBy" runat="server" CssClass="inface" Width="250px" MaxLength="50">
                                            </asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  style="width: 250px">
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_label" style="width: 250px">
                                            <font><b>Level</b></font>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_label" style="width: 250px">
                                            <font><b>% Delay</b></font>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label16" runat="server" Text="Cognitive:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="Cognitive_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="Cognitive_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label19" runat="server" Text="Physical (Fine Motor):" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="FineMotor_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="FineMotor_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label22" runat="server" Text="Physical (Gross Motor):" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="GrossMotor_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="GrossMotor_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label25" runat="server" Text="Communication (Receptive):" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="Receptive_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="Receptive_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label28" runat="server" Text="Communication (Expressive):" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="Expresstive_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="Expresstive_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="l_social_emotional" runat="server" Text="Social-Emotional:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="Emotional_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox> 
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="Emotional_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label34" runat="server" Text="Self-Help/Adaptive:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:TextBox ID="Adaptive_Level" runat="server" CssClass="inface" Width="60px" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td class="td_unline"  style="width: 250px">
                                            <asp:Label ID="Adaptive_Delay" runat="server" Width="250px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label37" runat="server" Text="Comments:"  Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="height: 60px" valign="top">
                                            <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="comments" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label"  valign="bottom">
                                            <asp:Label ID="l_eligibilty" runat="server" Font-Bold="True" Text="ELIGIBILITY DETERMINATION:  Eligibility determination for the above-named consumer was conducted on "></asp:Label>
                                            <asp:TextBox ID="conducteddate" runat="server" Width="100px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="by an interdisciplinary process."></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  >
                                            <asp:Label ID="l_review" runat="server" Font-Bold="True" Text="Based upon a review of all available information and/or clinical observations, the interdisciplinary team has determined that the consumer is:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 15px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            <b><asp:Checkbox ID="early_prog_eligible" runat="server" Text=""></asp:Checkbox>ELIGIBLE for the Early Start Program due to:</b>	
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="prog_dutto1" runat="server" Text=""></asp:Checkbox><b>Consumer is 0-23 months of age and has a significant DELAY (33%) in one or more developmental areas.</b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;<asp:Checkbox ID="cognitive1" runat="server" Text=""></asp:Checkbox><b>Cognitive</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="motor1" runat="server" Text=""></asp:Checkbox><b>Motor</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="communication1" runat="server" Text=""></asp:Checkbox><b>Communication</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="emotional1" runat="server" Text=""></asp:Checkbox><b>Social/Emotional</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="adaptive1" runat="server" Text=""></asp:Checkbox><b>Adaptive/Self-care</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="prog_dutto2" runat="server" Text=""></asp:Checkbox><b>Consumer is 24-36 months of age and has a significant DELAY (50%) in one developmental area.</b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;<asp:Checkbox ID="cognitive2" runat="server" Text=""></asp:Checkbox><b>Cognitive</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="motor2" runat="server" Text=""></asp:Checkbox><b>Motor</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="communication2" runat="server" Text=""></asp:Checkbox><b>Communication</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="emotional2" runat="server" Text=""></asp:Checkbox><b>Social/Emotional</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="adaptive2" runat="server" Text=""></asp:Checkbox><b>Adaptive/Self-care</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="prog_dutto3" runat="server" Text=""></asp:Checkbox><b>Consumer is 24-36 months of age and has a significant DELAY (33%) in two or more developmental areas.</b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;<asp:Checkbox ID="cognitive3" runat="server" Text=""></asp:Checkbox><b>Cognitive</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="motor3" runat="server" Text=""></asp:Checkbox><b>Motor</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="communication3" runat="server" Text=""></asp:Checkbox><b>Communication</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="emotional3" runat="server" Text=""></asp:Checkbox><b>Social/Emotional</b>
                                            &nbsp;&nbsp;<asp:Checkbox ID="adaptive3" runat="server" Text=""></asp:Checkbox><b>Adaptive/Self-care</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="prog_dutto4" runat="server" Text=""></asp:Checkbox><b>Consumer has an ESTABLISHED RISK condition which has a high probability of leading to developmental delay.</b>
                                            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="prog_dutto4_txt" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 15px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Checkbox ID="GFE" runat="server" Text=""></asp:Checkbox>(GFE) Eligibility cannot be made at this time, further evaluation required</b>	
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td>
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr  class="tr_common">
                                                    <td style="width: 220px" class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Label ID="Label26" runat="server" Text="Specific Requirements:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline"  width="700">
                                                        <asp:TextBox ID="specificreq" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 220px" class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Label ID="Label29" runat="server" Text="Follow-up information required by:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" style="width: 100px">
                                                        <asp:TextBox ID="requireddate" Width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                            onfocus="showcalendar(event, this);">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 15px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Checkbox ID="prevent_resource_eligible" runat="server" Text=""></asp:Checkbox>NOT ELIGIBLE for the Early Start Program, 
                                            however is eligible for the Prevention Resource and Referral Program due to:</b>	
                                        </td>
                                    </tr>
                                    <tr style="height: 15px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label38" runat="server" Text="Consumer is AT RISK of having a developmental disability." Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label39" runat="server" Text="GENETIC, MEDICAL/BIOLOGICAL, DEVELOPMENTAL AND ENVIRONMENTAL RISK FACTORS:" Font-Bold="true"></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td >
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 33%">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="prematurity" runat="server" Text=""></asp:Checkbox><b>Prematurity(< 32 wks)</b>
                                                        <br /><asp:TextBox ID="prematurity_text" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td  class="td_label" style="width: 17%">
                                                        <asp:Checkbox ID="anomalies" runat="server" Text=""></asp:Checkbox><b>Congenital anomalies</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 14%">
                                                        <asp:Checkbox ID="FTT" runat="server" Text=""></asp:Checkbox><b>Clinical FTT</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 36%">
                                                        <table class="table_inside">
                                                            <tr class="tr_common">
                                                                <td  class="td_label">
                                                                    <asp:Checkbox ID="otherfactor1" runat="server" Text=""></asp:Checkbox>
                                                                </td>
                                                                <td  class="td_label" style="width:100%">
                                                                    <asp:TextBox ID="otherfactor1_text" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 33%">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="BW" runat="server" Text=""></asp:Checkbox><b>BW < 1500 grams</b>
                                                        <br /><asp:TextBox ID="BW_text" runat="server" CssClass="inface"   MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td  class="td_label" style="width: 17%">
                                                        <asp:Checkbox ID="asphyxia" runat="server" Text=""></asp:Checkbox><b>Asphyxia or Severe RDS</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 14%">
                                                        <asp:Checkbox ID="SGA" runat="server" Text=""></asp:Checkbox><b>SGA or IUGR</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 36%">
                                                        <table class="table_inside">
                                                            <tr class="tr_common">
                                                                <td  class="td_label">
                                                                    <asp:Checkbox ID="otherfactor2" runat="server" Text=""></asp:Checkbox>
                                                                </td>
                                                                <td  class="td_label" style="width:100%">
                                                                    <asp:TextBox ID="otherfactor2_text" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 33%">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="tone" runat="server" Text=""></asp:Checkbox><b>Abnormal muscle tone</b>
                                                     </td>
                                                    <td  class="td_label" style="width: 17%">
                                                        <asp:Checkbox ID="NAS" runat="server" Text=""></asp:Checkbox><b>+ Tox screen, NAS</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 14%">
                                                        <asp:Checkbox ID="apgars" runat="server" Text=""></asp:Checkbox><b>Low Apgars</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 36%">
                                                        <table class="table_inside">
                                                            <tr class="tr_common">
                                                                <td  class="td_label">
                                                                    <asp:Checkbox ID="otherfactor3" runat="server" Text=""></asp:Checkbox>
                                                                </td>
                                                                <td  class="td_label" style="width:100%">
                                                                    <asp:TextBox ID="otherfactor3_text" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 33%">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="CNS" runat="server" Text=""></asp:Checkbox><b>CNS lesion or infection</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 17%">
                                                        <asp:Checkbox ID="abnormalities" runat="server" Text=""></asp:Checkbox><b>Metabolic abnormalities</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 14%">
                                                        &nbsp;
                                                    </td>
                                                    <td  class="td_label" style="width: 36%">
                                                        <table class="table_inside">
                                                            <tr class="tr_common">
                                                                <td  class="td_label">
                                                                    <asp:Checkbox ID="otherfactor4" runat="server" Text=""></asp:Checkbox>
                                                                </td>
                                                                <td  class="td_label" style="width:100%">
                                                                    <asp:TextBox ID="otherfactor4_text" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 15px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            <b><asp:Checkbox ID="not_prevent_resource_eligible" runat="server" Text=""></asp:Checkbox>NOT ELIGIBLE for the Early Start or the Prevention Resource and Referral Program</b>	
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="not_prevent_dueto1" runat="server" Text=""></asp:Checkbox><b>Consumer does not have an eligible condition for Regional Center services. Recommendations and referrals have been provided as delineated below.</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="not_prevent_dueto2" runat="server" Text=""></asp:Checkbox><b>Consumer does not appear to be at high risk of having a developmental disability. Recommendations and referrals have been provided as delineated below.</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100%">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="not_prevent_dueto3" runat="server" Text=""></asp:Checkbox><b>Consumer has a low incidence condition and is NOT ELIGIBLE for Regional Center services. Refer to appropriate school district.</b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td colspan=3 class="td_label">
                                            <asp:Label ID="Label45" runat="server" Width="150px" Font-Bold="True" Text="RECOMMENDATIONS:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="pediatric" runat="server" Text=""></asp:Checkbox><b>Continue pediatric and other related specialist follow up, as recommended.</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="inhome_development" runat="server" Text=""></asp:Checkbox><b>In Home Infant Development: day(s) per week </b>
                                            <asp:TextBox ID="inhome_week" runat="server" CssClass="inface" Width="50px" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="monitor" runat="server" Text=""></asp:Checkbox><b>Continue to monitor vision and hearing status</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="centerbase_development" runat="server" Text=""></asp:Checkbox><b>Center Based Infant Development: day(s) per week </b>
                                            <asp:TextBox ID="centerbase_week" runat="server" CssClass="inface" Width="50px" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="recv_insurance" runat="server" Text=""></asp:Checkbox><b>Continue to receive medical insurance coverage</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="inviteparent" runat="server" Text=""></asp:Checkbox><b>Preschool: day(s) per week </b>
                                            <asp:TextBox ID="invitetime" runat="server" CssClass="inface" Width="50px" MaxLength="20"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="recv_supports" runat="server" Text=""></asp:Checkbox><b>Continue to receive supports such as WIC, AFDC and/or Food Stamps, as applicable.</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="speech" runat="server" Text=""></asp:Checkbox><b>Speech:&nbsp;
                                            <asp:Checkbox ID="speech_therapy" runat="server" Text=""></asp:Checkbox>Therapy
                                            <asp:Checkbox ID="speech_evaluation" runat="server" Text=""></asp:Checkbox>Monitoring
                                            <asp:Checkbox ID="speech_consult" runat="server" Text=""></asp:Checkbox>Consult&nbsp;&nbsp;&nbsp;day(s) per week</b>
                                            <asp:TextBox ID="speech_week" runat="server" CssClass="inface" Width="50px" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="audiology_evaluation" runat="server" Text=""></asp:Checkbox><b>Consider an Audiology Evaluation, via generic resource</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="multi_disciplinary" runat="server" Text=""></asp:Checkbox><b>Multi-Disciplinary Team/Clinic</b>
                                            <asp:TextBox ID="ClinicDate" runat="server" Width="100px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                            <asp:TextBox ID="ClinicTime" runat="server" Width="100px" CssClass="inface" >
                                            </asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"   style="width:49%">
                                            <asp:Checkbox ID="oph_evaluation" runat="server" Text=""></asp:Checkbox><b>Consider an Ophthalmology Evaluation, via generic resource</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="occupational" runat="server" Text=""></asp:Checkbox><b>Occupational:&nbsp;
                                            <asp:Checkbox ID="occup_therapy" runat="server" Text=""></asp:Checkbox>Therapy
                                            <asp:Checkbox ID="occup_evaluation" runat="server" Text=""></asp:Checkbox>Monitoring
                                            <asp:Checkbox ID="occup_consult" runat="server" Text=""></asp:Checkbox>Consult&nbsp;&nbsp;&nbsp;day(s) per week</b>
                                            <asp:TextBox ID="occup_week" runat="server" CssClass="inface" Width="50px" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="request_med_records" runat="server" Text=""></asp:Checkbox><b>Request Medical Records</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="physical" runat="server" Text=""></asp:Checkbox><b>Physical:&nbsp;
                                            <asp:Checkbox ID="physical_therapy" runat="server" Text=""></asp:Checkbox>Therapy
                                            <asp:Checkbox ID="physical_evaluation" runat="server" Text=""></asp:Checkbox>Monitoring
                                            <asp:Checkbox ID="physical_consult" runat="server" Text=""></asp:Checkbox>Consult&nbsp;&nbsp;&nbsp;day(s) per week</b> 
                                            <asp:TextBox ID="physical_week" runat="server" CssClass="inface" Width="50px" MaxLength="50"></asp:TextBox>
                                         </td>                                  
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="FRC" runat="server" Text=""></asp:Checkbox><b>Refer to FRC</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="nurse_assessment" runat="server" Text=""></asp:Checkbox><b>Nursing Assessment</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="ccs_MTU" runat="server" Text=""></asp:Checkbox><b>Refer to CCS-MTU for</b>
                                            &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="OT" runat="server" Text=""></asp:Checkbox><b>OT</b>
                                            &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="PT" runat="server" Text=""></asp:Checkbox><b>PT</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="nutrition_consult" runat="server" Text=""></asp:Checkbox><b>Nutrition Consult</b>                                            
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="pediatrician" runat="server" Text=""></asp:Checkbox><b>Pediatrician to continue to monitor development and re-refer if delays develop in the future.</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="refer_to_other" runat="server" Text=""></asp:Checkbox><b>Other</b>
                                            <asp:TextBox ID="other_reason" runat="server" CssClass="inface" Width="350px" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="developmental_evaluation" runat="server" Text=""></asp:Checkbox><b>Developmental Monitoring</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="psy_evaluation" runat="server" Text=""></asp:Checkbox><b>Psychological Evaluation</b>
                                            
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="beginplanning" runat="server" Text=""></asp:Checkbox><b>Begin transition planning</b>
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="Therapy" runat="server" Text=""></asp:Checkbox><b>Behavior Therapy</b>
                                            <asp:Checkbox ID="behavior_evaluation" runat="server" Text=""></asp:Checkbox><b>Behavior Evaluation</b>
                                            <asp:Checkbox ID="oph_consult" runat="server" Text=""></asp:Checkbox><b>Behavior Orientation</b>
                                            <asp:Checkbox ID="BMC" runat="server" Text=""></asp:Checkbox><b>Behavior Workshops</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="EHS" runat="server" Text=""></asp:Checkbox><b>Refer to Early Head Start/ Community program  with typically developing peers:</b>
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 50px">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label49" runat="server" Text="Name:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5px">
                                                    </td>
                                                    <td class="td_unline"  style="width: 200px">
                                                        <asp:TextBox ID="EHS_name" runat="server" CssClass="inface" MaxLength="50">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" style="height:5px"></td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 50px">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label50" runat="server" Text="Telephone:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5px">
                                                    </td>
                                                    <td class="td_unline"  style="width: 200px">
                                                        <asp:TextBox ID="EHS_phone" runat="server"  CssClass="inface" MaxLength="20">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                            </table>  
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="refer_to_MHA" runat="server" Text=""></asp:Checkbox><b>Refer to a Mental Health Agency</b>
                                            <table class="table_inside">
                                                <tr valign="top" class="tr_common">
                                                    <td  class="td_label" style="width: 50px">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="Name:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5px">
                                                    </td>
                                                    <td class="td_unline"  style="width: 200px">
                                                        <asp:TextBox ID="MHA_name" runat="server"  CssClass="inface" MaxLength="50">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" style="height:5px"></td>
                                                </tr>
                                                <tr valign="top" class="tr_common">
                                                    <td  class="td_label" style="width: 50px">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" Text="Telephone:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5px">
                                                    </td>
                                                    <td class="td_unline"  style="width: 200px">
                                                        <asp:TextBox ID="MHA_phone" runat="server" CssClass="inface" MaxLength="20">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:49%">
                                            <asp:Checkbox ID="other" runat="server" Text=""></asp:Checkbox><b>Other</b>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <table class="table_inside">
                                                <tr valign="top" class="tr_common">
                                                    <td  class="td_label" style="width: 50px">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Name:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5px">
                                                    </td>
                                                    <td class="td_unline"  style="width: 200px">
                                                        <asp:TextBox ID="Other_name" runat="server" CssClass="inface" MaxLength="50">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" style="height:5px"></td>
                                                </tr>
                                                <tr valign="top" class="tr_common">
                                                    <td  class="td_label" style="width: 50px">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="Telephone:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5px">
                                                    </td>
                                                    <td class="td_unline"  style="width: 200px">
                                                        <asp:TextBox ID="Other_phone" runat="server" CssClass="inface" MaxLength="20">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width:auto"></td>
                                                </tr>            
                                            </table>                                           
                                        </td>
                                        <td style="width: 2%"></td>
                                        <td class="td_label"  style="width:49%">
                                            <asp:Checkbox ID="refer_to_school" runat="server" Text=""></asp:Checkbox><b>Refer to </b>
                                            <asp:TextBox ID="school_district" runat="server" MaxLength="50" Width="100px" CssClass="inface">
                                            </asp:TextBox> <b>unified school district</b><br />
                                            <asp:Checkbox ID="MCR" runat="server" Text=""></asp:Checkbox><b>Medical Clearance Required</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="mcr_comments" runat="server" MaxLength="100" Width="300px" CssClass="inface">
                                            </asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td ></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label30" runat="server" Text="Team Recommendations:"  Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="height: 100px" valign="top">
                                            <asp:TextBox ID="sign_comments" runat="server" MaxLength="500" Height="100px" TextMode="MultiLine" BorderStyle="Solid" Wrap="true" Width="97%">
                                            </asp:TextBox><br />
                                            <asp:RegularExpressionValidator ID="regSignComments" runat="server" ControlToValidate="sign_comments" 
                                                ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Maximum of 500 characters allowed" Text="" ></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                                    <tr style="border: thin solid #CC99CC;">
                                        <td class="td_label" align="center" style="width:40%">
                                            <asp:Label ID="l_SpecCheckList" runat="server" Font-Bold="True" Text="ELIGIBILITY TEAM PARTICIPANTS"></asp:Label>
                                        </td>
                                        <td class="td_label" align="left" style="width:40%">
                                            <asp:button id="btnSignature" Runat="server" Text="SIGNATURE" style="width:100px" OnClientClick="CheckSignPwd();return false;"
                                                Enabled="false" CssClass="buttonbluestyle"></asp:button>
                                        </td>
                                        <td class="td_label" width=auto></td>
                                    </tr>
                                    
                                    <tr class="tr_common" style="border: thin solid #CC99CC;" >
                                        <td colspan=2 class="td_label">
                                            <asp:CheckBoxList ID="SpecCheckList" runat="server" BackColor="#CEE3F6"  
                                            DataValueField="employeeID" DataTextField="SpecialistNameTitle">
                                            </asp:CheckBoxList>
                                        </td>
                                        <td class="td_label" width=auto></td>
                                    </tr>
                                    <tr>
                                        <td colspan=3>
                                            <table class="table_inside">
                                                <tr style="height: 5px;">
                                                    <td colspan=8>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_label"  style="width: 220px;">
                                                        <b>Service Coordinator</b>	
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td class="td_unline"  style="width: 250px;">
                                                        <asp:TextBox ID="service_coordinator" runat="server" MaxLength="50" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td></td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan=8>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_label"  style="width: 220px;">
                                                        <b><asp:Checkbox ID="med_records" runat="server" Text=""></asp:Checkbox>Medical records reviewed by</b>	
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td class="td_unline"  style="width: 250px;">
                                                        <asp:TextBox ID="reviewedby" runat="server" MaxLength="50" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td class="td_label"  style="width: 80px;">
                                                        <b>Date:</b>
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td  class="td_unline" style="width: 150px;">
                                                        <asp:TextBox ID="revieweddate" runat="server" CssClass="inface" contentEditable="false" Font-Names="Comic Sans MS">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  style="width: 220px;">
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td align="left" class="td_label" style="width: 250px;">
                                                       Physician/Nurse/Medical Staff
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td style="width: 80px;">
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td  align="left" style="width: 150px;">
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan=8>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_label"  style="width: 220px;">
                                                        <b>Digitally Signed By</b>	
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td class="td_unline"  style="width: 250px;">
                                                        <asp:TextBox ID="med_records_reviewedby" runat="server" MaxLength="50" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td class="td_label"  style="width: 80px;">
                                                        <b>Date:</b>
                                                    </td>
                                                    <td style="width:5px"></td>
                                                    <td  class="td_unline" style="width: 150px;">
                                                        <asp:TextBox ID="med_records_revieweddate" runat="server" CssClass="inface" contentEditable="false" Font-Names="Comic Sans MS">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 15px;">
                                        <td colspan=3>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    </div>
                    <div id="Esr_MI"  style="display:none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" align="left" border="0">
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 120px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="l_height" runat="server" Text="Current Height:"></asp:Label></b>
                                            </td>
                                            <td width="5" style="width: 20px">
                                            </td>
                                            <td class="td_unline"  style="width: 60px">
                                                <asp:Label ID="height" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td width="5" style="width: 20px">
                                            </td>
                                            <td style="width: 60px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="Label3" runat="server" Text="Inches"></asp:Label></b>
                                            </td>
                                            <td width="20" style="width: 20px">
                                            </td>
                                            <td style="width: 120px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="l_weight" runat="server" Text="Current Weight:"></asp:Label></b>
                                            </td>
                                            <td width="5" style="width: 20px">
                                            </td>
                                            <td class="td_unline"  width="60" style="height: 20px">
                                                <asp:Label ID="weight" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td width="5" style="width: 20px">
                                            </td>
                                            <td style="width: 60px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="Label883" runat="server" Text="Lbs"></asp:Label></b>
                                            </td>
                                            <td width="20" style="width: 20px">
                                            </td>
                                            <td style="width: 120px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="l_cderHeight" runat="server" Text="Height in CDER:"></asp:Label></b>
                                            </td>
                                            <td class="td_label"  width="50" >
                                                <asp:Label ID="cderHeight" runat="server"  CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 60px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="Label9" runat="server" Text="Inches"></asp:Label></b>
                                            </td>
                                            <td width="20" style="width: 20px">
                                            </td>
                                            <td style="width: 120px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="l_cderWeight" runat="server" Text="Weight in CDER:"></asp:Label></b>
                                            </td>
                                            <td class="td_label"  width="50">
                                                <asp:Label ID="cderWeight" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 60px;"  class="td_label">
                                                <b>
                                                    <asp:Label ID="Label17" runat="server" Text="Lbs"></asp:Label></b>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Current Medical/Health Status</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="status" TextMode="MultiLine" Wrap="true" CssClass="infaceText" BorderStyle="Solid"
                                        runat="server" Width="97%" Height="120" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Restricted Health Conditions</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Gtube" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />G-Tube</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Disease" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Communicable/Infectious Disease</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Oxygen" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Oxygen</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Trach" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Tracheostomy</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Wound" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Wound/Dermal Ulcer</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Inhalation" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Inhalation Device</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="NIDiabetes" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Non-Insulin Dependent Diabetes</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Catheter" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Urinary Catheter</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Diastat" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Diastat</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="IDiabetes" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Insulin Dependent Diabetes</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Colostomy" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Colostomy/Ileostomy</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Enema" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Fecal Impaction, Enema or Suppository</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Special Health Needs</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Seizure" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Seizure Disorder</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Constipation" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Constipation/Hx of Obstruction</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="ADL" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />ADL Dependence</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="VNS" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />VNS</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Anticoag" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Anticoagulant Medication</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Baclofen" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Baclofen Pump</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Dialysis" runat="server" Enabled="False" Text=""
                                            OnClick="DataChanged()" />Renal Dialysis</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Eating" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Eating Disorder</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Epipen" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Epipen</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Suctioning" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Suctioning</b>
                                </td>
                                <td class="td_label" style="width: 280px"  width="280" height="20">
                                    <b>
                                        <asp:CheckBox ID="Pacemaker" runat="server" Enabled="False" Text="" 
                                            OnClick="DataChanged()" />Pacemaker</b>
                                </td>
                                <td style="width: 280px"  width="280" height="20">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Special Health Care Requirements (from CDER)</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="cderequipment" TextMode="MultiLine" Wrap="true"
                                        BorderStyle="Solid" runat="server" Width="97%" Height="40" ReadOnly="True" CssClass="infaceText"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Additional Special Equipment</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="equipment" TextMode="MultiLine" Wrap="true" ReadOnly="True"
                                        BorderStyle="Solid" runat="server" Width="97%" Height="60" CssClass="infaceText"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Special Diet</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    (As Reported By Family, Facility, Etc.)
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="specialdiet" TextMode="MultiLine" Wrap="true" ReadOnly="True"
                                        BorderStyle="Solid" runat="server" Width="97%" Height="60" CssClass="infaceText"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Allergies / Reactions to Medications or other Substances / Medication Side Effects</b>&nbsp;&nbsp;&nbsp;
                                    (As Reported By Family, Facility, Etc.)
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="allergies" TextMode="MultiLine" Wrap="true" ReadOnly="True" CssClass="infaceText"
                                        BorderStyle="Solid" runat="server" Width="97%" Height="60"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Dental Health</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="dentalhealth" TextMode="MultiLine" Wrap="true" ReadOnly="True"
                                        CssClass="infaceText" BorderStyle="Solid" runat="server" Width="97%" Height="80"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>Other Tests and Medication</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                    <asp:TextBox ID="tbpositive" TextMode="MultiLine" Wrap="true" ReadOnly="True"
                                        CssClass="infaceText" BorderStyle="Solid" runat="server" Width="97%" Height="80"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" colspan="3">
                                    <b>
                                        <asp:Label ID="l_gender" runat="server" Text="Women's Health"></asp:Label></b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 280px"  width="280" height="20">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_lastmenses" runat="server" Text="Last Menses:"></asp:Label>
                                                    <asp:Label ID="l_prostateexam" runat="server" Text="Last Prostate Exam:" Visible="false"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:Label ID="lastmenses" runat="server" CssClass="infaceText"></asp:Label>
                                                <asp:Label ID="prostateexam" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 280px"  width="280" height="20">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_gynexam" runat="server" Text="Last Gynecological Exam:"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:Label ID="gynexam" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 280px"  width="280" height="20">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_mammogram" runat="server" Text="Last Mammogram:"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:Label ID="mammogram" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 280px"  width="280" height="20">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_mensesreg" runat="server" Text="Regular Menses:"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:Label ID="mensesreg" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 280px"  width="280" height="20">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_papsmear" runat="server" Text="Last Pap Smear:"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:Label ID="papsmear" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 280px"  width="280" height="20">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 280px"  width="280" height="20">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_birthcontrol" runat="server" Text="Birth Control:"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:DropDownList ID="birthcontrol" runat="server" CssClass="infaceDropRead" OnClick="DataChanged()"
                                                    Enabled="False">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td colspan="2">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 170px"  width="170" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_birthcontroltype" runat="server" Text="Birth Control Type:"></asp:Label>
                                                </b>
                                            </td>
                                            <td width="5" style="height: 20px">
                                            </td>
                                            <td class="td_unline"  width="100" style="height: 20px">
                                                <asp:Label ID="birthcontroltype" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Esr_MD"  style="display:none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr style="height: 30px;" valign="middle">
                                            <td align="left">
                                                <asp:Label ID="l_MedicationList" runat="server" Font-Size="Larger" Font-Bold="True"
                                                    ForeColor="Green" Height="18px">MEDICATION(S) LIST</asp:Label>
                                            </td>
                                            <td  width="300px">
                                                
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 25px;">
                                <td>
                                    <b>CURRENT MEDICATION LIST</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DataGrid ID="dg_medicationlist" runat="server" AllowPaging="False" CssClass="grd_body"
                                        AutoGenerateColumns="False" AllowSorting="False" 
                                        onitemdatabound="dg_medicationlist_ItemDataBound">
                                        <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine">
                                        </HeaderStyle>
                                        <ItemStyle CssClass="grd_item"></ItemStyle>
                                        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                                        <Columns>
                                            <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="medication" HeaderText="Current Medication(s)">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="dosage" HeaderText="Dosage">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="frequency" HeaderText="Frequency">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="purpose" HeaderText="Reason For Use">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="View">
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                <ItemTemplate>
                                                    <asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" runat="server" ImageUrl="../img/view.gif"
                                                        BorderWidth="0"></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 25px;">
                                <td>
                                    <b>DISCONTINUED MEDICATION LIST</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DataGrid ID="dg_medicationdiscontlist" runat="server" AllowPaging="False" CssClass="grd_body"
                                        AutoGenerateColumns="False" AllowSorting="False" 
                                        onitemdatabound="dg_medicationdiscontlist_ItemDataBound">
                                        <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine">
                                        </HeaderStyle>
                                        <ItemStyle CssClass="grd_item"></ItemStyle>
                                        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                                        <Columns>
                                            <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="medication" HeaderText="Discontinued Medication(s)">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="dosage" HeaderText="Dosage">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="frequency" HeaderText="Frequency">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="purpose" HeaderText="Reason For Use">
                                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                            </asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="View">
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                <ItemTemplate>
                                                    <asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" runat="server" ImageUrl="../img/view.gif"
                                                        BorderWidth="0"></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            </Columns>
                                    </asp:DataGrid>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
