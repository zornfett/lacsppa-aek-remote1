<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIPPInfoFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIPPInfoFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base target="_self" />
    <title>:::Individual Program Plan:::...</title>
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
                //TAB1.style.cursor="pointer";
                TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                TAB3.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB4.style.color = "";
                //TAB4.style.cursor="pointer";
                TAB5.style.color = "";
                //TAB5.style.cursor="pointer";
                TAB6.style.color = "";
                //TAB6.style.cursor = "pointer";
                TAB7.style.color = "";
                //TAB7.style.cursor="pointer";
                TAB8.style.color = "";
                //TAB8.style.cursor="pointer";
                TAB9.style.color = "";
                //TAB9.style.cursor = "pointer";

                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            Tab5.style.display = "none";
            Tab6.style.display = "none";
            Tab7.style.display = "none";
            Tab8.style.display = "none";
            Tab9.style.display = "none";

            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    document.IPPInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    document.IPPInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    document.IPPInfo.now_div_flag.value = "3";
                    break;
                case "TAB4":
                    Tab4.style.display = "";
                    document.IPPInfo.now_div_flag.value = "4";
                    break;
                case "TAB5":
                    Tab5.style.display = "";
                    document.IPPInfo.now_div_flag.value = "5";
                    break;
                case "TAB6":
                    Tab6.style.display = "";
                    document.IPPInfo.now_div_flag.value = "6";
                    break;
                case "TAB7":
                    Tab7.style.display = "";
                    document.IPPInfo.now_div_flag.value = "7";
                    break;
                case "TAB8":
                    Tab8.style.display = "";
                    document.IPPInfo.now_div_flag.value = "8";
                    break;
                case "TAB9":
                    Tab9.style.display = "";
                    document.IPPInfo.now_div_flag.value = "9";
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
                //TAB1.style.cursor="pointer";
                TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                TAB3.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB4.style.color = "";
                //TAB4.style.cursor="pointer";
                TAB5.style.color = "";
                //TAB5.style.cursor="pointer";
                TAB6.style.color = "";
                //TAB6.style.cursor = "pointer";
                TAB7.style.color = "";
                //TAB7.style.cursor="pointer";
                TAB8.style.color = "";
                //TAB8.style.cursor="pointer";
                TAB9.style.color = "";
                //TAB9.style.cursor = "pointer";
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            Tab5.style.display = "none";
            Tab6.style.display = "none";
            Tab7.style.display = "none";
            Tab8.style.display = "none";
            Tab9.style.display = "none";

            switch (obj_id) {
                case "TAB1":
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    //TAB1.style.cursor="auto";
                    document.IPPInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    //TAB2.style.cursor="auto";
                    document.IPPInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    //TAB3.style.cursor="auto";
                    document.IPPInfo.now_div_flag.value = "3";
                    break;
                case "TAB4":
                    Tab4.style.display = "";
                    TAB4.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "4";
                    break;
                case "TAB5":
                    Tab5.style.display = "";
                    TAB5.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "5";
                    break;
                case "TAB6":
                    Tab6.style.display = "";
                    TAB6.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "6";
                    break;
                case "TAB7":
                    Tab7.style.display = "";
                    TAB7.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "7";
                    break;
                case "TAB8":
                    Tab8.style.display = "";
                    TAB8.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "8";
                    break;
                case "TAB9":
                    Tab9.style.display = "";
                    TAB9.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "9";
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
                //TAB1.style.cursor="pointer";
                TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                TAB3.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB4.style.color = "";
                //TAB4.style.cursor="pointer";
                TAB5.style.color = "";
                //TAB5.style.cursor="pointer";
                TAB6.style.color = "";
                //TAB6.style.cursor = "pointer";
                TAB7.style.color = "";
                //TAB7.style.cursor="pointer";
                TAB8.style.color = "";
                //TAB8.style.cursor="pointer";
                TAB9.style.color = "";
                //TAB9.style.cursor = "pointer";
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            Tab5.style.display = "none";
            Tab6.style.display = "none";
            Tab7.style.display = "none";
            Tab8.style.display = "none";
            Tab9.style.display = "none";

            switch (flag) {
                case 1:
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    //TAB1.style.cursor="auto";
                    document.IPPInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    //TAB2.style.cursor="auto";
                    document.IPPInfo.now_div_flag.value = "2";
                    break;
                case 3:
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    //TAB3.style.cursor="auto";
                    document.IPPInfo.now_div_flag.value = "3";
                    break;
                case 4:
                    Tab4.style.display = "";
                    TAB4.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "4";
                    break;
                case 5:
                    Tab5.style.display = "";
                    TAB5.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "5";
                    break;
                case 6:
                    Tab6.style.display = "";
                    TAB6.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "6";
                    break;
                case 7:
                    Tab7.style.display = "";
                    TAB7.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "7";
                    break;
                case 8:
                    Tab8.style.display = "";
                    TAB8.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "8";
                    break;
                case 9:
                    Tab9.style.display = "";
                    TAB9.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "9";
                    break;
            }
        }

      function RefreshPlanData(TabNo) {
           var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
           myHdnRefreshData.value = TabNo;        
           window.document.IPPInfo.submit();
           window.focus();
             
           return true;
       }
       
       function print_click() {
           var entrykey=document.IPPInfo.entrykey.value.toString();
           var UserAct = document.IPPInfo.UserAct.value.toString();   
           winhref("PrintFormIPPFDLRC.aspx?IPPID="+entrykey+"&UserAct="+UserAct,"PrintFormIPP");
       }

       function save_click() {
           if (IsDate(document.getElementById("ReviewDate").value, false) != "true") 
		   {
                alert("Please input Date of Review in TAB1 !");
                document.IPPInfo.ReviewDate.focus();
                return false;          
           }

           return true;
       }

       function back_click() {
           if (Confirm_Page())
               document.location.replace(document.IPPInfo.gobackPage.value);
       }

       function AddOutPlan(TabNo)
       {
           var hiddenID = "hdnMWChecked" + TabNo;
           var hiddenRef = document.getElementById(hiddenID);
           popupDialog("FormIPPPlanFDLRC.aspx?IPPID=" + document.IPPInfo.entrykey.value + "&UCI=" + document.IPPInfo.consumer_key.value +
             "&TabNo="+TabNo+"&type=add&MWCEnable="+hiddenRef.value);
       }

       function EditOutPlan(IPPOutID, TabNo)
       {
           var hiddenID = "hdnMWChecked" + TabNo;
           var hiddenRef = document.getElementById(hiddenID);
           popupDialog("FormIPPPlanFDLRC.aspx?IPPID=" + document.IPPInfo.entrykey.value + "&IPPOutID=" + IPPOutID +
             "&UCI=" + document.IPPInfo.consumer_key.value + "&TabNo="+TabNo+"&type=edit&MWCEnable="+hiddenRef.value);
       }

       function DeleteOutPlan(IPPOutID, TabNo)
       {
          if (PromptDel("Do you really want to delete this Outcome and Plan Item ?"))
          {
             var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
             myHdnRefreshData.value = TabNo;        
             document.IPPInfo.DeleteIPPOutID.value = IPPOutID;
             window.document.IPPInfo.submit();
             window.focus();
          }
       }

       function SubmitTab(TabNo)
       {
          var mySubmitTabNo = document.getElementById(<%= "'" + SubmitTabNo.ClientID + "'" %>);        
          mySubmitTabNo.value = TabNo;  
          window.document.IPPInfo.submit();
          window.focus();
       }

       function ReadyToSubmitTab(TabNo)
       {
          var myReadyToSubmitTabNo = document.getElementById(<%= "'" + ReadyToSubmitTabNo.ClientID + "'" %>);        
          myReadyToSubmitTabNo.value = TabNo;  
          window.document.IPPInfo.submit();
          window.focus();
       }

       function Sign(UserName) {
          var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
          mySignUserName.value = UserName;  
          window.document.IPPInfo.submit();
          window.focus();
       }

       function Verify() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "1";  
          window.document.IPPInfo.submit();
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
             window.document.IPPInfo.submit();
             window.focus();
          }
       }

       function Message_Click()
       {
          var tx_uci=document.IPPInfo.consumer_key.value.toString();  
          var url="../weblist/WebMessageNew.aspx?prefill=IPP&uci="+tx_uci;            
          window.showModalDialog(url, self,'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');                    
       }

       function checkMWSelection(TabNo)
       {
          var chkID = "Tab" + TabNo + "Deficits";
          var hiddenID = "hdnMWChecked" + TabNo;
          var chkRef = document.getElementById(chkID);
          var hiddenRef = document.getElementById(hiddenID);
          var chkArray = chkRef.getElementsByTagName('input');

          var chkval = false;
          for (var i=0; i<chkArray.length; i++)
          {
              if (chkArray[i].checked)
                chkval = true;
          }

          if (chkval)
              hiddenRef.value = "1";
          else
              hiddenRef.value = "0";
       }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="IPPInfo" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />  
    <input type="hidden" name="consumer_cm_id" id="consumer_cm_id" value="" runat="server" />       
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="DeleteIPPOutID" id="DeleteIPPOutID" value="0" runat="server" />
    <input type="hidden" name="SubmitTabNo" id="SubmitTabNo" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <input type="hidden" name="ReadyToSubmitTabNo" id="ReadyToSubmitTabNo" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormIPPListFDLRC.aspx" runat="server" />
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />
    <asp:hiddenfield id="hdnPlanTitle1" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle2" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle3" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle4" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />

    <asp:hiddenfield id="hdnMWChecked2" runat="server" value="0" />
    <asp:hiddenfield id="hdnMWChecked3" runat="server" value="0" />
    <asp:hiddenfield id="hdnMWChecked4" runat="server" value="0" />
    <asp:hiddenfield id="hdnMWChecked5" runat="server" value="0" />
    <asp:hiddenfield id="hdnMWChecked6" runat="server" value="0" />
    <asp:hiddenfield id="hdnMWChecked7" runat="server" value="0" />
    <asp:hiddenfield id="hdnMWChecked8" runat="server" value="0" />
    
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
                    <table id="TABLE_Label1" cellspacing="0" cellpadding="0" runat="server">
                        <tr id="tr_info">
                            <td id="TAB1"  runat="server" style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                                width="120">
                                <b><u>Identifying Info</u></b>
                            </td>
                            <td id="TAB2"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="160">
                                <b><u>Living Arrangements</u></b>
                            </td>
                            <td id="TAB3"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="230">
                                <b><u>Skills Demonstrated in Life</u></b>
                            </td>
                            <td id="TAB4"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="160">
                                <b><u>Challenging Behaviors</u></b>
                            </td>
                            <td id="TAB5"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="250">
                                <b><u>School, Work or Day Activity</u></b>
                            </td>
                            <td id="TAB6"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="200">
                                <b><u>Community and Social Life</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label2" cellspacing="0" cellpadding="0" runat="server">
                        <tr>
                            <td id="TAB7"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="130">
                                <b><u>Health and Safety</u></b>
                            </td>
                            <td id="TAB8" runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="60">
                                <b><u>Legal</u></b>
                            </td>
                            <td id="TAB9"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="130">
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
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 200px"  class="td_label" >
                            <b><asp:Label ID="l_ConsumerName" runat="server" Text="Consumer Name:" ></asp:Label></b></td>
                        <td style="width: 5px">
                        </td>
                        <td  style="width: 280px" class="td_unline"  >
                            <asp:TextBox ID="ClientName" runat="server" CssClass="inface"></asp:TextBox>
                        </td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label1" runat="server" Text="DOB:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px" class="td_unline"  >
                            <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label2" runat="server" Text="UCI#:" ></asp:Label></b></td>
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
                            <b><asp:Label ID="Label3" runat="server" Text="Medicaid Waiver:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td  style="width: 280px" >
                            <asp:dropdownlist id="MedicaidWaiver" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
                        </td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label4" runat="server" Text="Date of Review:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td  style="width: 180px" class="td_unline" >
                            <asp:TextBox ID="ReviewDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                  onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                        </td>
                        <td class="td_label" style="width:180px">					   						    
						</td>
                        <td  colspan="2"></td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 200px"  valign="top" class="td_label" >
                            <b><asp:Label ID="Label13" runat="server" Text="Purpose of Review:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 280px" class="td_label"  >
                            <asp:Radiobutton ID="ReviewPurpose_1" groupname="ReviewPurpose" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Triennial</b>
                            
                            <asp:Radiobutton ID="ReviewPurpose_2" groupname="ReviewPurpose" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Initial</b>
                            
                            <asp:Radiobutton ID="ReviewPurpose_3" groupname="ReviewPurpose" runat="server" Text="" Checked="false"></asp:Radiobutton><b>30 Day</b>
                        </td>
                        <td colspan=7></td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 200px"  class="td_label" >
                            <b><asp:Label ID="Label33" runat="server" Text="Preferred Language:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 280px" class="td_unline">
                            <asp:DropDownList ID="ClientLangPref" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   CssClass="infaceDrop">
                            </asp:DropDownList>
                        </td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label35" runat="server" Text="Language of Documentation:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td colspan=2 class="td_label"  >
                            <asp:DropDownList ID="ClientLangDocu" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   CssClass="infaceDrop">
                            </asp:DropDownList>  
                        </td>
                        <td colspan=2></td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="Label16" runat="server" Text="MW Deficit(s):" ></asp:Label></b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="image" id="btnMessager" runat="server" alt="Message" style="width: 25px;height:25px"   
                                src="../img/Message_new.gif" title="Send Message" 
                                onclick="javascript:Message_Click();return false;" />  
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_unline" >
                            <asp:TextBox ID="MWDeficits" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="140" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="Label14" runat="server" Text="Conference participants:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Participants" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Participants" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:25px;">
                        <td colspan="10">
                        </td>
                    </tr>                                             
                </table>
            </div>
            <div id="Tab2" style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label42" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">Living Arrangements</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label5" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab2Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab2" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab2" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab2" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                            <div id="divTab2Plan4">
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                            </div>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="Label6" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab2Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Tab2Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab2" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab3"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label7" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">Skills Demonstrated in Life</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_cder3" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab3Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab3" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab3" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab3" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="l_comments3" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab3Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Tab3Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab3" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab4"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label8" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">Challenging Behaviors</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_cder4" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab4Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab4" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab4" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="l_comments4" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab4Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Tab4Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab4" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab5"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label9" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">School, Work or Day Activity</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_cder5" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab5Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab5" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab5" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab5" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="l_comments5" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab5Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="Tab5Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab5" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab6"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label10" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">Community and Social Life</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_cder6" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab6Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab6" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab6" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab6" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="l_comments6" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab6Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="Tab6Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab6" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab7"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label11" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">Health and Safety</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_ceder7" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab7Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab7" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab7" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab7" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="l_comment7" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab7Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="Tab7Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab7" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab8"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 30px;" valign="middle">
                        <td align="center">
                           <asp:Label ID="Label12" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                              Height="18px">Legal</asp:Label>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_cder8" runat="server" Text="CDER Deficits:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:CheckBoxList ID="Tab8Deficits" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:10px">
                        <td>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab8" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab8" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   DESIRED OUTCOME & PLAN LIST</asp:label>
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
                        <asp:datagrid id="dg_plan_tab8" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
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
                                      <td colspan="3" align="left" class="td_label" valign="top">
                                         <asp:Label ID="l_outcomemet" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan=3 align="left" class="td_unline">
                                        <div>
                                        <asp:Textbox ID="OutcomeMet" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                                TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "OutcomeMet") %>'></asp:Textbox>
                                        </div>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td  style="width: 150px" class="td_label" valign="top">
                                        <asp:Label ID="SeqNo" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text='<%# DataBinder.Eval(Container.DataItem, "seqno") %>'></asp:Label>.&nbsp;
                                        <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Brown" Text="DESIRED OUTCOME:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 900px;"  class="td_unline">
                                        <div>
                                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="infaceText" Height="60px" Width="98%" ReadOnly=true
                                            TextMode=MultiLine Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:Textbox>
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan For Consumer Family:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top">
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10px">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                                                TextMode="MultiLine" Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="3">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                               TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
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
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>.
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3">
                                         <asp:datagrid id="dg_plan_tab_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
					                          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                        <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
					                        <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
					                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                        <Columns>
						                    <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
						                    <asp:TemplateColumn HeaderText="">
						                    	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						                    	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						                    	<ItemTemplate>
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                       <tr style="height:5px">
                                                          <td colspan="4">
                                                          </td>
                                                       </tr>
                                                       <tr class="tr_common">
                                                          <td style="width: 25px"></td>
                                                          <td  style="width: 25px" class="td_label" valign="top" >
                                                            <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                                          </td>
                                                          <td width="10">
                                                          </td>
                                                          <td style="width: auto"  class="td_unline">
                                                            <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly=true
                                                                TextMode=MultiLine Style="overflow:auto" 
                                                               Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                                          </td>
                                                       </tr>
                                                    </table>
                                                </ItemTemplate>
				                    		</asp:TemplateColumn>
                                            </Columns>
			                             </asp:datagrid>
                                      </td>
                                   </tr>
                                   <tr style="height:20px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="3" class="td_thicksepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="3">
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
                    </td>
                    </tr> 
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" class="td_label">
                            <b><asp:Label ID="l_comment8" runat="server" Text="COMMENTS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Tab8Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" CssClass="infaceText" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="Tab8Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab8" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab9"  style="display:none;">
               <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                         <b><asp:Label ID="l_logs" runat="server" Text="CONFIRMATION LOGS:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                          <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                          runat="server" Width="99%" Height="400" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td class="td_label">
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                    <td width="150px" class="td_label">
                                        <b><asp:Label ID="l_statuses" runat="server" Text="CONFIRMATION STATUS:" ></asp:Label></b>
                                    </td>
                                    <td width="5" ></td>
                                    <td class="td_unline" style="width:900px">
                                        <asp:TextBox ID="Statuses" CssClass="inface" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height:10px;">
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
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                            <td colspan="5"></td>
                          </tr>
                          <tr class="tr_common">
                           <td width=10px"></td>
                           <td width="120px" class="td_label">
                              <asp:Label ID="l_ipp_verify" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                           </td>
                           <td width="5px">
                           </td>
                           <td class="td_unline" align="left" style="width: 300px">
                              <asp:Label ID="ipp_verify" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                              </asp:Label>
                           </td>
                           <td width="auto"></td>
                          </tr>
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                           <td colspan="3">
                           </td>
                           <td class="td_label">
                             <asp:Label ID="l_ippverifytitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
                           </td>
                           <td>
                           </td>
                          </tr>
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                           <td width="10px">
                           </td>
                           <td class="td_label" style="width: 120px">
                             <asp:Label ID="l_ipp_verify_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                           </td>
                           <td width="5px">
                           </td>
                           <td class="td_unline">
                             <asp:Label ID="ipp_verify_date" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                             </asp:Label>
                           </td>
                           <td width="auto"></td>
                          </tr>
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          </table>
                         </td>
                         <td width="50%">
                          <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                          <tr class="tr_common">
                            <td colspan="5" align=center>
                               <input type="button" id="btnSign" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                   onclick="javascript:CheckPwd();return false;" />
                            </td>
                          </tr>
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                           <td width=10px"></td>
                           <td colspan=3 class="td_label">
                               <asp:Radiobutton ID="approved_yes" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Approve</b>
                               &nbsp;&nbsp;
                               <asp:Radiobutton ID="approved_no" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Return</b>
                           </td>	
                           <td width="auto"></td>
                          </tr> 
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                           <td width=10px"></td>
                           <td width="120px" class="td_label">
                              <asp:Label ID="l_ipp_signature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                           </td>
                           <td width="5px">
                           </td>
                           <td class="td_unline" align="left" style="width: 300px">
                              <asp:Label ID="ipp_signature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                              </asp:Label>
                           </td>
                           <td width="auto"></td>
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                           <td colspan="3">
                           </td> 
                           <td class="td_label">
                             <asp:Label ID="l_ippsigntitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
                           </td>
                           <td width="auto"></td>
                          </tr>
                          <tr><td colspan="5" height="5px">
                          </td></tr>
                          <tr class="tr_common">
                           <td width="10px">
                           </td>
                           <td class="td_label" style="width: 120px">
                             <asp:Label ID="l_ipp_signature_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                           </td>
                           <td width="5px">
                           </td>
                           <td class="td_unline">
                             <asp:Label ID="ipp_signature_date" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
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
                              <b><asp:Label ID="l_sign_comments" runat="server" Text="Comments:" ></asp:Label></b>
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
               </table>
               </div>
            </td>
          </tr>
        </table>
    </div>
    </form>
</body>
</html>

