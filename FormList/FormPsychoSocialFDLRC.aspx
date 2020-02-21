<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormPsychoSocialFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormPsychoSocialFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
<head>
    <base target="_self"></base>
    <title>:::Lanterman Psycho-Social Assessment:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/Common.js"></script>
    <script language="javascript">
    <!--
        function doseltd(obj) {

            TAB1.style.color = "";
            TAB2.style.color = "";
            TAB3.style.color = "";

            obj.style.color = "#990066";

            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    document.SocialFormInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    document.SocialFormInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    document.SocialFormInfo.now_div_flag.value = "3";
                    break;
            }
        }

        function doseltdbyid(obj_id) {

            TAB1.style.color = "";
            TAB2.style.color = "";
            TAB3.style.color = "";

            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

            switch (obj_id) {
                case "TAB1":
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    document.SocialFormInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    document.SocialFormInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    document.SocialFormInfo.now_div_flag.value = "3";
                    break;
            }
        }

        function doseltdbyflag(flag) {
            TAB1.style.color = "";
            TAB2.style.color = "";
            TAB3.style.color = "";

            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

            switch (flag) {
                case 1:
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    document.SocialFormInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    document.SocialFormInfo.now_div_flag.value = "2";
                    break;
                case 3:
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    document.SocialFormInfo.now_div_flag.value = "3";
                    break;
            }
        }
        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.SocialFormInfo.submit(); 
            window.focus();   
        }

        function print_click() {
            //PopupMessage(10);
            var flag=document.SocialFormInfo.now_div_flag.value.toString();
            var entrykey = document.SocialFormInfo.entrykey.value.toString();
            var uci = document.SocialFormInfo.consumer_key.value.toString();
            var UserAct = document.SocialFormInfo.UserAct.value.toString();
            var url = "PrintFormPsychoSocialFDLRC.aspx?Entrykey=" + entrykey +"&uci=" + uci + "&flag=" + flag + "&UserAct=" + UserAct;;
            winhref(url, 'PrintFormPsychoSocialFDLRC');
        }

        function save_click() {
            return true;
        }

        function back_click() {
            document.location.replace('FormPsychoSocialList.aspx');
        }

        function Sign(UserName) {
            //if ( document.SocialFormInfo.checksign.value == "Sign")
            //{
            //}
            //else 
            if (document.SocialFormInfo.checksign.value == "Finial")
            {          
               document.SocialFormInfo.checksign.value = "Finialed";
               var nowdate = new Date();
               document.getElementById("SubmittedBy").value = UserName.toString();
               document.getElementById("SubmitDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            else if ( document.SocialFormInfo.checksign.value == "RemoveSign")
            {
               document.SocialFormInfo.checksign.value = "RemoveSigned";
            }
            window.document.SocialFormInfo.submit(); 
        }

        function SCSign(UserName)  {
            document.SocialFormInfo.checksign.value = "Signed";
            var nowdate = new Date();
            document.getElementById("SCSignature").value = UserName.toString();
            document.getElementById("SCSignatureDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            window.document.SocialFormInfo.submit(); 
        }

        function CheckFinialPwd() {
            document.SocialFormInfo.checksign.value = "Finial";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckRemoveSignPwd() {
            document.SocialFormInfo.checksign.value = "RemoveSign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission() {
            PopupMessage(42);
            return false;
        }

        function NoSCPermission()
        {
            PopupMessage(80);
            return false;
        }
    //-->
    </script>

</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="SocialFormInfo" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="checksign" id="checksign" value="" runat="server" />
        <div align="center" style="WIDTH:100%">  
	    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	        <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      onclientclick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save"
                      onclientclick="return save_click();" OnClick="btnAdd_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <asp:ImageButton ID="btnTransfer" runat="server" AlternateText="Transfer" 
                        Style="width: 25px; height: 25px" ImageUrl="../img/tools.ico" ToolTip="Transfer" Visible="false" 
                        OnClick="btnTransfer_Click"></asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnRetrieve" runat="server" AlternateText="Retrieve"
                        Style="width: 25px; height: 25px" ImageUrl="../img/unlock.ico" ToolTip="Retrieve" Visible="false" 
                        OnClick="btnRetrieve_Click"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />
                    &nbsp;  
                    <cc1:UltimateSpell ID="UltimateSpell18" 
                      ControlIdsToCheck="Initial_Diagnosis,Present_Interview,Comments,Family_situation,Development,Medical_History,Current_Function,Self_Care,Social,Emotional,Communication,Cognitive,Educational_History,Vocational,Placement_Information,Legal_Information,Financial_Information,FinancialComments,Summary,Recommendation" 
                      ShowModal="false" runat="server" Visible="false">
                    </cc1:UltimateSpell>  
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Social Assessment</asp:Label>
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
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="TAB1" style="color:#990066;" class="tab_sel" onclick="doseltd(this);" 
                                 width="150">
                                <b><u>Review</u></b>
                            </td>
                            <td id="TAB2" class="tab_sel" onclick="doseltd(this);"
                                 width="150">
                                <b><u>Medication</u></b>
                            </td>
                            <td id="TAB3" class="tab_sel" onclick="doseltd(this);"
                                 width="150">
                                <b><u>Doctor</u></b>
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
                    <div id="Tab1">
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
                                                    Height="24px">LANTERMAN PSYCHO-SOCIAL</asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="ReturnedDiv" runat="server">
                                        <table class="table_inside">
                                            <tr class="tr_common">
                                                <td style="width: 60px">
                                                </td>
                                                <td class="td_label" style="width: 200px;">
                                                    <b>Returned By:</b>
                                                </td>
                                                <td style="width: 5px">
                                                </td>
                                                <td class="td_unline" style="width: 300px;">
                                                    <asp:TextBox ID="Returnedby" runat="server" contentEditable="false" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                </td>
                                                <td style="width: 50px">
                                                </td>
                                                <td class="td_label" style="width: 150px;">
                                                    <b>Returned Date:</b>
                                                </td>
                                                <td style="width: 5px">
                                                </td>
                                                <td class="td_unline" style="width: 150px;">
                                                    <asp:TextBox ID="Returneddate" contentEditable="false"
                                                        runat="server" CssClass="inface">
                                                    </asp:TextBox>
                                                </td>
                                                <td>&nbsp;</td>
                                                <td style="width:auto"></td>
                                            </tr>
                                            <tr style="height: 5px;">
                                                <td colspan="10">
                                                </td>
                                            </tr>
                                        </table>      
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                             <td style="width: 60px"></td>
                                             <td class="td_label" style="width: 200px;"><b>Applicant's Primary Language:</b>
                                             </td>
                                             <td style="width: 5px">
                                                </td>
                                             <td class="td_unline" style="width: 260px;">
                                                 <asp:TextBox ID="LanguageName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                             </td>
                                             <td style="width: 50px">
                                             </td>
                                             <td class="td_label" style="width: 150px;">
                                                <b>Assessment Coordinator:</b>
                                             </td>
                                             <td style="width: 5px">
                                             </td>
                                             <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="AppSC" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                             <td>&nbsp;</td>
                                             <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_label" style="width: 200px;">
                                                <b>RE:</b>
                                            </td>
                                            <td style="width: 5px">
                                                </td>
                                            <td class="td_unline" style="width: 300px;">
                                                <asp:TextBox ID="ConsumerName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                            <td style="width: 50px">
                                            </td>
                                            <td class="td_label" style="width: 150px;">
                                                <b>D.O.B:</b>
                                            </td>
                                            <td style="width: 5px">
                                                </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                 onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="9"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px">
                                            </td>
                                            <td class="td_label" style="width: 200px;">
                                                <b>UCI#:</b>
                                            </td>
                                            <td style="width: 5px">
                                                </td>
                                            <td class="td_unline" style="width: 300px;">
                                                <asp:Label ID="c_key" runat="server" CssClass="infaceText"></asp:Label></td>
                                            <td style="width: 50px">
                                            </td>
                                            <td class="td_label" style="width: 150px;">
                                                <b>Date of Intake Meeting:</b>
                                            </td>
                                            <td style="width: 5px">
                                                </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="Meeting_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox></td>
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
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height:10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label">
                                               <b>REQUEST FOR SERVICE AND IDENTIFYING INFORMATION</b>
                                            </td>
                                        </tr>
                                     </table>   
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label" style="width: 150px;"><b>Applicant Name:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 300px;">
                                                <asp:Label ID="lbl_ApplicantName" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 50px"></td>
                                            <td class="td_label" style="width: 100px;"><b>Age:</b></td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:Label ID="lbl_Age" runat="server" CssClass="infaceText"></asp:Label>
                                             </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                     </table>   
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td></td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Identifying Information:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Comments" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Family History:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Family_situation" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Family_situation" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>BIRTH AND EARLY DEVELOPMENT:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Development" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="Development" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>MEDICAL HISTORY:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Medical_History" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="Medical_History" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>EDUCATIONAL HISTORY:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Educational_History" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell12" ControlIdsToCheck="Educational_History" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell> 
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>CURRENT FUNCTIONING:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Motor:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Current_Function" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="Current_Function" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>   
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Communication:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Communication" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="Communication" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell> 
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Social/ Behavioral:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Social" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="Social" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell> 
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Emotional:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Emotional" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Emotional" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell> 
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Cognitive:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Cognitive" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="Cognitive" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>     
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>Independent Living/ Self-Care:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Self_Care" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell11" ControlIdsToCheck="Self_Care" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell> 
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>VOCATIONAL / EMPLOYMENT:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Vocational" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="Vocational" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>     
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>PLACEMENT INFORMATION:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Placement_Information" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell14" ControlIdsToCheck="Placement_Information" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>     
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>LEGAL INFORMATION:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Legal_Information" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell15" ControlIdsToCheck="Legal_Information" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell> 
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr class="tr_common">
                                                        <td  class="td_label">
                                                            <asp:Label ID="Label19" Font-Bold="True" runat="server" Text="FINANCIAL STATUS:"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td  colspan="9">
                                                        </td>
                                                    </tr>
                                                    <tr  class="tr_common">
                                                        <td style="width: 160px" class="td_label" >
                                                            <b><asp:Label ID="Label27" runat="server" Text="MediCal Number:"></asp:Label></b>
                                                        </td>
                                                        <td width="5">
                                                        </td>
                                                        <td class="td_unline"  width="300">
                                                            <asp:TextBox ID="c_medi_cal" runat="server" CssClass="inface" MaxLength="17"></asp:TextBox>
                                                        </td>
                                                        <td colspan="5">&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr  style="height: 5px;">
                                                        <td colspan="9"></td>
                                                    </tr>
                                                    <tr  class="tr_common">
                                                        <td style="width: 160px" class="td_label" >
                                                            <b><asp:Label ID="Label13" runat="server" Font-Bold="true" Text="Other Health Insurance:"></asp:Label></b>
                                                        </td>
                                                        <td width="5" >
                                                        </td>
                                                        <td class="td_unline"  width="300">
                                                        <asp:DropDownList ID="c_otherinsurance1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  CssClass="infaceDrop" OnClick="DataChanged()" >
                                                        </asp:DropDownList>
                                                        </td>
                                                        <td colspan="5">&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr  style="height: 5px;">
                                                        <td colspan="9"></td>
                                                    </tr>
                                                    <tr  class="tr_common">
                                                        <td style="width: 160px"  width="160" class="td_label" >
                                                            <b><asp:Label ID="Label26" runat="server" Font-Bold="true" Text="Policy #:"></asp:Label></b>
                                                        </td>
                                                        <td width="5" >
                                                        </td>
                                                        <td class="td_unline"  width="300">
                                                            <asp:TextBox ID="c_policy" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td colspan="5">&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr  style="height: 5px;">
                                                        <td colspan="9"></td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 160px"  width="160" class="td_label" >
                                                            <b><asp:Label ID="l_c_ssn" runat="server" Font-Bold="true" Text="Social Security Number:"></asp:Label></b>
                                                        </td>
                                                        <td  style="width: 5px">
                                                        </td>
                                                        <td width="300">
                                                            <table class="table_inside"  cellspacing="0" cellpadding="0" border="0">
                                                               <tr>
                                                                 <td  class="td_unline" width="35px">
                                                                    <asp:TextBox ID="SSN_1" runat="server" CssClass="inface" MaxLength="3" Width="35" 
                                                                    onKeyup="autotab(this, document.SocialFormInfo.SSN_2);"></asp:TextBox>
                                                                 </td>
                                                                 <td align="center" width="15px">-</td>
                                                                 <td class="td_unline" width="30px">
                                                                    <asp:TextBox ID="SSN_2" runat="server" CssClass="inface" MaxLength="2" Width="30"
                                                                    onKeyup="autotab(this, document.SocialFormInfo.SSN_3);"></asp:TextBox>
                                                                 </td>
                                                                 <td align="center" width="10px">-</td>
                                                                 <td class="td_unline" width="45px">
                                                                    <asp:TextBox ID="SSN_3" runat="server" CssClass="inface" MaxLength="4" Width="45"></asp:TextBox>
                                                                 </td>
                                                                 <td>&nbsp;</td>
                                                                 <td style="width:auto"></td>
                                                               </tr>
                                                            </table>  
                                                        </td>
                                                        <td style="width:15px"></td>
                                                        <td style="width: 60px"  class="td_label" >
                                                            <b><asp:Label ID="Label127" runat="server" Font-Bold="true" Text="WIC:" ></asp:Label></b></td>
                                                        <td width="5" >
                                                        </td>
                                                        <td style="width: 180px" class="td_label"  >
                                                            <asp:Radiobutton ID="WIC_1" groupname="WIC" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                                            &nbsp;&nbsp;&nbsp;
                                                            <asp:Radiobutton ID="WIC_2" groupname="WIC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                                            &nbsp;&nbsp;&nbsp;
                                                            <asp:Radiobutton ID="WIC_3" groupname="WIC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr  style="height: 5px;">
                                                        <td colspan="9"></td>
                                                    </tr>
                                                    <tr  class="tr_common">
                                                        <td style="width: 160px" class="td_label" >
                                                            <b><asp:Label ID="l_CCS" runat="server" Font-Bold="true" Text="CCS:"></asp:Label></b>
                                                        </td>
                                                        <td width="5" >
                                                        </td>
                                                        <td class="td_unline" width="100">
                                                            <asp:DropDownList ID="CCS" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                    CssClass="infaceDrop" OnClick="DataChanged()" >
                                                                    <asp:ListItem Value=""></asp:ListItem>
                                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                                    <asp:ListItem Value="X">N/A</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td  style="width: 15px">
                                                        </td>
                                                        <td style="width: 60px"  class="td_label" >
                                                            <b><asp:Label ID="l_CCS_Num" runat="server" Font-Bold="true" Text="CCS#"></asp:Label></b>
                                                        </td>
                                                        <td  style="width: 5px">
                                                        </td>
                                                        <td class="td_unline"  width="180">
                                                            <asp:TextBox ID="CCS_Num" runat="server" CssClass="inface" MaxLength="20" ></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr  style="height: 5px;">
                                                        <td colspan="9"></td>
                                                    </tr>
                                                    <tr  class="tr_common">
                                                        <td style="width: 160px" class="td_label" >
                                                            <b><asp:Label ID="Label14" runat="server" Font-Bold="true" Text="Address:"></asp:Label></b>
                                                        </td>
                                                        <td width="5" >
                                                        </td>
                                                        <td colspan="5" class="td_unline">
                                                            <asp:TextBox ID="CSSAddress" runat="server" CssClass="inface" MaxLength="150" ></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr  class="tr_common">
                                                        <td style="width: 60px" class="td_label" >
                                                            <b><asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Medicare:"></asp:Label></b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width:120">
                                                            <asp:DropDownList ID="Medicare" Width="120px" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnClick="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="width: 60px" class="td_label" >
                                                            <b><asp:Label ID="Label2" runat="server" Font-Bold="true" Text="SSI:"></asp:Label></b>
                                                        </td>
                                                        <td style="width: 5px" >
                                                        </td>
                                                        <td class="td_unline" style="width:120">
                                                            <asp:DropDownList ID="SSI" Width="120px" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnClick="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="width: 60px" class="td_label" >
                                                            <b><asp:Label ID="Label3" runat="server" Font-Bold="true" Text="SSA:"></asp:Label></b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width:120">
                                                            <asp:DropDownList ID="SSA" Width="120px" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnClick="DataChanged()" >
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="width: 60px" class="td_label" >
                                                            <b><asp:Label ID="Label4" runat="server" Font-Bold="true" Text="IHSS:"></asp:Label></b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width:120">
                                                            <asp:DropDownList ID="IHSS" Width="120px" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnClick="DataChanged()" >
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    </table>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 60px"></td>
                                            <td>
                                                <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                                    <tr class="tr_common">
                                                        <td class="td_label"><b>Comments:</b></td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <asp:TextBox ID="FinancialComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                                runat="server" Width="94%" Height="40" MaxLength="400"></asp:TextBox>
                                                            <cc1:UltimateSpell ID="UltimateSpell19" ControlIdsToCheck="FinancialComments" ShowModal="true" runat="server">
                                                            </cc1:UltimateSpell>
                                                        </td>
                                                    </tr>
                                                </table>    
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>SUMMARY AND IMPRESSIONS:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Summary" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell20" ControlIdsToCheck="Summary" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>     
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label"><b>RECOMMENDATIONS:</b></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td>
                                                <asp:TextBox ID="Recommendation" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="94%" Height="250"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell17" ControlIdsToCheck="Recommendation" ShowModal="true" runat="server">
                                                </cc1:UltimateSpell>         
                                            </td>
                                        </tr>
                                     </table>   
                                </td>
                            </tr>
                            <tr style="height: 20px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_unline" style="width: 300px">
                                                <asp:TextBox ID="SCSignature" runat="server" Width="300px" onclick="NoSCPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                </asp:TextBox>
                                            </td>
                                            <td width="20px">
                                            </td>
                                            <td class="td_unline" style="width: 140px">
                                                <asp:TextBox ID="SCSignatureDate" runat="server" CssClass="inface" contentEditable="false" Font-Names="Comic Sans MS">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label">
                                                <asp:Label ID="Label7" runat="server" Text="&nbsp;Assessment Coordinator" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="35px">
                                            </td>
                                            <td class="td_label">
                                                <asp:Label ID="Label45" runat="server" Text="Date" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 20px;">
                                            <td colspan="4"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 20px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_unline" style="width: 300px">
                                                <asp:TextBox ID="SubmittedBy" runat="server" Width="300px" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                </asp:TextBox>
                                            </td>
                                            <td width="20px">
                                            </td>
                                            <td class="td_unline" style="width: 140px">
                                                <asp:TextBox ID="SubmitDate" runat="server" CssClass="inface" contentEditable="false" Font-Names="Comic Sans MS">
                                                </asp:TextBox>
                                            </td>
                                            <td align="middle" style="width: 250px">
                                                <asp:button id="btnRemoveSign" Runat="server" Text="Remove Signature" style="width:200px" OnClientClick="CheckRemoveSignPwd();return false;"
                                                    Enabled="false" CssClass="buttonbluestyle"></asp:button>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 60px"></td>
                                            <td class="td_label">
                                                <asp:Label ID="Label46" runat="server" Text="&nbsp;Intake Specialist" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="35px">
                                            </td>
                                            <td class="td_label">
                                                <asp:Label ID="Label50" runat="server" Text="Date" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            
                        </table>     
                    </div>
                    <div id="Tab2"  style="display:none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                            <tr>
                                <td>
                                    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                                    <tr style="height: 30px;" valign="middle">
	                                        <td align="left">
			                                    <asp:label id="l_MedicationList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">MEDICATION(s) LIST</asp:label>
			                                </td>
			                                <td align="left" width="300px">
				                                <asp:Button ID="BtnAddMC" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px" Visible="false"></asp:Button>
                                            </td>
		                                </tr>
		                            </table>
		                        </td>
		                    </tr>
		                    <tr style="height:10px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="height:25px;">
                                <td>
                                <b>CURRENT MEDICATION LIST</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
				                    <asp:datagrid id="dg_medicationlist" runat="server" AllowPaging="False" CssClass="grd_body"
					                AutoGenerateColumns="False" AllowSorting="False" >
					                <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_item"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="medication" HeaderText="Current Medication(s)" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="dosage" HeaderText="Dosage" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="frequency" HeaderText="Frequency" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="purpose" HeaderText="Reason For Use" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="View">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="Edit">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="DELETE">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									            BorderWidth="0"></asp:ImageButton>
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid> 
				        	    </td>
			                </tr>   
                            <tr style="height:10px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="height:25px;">
                                <td>
                                <b>DISCONTINUED MEDICATION LIST</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
				                    <asp:datagrid id="dg_medicationdiscontlist" runat="server" AllowPaging="False" CssClass="grd_body"
					              AutoGenerateColumns="False" AllowSorting="False" >
					                <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_item"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="medication" HeaderText="Discontinued Medication(s)" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="dosage" HeaderText="Dosage" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="frequency" HeaderText="Frequency" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="purpose" HeaderText="Reason For Use" >
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="View">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="Edit">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="DELETE">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									            BorderWidth="0"></asp:ImageButton>
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid> 
				        	    </td>
			                </tr>       
                        </table>    
                    </div>
                    <div id="Tab3"  style="display:none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                            <tr>
                                <td>
                                    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                                    <tr style="height: 30px;" valign="middle">
	                                        <td align="left">
			                                    <asp:label id="l_meddoctorlist" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">MEDICAL DOCTOR LIST</asp:label>
			                                </td>
			                                <td align="left" width="300px">
				                                <asp:Button ID="BtnAddDT" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px" Visible="false"></asp:Button>
                                            </td>
		                                </tr>
		                            </table>
		                        </td>
		                    </tr>
		                    <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                            <td>
				                <asp:datagrid id="dg_meddoctorlist" runat="server" AllowPaging="False" CssClass="grd_body"
					            AutoGenerateColumns="False" AllowSorting="False" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
					            <asp:BoundColumn DataField="s_number" HeaderText="s_number" Visible="False"></asp:BoundColumn>
					            <asp:BoundColumn DataField="Relationship" HeaderText="Doctor Type" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Name" HeaderText="Name" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
					            <asp:BoundColumn DataField="s_phone_1" HeaderText="Phone #" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
					            <asp:BoundColumn DataField="phone3full" HeaderText="Other #"  Visible="false">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Address" HeaderText="Current Address" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="NoProvider" HeaderText="No Longer a Provider" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="View">
						            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						            <ItemTemplate>
							            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
						            </ItemTemplate>
					            </asp:TemplateColumn>
					            <asp:TemplateColumn HeaderText="Edit">
						            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						            <ItemTemplate>
							            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
						            </ItemTemplate>
					            </asp:TemplateColumn>
					            <asp:TemplateColumn HeaderText="DELETE">
						            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						            <ItemTemplate>
							            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
								            BorderWidth="0"></asp:ImageButton>
						            </ItemTemplate>
					            </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid> 
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

