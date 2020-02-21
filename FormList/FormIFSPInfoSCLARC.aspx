<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPInfoSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPInfoSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base target="_self" />
    <title>:::INDIVIDUALIZED FAMILY SERVICE PLAN (IFSP):::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>

<script language="javascript" type="text/javascript">
/*
       var sessionTimeoutWarning = "<%= System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()%>";
       var sessionTimeout = "<%= Session.Timeout %>";
       
       var sTimeout = (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning)) * 60 * 1000;
       setTimeout('SessionWarning()', sTimeout);

       function SessionWarning() {
         var message = "Your session will expire in another " + 
            parseInt(sessionTimeoutWarning) + 
            " mins! Please Save the data before the session expires";
         alert(message);
       }
*/
</script>
         
    <script type="text/javascript">
    <!--
        function doseltd(obj) {
            /*if (isIE())
            {            
            for(var i=0;i<tr_info.childNodes.length;i++)
            {
            var e=tr_info.childNodes[i];		        	   
            e.style.color="#000000";
            e.style.cursor="hand";		        	        
            }
            obj.style.color="#990066";
            obj.style.cursor="auto";
            }
            else */
            {
                TAB1.style.color = "";
                TAB2.style.color = "";
                TAB3.style.color = "";
                TAB4.style.color = "";
                //TAB5.style.color = "";
                TAB6.style.color = "";
                TAB7.style.color = "";
                TAB8.style.color = "";
                TAB9.style.color = "";

                obj.style.color = "#990066";        
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            //Tab5.style.display = "none";
            Tab6.style.display = "none";
            Tab7.style.display = "none";
            Tab8.style.display = "none";
            Tab9.style.display = "none";
            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "3";
                    break;
                case "TAB4":
                    Tab4.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "4";
                    break;
                /*case "TAB5":
                    Tab5.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "5";
                    break;
                */
                case "TAB6":
                    Tab6.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "6";
                    break;
                case "TAB7":
                    Tab7.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "7";
                    break;
                case "TAB8":
                    Tab8.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "8";
                    break;
                case "TAB9":
                    Tab9.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "9";
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

            e.style.color="#000000";
            e.style.cursor="hand";
            }
            }
            else
            */
            {
                TAB1.style.color = "";
                TAB2.style.color = "";
                TAB3.style.color = "";
                TAB4.style.color = "";
                //TAB5.style.color = "";
                TAB6.style.color = "";
                TAB7.style.color = "";
                TAB8.style.color = "";
                TAB9.style.color = "";
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            //Tab5.style.display = "none";
            Tab6.style.display = "none";
            Tab7.style.display = "none";
            Tab8.style.display = "none";
            Tab9.style.display = "none";

            switch (obj_id) {
                case "TAB1":
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066"
                    document.IFSPInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "3";
                    break;
                case "TAB4":
                    Tab4.style.display = "";
                    TAB4.style.color = "#990066"
                    document.IFSPInfo.now_div_flag.value = "4";
                    break;
                /*case "TAB5":
                    Tab5.style.display = "";
                    TAB5.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "5";
                    break;
                */
                case "TAB6":
                    Tab6.style.display = "";
                    TAB6.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "6";
                    break;
                case "TAB7":
                    Tab7.style.display = "";
                    TAB7.style.color = "#990066"
                    document.IFSPInfo.now_div_flag.value = "7";
                    break;
                case "TAB8":
                    Tab8.style.display = "";
                    TAB8.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "8";
                    break;
                case "TAB9":
                    Tab9.style.display = "";
                    TAB9.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "9";
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

            //e.background="../img/lable_unselect.gif";
            e.style.color="#000000";
            e.style.cursor="hand";
            }
            }
            else
            */
            {
                TAB1.style.color = "";
                TAB2.style.color = "";
                TAB3.style.color = "";
                TAB4.style.color = "";
                //TAB5.style.color = "";
                TAB6.style.color = "";
                TAB7.style.color = "";
                TAB8.style.color = "";
                TAB9.style.color = "";
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            //Tab5.style.display = "none";
            Tab6.style.display = "none";
            Tab7.style.display = "none";
            Tab8.style.display = "none";
            Tab9.style.display = "none";

            switch (flag) {
                case 1:
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "2";
                    break;
                case 3:
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "3";
                    break;
                case 4:
                    Tab4.style.display = "";
                    TAB4.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "4";
                    break;
                /*case 5:
                    Tab5.style.display = "";
                    TAB5.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "5";
                    break;
                */
                case 6:
                    Tab6.style.display = "";
                    TAB6.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "6";
                    break;
                case 7:
                    Tab7.style.display = "";
                    TAB7.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "7";
                    break;
                case 8:
                    Tab8.style.display = "";
                    TAB8.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "8";
                    break;
                case 9:
                    Tab9.style.display = "";
                    TAB9.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "9";
                    break;
            }
        }

        function RefreshParticipantList()
        {          
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.IFSPInfo.submit();
            window.focus();   
        }

        function RefreshPlanData() {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = "2";        
            window.document.IFSPInfo.submit();
            window.focus();
            //return true;
        }

        function RefreshAmendmentData() {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = "3";        
            window.document.IFSPInfo.submit();
            window.focus();
            //return true;
        }

        /*
        function RefreshReviewData() {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = "4";        
            window.document.IFSPInfo.submit();
            window.focus();
            //return true;
        }

        function RefreshTransitionData() {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = "5";        
            window.document.IFSPInfo.submit();
            window.focus();
            //return true;
        }
        */

        function DeleteOutPlan(IFSPOutID)
        {
            if (PromptDel("Do you really want to delete this IFSP Outcomes?"))
            {
                var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
                myHdnRefreshData.value = "6";        
                document.IFSPInfo.DeleteIFSPOutID.value = IFSPOutID;
                window.document.IFSPInfo.submit();
                window.focus();
            }
        }

        function print_click() 
        {
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            var flag=document.IFSPInfo.now_div_flag.value.toString();
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var UserAct = document.IFSPInfo.UserAct.value.toString();   
            winhref("PrintFormIFSPInfoSCLARC.aspx?IFSPID="+entrykey+"&uci=" + consumer_key + "&flag=" + flag + "&UserAct="+UserAct,"PrintFormIFSPInfoSCLARC");
        }

        function save_click() {
            return true;
        }
        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormIFSPListSCLARC.aspx');
        }
        function add_participant() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialogShort("FormIFSPParticipantsInfo.aspx?IFSPID=" + entrykey + "&ClientID=" + consumer_key + "&type=add");
        }
        function add_plantab() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPPlanSCLARC.aspx?IFSPID=" + entrykey + "&type=add");
        }
        function addIFSPAmendment() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPPlanAmendmentSCLARC.aspx?IFSPID=" + entrykey + "&uci=" + consumer_key + "&type=add");
        }

        function add_review() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            document.location.replace("FormIFSPReviewSCLARC.aspx?LinkIFSPID=" + entrykey + "&uci=" + consumer_key + "&IFSPType=5&type=add");
        }
        function add_transition() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            document.location.replace("FormIFSPTransitionSCLARC.aspx?LinkIFSPID=" + entrykey + "&uci=" + consumer_key + "&IFSPType=6&type=add");
        }
        /*
        function monthDiff(d1, d2)
        {
           var months;
           months = (d2.getFullYear() - d1.getFullYear()) *12;
           months = months - d1.getMonth() + 1;
           months = months + d2.getMonth();
           return months <= 0 ? 0 : months;
        }
        */
        function submitcalendar(boxid) {
           if ((document.IFSPInfo.ifsp_type.value == "1") && (document.IFSPInfo.ClientDOB.value != ""))
           {
              var clidob=new Date(document.IFSPInfo.ClientDOB.value); 
              clidob.setFullYear(clidob.getFullYear()+3);
              var meetstr = JTrim(boxid.value);
              var meetdate = new Date(meetstr);
              meetdate.setMonth(meetdate.getMonth() + 6);
              //if (monthDiff(clidob, meetdate) <= 36)
              if (meetdate < clidob)
              {
                 if (document.IFSPInfo.PeriodicDate.value == "")
                 {
                    var periodstr = padStr(1 + meetdate.getMonth()) + "/" + padStr(meetdate.getDate()) + "/" + padStr(meetdate.getFullYear())
                    document.IFSPInfo.PeriodicDate.value = periodstr;
                 }

                 meetdate.setMonth(meetdate.getMonth() + 6);
                 //if (monthDiff(clidob, meetdate) <= 36)
                 if (meetdate < clidob)
                 {
                    if (document.IFSPInfo.AnnualDate.value == "")
                    {
                       var annualstr = padStr(1 + meetdate.getMonth()) + "/" + padStr(meetdate.getDate()) + "/" + padStr(meetdate.getFullYear())
                       document.IFSPInfo.AnnualDate.value = annualstr;
                    }
                 }
              }
           }
        }

        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.IFSPInfo.submit();
            window.focus();
        }

        function Verify() {
            var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
            mySignVerify.value = "1";  
            window.document.IFSPInfo.submit();
            window.focus();
       }

       function UnLock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "3";  
          window.document.IFSPInfo.submit();
          window.focus();
       }

       function Lock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "4";  
          window.document.IFSPInfo.submit();
          window.focus();
       }

       function CheckPwd() {
          if ((!document.getElementById("<%=approved_yes.ClientID %>").checked) && 
              (!document.getElementById("<%=approved_no.ClientID %>").checked))
          {
             alert("Please select either 'Approval' or 'Return' first");
             return;
          }

          if (document.getElementById("<%=approved_yes.ClientID %>").checked)  
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          else 
          {
             var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
             mySignVerify.value = "2";  
             window.document.IFSPInfo.submit();
             window.focus();
          }
       }       
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="IFSPInfo" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="DeleteIFSPOutID" id="DeleteIFSPOutID" value="0" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />  
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" /> 
    <input type="hidden" name="ifsp_type" id="ifsp_type" value="" runat="server" />                   
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <input type="hidden" name="ReviewExist" id="ReviewExist" value="0" runat="server" />
    <input type="hidden" name="TransitionExist" id="TransitionExist" value="0" runat="server" />
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />     
    <div align="left" style="WIDTH:100%; ">
        <table id="headericon" runat="server" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
          <tr valign="middle" style="height:30px; background-color: #EAF4FF">
            <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
                <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                    ImageURL="../img/save.ico" ToolTip="Save"
                    OnClientClick="return save_click();" OnClick="btnEdit_Click" >
                </asp:ImageButton>
                <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                    ImageURL="../img/save.ico" ToolTip="Save"
                    OnClientClick="return save_click();" OnClick="btnAdd_Click" >
                </asp:ImageButton>
                &nbsp;      
                <input type="image" id="btnPrint" runat="server" alt="Print" Visible="false" style="width: 25px;height:25px"  
                    src="../img/print.ico" title="Print"
                    onclick="javascript:print_click();return false;" />             
                &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                    src="../img/back.ico" title="Back"
                    onclick="javascript:back_click();return false;" /> 
                </td>
            <td align="left" width="60%">
                <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">IFSP For</asp:Label></td>
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
                    <table id="TABLE_Label1">
                        <tr id="tr_info">
                            <td id="TAB1" style="color:#990066;" class="tab_sel" onclick="doseltd(this);" 
                                 width="160">
                                <b><u>Identifying Info</u></b>
                            </td>
                            <td id="TAB2" class="tab_sel" onclick="doseltd(this);"
                                 width="300">
                                <b><u>Concerns, Priorities and Resources</u></b>
                            </td>
                            <td id="TAB3" class="tab_sel" onclick="doseltd(this);"
                                 width="180">
                                <b><u>Developmental/Health</u></b>
                            </td>
                            <td id="TAB4" class="tab_sel" onclick="doseltd(this);" 
                                 width="100">
                                <b><u>Outcomes</u></b>
                            </td>
                            <td id="TAB6" class="tab_sel" onclick="doseltd(this);"
                                 width="180">
                                <b><u>Finalize/Signature</u></b>
                            </td>
                            <td id="TAB7"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="150">
                                <b><u>Periodic Review</u></b>
                            </td>
                            <td id="TAB8"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="150">
                                <b><u>Transition Plan</u></b>
                            </td>
                            <td id="TAB9" runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="100">
                                <b><u>Addendum List</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>            
        </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:480px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                  <div id="Tab1">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="height:10px;"></td>
                        </tr>
                        <tr>                                                                                                                                                              
                            <td>
                                <table class="table_inside">
                                    <tr style="height:30px;">
                                        <td width="30%" align="left">
                                        <asp:Label ID="Title11" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                        <td width="40%" align="center">
                                        <asp:Label ID="Title12" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">EARLY START</asp:Label>
                                        </td>
                                        <td width="30%" align="right">
                                        <asp:Label ID="Title13" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height:20px;">
                                        <td width="30%" align="left">
                                        <asp:Label ID="Title21" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                        <td width="40%" align="center">
                                        <asp:Label ID="Title22" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">INDIVIDUALIZED FAMILY SERVICE PLAN (IFSP)</asp:Label>
                                        </td>
                                        <td width="30%" align="right">
                                        <asp:Label ID="Title23" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height:20px;">
                                        <td width="30%" align="left">
                                        <asp:Label ID="Title31" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                        <td width="40%" align="center">
                                        <asp:Label ID="Title32" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue"></asp:Label>
                                        </td>
                                        <td width="30%" align="right">
                                        <asp:Label ID="Title33" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                    </tr>    
                                </table>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr>
                        <tr class="tr_common">
                             <td class="td_label"><b><asp:Checkbox ID="FileExist" runat="server" Text=""></asp:Checkbox>Click here for Periodic Review if no SmartChart IFSP/Annual</b>
                             </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr>	
                        <tr style="height:20px;">
                            <td><b>CHILD AND FAMILY IDENTIFYING INFORMATION</b></td>
                        </tr> 
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="l_ClientName" runat="server" Text="Child's Name:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="l_dob" runat="server" Text="DOB:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline"  >
                                            <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label2" runat="server" Text="UCI:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 220px" class="td_unline"  >
                                            <asp:Label ID="UCI" runat="server" CssClass="infaceText" ></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="10">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label3" runat="server" Text="GENDER:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:DropDownList ID="ClientGender" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                     CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label5" runat="server" Text="Language:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline"  >
                                            <asp:DropDownList ID="ClientLang" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                 CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                        <td width="5" >
                                        </td>
                                        <td style="width: 220px" class="td_unline"  >
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="10">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label4" runat="server" Text="Parent/Guardian Name:" ></asp:Label></b><br />
                                            <b><asp:Label ID="Label7" runat="server" Text="Relationship:" ></asp:Label></b></td>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientGuardian" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox><br />
                                            <asp:DropDownList ID="ClientGuardianRelationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                            Height="20" OnClick="DataChanged()" CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label8" runat="server" Text="Address:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline"  >
                                            <asp:TextBox ID="ClientAddress1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox><br />
                                            <asp:TextBox ID="ClientAddress2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label10" runat="server" Text="Phone #s:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 220px" class="td_unline"  >
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td>
                                                        <asp:TextBox ID="ClientPhone1" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <asp:TextBox ID="ClientPhone2" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <asp:TextBox ID="ClientPhone3" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="10">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label6" runat="server" Text="Email:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientEmail" runat="server" CssClass="inface" MaxLength="45"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td colspan="6">
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="10">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label17" runat="server" Text="DCFS/Other Contact Information (If Applicable):" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="DCFS" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label19" runat="server" Text="Phone #:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline"  >
                                            <asp:TextBox ID="phone" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label21" runat="server" Text="Email:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 220px" class="td_unline"  >
                                            <asp:TextBox ID="email" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                        </td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr style="height:20px;">
                            <td><b>HEALTH INSURANCE INFORMATION</b></td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                             
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label">
						                    <b><asp:Checkbox ID="PrivateHealthIns" runat="server" Text=""></asp:Checkbox>Private Health Insurance</b>						   						    
						                    &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="ChildrenServ" runat="server" Text=""></asp:Checkbox>California Children Services</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="MediCal" runat="server" Text=""></asp:Checkbox>Medi-Cal</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="OtherIns" runat="server" Text=""></asp:Checkbox>Other:</b>
                                            <asp:textbox id="OtherInsDesc" runat="server" CssClass="inface" width="300" MaxLength="50"></asp:textbox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>                                                                                                                                                                                                             
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 220px"  class="td_label" >
                                            <b><asp:Label ID="Label27" runat="server" Text="Copy of Health Benefits On File:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 200px" class="td_label"  >
                                            <asp:Radiobutton ID="CopyofBenefits_yes" groupname="CopyofBenefits" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>Yes</b>
                                          &nbsp;&nbsp;&nbsp;
                                          <asp:Radiobutton ID="CopyofBenefits_no" groupname="CopyofBenefits" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>No</b>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr style="height:20px;">
                            <td><b>IFSP MEETING DATE(S) AND PARTICIPANTS</b></td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                                           
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 150px"  class="td_label" >
                                            <b><asp:Label ID="Label31" Width="150px" runat="server" Text="Today's Meeting Date:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 150px" class="td_unline" >
                                            <asp:TextBox ID="IFSPMeetingDate" Width="120px" runat="server" CssClass="inface" onclick="DataChanged();showcalendarsubmit(event, this);" 
                                             onfocus="DataChanged();showcalendarsubmit(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px"  class="td_label" >
                                            <b><asp:Label ID="Label33" runat="server" Text="Preferred Language:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline">
                                            <asp:DropDownList ID="preferred_language" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                 CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px"  class="td_label" >
                                            <b><asp:Label ID="Label35" runat="server" Text="Language of Documentation:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 100px" class="td_label"  >
                                            <asp:DropDownList ID="document_language" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                 CssClass="infaceDrop">
                                            </asp:DropDownList>                                        
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="11">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 150px"  class="td_label" >
                                            <b><asp:Label ID="Label14" Width="150px" runat="server" Text="Meeting Held (Location):" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 150px" class="td_unline" >
                                            <asp:DropDownList ID="MeetingLocation" OnClick="DataChanged()" runat="server" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="Telephone Call">Telephone Call</asp:ListItem>
                                                <asp:ListItem Value="Home">Home</asp:ListItem>
                                                <asp:ListItem Value="SCLARC">SCLARC</asp:ListItem>
                                                <asp:ListItem Value="Other">Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px"  class="td_label" >
                                            <b><asp:Label ID="Label32" runat="server" Text="IFSP TYPE:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td colspan="5" class="td_label"  >
                                            <asp:Radiobutton ID="IFSPType_1" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false Enabled=false></asp:Radiobutton><b>Initial</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="IFSPType_2" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false Enabled=false></asp:Radiobutton><b>Annual Review</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="IFSPType_3" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false Enabled=false></asp:Radiobutton><b>Periodic Review</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="IFSPType_4" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false Enabled=false></asp:Radiobutton><b>Transition Plan</b>
                                            &nbsp;&nbsp;&nbsp
                                            <asp:Radiobutton ID="IFSPType_5" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false Enabled=false></asp:Radiobutton><b>Exit IFSP</b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width:180px" class="td_label" >
                                            <b><asp:Label ID="Label26" runat="server" Text="Projected IFSP Meeting Dates:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 20px">
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label24" runat="server" Text="Periodic Review:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="PeriodicDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label28" runat="server" Text="Annual IFSP: " ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="AnnualDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label29" runat="server" Text="Transition Plan:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="TransitionDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label13" runat="server" Text="Exit IFSP:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="ExitDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr style="height: 30px;" valign="middle">
                            <td  align="left" style="width:30px;height:25">
				                <asp:ImageButton ID="BtnAddPT" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" OnClientClick="javascript:add_participant();return false;" ToolTip="Add" />
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
				                <asp:datagrid id="dg_participantList" runat="server" AllowPaging="False" CssClass="grd_body"
					                          AutoGenerateColumns="False" AllowSorting="False">
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="id" HeaderText="id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
					            <asp:BoundColumn DataField="Name" HeaderText="Name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Title" HeaderText="Title">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Agency" HeaderText="Agency">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Phone" HeaderText="Phone">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Email" HeaderText="Email">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Present">
						            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						            <ItemTemplate>
                                        <asp:Checkbox ID="Present" runat="server" Text="" Enabled="false"
                                            Checked='<%# (DataBinder.Eval(Container.DataItem, "Present").ToString().TrimEnd() =="Y") ? true : false %>' >
                                        </asp:Checkbox> 
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Consult">
						            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						            <ItemTemplate>
                                        <asp:Checkbox ID="Consult" runat="server" Text="" Enabled="false"
                                            Checked='<%# (DataBinder.Eval(Container.DataItem, "Consult").ToString().TrimEnd() =="Y") ? true : false %>' >
                                        </asp:Checkbox> 
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Report">
						            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						            <ItemTemplate>
                                        <asp:Checkbox ID="Report" runat="server" Text="" Enabled="false"
                                            Checked='<%# (DataBinder.Eval(Container.DataItem, "Report").ToString().TrimEnd() =="Y") ? true : false %>' >
                                        </asp:Checkbox> 
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
								            BorderWidth="0" Visible='<%# (DataBinder.Eval(Container.DataItem, "AutoCreated").ToString().TrimEnd() =="1") ? true : false %>'></asp:ImageButton>
						            </ItemTemplate>
					            </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid> 
				            </td>
			            </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr style="height:20px;">
                            <td><b>ELIGIBILITY CRITERIA FOR EARLY START SERVICES</b></td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                             
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Checkbox ID="DevelopDelay" runat="server" Text=""></asp:Checkbox>Developmental Delay:</b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label">
						                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="Adaptive" runat="server" Text=""></asp:Checkbox>Adaptive/Self-Help</b>						   						    
						                    &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="Communication" runat="server" Text=""></asp:Checkbox>Communication</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="Cognitive" runat="server" Text=""></asp:Checkbox>Cognitive</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="Physical" runat="server" Text=""></asp:Checkbox>Physical</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="Social" runat="server" Text=""></asp:Checkbox>Social or Emotional</b>
                                         </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td></td>
                                    </tr> 
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Checkbox ID="HighRisk" runat="server" Text=""></asp:Checkbox>High Risk:</b>       
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td></td>
                                    </tr> 
                                    <tr class="tr_common">
                                        <td >
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 200">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="prematurity" runat="server" Text=""></asp:Checkbox><b>Prematurity(< 32 wks)</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="anomalies" runat="server" Text=""></asp:Checkbox><b>Congenital anomalies</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="FTT" runat="server" Text=""></asp:Checkbox><b>Clinical FTT</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="BW" runat="server" Text=""></asp:Checkbox><b>BW < 1500 grams</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="NAS" runat="server" Text=""></asp:Checkbox><b>+ Tox screen, NAS</b>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 200">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="asphyxia" runat="server" Text=""></asp:Checkbox><b>Asphyxia or Severe RDS</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="CNS" runat="server" Text=""></asp:Checkbox><b>CNS lesion or infection</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="apgars" runat="server" Text=""></asp:Checkbox><b>Low Apgars</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="SGA" runat="server" Text=""></asp:Checkbox><b>SGA or IUGR</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="DD" runat="server" Text=""></asp:Checkbox><b>Parent who is DD</b>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 200">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="tone" runat="server" Text=""></asp:Checkbox><b>Abnormal muscle tone</b>
                                                    </td>
                                                    <td  class="td_label" style="width: 160">
                                                        <asp:Checkbox ID="abnormalities" runat="server" Text=""></asp:Checkbox><b>Metabolic abnormalities</b>
                                                    </td>
                                                    <td colspan=3>
                                                        <table class="table_inside">
                                                            <tr class="tr_common">
                                                                <td  class="td_label" style="width: 240">
                                                                    <asp:Checkbox ID="otherfactor1" runat="server" Text=""></asp:Checkbox>
                                                                    <asp:TextBox ID="otherfactor1_text" runat="server" CssClass="inface" width="80%" MaxLength="100"></asp:TextBox>
                                                                </td>
                                                                <td  class="td_label" style="width: 240">
                                                                    <asp:Checkbox ID="otherfactor2" runat="server" Text=""></asp:Checkbox>
                                                                    <asp:TextBox ID="otherfactor2_text" runat="server" CssClass="inface" width="80%" MaxLength="100"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td></td>
                                    </tr> 
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Checkbox ID="EstablishedRisk" runat="server" Text=""></asp:Checkbox>Established Risk:</b>
                                            <asp:textbox id="EstablishedRiskDesc" runat="server" CssClass="inface" width="80%" MaxLength="150"></asp:textbox>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td></td>
                                    </tr> 
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Checkbox ID="LowIncidence" runat="server" Text=""></asp:Checkbox>Low Incidence Condition:</b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td>
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td class="td_label" width="250px">
						                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                   <b><asp:Checkbox ID="Low_Vision" runat="server" Text=""></asp:Checkbox>Vision</b>						   						    
						                           &nbsp;&nbsp;&nbsp;
                                                   <b><asp:Checkbox ID="Low_Hearing" runat="server" Text=""></asp:Checkbox>Hearing</b>
                                                   &nbsp;&nbsp;&nbsp;
                                                   <b><asp:Checkbox ID="Low_Orthopedic" runat="server" Text=""></asp:Checkbox>Orthopedic</b>
                                                   &nbsp;&nbsp;&nbsp;
                                                 </td>
                                                 <td style="width: 50px"  class="td_label" >
                                                    <b><asp:Label ID="Label15" runat="server" Text="LEA:" ></asp:Label></b>
                                                 </td>
                                                 <td width="5" >
                                                 </td>
                                                 <td style="width: 450px" class="td_unline"  >
                                                    <asp:TextBox ID="LEA" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                 </td>
                                              </tr>
                                           </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr style="height:20px;">
                            <td><b>REVIEW OF FAMILY COST PARTICIPATION PROGRAM/ANNUAL FAMILY PROGRAM FEE (if application):</b></td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                             
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                       <td style="width: 300px"  class="td_label" >
                                         <b><asp:Label ID="l_assess_exist" runat="server" Text="Family was assessed for FCPP/AFPF participation ?" ></asp:Label></b>
                                       </td>
                                       <td style="width: 500px" class="td_label">
                                         <asp:RadioButton ID="assess_exist_yes" groupname="assess_exist" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;
                                         <asp:RadioButton ID="assess_exist_no" groupname="assess_exist" runat="server" /><b>No</b>
                                       </td>
                                    </tr>
                                    <tr style="height:5px">
                                       <td colspan=2></td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td colspan=2 class="td_label" >
                                         <b><asp:Label ID="l_assess_explain" runat="server" Text="If no, please explain:" ></asp:Label></b>
                                         &nbsp;&nbsp;
                                         <asp:TextBox ID="assess_explain" runat="server" CssClass="inface" width="80%" MaxLength="100"></asp:TextBox>
                                       </td>
                                    </tr>   
                                    <tr style="height:5px">
                                       <td colspan=2></td>
                                    </tr>  
                                    <tr class="tr_common">
                                       <td style="width: 300px"  class="td_label" >
                                         <b><asp:Label ID="l_assess_sel" runat="server" Text="If yes, which program ?" ></asp:Label></b>
                                       </td>
                                       <td style="width: 500px" class="td_label">
                                         <asp:CheckBox ID="assess_fcpp" runat="server" Text=""/><b>FCPP</b>&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="assess_afpf" runat="server" Text=""/><b>AFPF</b>
                                       </td>
                                    </tr>
                                    <tr style="height:5px">
                                       <td colspan=2></td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td style="width: 300px"  class="td_label" >
                                         <b><asp:Label ID="l_assess_date" runat="server" Text="If assessed, assessments date: " ></asp:Label></b>
                                       </td>
                                       <td style="width: 500px" class="td_label">
                                         <b>FCPP:</b>&nbsp;
                                         <asp:TextBox ID="assess_date_fcpp" Width="100px" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                         <b>AFPF:</b>&nbsp;
                                         <asp:TextBox ID="assess_date_afpf" Width="100px" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                       </td>
                                    </tr> 
                                    <tr style="height:20px">
                                       <td colspan=2></td>
                                    </tr>                                 
                                </table>
                            </td>
                        </tr>
                    </table>
                  </div>
                  <div id="Tab2"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                                <b>IDENTIFYING CHILD/FAMILY INFORMATION/ELIGIBILITY</b><br />
                                (Briefly state family composition, child description, and birth history)
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="FamilyInfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="FamilyInfo" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                                <b>MY FAMILY'S CONCERNS  &  PRIORITIES</b><br />
                                Concerns I have about my child's health and development. Information, resources and supports I need or want for my child. The most important things for my child and/or family at this time.
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Concerns" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Concerns" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                                <b>MY FAMILY'S RESOURCES</b><br />
                                Resources that my child/family has for support, including people, activities, programs/organizations. 
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Resources" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Resources" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>
                    </table>
                  </div>
                  <div id="Tab3"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                                <b>DEVELOPMENTAL STATUS</b><br />
                                IFSP Outcomes will be developed based on your child’s assessed needs.
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label45" runat="server" Text="Methods/Instruments Used to Establish Level:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Methods" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="Methods" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>                                                                                                                                                                                                                           
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label46" Width="200px" runat="server" Text="Child's Age At Time of Evaluation:" ></asp:Label></b></td>
                                        <td style="width: 20px">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="l_evaluationdate" runat="server" Text="Evaluation Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 120px">
                                            <asp:TextBox ID="EvaluationDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td style="width: 130px" class="td_label">
                                            Weeks Gestation:
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 50px" class="td_unline" >
                                            <asp:TextBox ID="WeeksGestation"  runat="server" CssClass="inface" Width="50px" MaxLength="50">
                                            </asp:TextBox>   
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td style="width: 110px"  class="td_label" >
                                            <asp:Label ID="Label47" Width="110px" runat="server" Text="Chronological Age:" ></asp:Label></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 150px" class="td_unline"  >
                                            <asp:Label ID="CA" runat="server" Width="60px" CssClass="infaceText"></asp:Label>
                                            <asp:Label ID="l_camonth" runat="server" Text="Months" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td style="width: 80px"  class="td_label" >
                                            <asp:Label ID="Label49" Width="80px" runat="server" Text="Adjusted Age:" ></asp:Label>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <asp:Label ID="AA" runat="server" Width="60px" CssClass="infaceText" ></asp:Label>
                                            <asp:Label ID="l_aamonth" runat="server" Text="Months" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <b><asp:Label ID="Label48" runat="server" Text="Cognitive Development (learning/play/problem solving)" ></asp:Label></b>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label50" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="Cognitive_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_cognitive" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="CognitiveDvlp" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="CognitiveDvlp" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label54" runat="server" Text="Communication Development:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <asp:Label ID="Label51" runat="server" Text="Expressive (sounds, words, gestures, expresses wants/needs)" ></asp:Label>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label52" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="Expresstive_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_expresstive" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="CommunicationDvlp" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="CommunicationDvlp" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <asp:Label ID="Label53" runat="server" Text="Receptive (understanding words, objects and simple commands)" ></asp:Label>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label55" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="Receptive_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_receptive" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="ReceptiveDvlp" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="ReceptiveDvlp" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <b><asp:Label ID="Label56" runat="server" Text="Social or Emotional Development (how child relates to others)" ></asp:Label></b>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label60" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="Emotional_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_emotional" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="SocialDvlp" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="SocialDvlp" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <b><asp:Label ID="Label63" runat="server" Text="Adaptive/Self Help Development (dressing, sleeping, eating, independent skills, etc.) " ></asp:Label></b>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label64" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="Adaptive_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_adaptive" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="AdaptiveDvlp" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell14" ControlIdsToCheck="AdaptiveDvlp" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label57" runat="server" Text="Physical Development:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <asp:Label ID="Label58" runat="server" Text="Gross Motor (large muscle movement)" ></asp:Label>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label59" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="GrossMotor_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_grossmotor" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="GrossMotor" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell11" ControlIdsToCheck="GrossMotor" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 500px">
                                            <asp:Label ID="Label61" runat="server" Text="Fine Motor (small muscle movement)" ></asp:Label>
                                        </td>
                                        <td style="width: 15px">
                                        </td>
                                        <td class="td_label" style="width: 30px">
                                            <b><asp:Label ID="Label62" runat="server" Text="Level:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="FineMotor_Level" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                        </td>
                                        <td class="td_label" style="width: 60px">
                                            <b><asp:Label ID="l_finemotor" runat="server" Text="months" ></asp:Label></b>
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
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="FineMotor" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell12" ControlIdsToCheck="FineMotor" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                                <b>HEALTH STATUS</b>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label37" runat="server" Text="Current Medical Condition/Diagnosis (Include medication, immunization status and ongoing procedures/technical devices):" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="CurrDiagnosis" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="CurrDiagnosis" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label39" runat="server" Text="Nutrition/ Oral Health:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Nutrition" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="Nutrition" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label40" runat="server" Text="Current Height:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="ClientHeight" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 30px"  class="td_label" >
                                            <b><asp:Label ID="Label9" runat="server" Text="Inches" ></asp:Label></b>
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label41" runat="server" Width="120px" Text="Current Weight:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 40px" class="td_unline"  >
                                            <asp:TextBox ID="ClientWeight" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 30px"  class="td_label" >
                                            <b><asp:Label ID="Label11" runat="server" Text="Lbs" ></asp:Label></b>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" >
                               <b><asp:Label ID="l_immunizations" runat="server" Text="Immunizations:" ></asp:Label></b></td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Immunizations" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell15" ControlIdsToCheck="Immunizations" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>       
                        </tr>
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
				                <asp:datagrid id="dg_DoctorList" runat="server" AllowPaging="False" CssClass="grd_body"
					                  AutoGenerateColumns="False" AllowSorting="False" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
                                <asp:BoundColumn DataField="Name" HeaderText="Physicians/Specialists" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Phone" HeaderText="Phone #" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="Address" HeaderText="Address" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
					            </Columns>
				                </asp:datagrid> 
				            </td>
			            </tr> 
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
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
						        <asp:BoundColumn DataField="medication" HeaderText="MEDICATIONS" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="dosage" HeaderText="DOSAGE" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="frequency" HeaderText="FREQUENCY" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="purpose" HeaderText="REASON" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
					            </Columns>
				                </asp:datagrid> 
				            </td>
			            </tr>  
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label38" runat="server" Text="Medical Equipment/ Adaptive Devices:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="MediEquipment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="MediEquipment" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label" >
                               <b><asp:Label ID="l_hearing_screen" runat="server" Text="Hearing - Was the child's hearing screened? " ></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="hearing_screen_yes" groupname="hearing_screen" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="hearing_screen_no" groupname="hearing_screen" runat="server" /><b>No</b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" >
                               If yes, indicate screening instrument, qualified personnel conducting the screen and the date the screen was conducted.  Follow up/assessments needed?
                               If no, explain what measures will be taken to screen child's hearing.  Observations noted child responds towards any auditory stimuli, i.e., sounds/noises/voices, etc.
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="hearing" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell16" ControlIdsToCheck="hearing" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>       
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" >
                               <b><asp:Label ID="l_vision_screen" runat="server" Text="Vision - Was the child's vision screened? " ></asp:Label></b>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="vision_screen_yes" groupname="vision_screen" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton ID="vision_screen_no" groupname="vision_screen" runat="server" /><b>No</b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" >
                               If yes, indicate screening instrument, qualified personnel conducting the screen and the date the screen was conducted.  Follow up/assessments needed?
                               If no, explain what measures will be taken to screen/evaluate child's vision.  Observations noted child responds towards any visual stimuli, i.e., persons/objects/environment, etc.
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="vision" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell17" ControlIdsToCheck="vision" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>       
                        </tr>
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>
                      <div id="poslist" runat="server">
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="l_poslist" runat="server" Text="POS Authorizations:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                            <asp:datagrid id="dg_poslist" runat="server" AllowPaging="False" CssClass="grd_body"
					             AutoGenerateColumns="False" AllowSorting="False" >
					        <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					        <ItemStyle CssClass="grd_item"></ItemStyle>
					        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					        <Columns>
						    <asp:BoundColumn DataField="rap_auth" HeaderText="Auth" Visible="False"></asp:BoundColumn>
						    <asp:BoundColumn DataField="rap_uci" HeaderText="UCI" Visible="False"></asp:BoundColumn>
						    <asp:BoundColumn DataField="rap_vid" HeaderText="Vendor#" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="r_resource_name" HeaderText="Vendor Name" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
						    <asp:BoundColumn DataField="rap_svc_code" HeaderText="Service Code" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
						    <asp:BoundColumn DataField="rap_sub_code" HeaderText="Sub Code" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" >
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn> 
					        </Columns>
				            </asp:datagrid> 
				            </td>
			            </tr>  
                      </div>
                    </table>
                  </div>
                  <div id="Tab4"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td   style="width:30px;height:25px">
		  	                           <asp:button id="btnAddPlanTab" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle" OnClientClick="javascript:add_plantab();return false;"></asp:button>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_plantab" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                       IFSP OUTCOMES</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		                </tr>
		                <tr class="tr_common">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                            <asp:datagrid id="dg_plan_tab" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					              AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					        <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					        <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					        <Columns>
						    <asp:BoundColumn DataField="ifspoutid" HeaderText="ifspoutid" Visible="false"></asp:BoundColumn>
						    <asp:TemplateColumn HeaderText="">
							    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							    <ItemTemplate>
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                       <tr style="height:5px">
                                          <td colspan="3">
                                          </td>
                                       </tr>
                                       <tr>
                                          <td colspan="3" class="td_thicksepline">
                                          </td>
                                       </tr>
                                       <tr style="height:20px">
                                          <td colspan="3">
                                          </td>
                                       </tr>
                                       <tr style="height:25px">
                                          <td colspan="3">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                              <td style="width:150px" align="center">
		  	                                     <asp:button ID="btnEditPlanTab" Runat="server" Text="Edit" style="width:60px" CssClass="buttonbluestyle"></asp:button> 
                                              </td>   
                                              <td style="width:150px" align="center">
                                                 <asp:button id="btnDeletePlanTab" Runat="server" Text="Delete" style="width:60px" CssClass="buttonbluestyle"></asp:button>
		  	                                  </td>   
                                              <td width="700px"></td>
                                            </table>
                                          </td>
                                       </tr>
                                       <tr style="height:20px">
                                          <td colspan="3">
                                          </td>
                                       </tr>
                                       <tr>
                                          <td  style="width: 150px;" class="td_label" valign="top">
                                            <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                            <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                          </td>
                                          <td width="10">
                                          </td>
                                          <td style="width: 900px;"  class="td_unline">
                                            <div>
                                            <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode="MultiLine" Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
                                            </div>
                                          </td>
                                       </tr>
                                       <tr style="height:5px">
                                          <td colspan="3">
                                          </td>
                                       </tr>
                                       <tr>
                                          <td colspan="3">
                                              <table class="table_inside" cellspacing="0" cellpadding="0">
                                                 <tr class="tr_common">
                                                     <td class="td_label">
                                                        <b><asp:Label ID="Label12" runat="server" Text="Criteria:" ></asp:Label></b>
                                                     </td>
                                                 </tr>
                                                 <tr style="height:5px;">
                                                     <td>
                                                     </td>
                                                 </tr>
                                                 <tr class="tr_common">
                                                     <td style="width: 99%" class="td_unline" >
                                                        <asp:TextBox ID="Criteria" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Text='<%# DataBinder.Eval(Container.DataItem, "Criteria") %>'
                                                                runat="server" Width="99%" Height="80" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                                     </td>
                                                  </tr>
                                              </table>
                                           </td>
                                       </tr>
                                       <tr style="height:5px">
                                          <td colspan="3">
                                          </td>
                                       </tr>
                                       <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Service Type:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Textbox ID="ServiceType" runat="server" CssClass="infaceText" Width="98%" ReadOnly="true"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "ServiceType") %>'>
                                                </asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label69" runat="server" Font-Bold="True" Text="Method:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Textbox ID="Method" runat="server" CssClass="infaceText" Width="40%" ReadOnly="true"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "Method") %>'>
                                                </asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Service Length/Frequency:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Textbox ID="ServiceLength" runat="server" CssClass="infaceText" Width="98%" ReadOnly="true"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "ServiceLength") %>'>
                                                </asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Agency Name/Phone Number:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Textbox ID="MethodIndividual" runat="server" CssClass="infaceText" Width="98%" ReadOnly="true"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "MethodIndividual") %>'>
                                                </asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                          <td colspan="3">
                                          </td>
                                        </tr>
                                        <tr class="tr_common">
                                          <td  style="width: 150px" class="td_label" >
                                            <asp:Label ID="l_periodstart" runat="server" Font-Bold="True" Text="Duration of Service:"></asp:Label>
                                          </td>
                                          <td width="10">
                                          </td>
                                          <td style="width: 900px"  class="td_label">
                                            <asp:Label ID="PeriodStart" runat="server" CssClass="infaceText"
                                               Text='<%# DataBinder.Eval(Container.DataItem, "PeriodStart", "{0:d}") %>'></asp:Label>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="To" runat="server" CssClass="infaceText" Font-Bold="True" Text='   To   '></asp:Label>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="PeriodEnd" runat="server" CssClass="infaceText"
                                               Text='<%# DataBinder.Eval(Container.DataItem, "PeriodEnd", "{0:d}") %>'></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="Required" runat="server" Text="" Enabled="false"
                                                    Checked='<%# (DataBinder.Eval(Container.DataItem, "Required").ToString().TrimEnd() =="Y") ? true : false %>' ></asp:Checkbox>
                                                 Medical Clearance Required:</b>
                                          </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Funding Agency:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                               <asp:Label ID="FundingAgencyValue" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "FundingAgency") %>'></asp:Label>
                                               <asp:Textbox ID="FundingAgency" runat="server"  CssClass="infaceText" Width="200px" ReadOnly="true"></asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="If no generic resource available, explain:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Textbox ID="NoGenericExplain" runat="server" CssClass="infaceText" Width="98%" ReadOnly="true"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "NoGenericExplain") %>'>
                                                </asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Location of Service:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Label ID="ServiceLocationValue" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "ServiceLocation") %>'></asp:Label>
                                                <asp:Textbox ID="ServiceLocation" runat="server"  CssClass="infaceText" Width="200px" ReadOnly="true"></asp:Textbox>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
						    </asp:TemplateColumn>
                            </Columns>
				            </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Checkbox ID="Justification" runat="server" Text="" /></asp:Checkbox>
                                        Justification for Service(s) not Provided in the Natural Environmnet</b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b>(if this box is checked, please answer following question:)</b>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label65" runat="server" Text="Discuss Why Service Cannot be Provided in Natural Environmnet:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Discuss" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label66" runat="server" Text="Describe How the Intervention will be Generalized into Child's and Family's Daily Activities:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Describe" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"  CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label67" runat="server" Text="Identify Steps for a Plan to Move into a Natural Environmnet:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="IdentifySteps" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" 
                                    runat="server" Width="99%" Height="80"  CssClass="inface"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                  </div>
                  <div id="Tab6"  style="display:none;">
                  <table class="table_inside">
                   <tr style="height:5px;">
                    <td>
                    </td>
                   </tr>
                   <tr>
                   <td>
                    <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                        <tr>
                            <td width="50%" style="border: medium solid #CC99CC;">
                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                    <tr class="tr_common">
                                        <td colspan="5" align=center>
                                            <input type="button" id="btnVerify" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                                onclick="javascript:Verify();return false;" /> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" height="5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="5"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width=10px"></td>
                                            <td width="120px" class="td_label">
                                                <asp:Label ID="l_verify" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                            </td>
                                        <td width="5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                        <asp:Label ID="VerifyBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">
                                    </td>
                                    <td class="td_label">
                                        <asp:Label ID="l_verifytitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
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
                                        <asp:Label ID="l_verify_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td class="td_unline">
                                        <asp:Label ID="VerifyByDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto"></td>
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
                                    <td colspan="5" align=center>
                                        <input type="button" id="btnSign" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                            onclick="javascript:CheckPwd();return false;" /> 
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
                                    <td width=10px"></td>
                                    <td colspan=3 class="td_label">
                                        <asp:Radiobutton ID="approved_yes" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Approve</b>
                                        &nbsp;&nbsp;
                                        <asp:Radiobutton ID="approved_no" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Return</b>
                                    </td>	
                                    <td width="auto"></td>
                                </tr> 
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width=10px"></td>
                                    <td width="120px" class="td_label">
                                        <asp:Label ID="l_signature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                        <asp:Label ID="SignaturedBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto">
                                        <asp:hiddenfield id="SignaturedBy_ID" runat="server" value="" />
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
                                        <asp:Label ID="l_signtitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width="10px">
                                    </td>
                                    <td class="td_label" style="width: 120px">
                                        <asp:Label ID="l_signatureddate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td class="td_unline">
                                        <asp:Label ID="SignaturedDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width="10px">
                                    </td>
                                    <td valign="top" class="td_label">
                                    <b><asp:Label ID="l_comments" runat="server" Text="Comments:" ></asp:Label></b>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td colspan=2 class="td_unline" >
                                       <asp:TextBox ID="sign_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                           runat="server" Width="99%" Height="60" CssClass="inface"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr><td colspan="5" height="5px">
                                </td></tr>
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
                    <td tyle="height: 80px" valign="top">
                     <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                        runat="server" Width="99%" Height="80" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                    </td>
                   </tr>
                  </table>
                  </div>
                  <div id="Tab7"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="btnAddPR" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" visible=false onclick="add_review();" />
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>Periodic Review List</b></font>
			                </td>
                        </tr>  
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="2">
				        <asp:datagrid id="dg_reviewlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False">
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="IFSPID" HeaderText="IFSPID" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="LINK_IFSPID" HeaderText="Link IFSPID" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="uci" HeaderText="uci" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="createdate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="createdate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="enteredby" HeaderText="Entered By" SortExpression="enteredby">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="Meeting Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="IFSPMeetingDate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" SortExpression="IFSPType_desc">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	 
                        <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Status">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	          									
					    <asp:TemplateColumn HeaderText="View/Edit">
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
                        <asp:BoundColumn DataField="VerifyBy" HeaderText="VerifyBy" Visible="false">
                        </asp:BoundColumn>		
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>
                    </table>
                  </div>
                  <div id="Tab8"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="btnAddTP" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="add_transition();" />
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>Transition Plan List</b></font>
			                </td>
                        </tr>  
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="2">
				        <asp:datagrid id="dg_transitionlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False">
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="IFSPID" HeaderText="IFSPID" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="LINK_IFSPID" HeaderText="Link IFSPID" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="uci" HeaderText="uci" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="createdate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="createdate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="enteredby" HeaderText="Entered By" SortExpression="enteredby">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="Meeting Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="IFSPMeetingDate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" SortExpression="IFSPType_desc">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	        
                        <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Status">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	   									
					    <asp:TemplateColumn HeaderText="View/Edit">
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
                        <asp:BoundColumn DataField="VerifyBy" HeaderText="VerifyBy" Visible="false">
                        </asp:BoundColumn>	
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>
                    </table>
                  </div>
                  <div id="Tab9"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="btnAddAmend" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" visible=false onclick="addIFSPAmendment();"/>
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>Addendum List</b></font>
			                </td>
                        </tr>  
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_AmendmentList" runat="server" AllowPaging="false" CssClass="grd_body"
					              AutoGenerateColumns="False" AllowSorting="false" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="IFSPOUTID" HeaderText="IFSPOUTID" Visible="False"></asp:BoundColumn>
						        <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}"></asp:BoundColumn>
						        <asp:BoundColumn DataField="seqno" HeaderText="Outcome#">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="orgseqno" HeaderText="Original#">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="servicetype" HeaderText="Service Type">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="methodindividual" HeaderText="Method Individual/Group">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="servicelength" HeaderText="Service Length">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Status">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>	
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
                                <asp:BoundColumn DataField="VerifyBy" HeaderText="VerifyBy" Visible="false">
                                </asp:BoundColumn>	
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
