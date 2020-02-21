<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIPPAnnualContactInfoSCLARC.aspx.cs"
    Inherits="Virweb2.FormList.FormAnnualContactInfo" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::ANNUAL CONSUMER CONTACT (FACE TO FACE):::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript" type="text/javascript">
    <!--
        function print_click() {
            //PopupMessage(10);
            var consumer_key = document.AnnualContactInfo.consumer_key.value.toString();
            var entereddate = document.AnnualContactInfo.entereddate.value.toString();
            var UserAct = document.AnnualContactInfo.UserAct.value.toString();
            var url = "PrintFormAnnualContactInfo.aspx?uci=" + consumer_key + "&entereddate=" + entereddate + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormAnnualContactInfo');
           
        }

        function printIPP_click() {
           var entrykey=document.AnnualContactInfo.ipp_key.value.toString();
           var UserAct = document.AnnualContactInfo.UserAct.value.toString();   
           winhref("PrintFormIPP.aspx?IPPID="+entrykey+"&UserAct="+UserAct,"PrintFormIPP");
        }

        function save_click() {
            return true;
        }

        function verify_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace(document.AnnualContactInfo.gobackPage.value);
        }

        function Verify() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "1";  
          window.document.AnnualContactInfo.submit();
          window.focus();
       }

       function Sign(UserName) {
          var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
          mySignUserName.value = UserName;  
          window.document.AnnualContactInfo.submit();
          window.focus();
       }

       function UnLock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "3";  
          window.document.AnnualContactInfo.submit();
          window.focus();
       }

       function Lock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "4";  
          window.document.AnnualContactInfo.submit();
          window.focus();
       }

       function CheckPwd() {
          if ((!document.getElementById("<%=approved_yes.ClientID %>").checked) && 
              (!document.getElementById("<%=approved_no.ClientID %>").checked))
          {
             alert("Please select either 'Approval' or 'Return' first");
             return;
          }

          if (document.getElementById("<%=approved_yes.ClientID %>").checked)  //approved
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          else //return
          {
             var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
             mySignVerify.value = "2";  
             window.document.AnnualContactInfo.submit();
             window.focus();
          }
       }

       function Print_IPPExtension() {
            var consumer_key = document.AnnualContactInfo.consumer_key.value.toString();
            //var entereddate = document.AnnualContactInfo.entereddate.value.toString();
            var reviewdate = document.AnnualContactInfo.Review_pcp_ifsp_date.value.toString();
            var url = "PrintFormAnnualContactIPPExt.aspx?uci=" + consumer_key + "&reviewdate=" + reviewdate;
            winhref(url, 'PrintFormAnnualContactIPPExt');
       }

       function ChgIPPExtension() {
            var ExtBtn = document.AnnualContactInfo.btnIPPExtension;
            if (document.getElementById("<%=Cycletime_1.ClientID %>").checked)
               ExtBtn.disabled = false;
            else ExtBtn.disabled = true;
       }

    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="AnnualContactInfo" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" /> 
    <input type="hidden" name="entereddate" id="entereddate" value="" runat="server" />
    <input type="hidden" name="SubmitTabNo" id="SubmitTabNo" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="ipp_key" id="ipp_key" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormIPPAnnualContactListSCLARC.aspx" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnEdit_Click"></asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnPrintIPP" runat="server" alt="View IPP" 
                    style="width: 25px; height: 25px" src="../img/idnotes.ico" title="View IPP" onclick="javascript:printIPP_click();return false;" />
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
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 500px">
        <table class="table_maindiv" width="100%">
            <tr class="tr_common">
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Review">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%;
                            height: 100%">
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle" align="center">
                                                <asp:Label ID="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                                    Height="24px">ANNUAL CONSUMER CONTACT (FACE TO FACE)</asp:Label>
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
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Consumer Name:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px">
                                                <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td class="td_label" style="width: 100px">
                                                <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="UCI#:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:Label ID="uci" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td class="td_label" style="width: 100px">
                                                <asp:Label ID="Label6" runat="server" Font-Bold="true" Text="DOB:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:TextBox ID="ClientDOB" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                     CssClass="inface" ></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="12">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label8" runat="server" Font-Bold="true" Text="Review of IPP Dated:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px">
                                                <asp:TextBox ID="Review_pcp_ifsp_date" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td class="td_label" style="width: 100px">
                                                <asp:Label ID="Label10" runat="server" Font-Bold="true" Text="Date of Contact:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px">
                                                <asp:TextBox ID="Contactdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td class="td_label" style="width: 100px">
                                                <asp:Label ID="Label12" runat="server" Font-Bold="true" Text="MW:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="MedicaidWaiver" runat="server" CssClass="infaceDrop"
                                                    OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="12">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="11" class="td_label">
                                                <asp:RadioButton ID="Cycletime_1" GroupName="Cycletime" runat="server" Text="" Checked="false"
                                                   OnClick="javascript:ChgIPPExtension();">
                                                </asp:RadioButton><b>1st Year</b> &nbsp;&nbsp;&nbsp;
                                                <input type="button" id="btnIPPExtension" runat="server" value="IPP Extension" style="width: 150px;
                                                    height: 25px" onclick="javascript:Print_IPPExtension();return false;" />
                                                <asp:RadioButton ID="Cycletime_2" GroupName="Cycletime" runat="server" Text="" Checked="false"
                                                   OnClick="javascript:ChgIPPExtension();">
                                                </asp:RadioButton><b>2nd Year</b>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 15px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label37" Font-Bold="True" runat="server" Text="Location:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="Location" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="80"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Location" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label1" Font-Bold="True" runat="server" Text="Participants:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="Participants" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="80"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Participants" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label4" Font-Bold="True" runat="server" Text="Review changes/progress on the PC-IPP objectives since last report:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td valign="top">
                                    <asp:TextBox ID="Changes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="80"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Changes" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label5" Font-Bold="True" runat="server" Text="Health and Safety: (Include height, weight and name of medication with dosage and frequency):"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="Health" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Health" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label26" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="HealthGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label25" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="HealthCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="HealthCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 15px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="border: #CC99CC; height: 20px" align="center">
                                <td align="center">
                                    <asp:Label ID="l_EvElement" runat="server" Font-Bold="True" Font-Size="Medium" Text="Evaluation Element"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label7" Font-Bold="True" runat="server" Text="A. Skills Demonstrated in Daily life:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="EvlPhyEnv" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="EvlPhyEnv" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label27" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="EvlPhyEnvGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label28" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="EvlPhyEnvCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell14" ControlIdsToCheck="EvlPhyEnvCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label9" Font-Bold="True" runat="server" Text="B. Challenging Behaviors:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="ChallengingBehv" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="ChallengingBehv" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label29" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="ChallengingBehvGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label30" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="ChallengingBehvCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell15" ControlIdsToCheck="ChallengingBehvCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 15px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="border: #CC99CC; height: 20px" align="center">
                                <td align="center">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Text="Personal Outcome Element"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label13" Font-Bold="True" runat="server" Text="A. Physical and Social Environment:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label14" Font-Bold="True" runat="server" Text="School and Work:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="School" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="School" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label33" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="SchoolGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label34" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="SchoolCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell17" ControlIdsToCheck="SchoolCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label15" Font-Bold="True" runat="server" Text="Community and Social Life:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="Community" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="Community" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label35" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="CommunityGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label36" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="CommunityCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell18" ControlIdsToCheck="CommunityCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label16" Font-Bold="True" runat="server" Text="Living Arrangements:"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="OutHomeLiving" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="OutHomeLiving" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label38" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="OutHomeLivingGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label39" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="OutHomeLivingCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell19" ControlIdsToCheck="OutHomeLivingCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label31" Font-Bold="True" runat="server" Text="Legal:"></asp:Label>
                                </td>
                            </tr>                            
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>                            
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="OutcomePhyEnv" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="OutcomePhyEnv" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label32" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="OutcomePhyEnvGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="Label41" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="OutcomePhyEnvCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell16" ControlIdsToCheck="OutcomePhyEnvCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label17" Font-Bold="True" runat="server" Text="Addendum(s):"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="Addendums" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell11" ControlIdsToCheck="Addendums" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" style="display:none">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="80">
                                                <asp:Label ID="Label40" Font-Bold="True" width="80" runat="server" Text="Goal Status:"></asp:Label>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="AddendumsGoalStatus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" Width="250px">
                                                </asp:DropDownList> 
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
                                <td class="td_label">
                                    <asp:Label ID="l_addendumsCurStatus" Font-Bold="True" runat="server" Text="Current Status:"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td valign="top">
                                    <asp:TextBox ID="AddendumsCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                        Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell20" ControlIdsToCheck="AddendumsCurStatus" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td style="width: 210px" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_NewSvrReq" runat="server" Font-Bold="true" Text="New Service(s) Requested:"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NewSvrReq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td style="width: 160px" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_IPPAddCompleted" runat="server" Font-Bold="true" Text="IPP Addendum Completed:"></asp:Label></b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="IPPAddCompleted" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="5" class="td_label">
                                                <b>
                                                    <asp:Label ID="Label19" runat="server" Font-Bold="true" Text="Consumer/Parent/Legal Guardian/Conservator satisfied with current IPP:"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="IPPSatisfied" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="9" class="td_label">
                                                <asp:Label ID="l_ippsatisfiedexplain" Font-Bold="True" runat="server" Text="If no, explain:"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="9" style="height: 80px" valign="top">
                                                <asp:TextBox ID="IPPSatisfiedExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                                                     Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell21" ControlIdsToCheck="AddendumsCurStatus" ShowModal="true"
                                                     runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 210px" class="td_label">
                                                <b>
                                                    <asp:Label ID="Label21" runat="server" Font-Bold="true" Text="Family cost participation assessed:"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="CostAssessed" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td colspan="5">
                                                &nbsp;
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                    <asp:Label ID="Label20" Font-Bold="True" runat="server" Text="Special Comment(s):"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="SpecialComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="80"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell12" ControlIdsToCheck="SpecialComments" ShowModal="true"
                                        runat="server">
                                    </cc1:UltimateSpell>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 15px;">
                                <td>
                                </td>
                            </tr>
                            <tr style="border: #CC99CC; height: 20px" align="center">
                                <td align="center">
                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" Text="DATE AND PURPOSE OF NEXT CONTACT"></asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td style="width: 250px" class="td_label">
                                                <b>
                                                    <asp:Label ID="Label22" runat="server" Font-Bold="true" Text="Next Scheduled Quarterly: (if applicable):"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NextQuarterlyMonth" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="6">6</asp:ListItem>
                                                    <asp:ListItem Value="7">7</asp:ListItem>
                                                    <asp:ListItem Value="8">8</asp:ListItem>
                                                    <asp:ListItem Value="9">9</asp:ListItem>
                                                    <asp:ListItem Value="10">10</asp:ListItem>
                                                    <asp:ListItem Value="11">11</asp:ListItem>
                                                    <asp:ListItem Value="12">12</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NextQuarterlyYear" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px" class="td_label">
                                                <b>
                                                    <asp:Label ID="Label23" runat="server" Font-Bold="true" Text="Next Scheduled Annual Contact:"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NextAnnualContactMonth" runat="server" CssClass="infaceDrop"
                                                    OnClick="DataChanged()">
                                                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="6">6</asp:ListItem>
                                                    <asp:ListItem Value="7">7</asp:ListItem>
                                                    <asp:ListItem Value="8">8</asp:ListItem>
                                                    <asp:ListItem Value="9">9</asp:ListItem>
                                                    <asp:ListItem Value="10">10</asp:ListItem>
                                                    <asp:ListItem Value="11">11</asp:ListItem>
                                                    <asp:ListItem Value="12">12</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NextAnnualContactYear" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px" class="td_label">
                                                <b>
                                                    <asp:Label ID="Label24" runat="server" Font-Bold="true" Text="Next Scheduled Triennial IPP:"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NextTriennialIPPMonth" runat="server" CssClass="infaceDrop"
                                                    OnClick="DataChanged()">
                                                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="6">6</asp:ListItem>
                                                    <asp:ListItem Value="7">7</asp:ListItem>
                                                    <asp:ListItem Value="8">8</asp:ListItem>
                                                    <asp:ListItem Value="9">9</asp:ListItem>
                                                    <asp:ListItem Value="10">10</asp:ListItem>
                                                    <asp:ListItem Value="11">11</asp:ListItem>
                                                    <asp:ListItem Value="12">12</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:DropDownList ID="NextTriennialIPPYear" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" border="1" cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                                        <tr>
                                            <td width="50%" style="border: medium solid #CC99CC;">
                                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                                    <tr class="tr_common">
                                                        <td colspan="5" align="center">
                                                            <input type="button" id="btnVerify" runat="server" value="Submit" style="width: 80px;
                                                                height: 25px" onclick="javascript:Verify();return false;" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" height="5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td colspan="5">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td width="10px">
                                                        </td>
                                                        <td width="120px" class="td_label">
                                                            <asp:Label ID="l_SCsignature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" align="left" style="width: 300px">
                                                            <asp:Label ID="SCsignature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                                            </asp:Label>
                                                        </td>
                                                        <td width="auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" height="5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td colspan="3">
                                                        </td>
                                                        <td class="td_label">
                                                            <asp:Label ID="l_SCsigntitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" height="5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td width="10px">
                                                        </td>
                                                        <td class="td_label" style="width: 120px">
                                                            <asp:Label ID="l_SCsigndate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline">
                                                            <asp:Label ID="SCsigndate" runat="server" CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                            </asp:Label>
                                                        </td>
                                                        <td width="auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" height="5px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td width="50%">
                                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                                    <tr class="tr_common">
                                                        <td colspan="5" align="center">
                                                            <input type="button" id="btnSign" runat="server" value="Submit" style="width: 80px;
                                                                height: 25px" onclick="javascript:CheckPwd();return false;" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <input type="button" id="btnUnLock" runat="server" value="UnLock" style="width: 80px; height: 25px"  
                                                                onclick="javascript:UnLock();return false;" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <input type="button" id="btnLock" runat="server" value="Lock" style="width: 80px; height: 25px"  
                                                                onclick="javascript:Lock();return false;" /> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" height="5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td width="10px">
                                                        </td>
                                                        <td colspan="3" class="td_label">
                                                            <asp:RadioButton ID="approved_yes" GroupName="approved" runat="server" Text=""></asp:RadioButton><b>Approve</b>
                                                            &nbsp;&nbsp;
                                                            <asp:RadioButton ID="approved_no" GroupName="approved" runat="server" Text=""></asp:RadioButton><b>Return</b>
                                                        </td>
                                                        <td width="auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" height="5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td width="10px">
                                                        </td>
                                                        <td width="120px" class="td_label">
                                                            <asp:Label ID="l_PMsignature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" align="left" style="width: 300px">
                                                            <asp:Label ID="PMsignature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                                            </asp:Label>
                                                        </td>
                                                        <td width="auto">
                                                            <asp:hiddenfield id="PMSignature_ID" runat="server" value="" />
                                                        </td>
                                                        <tr>
                                                            <td colspan="5" height="5px">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td colspan="3">
                                                            </td>
                                                            <td class="td_label">
                                                                <asp:Label ID="l_signtitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
                                                            </td>
                                                            <td width="auto">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="5" height="5px">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td width="10px">
                                                            </td>
                                                            <td class="td_label" style="width: 120px">
                                                                <asp:Label ID="l_PMSign_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                                            </td>
                                                            <td width="5px">
                                                            </td>
                                                            <td class="td_unline">
                                                                <asp:Label ID="PMsigndate" runat="server" CssClass="infaceText" Width="140px"
                                                                    Font-Names="Comic Sans MS">
                                                                </asp:Label>
                                                            </td>
                                                            <td width="auto">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="5" height="5px">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td width="10px">
                                                            </td>
                                                            <td valign="top" class="td_label">
                                                                <b>
                                                                    <asp:Label ID="l_sign_comments" runat="server" Text="Comments:"></asp:Label></b>
                                                            </td>
                                                            <td width="5px">
                                                            </td>
                                                            <td colspan="2" class="td_unline">
                                                                <asp:TextBox ID="sign_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                                    runat="server" Width="99%" Height="60" CssClass="inface"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 5px;">
                                                            <td colspan="5">
                                                            </td>
                                                        </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label">
                                   <b><asp:Label ID="l_logs" runat="server" Text="Logs:" ></asp:Label></b>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="height: 80px" valign="top">
                                   <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                      runat="server" Width="99%" Height="80" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
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
