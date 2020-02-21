<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPTransitionSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPTransitionSCLARC" %>

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

                obj.style.color = "#990066";        
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

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
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

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
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

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
            }
        }

        /*
        function Refresh_Data(flag)
        {         
            var opener=window.dialogArguments; 
            if (isIE())
            {
               opener.RefreshTransitionData();                 
            }
            else
            {
               window.opener.RefreshTransitionData();  
            }
            if (flag==1)
            {
               window.close();
            }
            else
            {
               window.focus();
            }
        }
        */

        function RefreshParticipantList()
        {          
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.IFSPInfo.submit();
            window.focus();   
        }

        function print_click() 
        {
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            var flag=document.IFSPInfo.now_div_flag.value.toString();
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var UserAct = document.IFSPInfo.UserAct.value.toString();   
            winhref("PrintFormIFSPTransitionSCLARC.aspx?IFSPID="+entrykey+"&uci=" + consumer_key + "&UserAct="+UserAct,"PrintFormIFSPTransitionSCLARC");
        }

        function save_click() {
            return true;
        }
        function back_click() {
            if (Confirm_Page())
            {
                if (document.IFSPInfo.IsAdminPM.value == "1")
                   document.location.replace("FormIFSPInfoSCLARC.aspx?IFSPID=" + document.IFSPInfo.LinkIFSPID.value + "&type=edit&uci=" + 
                       document.IFSPInfo.consumer_key.value);
                else 
                   document.location.replace("FormIFSPInfoSCLARC.aspx?IFSPID=" + document.IFSPInfo.LinkIFSPID.value + "&uci=" + 
                       document.IFSPInfo.consumer_key.value);
            }
        }
        function add_participant() {
            var consumer_key=document.IFSPInfo.consumer_key.value.toString();
            var entrykey=document.IFSPInfo.entrykey.value.toString();
            popupDialogShort("FormIFSPParticipantsInfo.aspx?IFSPID=" + entrykey + "&ClientID=" + consumer_key + "&type=add");
        }

        /*
        function submitcalendar(boxid) {
           var meetstr = JTrim(boxid.value);
           var meetdate = new Date(meetstr);
           meetdate.setMonth(meetdate.getMonth() + 6);
           var periodstr = padStr(1 + meetdate.getMonth()) + "/" + padStr(meetdate.getDate()) + "/" + padStr(meetdate.getFullYear())
           document.getElementById('PeriodicIFSP').innerHTML = periodstr;
           meetdate.setMonth(meetdate.getMonth() + 6);
           var annualstr = padStr(1 + meetdate.getMonth()) + "/" + padStr(meetdate.getDate()) + "/" + padStr(meetdate.getFullYear())
           document.getElementById('AnnualIFSP').innerHTML = annualstr;
        }
        */

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
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />  
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" /> 
    <input type="hidden" name="ifsp_type" id="ifsp_type" value="" runat="server" />                   
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="0" runat="server" />
    <input type="hidden" name="LinkIFSPID" id="LinkIFSPID" value="0" runat="server" />
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
                                <b><u>Finalize/Signature</u></b>
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
                                        <asp:Label ID="Title22" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">TRANSITION PLAN - (IFSP) INDIVIDUALIZED FAMILY SERVICE PLAN</asp:Label>
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
                                            <asp:TextBox ID="IFSPMeetingDate" Width="120px" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
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
                                        <td style="width: 20px;">
                                        </td>
                                        <td style="width: 120px;"  class="td_label" >
                                            <b><asp:Label ID="Label24" runat="server" Text="Periodic Review:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px;">
                                        </td>
                                        <td style="width: 100px;" class="td_unline"  >
                                            <asp:TextBox ID="PeriodicDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px;"  class="td_label" >
                                            <b><asp:Label ID="Label28" runat="server" Text="Annual IFSP: " ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px;">
                                        </td>
                                        <td style="width: 100px;" class="td_unline"  >
                                            <asp:TextBox ID="AnnualDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px;display:none"  class="td_label" >
                                            <b><asp:Label ID="Label29" runat="server" Text="Transition Plan:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px; display:none">
                                        </td>
                                        <td style="width: 100px;display:none" class="td_unline"  >
                                            <asp:TextBox ID="TransitionDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label13" runat="server" Text="Exit IFSP:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px; display:none">
                                        </td>
                                        <td style="width: 100px" class="td_unline"  >
                                            <asp:TextBox ID="ExitDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 250px">
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
                                            <asp:textbox id="EstablishedRiskDesc" runat="server" CssClass="inface" width="80%" MaxLength="500"></asp:textbox>
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
                                    runat="server" CssClass="infaceText" Width="99%" Height="80" ReadOnly="true"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="FamilyInfo" ShowModal="true"
                                    runat="server" Visible="false">
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
                                    runat="server" CssClass="infaceText" Width="99%" Height="80" ReadOnly="true"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Concerns" ShowModal="true"
                                    runat="server" Visible="false">
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
                                    runat="server" CssClass="infaceText" Width="99%" Height="80" ReadOnly="true"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Resources" ShowModal="true"
                                    runat="server" Visible="false">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr style="height:20px;">
                            <td>
                                <b>PERIODIC REVIEW</b>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Resources_Review" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" CssClass="infaceText" Width="99%" Height="80" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                         <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline"></td>
                        </tr>    
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <center><b>TRANSITION NOTIFICATION & PLAN</b></center>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>CONCERNS & PRIORITIES </b>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="LEA_concerns" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" CssClass="inface" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="LEA_concerns" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <b>RESOURCES</b>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="LEA_resources" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" CssClass="inface" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="LEA_resources" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <center><b>TRANSITION PLAN TO PREPARE TRANSITION FROM EARLY START SERVICES TO<br />
                                LOCAL EDUCATION AGENCY AND EXIT FROM EARLY START</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Procedures, Activities and Timelines to ensure a smooth transition from Early Start to a Community Prgram, if applicable.
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
                                        <td style="width: 180px"  class="td_label" >
                                            <b><asp:Label ID="l_LEA_name" runat="server" Text="Name of Local Education Agency:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 180px" class="td_unline"  >
                                            <asp:TextBox ID="LEA_name" runat="server" CssClass="inface" MaxLength="100">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10px"></td>
                                        <td style="width: 180px"  class="td_label" >
                                            <b><asp:Label ID="l_LEA_ReferDate" runat="server" Text="Notification/Referral Date to the LEA:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 80px" class="td_unline"  >
                                            <asp:TextBox ID="LEA_ReferDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td width="5px"></td>
                                        <td style="width: 150px"  class="td_label" >
                                            <b><asp:Label ID="l_LEA_ConfDate" runat="server" Text="Transition Conference Date:" ></asp:Label></b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 80px" class="td_unline"  >
                                            <asp:TextBox ID="LEA_ConfDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
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
                                <b>REFERRAL INFORMATION<br /></b>Transmission of information about the child to the LEA including current and 
                                upcoming evaluation(s), assessment (s) information, including copy of the IFSP(s) that have been developed and implemented.
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="LEA_ShareInfo_yes" groupname="LEA_ShareInfo" runat="server" Text="" />
                                        Parent agrees to share all information                               
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="LEA_ShareInfo_no" groupname="LEA_ShareInfo" runat="server" Text="" />
                                        Parent agrees to share only the following information:&nbsp;&nbsp;&nbsp; 
                                 <asp:TextBox ID="LEA_ShareInfoText" runat="server" CssClass="inface" width="550px" MaxLength="100">
                                 </asp:TextBox>                             
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b>LEA CONSENTS:<br /></b>
                                LEA Information/Forms and all other necessary consents to evaluate and determine eligibility signed by the parent 
                                or Holder of Educational Rights. <u>Consent form(s) signed at the time of this meeting:</u>  
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="LEA_Consents_yes" groupname="LEA_Consents" runat="server" Text="" />
                                        Yes                               
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="LEA_Consents_no" groupname="LEA_Consents" runat="server" Text="" />
                                        No&nbsp;&nbsp;&nbsp;The RC will send notification/referral information to the LEA no later than 90 days 
                                        prior to child’s third birthday. The LEA will send consent and assessment plans to parent within 15 days of referral date.                             
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;If LEA consents not signed at time of Transition Conference, 
                                 indicate timeline RC will send notification/referral information to the LEA.&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="LEA_Consents_date" runat="server" CssClass="inface" width="80px" onclick="showcalendar(event, this);DataChanged();"
                                       onfocus="showcalendar(event, this);">
                                 </asp:TextBox>                              
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b>LEA ASSESSMENTS:<br /></b>
                                Check education related assessments required prior to determine LEA eligibility and special education services. 
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_psych" runat="server" Text=""></asp:Checkbox>Psychological 
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_health" runat="server" Text=""></asp:Checkbox>Health Screen 
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_lang" runat="server" Text=""></asp:Checkbox>Language and Speech 
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_pe" runat="server" Text=""></asp:Checkbox>Adaptive PE                                  
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_occup" runat="server" Text=""></asp:Checkbox>Occupational Therapy Eval 
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_phy" runat="server" Text=""></asp:Checkbox>Physical Therapy Eval 
                                &nbsp;&nbsp;&nbsp;<asp:Checkbox ID="LEA_assess_other" runat="server" Text=""></asp:Checkbox>Other:&nbsp;  
                                <asp:TextBox ID="LEA_assess_text" runat="server" CssClass="inface" width="600px" maxlenght="250">
                                </asp:TextBox>                                 
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b>OTHER REGIONAL CENTER ACTIVITY:<br /></b>
                                By age 2.9 (33 months) referral to RC’s Clinical Department will be made to determine Lanterman Act eligibility. 
                                A medical examination and/or a psychological evaluation may be required.   
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="LEA_referral_yes" groupname="LEA_Referral" runat="server" Text="" />
                                 Parent consents referral to determine Lanterman Act eligibility.                               
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                 &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="LEA_referral_no" groupname="LEA_Referral" runat="server" Text="" />
                                 Parent declines referral to determine Lanterman Act eligibility and agrees to close case on child’s third birthday.  
                                 Parent is aware that child may be re-referred to the Clinical Department after age three.                             
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>
                    </table>
                  </div>
                  <div id="Tab3"  style="display:none;">
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
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
