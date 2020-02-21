<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIFSPInfoFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPInfoFDLRC" %>

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
                TAB_IFSP.style.color = "";
                TAB_AL.style.color = "";
                TAB_PR.style.color = "";

                obj.style.color = "#990066";        
            }
            Tab_IFSP.style.display = "none";
            Tab_AL.style.display = "none";
            Tab_PR.style.display = "none";
            switch (obj.id) {
                case "TAB_IFSP":
                    Tab_IFSP.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "1";
                    break;
                case "TAB_AL":
                    Tab_AL.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "2";
                    break;
                case "TAB_PR":
                    Tab_PR.style.display = "";
                    document.IFSPInfo.now_div_flag.value = "3";
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
                TAB_IFSP.style.color = "";
                TAB_AL.style.color = "";
                TAB_PR.style.color = "";
            }
            Tab_IFSP.style.display = "none";
            Tab_AL.style.display = "none";
            Tab_PR.style.display = "none";

            switch (obj_id) {
                case "TAB_IFSP":
                    Tab_IFSP.style.display = "";
                    TAB_IFSP.style.color = "#990066"
                    document.IFSPInfo.now_div_flag.value = "1";
                    break;
                case "TAB_AL":
                    Tab_AL.style.display = "";
                    TAB_AL.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "2";
                    break;
                case "TAB_PR":
                    Tab_PR.style.display = "";
                    TAB_PR.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "3";
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
                TAB_IFSP.style.color = "";
                TAB_AL.style.color = "";
                TAB_PR.style.color = "";
            }
            Tab_IFSP.style.display = "none";
            Tab_AL.style.display = "none";
            Tab_PR.style.display = "none";

            switch (flag) {
                case 1:
                    Tab_IFSP.style.display = "";
                    TAB_IFSP.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab_AL.style.display = "";
                    TAB_AL.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "2";
                    break;
                case 3:
                    Tab_PR.style.display = "";
                    TAB_PR.style.color = "#990066";
                    document.IFSPInfo.now_div_flag.value = "3";
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

        function RefreshReviewData() {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = "4";        
            window.document.IFSPInfo.submit();
            window.focus();
            //return true;
        }

        function RefreshDoctorList()
        {          
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '5';        
            window.document.IFSPInfo.submit();
            window.focus();   
        }

        function RefreshMedicationList()
        {          
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '6';        
            window.document.IFSPInfo.submit();
            window.focus();   
        }
        function DeleteOutPlan(IFSPOutID)
        {
            if (PromptDel("Do you really want to delete this IFSP Outcomes and  Required Services?"))
            {
                var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
                myHdnRefreshData.value = "2";        
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
            winhref("PrintFormIFSPInfoFDLRC.aspx?IFSPID="+entrykey+"&uci=" + consumer_key + "&flag=" + flag + "&UserAct="+UserAct,"PrintFormIFSPInfoFDLRC");
        }

        function save_click() {
            document.body.style.cursor  = 'wait';
            return true;
        }

        function transfer_click() {
            if (confirm('Are you sure you want to transfer this IFSP to offline ?'))
            {
              document.body.style.cursor  = 'wait';
              return true;
            }
            else
               return false;
        }

        function retrieve_click() {
            if (confirm('Are you sure you want to retrieve this IFSP from offline ?'))
            {
               document.body.style.cursor  = 'wait';
               return true;
            }
            else 
               return false;
        }
      
        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormIFSPListFDLRC.aspx');
        }
        function add_plantab() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPPlanFDLRC.aspx?IFSPID=" + entrykey + "&type=add");
        }
        function add_participant() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialogShort("FormIFSPParticipantsInfo.aspx?IFSPID=" + entrykey + "&ClientID=" + consumer_key + "&type=add");
        }
        function addIFSPAmendment() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPPlanAmendmentFDLRC.aspx?IFSPID=" + entrykey + "&type=add");
        }
        function add_review() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPReviewFDLRC.aspx?IFSPID=" + entrykey + "&ClientID=" + consumer_key + "&type=add");
        }
        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.IFSPInfo.submit();
            window.focus();
        }

        function CheckPwd() {  
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function submitcalendar(boxid) {
           var DobStr = document.getElementById("ClientDob").value;
           var DobDate = new Date(DobStr);
           DobDate.setYear(DobDate.getYear() + 3);
           var meetstr = JTrim(boxid.value);
           var meetdate = new Date(meetstr);
           meetdate.setMonth(meetdate.getMonth() + 6);
           if (meetdate < DobDate)
           {
             var periodstr = padStr(1 + meetdate.getMonth()) + "/" + padStr(meetdate.getDate()) + "/" + padStr(meetdate.getFullYear())
             document.IFSPInfo.PeriodicDate.value = periodstr;
           }
           meetdate.setMonth(meetdate.getMonth() + 6);
           if (meetdate < DobDate)
           {
             var annualstr = padStr(1 + meetdate.getMonth()) + "/" + padStr(meetdate.getDate()) + "/" + padStr(meetdate.getFullYear())
             document.IFSPInfo.AnnualDate.value = annualstr;
           }
        }

        function add_doctor() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPDoctorInfo.aspx?IFSPID=" + entrykey + "&s_key=" + consumer_key + "&type=add");
        }

        function add_medication() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialog("FormIFSPMedicationInfo.aspx?IFSPID=" + entrykey + "&ClientID=" + consumer_key + "&type=add");
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
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <asp:hiddenfield id="hdnPlanTitle1" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle2" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle3" runat="server" value="0" />
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
                <asp:ImageButton ID="btnTransfer" runat="server" AlternateText="Transfer" 
                        Style="width: 25px; height: 25px" ImageUrl="../img/tools.ico" ToolTip="Transfer" Visible="false" 
                        OnClientClick="return transfer_click();" OnClick="btnTransfer_Click"></asp:ImageButton>
                    &nbsp;
                <asp:ImageButton ID="btnRetrieve" runat="server" AlternateText="Retrieve"
                        Style="width: 25px; height: 25px" ImageUrl="../img/unlock.ico" ToolTip="Retrieve" Visible="false" 
                        OnClientClick="return retrieve_click();" OnClick="btnRetrieve_Click"></asp:ImageButton>
               
                    &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                    src="../img/back.ico" title="Back"
                    onclick="javascript:back_click();return false;" /> 
                </td>
            <td align="left" width="60%">
                <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">IPP For</asp:Label></td>
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
                            <td id="TAB_IFSP" style="color:#990066;" class="tab_sel" onclick="doseltd(this);" 
                                 width="200">
                                <b><u>IFSP / Annual</u></b>
                            </td>
                            <td id="TAB_AL" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>Amendment List</u></b>
                            </td>
                            <td id="TAB_PR" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>Periodic Review</u></b>
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
                    <div id="Tab_IFSP">
                    <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:97%">  
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
                             <td class="td_label"><b><asp:Checkbox ID="FileExist" runat="server" Text=""></asp:Checkbox>IFSP already on file</b>
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
                                        <td colspan="10">
                                          <table class="table_inside">
                                           <tr>
                                            <td style="width: 200px"  class="td_label" >
                                               <b><asp:Label ID="l_ConsumerName" runat="server" Text="Child's Last Name:" ></asp:Label></b></td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 180px" class="td_unline"  >
                                               <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td style="width: 120px"  class="td_label" >
                                               <b><asp:Label ID="l_ConsumerNameFirst" runat="server" Text="First Name:" ></asp:Label></b></td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 180px" class="td_unline"  >
                                               <asp:TextBox ID="ClientNameFirst" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td style="width: 80px"  class="td_label" >
                                               <b><asp:Label ID="Label1" runat="server" Text="DOB:" ></asp:Label></b></td>
                                            <td width="5" >
                                            </td>
                                            <td style="width: 100px" class="td_unline"  >
                                               <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                 onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: 80px"  class="td_label" >
                                               <b><asp:Label ID="Label2" runat="server" Text="UCI:" ></asp:Label></b></td>
                                            <td width="5" >
                                            </td>
                                            <td style="width: 150px" class="td_unline"  >
                                               <asp:Label ID="UCI" runat="server" CssClass="infaceText" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
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
                                            <b><asp:Label ID="Label3" runat="server" Text="GENDER:" ></asp:Label></b>
                                        </td>
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
                                            <b><asp:Label ID="Label5" runat="server" Text="Language:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:DropDownList ID="ClientLang" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                 CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="10">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label4" runat="server" Text="Parent/Guardian Name:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientGuardian" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label8" runat="server" Text="Address 1:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientAddress1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label10" runat="server" Text="Home Phone#:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <table align="left" cellspacing="0" cellpadding="0" border="0">
                                               <tr>
                                                  <td align="center" width="10px">(</td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="ClientPhone1_1" runat="server" CssClass="inface" MaxLength="3" 
                                                         onKeyup="autotab(this, document.IFSPInfo.ClientPhone1_2);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="15px">) </td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="ClientPhone1_2" runat="server" CssClass="inface" MaxLength="3"
                                                         onKeyup="autotab(this, document.IFSPInfo.ClientPhone1_3);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="10px">-</td>
                                                  <td class="td_unline" width="40px">
                                                     <asp:TextBox ID="ClientPhone1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                  </td>
                                               </tr>  
                                            </table> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label20" runat="server" Text="Relationship:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:DropDownList ID="ClientGuardianRelationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                            Height="20" OnClick="DataChanged()" CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label30" runat="server" Text="Address 2:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientAddress2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label36" runat="server" Text="Work Phone#:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <table align="left" cellspacing="0" cellpadding="0" border="0">
                                               <tr>
                                                  <td align="center" width="10px">(</td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="ClientPhone2_1" runat="server" CssClass="inface" MaxLength="3" 
                                                         onKeyup="autotab(this, document.IFSPInfo.ClientPhone2_2);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="15px">) </td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="ClientPhone2_2" runat="server" CssClass="inface" MaxLength="3"
                                                         onKeyup="autotab(this, document.IFSPInfo.ClientPhone2_3);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="10px">-</td>
                                                  <td class="td_unline" width="40px">
                                                     <asp:TextBox ID="ClientPhone2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                  </td>
                                               </tr>  
                                            </table> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label73" runat="server" Text="City/State/Zip:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientAddressCity" runat="server" CssClass="inface" Width="160" MaxLength="19" ></asp:TextBox>
                                            <asp:TextBox ID="ClientAddressState" runat="server" CssClass="inface" Width="20" MaxLength="2" ></asp:TextBox>
                                            <asp:TextBox ID="ClientAddressZip" runat="server" CssClass="inface" Width="50" MaxLength="10" ></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label74" runat="server" Text="Cell Phone #:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <table align="left" cellspacing="0" cellpadding="0" border="0">
                                               <tr>
                                                  <td align="center" width="10px">(</td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="ClientPhone3_1" runat="server" CssClass="inface" MaxLength="3" 
                                                         onKeyup="autotab(this, document.IFSPInfo.ClientPhone3_2);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="15px">) </td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="ClientPhone3_2" runat="server" CssClass="inface" MaxLength="3"
                                                         onKeyup="autotab(this, document.IFSPInfo.ClientPhone3_3);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="10px">-</td>
                                                  <td class="td_unline" width="40px">
                                                     <asp:TextBox ID="ClientPhone3_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
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
                                            <b><asp:Label ID="Label6" runat="server" Text="Email:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientEmail" runat="server" CssClass="inface" MaxLength="45"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label13" runat="server" Text="Mailing Address 1:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientMailAddress1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label15" runat="server" Text="LEA:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <asp:TextBox ID="LEA" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label16" runat="server" Text="Mailing Address 2:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientMailAddress2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label34" runat="server" Text="City/State/Zip:" ></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="ClientMailAddressCity" runat="server" CssClass="inface" Width="160" MaxLength="19" ></asp:TextBox>
                                            <asp:TextBox ID="ClientMailAddressState" runat="server" CssClass="inface" Width="20" MaxLength="2" ></asp:TextBox>
                                            <asp:TextBox ID="ClientMailAddressZip" runat="server" CssClass="inface" Width="50" MaxLength="10" ></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
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
                                            <b><asp:Label ID="Label21" runat="server" Text="Email:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 280px" class="td_unline"  >
                                            <asp:TextBox ID="email" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label19" runat="server" Text="Phone #:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <table align="left" cellspacing="0" cellpadding="0" border="0">
                                               <tr>
                                                  <td align="center" width="10px">(</td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="phone_1" runat="server" CssClass="inface" MaxLength="3" 
                                                         onKeyup="autotab(this, document.IFSPInfo.phone_2);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="15px">) </td>
                                                  <td class="td_unline" width="30px">
                                                     <asp:TextBox ID="phone_2" runat="server" CssClass="inface" MaxLength="3"
                                                         onKeyup="autotab(this, document.IFSPInfo.phone_3);"></asp:TextBox>
                                                  </td>
                                                  <td align="center" width="10px">-</td>
                                                  <td class="td_unline" width="40px">
                                                     <asp:TextBox ID="phone_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
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
                            <td><b>HEALTH INSURANCE INFORMATION</b></td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                             
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td colspan="10" class="td_label">
						                    <b><asp:Checkbox ID="PrivateHealthIns" runat="server" Text=""></asp:Checkbox>Private Health Insurance</b>						   						    
						                    &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="ChildrenServ" runat="server" Text=""></asp:Checkbox>California Children Services</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="MediCal" runat="server" Text=""></asp:Checkbox>Medi-Cal</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <b><asp:Checkbox ID="OtherIns" runat="server" Text=""></asp:Checkbox>Other:</b>
                                            <asp:textbox id="OtherInsDesc" runat="server" CssClass="inface" width="180" MaxLength="50"></asp:textbox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="12">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 80px"  class="td_label" >
                                            <b><asp:Label ID="Label23" runat="server" Text="SSI:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 150px" class="td_unline"  >
                                            <asp:TextBox ID="lea_shareinfotext" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 80px"  class="td_label" >
                                            <b><asp:Label ID="Label25" runat="server" Text="CCS:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 150px" class="td_unline"  >
                                            <asp:DropDownList ID="lea_shareinfo" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                    <asp:ListItem Value="X">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
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
                                        <td  style="width: 120px" class="td_unline" >
                                            <asp:TextBox ID="IFSPMeetingDate" Width="120px" runat="server" CssClass="inface" onclick="DataChanged();showcalendarsubmit(event, this);" 
                                             onfocus="DataChanged();showcalendarsubmit(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px"  class="td_label" >
                                            <b><asp:Label ID="Label33" runat="server" Text="Family's Primary Language:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline">
                                            <asp:DropDownList ID="PrimaryLang" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                 CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px"  class="td_label" >
                                            <b><asp:Label ID="Label35" runat="server" Text="Interpreter Needed:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 100px" class="td_label"  >
                                            <asp:Radiobutton ID="InterpreterNeeded_yes" groupname="InterpreterNeeded" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>Yes</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="InterpreterNeeded_no" groupname="InterpreterNeeded" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>No</b>
                                        </td>
                            
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="13">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 150px"  class="td_label" >
                                            <b><asp:Label ID="Label32" runat="server" Text="IFSP TYPE:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td colspan="2" style="width: 180px" class="td_label"  >
                                            <asp:Radiobutton ID="IFSPType_yes" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>Initial</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="IFSPType_no" groupname="IFSPType" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>Annual Review</b>
                                        </td>
                                        <td colspan="8">&nbsp;</td>
                                        <td style="width: auto"></td>
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
                                        <td colspan="12" class="td_label" >
                                            <b><asp:Label ID="Label26" runat="server" Text="Projected IFSP Meeting Dates:" ></asp:Label></b>
                                        </td>
                                    </tr> 
                                    <tr style="height:5px;">
                                        <td colspan="12">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label24" runat="server" Text="Periodic IFSP:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 120px" class="td_unline"  >
                                            <asp:TextBox ID="PeriodicDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 100px"  class="td_label" >
                                            <b><asp:Label ID="Label28" runat="server" Text="Annual IFSP: " ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 120px" class="td_unline"  >
                                            <asp:TextBox ID="AnnualDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px"  class="td_label" >
                                            <b><asp:Label ID="Label29" runat="server" Text="Transition Plan/Conference:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 120px" class="td_unline"  >
                                            <asp:TextBox ID="TransitionDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);"></asp:TextBox>
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
                        <tr style="height: 30px;" valign="middle">
                            <td>
                              <table class="table_inside">
                                <tr class="tr_common">
                                  <td  align="left" style="width:50px;height:25">
				                     <asp:ImageButton ID="BtnAddPT" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" OnClientClick="javascript:add_participant();return false;" ToolTip="Add" />
                                  </td>
                                  <td style="width: 180px"  class="td_label" >     
                                    <b>PARTICIPANT INFORMATION</b>
                                  </td>
                                  <td style="width: auto"></td>
                                </tr>
                              </table>
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
					            <asp:BoundColumn DataField="Name" HeaderText="Name/Title">
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
                                            <b><asp:Checkbox ID="EstablishedRisk" runat="server" Text=""></asp:Checkbox>Established Risk:</b>
                                            <asp:textbox id="EstablishedRiskDesc" runat="server" CssClass="inface" width="500" MaxLength="500"></asp:textbox>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td></td>
                                    </tr> 
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Checkbox ID="HighRisk" runat="server" Text=""></asp:Checkbox>High Risk:</b>
                                            <asp:textbox id="HighRiskDesc" runat="server" CssClass="inface" width="500" MaxLength="500"></asp:textbox>
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
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="CurrDiagnosis" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr style="height: 30px;" valign="middle">
                            <td  align="left" style="width:30px;height:25">
				                <asp:ImageButton ID="btnAddDoctor" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" OnClientClick="javascript:add_doctor();return false;" ToolTip="Add" />
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
                                <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
					            <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						        <asp:BoundColumn DataField="s_number" HeaderText="s_number" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Name" HeaderText="Physicians/Specialists" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Relationship" HeaderText="Relationship" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Phone" HeaderText="Phone #" >
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="Address" HeaderText="Address" >
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
					            </Columns>
				                </asp:datagrid> 
				            </td>
			            </tr> 
                        <tr style="height:10px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr style="height: 30px;" valign="middle">
                            <td  align="left" style="width:30px;height:25">
				                <asp:ImageButton ID="btnAddMedication" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" OnClientClick="javascript:add_medication();return false;" ToolTip="Add" />
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
					            <asp:BoundColumn DataField="IFSPID" HeaderText="IFSPID" Visible="False"></asp:BoundColumn>
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
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="MediEquipment" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
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
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
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
                                    <tr style="height:5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label42" Width="120px" runat="server" Text="Immunizations:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td colspan="8" style="width: 500px" class="td_unline"  >
                                            <asp:TextBox id="Immunizations" runat="server" CssClass="inface" width="500" MaxLength="200"></asp:TextBox>  
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label43" Width="120px" runat="server" Text="Vision:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td colspan="8" style="width: 500px" class="td_unline"  >
                                            <asp:TextBox id="Vision" runat="server" CssClass="inface" width="500" MaxLength="200"></asp:TextBox>  
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td >
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label44" Width="120px" runat="server" Text="Hearing:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td colspan="8" style="width: 500px" class="td_unline"  >
                                            <asp:TextBox id="Hearing" runat="server" CssClass="inface" width="500" MaxLength="200"></asp:TextBox>  
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
                                            <asp:Label ID="Label49" Width="80px" runat="server" Text="Adjusted  Age:" ></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="Cognitive_Level" runat="server" CssClass="inface" Width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label14" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="Expresstive_Level" runat="server" CssClass="inface" width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label18" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="Receptive_Level" runat="server" CssClass="inface" width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label22" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="GrossMotor_Level" runat="server" CssClass="inface" width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label68" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="FineMotor_Level" runat="server" CssClass="inface" width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label72" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="Emotional_Level" runat="server" CssClass="inface" width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label70" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="Adaptive_Level" runat="server" CssClass="inface" width="40px" MaxLength="2"></asp:TextBox>
                                            <asp:Label ID="Label71" runat="server" Text="Month(s)" CssClass="infaceText"></asp:Label>
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
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
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
                                       IFSP OUTCOMES AND REQUIRED SERVICES</asp:label>
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
                                       <tr class="tr_common">
                                          <td  style="width: 150px" class="td_label" >
                                            <asp:Label ID="l_periodstart" runat="server" Font-Bold="True" Text="Period of Service:"></asp:Label>
                                          </td>
                                          <td width="10">
                                          </td>
                                          <td style="width: 900px"  class="td_unline">
                                            <asp:Label ID="PeriodStart" runat="server" CssClass="infaceText"
                                               Text='<%# DataBinder.Eval(Container.DataItem, "PeriodStart", "{0:d}") %>'></asp:Label>
                                            <asp:Label ID="To" runat="server" CssClass="infaceText" Font-Bold="True" Text='   To   '></asp:Label>
                                            <asp:Label ID="PeriodEnd" runat="server" CssClass="infaceText"
                                               Text='<%# DataBinder.Eval(Container.DataItem, "PeriodEnd", "{0:d}") %>'></asp:Label>
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
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Method (Professional):"></asp:Label>
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
                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Provider:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Textbox ID="Provider" runat="server" CssClass="infaceText" Width="98%" ReadOnly="true"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "Provider") %>'>
                                                </asp:Textbox>
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
                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Type of Service Funding:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                            <table>
                                                <tr>
                                                    <td style="width: 180px;" align="left" class="td_label">
                                                        <b><asp:Radiobutton ID="Required_yes" groupname="Required" runat="server" Text="" Enabled="false"
                                                             Checked='<%# (DataBinder.Eval(Container.DataItem, "Required").ToString().TrimEnd() =="Y") ? true : false %>' >
                                                        </asp:Radiobutton>Required</b>
                                                        <b><asp:Radiobutton ID="Required_no" groupname="Required" runat="server" Text="" Enabled="false"
                                                             Checked='<%# (DataBinder.Eval(Container.DataItem, "Required").ToString().TrimEnd() =="N") ? true : false %>' >
                                                        </asp:Radiobutton>Not Required</b>
                                                    </td>
                                                    <td style="width:20px">
                                                    </td>
                                                    <td align="left" style="width: 50px" class="td_label">
                                                        <asp:Label ID="Label76" runat="server" Font-Bold="True" Text="Other:"></asp:Label>
                                                    </td>
                                                    <td style="width:600px;" align="left" class="td_unline">
                                                        <asp:Textbox ID="ServiceFundingType" runat="server" CssClass="infaceText" Width="98%" ReadOnly="true"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "ServiceFundingType") %>'>
                                                        </asp:Textbox>
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
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Location of Service:"></asp:Label>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td style="width: 900px;" align="left" class="td_unline">
                                                <asp:Label ID="ServiceLocationValue" runat="server" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "ServiceLocation") %>'></asp:Label>
                                                <asp:Textbox ID="ServiceLocation" runat="server"  CssClass="infaceText" Width="200px" ReadOnly="true"></asp:Textbox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr class="tr_common">
                                                        <td class="td_label">
                                                            <b><asp:Checkbox ID="Justification" runat="server" Text="" Enabled="false"
                                                                        Checked='<%# (DataBinder.Eval(Container.DataItem, "Justification").ToString().TrimEnd() =="Y") ? true : false %>' ></asp:Checkbox>
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
                                                            <asp:TextBox ID="Discuss" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Text='<%# DataBinder.Eval(Container.DataItem, "Discuss") %>'
                                                                runat="server" Width="99%" Height="80" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
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
                                                            <asp:TextBox ID="Describe" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Text='<%# DataBinder.Eval(Container.DataItem, "Describe") %>'
                                                                runat="server" Width="99%" Height="80"  CssClass="infaceText" ReadOnly="true"></asp:TextBox>
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
                                                            <asp:TextBox ID="IdentifySteps" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Text='<%# DataBinder.Eval(Container.DataItem, "IdentifySteps") %>'
                                                                runat="server" Width="99%" Height="80"  CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label">
                                                            <b><asp:Label ID="Label75" runat="server" Text="Steps to Secure IFSP Service(s):" ></asp:Label></b>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 99%" class="td_unline" >
                                                            <asp:TextBox ID="StepsToSecurity" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Text='<%# DataBinder.Eval(Container.DataItem, "StepsToSecurity") %>'
                                                                runat="server" Width="99%" Height="80"  CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:10px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
						    </asp:TemplateColumn>
                            </Columns>
				            </asp:datagrid>
                            </td>
                        </tr>

                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <asp:CheckBox ID="approved" runat="server" Text=""  Width="30" /><b>Parents have signed the form</b>
                            </td>
                        </tr>
                        <tr style="height: 10px;">
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
                                                <td colspan="5" align="center">
                                                        <asp:Button ID="btnSign" runat="server" Text="Review"  Style="width: 80px;height:25px" Enabled="false"
                                                        OnClientClick="javascript:CheckPwd();return false;" />
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
                                                <td width="10px"></td>
                                                <td width="120px" class="td_label">
                                                    <asp:Label ID="l_SignaturedBy" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline" align="left" style="width: 300px">
                                                    <asp:Label ID="SignaturedBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
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
                                                    <asp:Label ID="l_Signaturedtitle" runat="server" Text="Regional Manager"></asp:Label>
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
                                                    <asp:Label ID="l_SignaturedDate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline">
                                                    <asp:Label ID="SignaturedDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                    </asp:Label>
                                                </td>
                                                <td width="auto"></td>
                                            </tr>
                                            <tr><td colspan="5" height="5px"></td></tr>
                                        </table>
                                    </td>
                                </tr>
                             </table>
                            </td>
                        </tr>
                    </table>
                    </div>
                    <div id="Tab_AL"  style="display:none;">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="btnAddAmend" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" visible=false onclick="addIFSPAmendment();"/>
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>Amendment List</b></font>
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
                                <asp:BoundColumn DataField="submitdate" HeaderText="Submit Date"  DataFormatString="{0:MM/dd/yyyy}" >
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
					            </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                    </div>
                    <div id="Tab_PR"  style="display:none;">
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
					    <asp:BoundColumn DataField="id" HeaderText="ID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="ifspid" HeaderText="IFSPID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="PrTypeName" HeaderText="Type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="contactTypeName" HeaderText="Contact Type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="createdate" HeaderText="Periodic Date"  DataFormatString="{0:MM/dd/yyyy}" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="submitdate" HeaderText="Submit Date"  DataFormatString="{0:MM/dd/yyyy}" >
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
