<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchSirInstructions.aspx.cs"
    Inherits="Virweb2.FormList.SearchSirInstructions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self"></base>
    <title>:::Instructions List:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
       function doseltdbyflag(flag) 
       {
           Med.style.display = "none";
           ActTaken.style.display = "none";
           PrevAct.style.display = "none";

           switch (flag) 
           {
               case 1:
                   Med.style.display = "";
                   document.InsInfo.now_div_flag.value = "1";
                   break;
               case 2:
                   ActTaken.style.display = "";
                   document.InsInfo.now_div_flag.value = "2";
                   break;
               case 3:
                   PrevAct.style.display = "";
                   document.InsInfo.now_div_flag.value = "3";
                   break;     
           }
       }
       
       function Select_Instructions() {
           var opener = window.dialogArguments;
           var flag = document.InsInfo.now_div_flag.value.toString();
           var cblv = "", cbid = "";
           switch (flag) {
               case "1":
                   var chkListContainer = document.getElementById("MedCheckList");
                   var chkList = chkListContainer.getElementsByTagName("input");
                   for (var i = 0; i < chkList.length; i++) {
                       if (chkList[i].checked) {
                           cblv += document.getElementById("MedCheckList_" + i.toString()).nextSibling.innerHTML + ";\n";
                           cbid += i.toString() + ";";
                       }
                   }
                   if (isIE()) {
                       var extstr = opener.document.SAInfo.sa_treatment_followup.value;
                       opener.document.SAInfo.sa_treatment_followup.value = extstr + "\n" + cblv.toString();
                       //opener.document.SAInfo.RiskFactor.value = cbid.toString();
                       opener.focus();
                   }
                   else {
                       var extstr = window.opener.document.SAInfo.sa_treatment_followup.value;
                       window.opener.document.SAInfo.sa_treatment_followup.value = extstr + "\n" + cblv.toString();
                       //window.opener.document.SAInfo.RiskFactor.value = cbid.toString();
                       window.opener.focus();
                   }
                   break;
               case "2":
                   var chkListContainer = document.getElementById("ActTakenCheckList");
                   var chkList = chkListContainer.getElementsByTagName("input");
                   for (var i = 0; i < chkList.length; i++) {
                       if (chkList[i].checked) {
                           cblv += document.getElementById("ActTakenCheckList_" + i.toString()).nextSibling.innerHTML + ";\n";
                           cbid += i.toString() + ";";
                       }
                   }
                   if (isIE()) {
                       opener.document.SAInfo.sa_action_taken.value = cblv.toString();
                       //opener.document.SAInfo.RiskFactor.value = cbid.toString();
                       opener.focus();
                   }
                   else {
                       window.opener.document.SAInfo.sa_action_taken.value = cblv.toString();
                       //window.opener.document.SAInfo.RiskFactor.value = cbid.toString();
                       window.opener.focus();
                   }
                   break;
               case "3":
                   var chkListContainer = document.getElementById("PrevActCheckList");
                   var chkList = chkListContainer.getElementsByTagName("input");
                   for (var i = 0; i < chkList.length; i++) {
                       if (chkList[i].checked) {
                           cblv += document.getElementById("PrevActCheckList_" + i.toString()).nextSibling.innerHTML + ";\n";
                           cbid += i.toString() + ";";
                       }
                   }
                   if (isIE()) {
                       opener.document.SAInfo.sa_action_prevent.value = cblv.toString();
                       //opener.document.SAInfo.RiskFactor.value = cbid.toString();
                       opener.focus();
                   }
                   else {
                       window.opener.document.SAInfo.sa_action_prevent.value = cblv.toString();
                       //window.opener.document.SAInfo.RiskFactor.value = cbid.toString();
                       window.opener.focus();
                   }
                   break;
           }
           window.close();
       }	
    </script>
</head>
<body>
    <form id="InsInfo" runat="server">
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="0" runat="server" />
    <div align="center">
        <br />
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr>
                <td colspan="3" height="20px">
                </td>
            </tr>
            <tr align="center">
                <td>
                    <input type="button" name="btnPaste" id="btnPaste" value="PASTE" style="width: 150px"
                        class="buttonbluestyle" runat="server" onclick="javascript:Select_Instructions();" />
                </td>
                <td width="80px">
                </td>
                <td>
                    <input type="button" name="btnCancel" id="btnCancel" value="Cancel" style="width: 150px"
                        class="buttonbluestyle" runat="server" onclick="javascript:window.close();" />
                </td>
            </tr>
            <tr>
                <td colspan="3" height="5">
                </td>
            </tr>
            <tr>
                <td colspan="3" height="3" style="background-color: #cc99cc">
                </td>
            </tr>
            <tr>
                <td colspan="3" height="8">
                </td>
            </tr>
        </table>
    </div>
    <div id="Med">
        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
            <tr>
                <td>
                    <asp:CheckBoxList ID="MedCheckList" runat="server">
                        <asp:ListItem>Please indicate admission and discharge diagnosis; indicate treatment rendered during hospitalization, discharge plan /recommendations and consumer’s condition upon release and release date.</asp:ListItem>
                        <asp:ListItem>If medication was prescribed or if there was a change in the consumer’s prescription please indicate the name(s) of newly prescribed/changed medication(s).</asp:ListItem>
                        <asp:ListItem>Please state whether the consumer’s injury(ies) healed. Indicate the date that consumer’s sutures/staples were or are scheduled to be removed. State any additional recommendations given by consumer’s physician/healthcare provider.</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
    </div>
    <div id="ActTaken" style="display: none;">
        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 92%">
            <tr>
                <td>
                    <asp:CheckBoxList ID="ActTakenCheckList" runat="server">
                        <asp:ListItem>Please state any additional care provided by or to be provided by the vendor/facility staff in response to this SIR. (Include follow-up physician /dental appointments w/outcome, as applicable).</asp:ListItem>
                        <asp:ListItem>Please indicate action taken by the vendor to decrease future AWOL behavior (i.e. implementation or change in consumer’s behavior plan). If a behavior plan has been implemented or changed, state what the plan will include to address the behavior.</asp:ListItem>
                        <asp:ListItem>Please insure the incident was reported to CCL, APS, DCFS, DHS, the Ombudsman Office; Law Enforcement. Place the outside agency’s contact information on page one of this SIR and indicate the outcome/results of the outside agency’s investigation/finding.</asp:ListItem>
                        <asp:ListItem>Indicate whether consumer experienced any effects from not taking medication as prescribed. State whether consumer's physician was contacted for instruction on how to proceed with administering the medication. State whether consumer medication has resumed. Indicate how consumer is presently doing, medically</asp:ListItem>
                        <asp:ListItem>Indicate any additional care to be provided by vendor.</asp:ListItem>
                        <asp:ListItem>Indicate whether consumer experienced any effects from not taking/receiving medication as prescribed. State whether consumer's physician was contacted regarding the missed medication, and instruction given to proceed with the next dosage/application. State how consumer is presently doing and whether his/her medication regimen has resumed as prescribed.</asp:ListItem>
                        <asp:ListItem>Indicate action/recommendation given or taken by the Court/Law Enforcement/Probation Department, etc. regarding consumer's judicial involvement. State how consumer is presently doing and indicate consumer's present  housing / living accommodations.</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
    </div>
    <div id="PrevAct" style="display: none;">
        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 92%">
            <tr>
                <td>
                    <asp:CheckBoxList ID="PrevActCheckList" runat="server">
                        <asp:ListItem>Copy and paste clinical Id notes from hospital tracking.</asp:ListItem>
                        <asp:ListItem>Please indicate QA action and the vendor’s response. State the date(s) that the vendor satisfied the CAP and or other QA recommendations. </asp:ListItem>
                        <asp:ListItem>Indicate any additional supports or services implemented by SCLARC to address consumer’s needs.</asp:ListItem>
                        <asp:ListItem>Indicate SCAN recommendations.</asp:ListItem>
                        <asp:ListItem>Please prepare consumer's case for Mortality Review; ensure that the face sheet is changed to STATUS Code 7-Deceased within 30 days of this report. Submit to Quality Management’s  Support Staff when complete. </asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
