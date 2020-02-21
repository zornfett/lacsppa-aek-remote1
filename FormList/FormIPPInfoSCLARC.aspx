<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIPPInfoSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIPPInfoSCLARC" %>

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
                TAB10.style.color = "";
                //TAB10.style.cursor="pointer";
                TAB11.style.color = "";
                //TAB11.style.cursor="pointer";
                TAB12.style.color = "";
                //TAB12.style.cursor = "pointer";
                TAB13.style.color = "";
                //TAB13.style.cursor = "pointer";
                TAB14.style.color = "";
                //TAB14.style.cursor = "pointer";
                TAB15.style.color = "";
                //TAB15.style.cursor = "pointer";
                TAB16.style.color = "";
                //TAB16.style.cursor = "pointer";

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
            Tab10.style.display = "none";
            Tab11.style.display = "none";
            Tab12.style.display = "none";
            Tab13.style.display = "none";
            Tab14.style.display = "none";
            Tab15.style.display = "none";
            Tab16.style.display = "none";
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
                case "TAB10":
                    Tab10.style.display = "";
                    document.IPPInfo.now_div_flag.value = "10";
                    break;
                case "TAB11":
                    Tab11.style.display = "";
                    document.IPPInfo.now_div_flag.value = "11";
                    break;
                case "TAB12":
                    Tab12.style.display = "";
                    document.IPPInfo.now_div_flag.value = "12";
                    break;
                case "TAB13":
                    Tab13.style.display = "";
                    document.IPPInfo.now_div_flag.value = "13";
                    break;
                case "TAB14":
                    Tab14.style.display = "";
                    document.IPPInfo.now_div_flag.value = "14";
                    break;
                case "TAB15":
                    Tab15.style.display = "";
                    document.IPPInfo.now_div_flag.value = "15";
                    break;
                case "TAB16":
                    Tab16.style.display = "";
                    document.IPPInfo.now_div_flag.value = "16";
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
                TAB10.style.color = "";
                //TAB10.style.cursor="pointer";
                TAB11.style.color = "";
                //TAB11.style.cursor="pointer";
                TAB12.style.color = "";
                //TAB12.style.cursor = "pointer";
                TAB13.style.color = "";
                //TAB13.style.cursor = "pointer";
                TAB14.style.color = "";
                //TAB14.style.cursor = "pointer";
                TAB15.style.color = "";
                //TAB15.style.cursor = "pointer";
                TAB16.style.color = "";
                //TAB15.style.cursor = "pointer";
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
            Tab10.style.display = "none";
            Tab11.style.display = "none";
            Tab12.style.display = "none";
            Tab13.style.display = "none";
            Tab14.style.display = "none";
            Tab15.style.display = "none";
            Tab16.style.display = "none";

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
                case "TAB10":
                    Tab10.style.display = "";
                    TAB10.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "10";
                    break;
                case "TAB11":
                    Tab11.style.display = "";
                    TAB11.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "11";
                    break;
                case "TAB12":
                    Tab12.style.display = "";
                    TAB12.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "12";
                    break;
                case "TAB13":
                    Tab13.style.display = "";
                    TAB13.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "13";
                    break;
                case "TAB14":
                    Tab14.style.display = "";
                    TAB14.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "14";
                    break;
                case "TAB15":
                    Tab15.style.display = "";
                    TAB15.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "15";
                    break;
                case "TAB16":
                    Tab16.style.display = "";
                    TAB16.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "16";
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
                TAB10.style.color = "";
                //TAB10.style.cursor="pointer";
                TAB11.style.color = "";
                //TAB11.style.cursor="pointer";
                TAB12.style.color = "";
                //TAB12.style.cursor = "pointer";
                TAB13.style.color = "";
                //TAB13.style.cursor = "pointer";
                TAB14.style.color = "";
                //TAB15.style.cursor = "pointer";
                TAB15.style.color = "";
                //TAB15.style.cursor = "pointer";
                TAB16.style.color = "";
                //TAB16.style.cursor = "pointer";
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
            Tab10.style.display = "none";
            Tab11.style.display = "none";
            Tab12.style.display = "none";
            Tab13.style.display = "none";
            Tab14.style.display = "none";
            Tab15.style.display = "none";
            Tab16.style.display = "none";
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
                case 10:
                    Tab10.style.display = "";
                    TAB10.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "10";
                    break;
                case 11:
                    Tab11.style.display = "";
                    TAB11.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "11";
                    break;
                case 12:
                    Tab12.style.display = "";
                    TAB12.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "12";
                    break;
                case 13:
                    Tab13.style.display = "";
                    TAB13.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "13";
                    break;
                case 14:
                    Tab14.style.display = "";
                    TAB14.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "14";
                    break;
                case 15:
                    Tab15.style.display = "";
                    TAB15.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "15";
                    break;
                case 16:
                    Tab16.style.display = "";
                    TAB16.style.color = "#990066";
                    document.IPPInfo.now_div_flag.value = "16";
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
           winhref("PrintFormIPP.aspx?IPPID="+entrykey+"&UserAct="+UserAct,"PrintFormIPP");
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

       function info_click() {
           winhref("Instructions for KEA Live IPP.pdf", "FormIPPInfo");
       }

       function displayLegalInfo() {
           var non_conserved = document.getElementById("non_conserved");
           if (non_conserved.checked == false) {
               document.getElementById("legalinfo_tab").style.display = "";
               document.IPPInfo.LegalInfo_flag.value = "1";
           }
           else {
               document.getElementById("legalinfo_tab").style.display = "none";
               document.IPPInfo.LegalInfo_flag.value = "1";
           }
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

       function refresh_click()
       {
          var flag=document.IPPInfo.now_div_flag.value;
          if ((flag=="1") || (flag=="2") || (flag=="10") || (flag=="11") || (flag=="12") || (flag=="13"))
            return true;

          if (confirm("Are you sure you want to refresh this page ? If you do, you need to confirm the outcome by click 'ReConfirm' or 'Next' button at the bottom of the page."))
            return true;
          else return false;
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

       function UnLock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "3";  
          window.document.IPPInfo.submit();
          window.focus();
       }

       function Lock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "4";  
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

       function MeetingLocation_click()
       {
            if (document.IPPInfo.MeetingLocationList.value == "1")
            {
              document.IPPInfo.MeetingLocation.value = document.getElementById('<%= this.Address.ClientID %>').value;
            }
       }
       /*
       function SignYes_click()
       { 
            if (document.getElementById("<%=approved_yes.ClientID %>").checked)
              document.IPPInfo.btnSign.value = "Sign";
            else 
              document.IPPInfo.btnSign.value = "Return";
       }

       function SignNo_click()
       {  
            if (document.getElementById("<%=approved_no.ClientID %>").checked)
              document.IPPInfo.btnSign.value = "Return";
            else 
              document.IPPInfo.btnSign.value = "Sign";
       }
      */
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
    <input type="hidden" name="LegalInfo_flag" id="LegalInfo_flag" value="0" runat="server" />
    <input type="hidden" name="DeleteIPPOutID" id="DeleteIPPOutID" value="0" runat="server" />
    <input type="hidden" name="SubmitTabNo" id="SubmitTabNo" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <input type="hidden" name="ReadyToSubmitTabNo" id="ReadyToSubmitTabNo" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormIPPListSCLARC.aspx" runat="server" />
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />
    <input type="hidden" name="ExistReviewDate" id="ExistReviewDate" value="" runat="server" />
    <asp:hiddenfield id="hdnPlanTitle1" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle2" runat="server" value="0" />
    <asp:hiddenfield id="hdnPlanTitle3" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
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
                <asp:ImageButton ID="btnRefresh" runat="server" AlternateText="Refresh" Style="width: 25px;height:25px"
                    ImageURL="../img/refresh.jpg" ToolTip="Refresh"
                    OnClientClick="return refresh_click();" OnClick="btnRefresh_Click" >
                </asp:ImageButton>
                &nbsp; 
                <input type="image" id="btnPrint" runat="server" alt="Print" Visible="false" style="width: 25px;height:25px"  
                    src="../img/print.ico" title="Print"
                    onclick="javascript:print_click();return false;" />             
                &nbsp;
                <input type="image" id="btnInfo" runat="server" alt="Info" style="width: 25px;height:25px"  
                    src="../img/info.jpg" title="Info"
                    onclick="javascript:info_click();return false;" />
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
                                width="60">
                                <b><u>Services</u></b>
                            </td>
                            <td id="TAB3"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="130">
                                <b><u>Health and Safety</u></b>
                            </td>
                            <td id="TAB4"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="230">
                                <b><u>Skills Demonstrated in Daily Life</u></b>
                            </td>
                            <td id="TAB5"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="160">
                                <b><u>Challenging Behaviors</u></b>
                            </td>
                            <td id="TAB6"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="250">
                                <b><u>Physical and Social Environment</u></b>
                            </td>
                            <td id="TAB7"  runat="server" class="tab_sel" onclick="doseltd(this);"
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
                            <td id="TAB8"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="160">
                                <b><u>Living Arrangements</u></b>
                            </td>
                            <td id="TAB9" runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="60">
                                <b><u>Legal</u></b>
                            </td>
                            <td id="TAB10"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="120">
                                <b><u>Consumer Survey</u></b>
                            </td>
                            <td id="TAB11"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="80">
                                <b><u>Financial</u></b>
                            </td>
                            <td id="TAB12"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="140">
                                <b><u>Residential Review</u></b>
                            </td>
                            <td id="TAB13"  runat="server" class="tab_sel" onclick="doseltd(this);"
                                width="130">
                                <b><u>Finalize/Signature</u></b>
                            </td>
                            <td id="TAB14"  runat="server" class="tab_sel" onclick="doseltd(this)"
                                width="90">
                                <b><u>Addendum(s)</u></b>
                            </td>
                            <td id="TAB15"  runat="server" class="tab_sel" onclick="doseltd(this)"
                                width="80">
                                <b><u>Quarterlies</u></b>
                            </td>
                            <td id="TAB16"  runat="server" class="tab_sel" onclick="doseltd(this)"
                                width="160">
                                <b><u>Annual Contact(s)</u></b>
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
                            <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                        </td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label1" runat="server" Text="DOB:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px" class="td_unline"  >
                            <asp:TextBox ID="ClientDOB" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                               CssClass="inface" ></asp:TextBox>
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
                            <b><asp:Label ID="Label5" runat="server" Text="Purpose of Review:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 280px" class="td_label"  >
                            <asp:Radiobutton ID="ReviewPurpose_1" groupname="ReviewPurpose" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Triennial</b>
                            
                            <asp:Radiobutton ID="ReviewPurpose_2" groupname="ReviewPurpose" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Initial</b>
                            
                            <asp:Radiobutton ID="ReviewPurpose_3" groupname="ReviewPurpose" runat="server" Text="" Checked="false"></asp:Radiobutton><b>30 Day</b>
                        </td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px"  class="td_label">
                            <b><asp:Label ID="Label7" runat="server" Text="Frequency of Review:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td colspan="3" class="td_label">
                            <asp:Radiobutton ID="ReviewFreq_1" groupname="ReviewFreq" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Monthly</b>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Radiobutton ID="ReviewFreq_2" groupname="ReviewFreq" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Quarterly</b>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Radiobutton ID="ReviewFreq_3" groupname="ReviewFreq" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Annually</b>
                        </td>
                        <td></td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 200px"  class="td_label" >
                            <b><asp:Label ID="Label6" runat="server" Text="Residence Name/Type:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td  style="width: 280px" class="td_unline"  >
                            <asp:DropDownList ID="residence_current" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     CssClass="infaceDrop">
                            </asp:DropDownList>
                        </td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label9" runat="server" Text="Telephone:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 180px" class="td_unline"  >
                            <asp:Textbox ID="phone_1" runat="server"  CssClass="inface" maxlenght=15></asp:Textbox>
                        </td>
                        <td style="width: 180px"  class="td_label" >
                            <b><asp:Label ID="Label11" runat="server" Text="Service Coordinator:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td style="width: 220px" class="td_unline"  >
                            <asp:DropDownList ID="cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeIDName" 
                                OnClick="DataChanged();" CssClass="infaceDrop" >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 200px"  class="td_label" >
                            <b><asp:Label ID="Label13" runat="server" Text="Address:" ></asp:Label></b></td>
                        <td width="5" >
                        </td>
                        <td  class="td_unline"  colspan="7">
                            <asp:Textbox ID="Address" runat="server" CssClass="inface" MaxLength="100"></asp:Textbox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label" style="width:200px">
                            <b><asp:Label ID="Label12" runat="server" Text="Location of meeting:" ></asp:Label></b>
                        </td>
                        <td  style="width:5px">
                        </td>
                        <td style="width: 280px" >
                            <asp:DropDownList ID="MeetingLocationList" runat="server" CssClass="infaceDrop" OnChange="DataChanged();MeetingLocation_click();">
                                <asp:ListItem Value="" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1">Home</asp:ListItem>
                                <asp:ListItem Value="2">Residential Facility</asp:ListItem>
                                <asp:ListItem Value="3">Vendor</asp:ListItem>
                                <asp:ListItem Value="4">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td colspan="7"></td>
                    </tr>
                    <tr style="height:5px;">
                        <td colspan="10">
                        </td>
                    </tr>
                </table>
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="MeetingLocation" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="MeetingLocation" ShowModal="true"
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
                            <b><asp:Label ID="Label14" runat="server" Text="Conference participants:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Participants" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Participants" ShowModal="true"
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
                            <b><asp:Label ID="Label15" runat="server" Text="Consumer's hopes and dreams for the future:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Hopes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Hopes" ShowModal="true"
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
                            <b><asp:Label ID="Label16" runat="server" Text="Important information about consumer:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="ImportantInfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="140" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td class="td_label">
                            <b><asp:Label ID="Label17" runat="server" Text="Family and others important to consumer:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Family" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td class="td_label">
                            <b><asp:Label ID="l_others" runat="server" Text="Family Information:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Others" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Others" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:25px;">
                        <td>
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
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label8" runat="server" Text="General Info:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="GeneralInfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="250" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label10" runat="server" Text="Generic Service:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="GenericService" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="200" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label18" runat="server" Text="SCLARC Service:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SclarcService" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="200" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
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
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label19" runat="server" Text="CURRENT STATUS:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="CurrentStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="CurrentStatus" ShowModal="true"
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
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 140px"  class="td_label" >
                                        <b><asp:Label ID="Label20" runat="server" Text="Seizure Disorder:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 150px" class="td_label" >
                                        <asp:Radiobutton ID="SeizureDisorder_yes" groupname="SeizureDisorder" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="SeizureDisorder_no"  groupname="SeizureDisorder" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label21" runat="server" Text="Frequency:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="DisorderFrequency" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label22" runat="server" Text="Special Equipment:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SpecialEquipment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label23" runat="server" Text="Special Diet:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SpecialDiet" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90" CssClass="inface"></asp:TextBox>
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
                                        <b><asp:Label ID="Label25" runat="server" Text="Current Height:" ></asp:Label></b></td>
                                    <td style="width: 5px">
                                    </td>
                                    <td  style="width: 100px" class="td_unline"  >
                                        <asp:TextBox ID="hgt" runat="server" CssClass="inface" MaxLength=2></asp:TextBox>
                                    </td>
                                    <td style="width: 5px">
                                    </td>
                                    <td style="width: 120px"  class="td_label" >
                                        <b><asp:Label ID="Label27" runat="server" Text="Current Weight:" ></asp:Label></b></td>
                                    <td style="width: 5px">
                                    </td>
                                    <td style="width: 100px" class="td_unline"  >
                                        <asp:TextBox ID="wgt" runat="server" CssClass="inface" MaxLength=3></asp:TextBox>
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
                        <td>
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 180px"  class="td_label" >
                                        <b><asp:Label ID="Label24" runat="server" Text="Immunizations Current:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 150px" class="td_label" >
                                        <asp:Radiobutton ID="ImmunizationsCurrent_yes" groupname="ImmunizationsCurrent" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="ImmunizationsCurrent_no" groupname="ImmunizationsCurrent" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label26" runat="server" Text="Females:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 100px"  class="td_label" >
                                        <b><asp:Label ID="Label173" runat="server" Text="Pap Smear:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 100px" class="td_label" >
                                        <asp:Radiobutton ID="PapSmear_yes" groupname="PapSmear" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;
                                        <asp:Radiobutton ID="PapSmear_no" groupname="PapSmear" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                    </td>
                                    <td width="10px" >
                                    </td>
                                    <td style="width: 50px"  class="td_label" >
                                        <b><asp:Label ID="Label174" runat="server" Text="Date:" ></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 100px" class="td_unline" >
                                        <asp:TextBox ID="PapSmearDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                         onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 100px"  class="td_label" >
                                        <b><asp:Label ID="Label175" runat="server" Text="Mammogram:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 100px" class="td_label" >
                                        <asp:Radiobutton ID="Mamogram_yes" groupname="Mamogram" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;
                                        <asp:Radiobutton ID="Mamogram_no" groupname="Mamogram" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                    </td>
                                    <td width="10px" >
                                    </td>
                                    <td style="width: 50px"  class="td_label" >
                                        <b><asp:Label ID="Label176" runat="server" Text="Date:" ></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 100px" class="td_unline" >
                                        <asp:TextBox ID="MamogramDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                         onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
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
                            <asp:TextBox ID="Females" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="Females" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label28" runat="server" Text="Males:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 100px"  class="td_label" >
                                        <b><asp:Label ID="Label177" runat="server" Text="Pros:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 100px" class="td_label" >
                                        <asp:Radiobutton ID="Pros_yes" groupname="Pros" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;
                                        <asp:Radiobutton ID="Pros_no" groupname="Pros" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                    </td>
                                    <td width="10px" >
                                    </td>
                                    <td style="width: 50px"  class="td_label" >
                                        <b><asp:Label ID="Label178" runat="server" Text="Date:" ></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 100px" class="td_unline" >
                                        <asp:TextBox ID="ProsDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                         onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
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
                            <asp:TextBox ID="Males" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell14" ControlIdsToCheck="Males" ShowModal="true"
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
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 180px"  class="td_label" >
                                        <b><asp:Label ID="Label29" runat="server" Text="Hospitalization:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 150px" class="td_label" >
                                        <asp:Radiobutton ID="Hospitalization_yes" groupname="Hospitalization" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Hospitalization_no" groupname="Hospitalization" runat="server" Text="" Checked="true"></asp:Radiobutton><b>No</b>
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
                            <asp:TextBox ID="Hospitalization_desc" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label30" runat="server" Text="Mental Health:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="MentalHealth" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell16" ControlIdsToCheck="MentalHealth" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label31" runat="server" Text="Pharmacy:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Pharmacy" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell17" ControlIdsToCheck="Pharmacy" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label179" runat="server" Text="BEHAVIOR MODIFYING DRUGS:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                            <tr class="tr_common">
                                    <td  class="td_label"><asp:label id="lc_apsymn" runat="server" Font-Bold="true" Text="Anti-Psychotic:"></asp:label></td>
                                    <td  width="5"></td>
                                    <td style="width: 75px" >
								        <asp:dropdownlist id="apsymn" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									        <asp:ListItem Value=""></asp:ListItem>
								            <asp:ListItem Value="1">Yes</asp:ListItem>
								            <asp:ListItem Value="2">No</asp:ListItem>
								        </asp:dropdownlist>
							        </td>
							        <td style="width:100px;"></td>
							        <td  class="td_label"><asp:label id="lc_adepmn" runat="server" Font-Bold="true" Text="Anti-Depressant:"></asp:label></td>
                                    <td  width="5"></td>
                                    <td style="width: 75px" >
								        <asp:dropdownlist id="adepmn" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									        <asp:ListItem Value=""></asp:ListItem>
								            <asp:ListItem Value="1">Yes</asp:ListItem>
								            <asp:ListItem Value="2">No</asp:ListItem>
								        </asp:dropdownlist>
							        </td>
							        <td style="width:100px;"></td>
							        <td  class="td_label"><asp:label id="lc_aanxmn" runat="server" Font-Bold="true" Text="Anti-Anxiety:"></asp:label></td>
                                    <td  width="5"></td>
                                    <td style="width: 75px" >
								        <asp:dropdownlist id="aanxmn" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									        <asp:ListItem Value=""></asp:ListItem>
								            <asp:ListItem Value="1">Yes</asp:ListItem>
								            <asp:ListItem Value="2">No</asp:ListItem>
								        </asp:dropdownlist>
							        </td>
							        <td style="width:100px;"></td>
                                </tr> 
                                <tr style="height:5px"><td colspan="12"></td></tr>     
                                <tr class="tr_common">
                                    <td  class="td_label"><b></b><asp:label id="lc_sedhyp" runat="server" Font-Bold="true" Text="Sedative/Hypnotic:"></asp:label></td>
                                    <td  width="5"></td>
                                    <td style="width: 75px" >
								        <asp:dropdownlist id="sedhyp" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									        <asp:ListItem Value=""></asp:ListItem>
								            <asp:ListItem Value="1">Yes</asp:ListItem>
								            <asp:ListItem Value="2">No</asp:ListItem>
								        </asp:dropdownlist>
							        </td>
							        <td style="width:100px;"></td>
							        <td  class="td_label"><asp:label id="lc_stmlnt" runat="server" Font-Bold="true" Text="Stimulant:"></asp:label></td>
                                    <td  width="5"></td>
                                    <td style="width: 75px" >
								        <asp:dropdownlist id="stmlnt" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									        <asp:ListItem Value=""></asp:ListItem>
								            <asp:ListItem Value="1">Yes</asp:ListItem>
								            <asp:ListItem Value="2">No</asp:ListItem>
								        </asp:dropdownlist>
							        </td>
							        <td style="width:100px;"></td>
							        <td  class="td_label"><asp:label id="lc_othdrg" runat="server" Font-Bold="true" Text="Other:"></asp:label></td>
                                    <td  width="5"></td>
                                    <td style="width: 75px" >
								        <asp:dropdownlist id="othdrg" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									        <asp:ListItem Value=""></asp:ListItem>
								            <asp:ListItem Value="1">Yes</asp:ListItem>
								            <asp:ListItem Value="2">No</asp:ListItem>
								        </asp:dropdownlist>
							        </td>
							        <td style="width:100px;"></td>
                                </tr>                              
                            </table>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label32" runat="server" Text="MEDICATION LIST:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:TextBox ID="MedicationList" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
				        </td>
			        </tr>  
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label33" runat="server" Text="Comments:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell18" ControlIdsToCheck="Comments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label34" runat="server" Text="HEALTH CARE PROVIDERS LIST:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:TextBox ID="DoctorList" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_medvistlist" runat="server" Text="MEDICAL VISIT LIST:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:TextBox ID="MedVisitList" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="90"></asp:TextBox>
				        </td>
			        </tr>  
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_chronicmed" runat="server" Text="Chronic Major Medical Condition:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="ChronicMed" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_spechealthreq" runat="server" Text="Special Health Care Requirements:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SpecHealthReq" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="120" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist3" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist3" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                </table>
                <table class="table_common" cellspacing="0" cellpadding="0">
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
                                   <tr class="tr_common">
                                      <td colspan="3" class="td_label">
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                                          <td colspan="4">
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                <br />
		  	    <asp:button id="btnSubmitTab3" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                 
            </div>
            <div id="Tab4"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label41" runat="server" Text="CDER Narrative:" ></asp:Label></b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color=Green><b>(Skill Demonstrated in Daily Life)</b></font>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SkillCderNarrative" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_SkillCderHisMW" runat="server" Text="CDER Historical MW Qualifier Narrative:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SkillCderHisMW" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist4" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist4" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:10px">
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label42" runat="server" Text="Current Status:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SkillCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell20" ControlIdsToCheck="SkillCurStatus" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab4" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>                
            </div>
            <div id="Tab5"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label43" runat="server" Text="CDER Narrative:" ></asp:Label></b> 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color=Green><b>(Challenging Behaviors)</b></font>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="BehvCderNarrative" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_BehvCderHisMW" runat="server" Text="CDER Historical MW Qualifier Narrative:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="BehvCderHisMW" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_BehvSpecCond" runat="server" Text="Special Conditions or Behaviors:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="BehvSpecCond" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_BehvModDrug" runat="server" Text="Behavior Modifying Drugs:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="BehvModDrug" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist5" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist5" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:10px">
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label44" runat="server" Text="Current Status:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="BehvCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell22" ControlIdsToCheck="BehvCurStatus" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab5" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button>  
            </div>
            <div id="Tab6"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label45" runat="server" Text="CDER Narrative:" ></asp:Label></b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color=Green><b>(Physical and Social Environment)</b></font>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="EnvCderNarrative" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_employmentpolicy" runat="server" Text="Employment First Policy:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="EmploymentPolicy" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist6" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist6" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:10px">
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label46" runat="server" Text="Current Status:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="EnvCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell24" ControlIdsToCheck="EnvCurStatus" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab6" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button> 
            </div>
            <div id="Tab7"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label47" runat="server" Text="CDER Narrative:" ></asp:Label></b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color=Green><b>(Community and Social Life)</b></font>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="LifeCderNarrative" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist7" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist7" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:10px">
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label48" runat="server" Text="Current Status:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="LifeCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell26" ControlIdsToCheck="LifeCurStatus" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab7" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button> 
            </div>
            <div id="Tab8"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr  class="tr_common">
                        <td  class="td_label"  >
                            <asp:Radiobutton ID="OutHome_1"  groupname="OutHome" runat="server"  Text="" Checked="true"></asp:Radiobutton><b>Out of Home</b>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Radiobutton ID="OutHome_2"   groupname="OutHome" runat="server" Text="" Checked="false"></asp:Radiobutton><b>In Home</b>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Radiobutton ID="OutHome_3"   groupname="OutHome" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Independent Living</b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label49" runat="server" Text="CDER Narrative:" ></asp:Label></b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color=Green><b>(Living Arrangements)</b></font>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="LivingCderNarrative" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist8" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist8" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:10px">
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label50" runat="server" Text="Current Status:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="LivingCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell28" ControlIdsToCheck="LivingCurStatus" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab8" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button> 
            </div>
            <div id="Tab9" style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label115" runat="server" Text="Legal Info:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table id="LegalInfoTab" runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td class="td_label" style="width:49%">
						                <b><asp:Checkbox ID="non_conserved" onclick="displayLegalInfo();" runat="server" Text="">
                                        </asp:Checkbox>Non-Conserved/No Legal Guardian</b>						   						    
						            </td>
                                    <td></td>
                                    <td  style="width:49%" >
                                       &nbsp;
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td colspan="3">
                                    </td>
                                </tr>
                                <tr id="legalinfo_tab" runat="server" style="display: none">
                                    <td colspan="3">
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr><td colspan="3">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                           <td style="width: 210px"  width="210" class="td_label" >
                                              <b><asp:Label ID="l_legal_status_1" runat="server" Text="Legal Status 1:"></asp:Label></b>
                                           </td>
                                           <td  style="width: 5px">
                                           </td>
                                           <td align="left" width="300">
                                              <asp:DropDownList ID="ClientLegalStatus1" runat="server" DataValueField="tb_entry_name" DataTextField="fullentry"
                                                   CssClass="infaceDrop" OnClick="DataChanged()">
                                              </asp:DropDownList>
                                           </td>
                                           <td  width="210" class="td_label" >
                                              <b><asp:Label ID="l_legal_status_date_1" runat="server" Text="Legal Status Date 1:"></asp:Label></b>
                                           </td>
                                           <td width="5" >
                                           </td>
                                           <td class="td_unline"  width="300">
                                              <asp:TextBox ID="ClientLegalStatusDate1"  runat="server"
                                                  CssClass="inface"></asp:TextBox>
                                              <asp:CompareValidator ControlToValidate="ClientLegalStatusDate1" Operator="DataTypeCheck" Type="Date" 
                                                  Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="legal_status_1_dt"></asp:CompareValidator>
                                           </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common" style="display:none">
                                            <td style="width: 210px"  width="210" class="td_label" >
                                                <b><asp:Label ID="l_legal_status_2" runat="server" Text="Legal Status 2:"></asp:Label></b>
                                            </td>
                                            <td  style="width: 5px">
                                            </td>
                                            <td align="left" width="300">
                                               <asp:DropDownList ID="ClientLegalStatus2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  CssClass="infaceDrop" OnClick="DataChanged()">
                                               </asp:DropDownList>
                                            </td>
                                            <td  width="210" class="td_label" >
                                               <b><asp:Label ID="l_legal_status_date_2" runat="server" Text="Legal Status Date 2:"></asp:Label></b></td>
                                            <td width="5" >
                                            </td>
                                            <td class="td_unline"  width="300">
                                               <asp:TextBox ID="ClientLegalStatusDate2"  runat="server"
                                                  CssClass="inface"></asp:TextBox>
                                               <asp:CompareValidator ControlToValidate="ClientLegalStatusDate2" Operator="DataTypeCheck" Type="Date" 
                                                  Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="legal_status_2_dt"></asp:CompareValidator>
                                            </td>
                                        </tr>                                    
                                        </table>
                                    </td></tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left"  style="width:49%">
                                            <b>Conservator</b>
                                        </td>
                                        <td></td>
                                        <td align="left" style="width:49%" >
                                            <b>Guardian</b>
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr> 
                                    <td align="left" valign="top" style="width:49%">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b><asp:Checkbox ID="cons_pending" runat="server" Text=""></asp:Checkbox>Pending Conservatorship</b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:210px">
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label87" runat="server" Text="Date of ID Team:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td class="td_unline" style="width:300px">
							                        <asp:textbox id="IDTeamdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                       CssClass="inface">
                                                    </asp:textbox>
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b><asp:Checkbox ID="conserved" runat="server" Text=""></asp:Checkbox>Conserved</b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:210px">
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label88" runat="server" Text="Type of Conservatorship:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td align="left" width="300">
                                                    <asp:DropDownList ID="cons_type" runat="server" DataValueField="tb_entry_name"
                                                        DataTextField="tb_entry_text"  CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:210px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label89" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td class="td_unline" style="width:300px">
							                        <asp:textbox id="cons_establishdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                       CssClass="inface"></asp:textbox>
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
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
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:210px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label90" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td align="left" width="300">
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr class="tr_common">
                                                      <td align="left" width="260">
                                                       <asp:TextBox ID="cons_name1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                      </td>
                                                    </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:210px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label91" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td align="left" width="300">
                                                    <asp:DropDownList ID="cons_relationship1" runat="server" DataValueField="tb_entry_name"
                                                        DataTextField="tb_entry_text"  CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label92" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_unline"  colspan="3">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:TextBox ID="cons_address1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b><asp:Checkbox ID="cons_followup_req" runat="server" Text=""></asp:Checkbox>Conservatorship follow up required</b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                    <table id="Conservator2_Tab" runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                                         <tr>
                                                            <td colspan="3" class="td_thicksepline">
                                                            </td>
                                                         </tr>
                                                         <tr style="height:5px">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:210px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label93" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td class="td_unline"  width="300">
                                                                <asp:TextBox ID="cons_name2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                          <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:210px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label94" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td align="left" width="300">
                                                                <asp:DropDownList ID="cons_relationship2" runat="server" DataValueField="tb_entry_name"
                                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label"  colspan="3">
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label145" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                    </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_unline"  colspan="3">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:TextBox ID="cons_address2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                    <table id="Conservator3_Tab"  runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                                         <tr>
                                                            <td colspan="3" class="td_thicksepline">
                                                            </td>
                                                         </tr>
                                                         <tr style="height:5px">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:210px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label95" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td class="td_unline"  width="300">
                                                                <asp:TextBox ID="cons_name3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:210px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label96" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td align="left" width="300">
                                                                <asp:DropDownList ID="cons_relationship3" runat="server" DataValueField="tb_entry_name"
                                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label"  colspan="3">
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label98" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                    </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_unline"  colspan="3">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:TextBox ID="cons_address3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                               <td colspan="3">
                                               </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                    <table id="Conservator4_Tab" runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                                         <tr>
                                                            <td colspan="3" class="td_thicksepline">
                                                            </td>
                                                         </tr>
                                                         <tr style="height:5px">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:210px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label97" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td class="td_unline"  width="300">
                                                                <asp:TextBox ID="cons_name4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:210px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label298" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td align="left" width="300">
                                                                <asp:DropDownList ID="cons_relationship4" runat="server" DataValueField="tb_entry_name"
                                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label"  colspan="3">
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label99" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                    </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_unline"  colspan="3">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:TextBox ID="cons_address4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>     
                                    <td></td>  
                                    <td align="left" valign="top" style="width:49%">
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:200px" colspan="3">
						                            <b><asp:Checkbox ID="grd_pending" runat="server" Text=""></asp:Checkbox>Pending Legal Guardian</b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b><asp:Checkbox ID="guardian" runat="server" Text=""></asp:Checkbox>Legal Guardian</b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:200px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label100" runat="server" Text="Type of Guardian:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td  width="300">
                                                    <asp:DropDownList ID="grd_type" runat="server" DataValueField="tb_entry_name"
                                                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:200px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label101" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                        </td>
                                                <td height="20" width="5"></td>
                                                <td class="td_unline" style="width:300px">
							                        <asp:textbox id="grd_establishdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                         CssClass="inface" ></asp:textbox>
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
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
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:200px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label102" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td class="td_unline"  width="300">
                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr class="tr_common">
                                                      <td align="left" width="260">
                                                        <asp:TextBox ID="grd_name1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                      </td>
                                                    </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" style="width:200px" >
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label103" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                        </td>
                                                <td width="5"></td>
                                                <td align="left" width="300">
                                                    <asp:DropDownList ID="grd_relationship1" runat="server" DataValueField="tb_entry_name"
                                                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label104" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_unline"  colspan="3">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:TextBox ID="grd_address1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td class="td_label" colspan="3">
						                            <b><asp:Checkbox ID="grd_followup_req" runat="server" Text=""></asp:Checkbox>Guardian follow up required</b>						   						    
						                        </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                    <table id="Guardian2_Tab" runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                                         <tr>
                                                            <td colspan="3" class="td_thicksepline">
                                                            </td>
                                                         </tr>
                                                         <tr style="height:5px">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:200px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label105" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td class="td_unline"  width="300">
                                                                <asp:TextBox ID="grd_name2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:200px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label106" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td align="left" width="300">
                                                                <asp:DropDownList ID="grd_relationship2" runat="server" DataValueField="tb_entry_name"
                                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label"  colspan="3">
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label107" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                    </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_unline"  colspan="3">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:TextBox ID="grd_address2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                    <table id="Guardian3_Tab" runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                                         <tr>
                                                            <td colspan="3" class="td_thicksepline">
                                                            </td>
                                                         </tr>
                                                         <tr style="height:5px">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:200px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label108" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td class="td_unline"  width="300">
                                                                <asp:TextBox ID="grd_name3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:150px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label109" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td align="left" width="300">
                                                                <asp:DropDownList ID="grd_relationship3" runat="server" DataValueField="tb_entry_name"
                                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label"  colspan="3">
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label110" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                    </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_unline"  colspan="3">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:TextBox ID="grd_address3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr style="height:5px;">
                                                <td colspan="3">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                    <table id="Guardian4_Tab" runat="server" class="table_inside" cellspacing="0" cellpadding="0">
                                                         <tr>
                                                            <td colspan="3" class="td_thicksepline">
                                                            </td>
                                                         </tr>
                                                         <tr style="height:5px">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:200px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label111" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td class="td_unline"  width="300">
                                                                <asp:TextBox ID="grd_name4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label" style="width:200px" >
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label112" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                    </td>
                                                            <td width="5"></td>
                                                            <td align="left" width="300">
                                                                <asp:DropDownList ID="grd_relationship4" runat="server" DataValueField="tb_entry_name"
                                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_label"  colspan="3">
						                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="Label113" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                    </td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td colspan="3">
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td class="td_unline"  colspan="3">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:TextBox ID="grd_address4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label114" runat="server" Text="Comments:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="LegalComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell40" ControlIdsToCheck="LegalComments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_SpecLegalCond" runat="server" Text="Special Legal Conditions:" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SpecLegalCond" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150" CssClass="inface"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <b>Consumer's Rights:</b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <asp:Label ID="Label116" runat="server" Font-Bold="true" Text="The consumer's rights have been read and explained to the consumer. Due process including choices in services/programs available, complaint procedures, as well as review of POS funding process/time frames were made known." ></asp:Label></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 380px"  class="td_label" >
                                        <b><asp:Label ID="Label117" runat="server" Text="Has there been an infringement of consumer's rights?:" ></asp:Label></b></td>
                                    <td width="5" >
                                    </td>
                                    <td  style="width: 150px" class="td_label" >
                                        <asp:Radiobutton ID="Infringement_yes" groupname="Infringement" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Infringement_no" groupname="Infringement" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label118" runat="server" Text="If yes, explain:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="InfringementReason" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell41" ControlIdsToCheck="InfringementReason" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <b>Judicial Involvement:</b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table id="JudicialInfoTab" runat="server">
                                <tr class="tr_common">
                                    <td>
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td class="td_label"  style="width:360px">
						                            <b>      
                                                    <asp:Radiobutton ID="judicial_inv_yes" groupname="judicial_inv" runat="server" Font-Bold="true" Text="" Checked=false></asp:Radiobutton>Judicial Involvement
                                                    &nbsp;&nbsp;&nbsp;
                                                    <asp:Radiobutton ID="judicial_inv_no" groupname="judicial_inv" runat="server" Font-Bold="true" Text="" Checked=false></asp:Radiobutton>No Judicial Involvement
                                                    </b>						   						    
						                        </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common" align="left">
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width:250px">
                                                <b><asp:Label ID="Label119" runat="server" Text="Is Consumer a sex offender?"></asp:Label></b>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td align="left" width="105" >
                                                <asp:DropDownList ID="sex_offender" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
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
                                <tr class="tr_common" >
                                    <td align="left">
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label" style="width:250px">
                                                    <b><asp:Label ID="Label120" runat="server" Text="If yes, where did consumer register?"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td align="left" width="200" >
                                                    <asp:TextBox ID="registerstation" runat="server" CssClass="inface" MaxLength=250></asp:TextBox>
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
                                <tr class="tr_common" >
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label" style="width:250px">
                                                    <b><asp:Label ID="Label121" runat="server" Text="Date of registration:"></asp:Label></b>
                                                </td>
                                                <td width="5"></td>
                                                <td class="td_unline" style="width:100px" colspan="2">
							                        <asp:textbox id="registerdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                        CssClass="inface"></asp:textbox>
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
                                <tr class="tr_common" >
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label" style="width:250px">
                                                    <b><asp:Label ID="Label122" runat="server" Text="Does consumer have any strikes?"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td align="left" width="100" >
                                                    <asp:DropDownList ID="strikes" Visible="false" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                        CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
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
                                <tr class="tr_common" >
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label" style="width:250px">
                                                    <b><asp:Label ID="Label123" runat="server" Text="If yes, how many?"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td align="left" width="100" >
                                                    <asp:TextBox ID="strikes_cnt" runat="server" CssClass="inface" MaxLength=3></asp:TextBox>
                                                </td>
                                                <td>&nbsp;</td>
                                                <td style="width:auto"></td>
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
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="JudicialList" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="240"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="l_poslist9" runat="server" Text="POS Authorizations:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:datagrid id="dg_poslist9" runat="server" AllowPaging="False" CssClass="grd_body"
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
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label139" runat="server" Text="Review of Voter Registration (if applicable):" ></asp:Label></b>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_voter_ippdate" runat="server" Font-Bold="true" Text="IPP Date:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left"  style="width: 105px">
                                        <asp:TextBox ID="voter_ippdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                            CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_voter_reg_desc" runat="server" Font-Bold="true" Text="Is Consumer Registered to vote?"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="105px">
                                        <asp:TextBox ID="voter_reg_desc" CssClass="inface"  runat="server" MaxLength=3>
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_nvra_voter_desc" runat="server" Font-Bold="true" Text="Was an NVRA Voter Form Completed?"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="105px">
                                        <asp:TextBox ID="nvra_voter_desc" CssClass="inface"  runat="server" MaxLength=3>
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="Label183" runat="server" Font-Bold="true" Text="If No, please explain:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="300px">
                                        <asp:TextBox ID="nvra_voter_explain" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_reg_completeddate" runat="server" Font-Bold="true" Text="If Voter Registration completed by Regional Center Registration Date:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="reg_completeddate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_additionalcomment" runat="server" Font-Bold="true" Text="Additional Comments:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td style="height: 40px" valign="top">
                                        <asp:TextBox ID="additionalcomment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="99%" Height="60"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="Label198" runat="server" Font-Bold="true" Text="Next NVRA Form due:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td  class="td_label" style="width: 105px">
                                        <asp:TextBox ID="next_nvra_due" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                           CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                        <td  class="td_label">
                            <b><asp:Label ID="l_legalcurstatus" runat="server" Text="Current Status:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="LegalCurStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="150"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell50" ControlIdsToCheck="LegalCurStatus" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:10px">
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
                    <tr>
                    <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                           <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                          <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25px">
		  	                       <asp:button id="btnAddPlanTab9" Runat="server" Text="Add" style="width:60px" CssClass="buttonbluestyle"></asp:button>
                                </td>
	                            <td align="center">
			                       <asp:label id="l_plantab9" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
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
                        <asp:datagrid id="dg_plan_tab9" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
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
                                        <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
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
                                        <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>.
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
                </table>
                <br />
		  	    <asp:button id="btnSubmitTab9" Runat="server" Text="ReConfirm" style="width:100px" CssClass="buttonbluestyle"></asp:button> 
            </div>
            <div id="Tab10"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label51" runat="server" Text="If the consumer did not answer any of the questions in this section, indicate why below:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Survey" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell29" ControlIdsToCheck="Survey" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr><td style="height:15px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr> 
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label52" runat="server" Text="The following questions apply only to consumers who do not live at home:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label53" runat="server" Text="(17. Some people like where they live and other's don't.  When you think about how you feel most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label54" runat="server" Text="Do you like living at _____________? " ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label55" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Lklive" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell30" ControlIdsToCheck="Lklive" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label60" runat="server" Text="(18. Some people like the people who help them at home and others don't.  When you think about how you feel most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label61" runat="server" Text="Do you like the people who help you at _____________?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label62" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Lkppll" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell32" ControlIdsToCheck="Lkppll" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label56" runat="server" Text="The following question applies only to adult consumers who do not live at home." ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label57" runat="server" Text="(19. Some people wish they could live some place else. Others want to stay where they are.  When you think about how you feel most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label58" runat="server" Text="Do you want to keep living at _____________?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label59" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Cnlive" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell31" ControlIdsToCheck="Cnlive" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label63" runat="server" Text="The following questions apply only to consumers who attend a school, day program and/or work site." ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label64" runat="server" Text="(20. Some people like their school (or day program or job) and others don't.  When you think about how you feel most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label65" runat="server" Text="Do you like going to _____________?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label66" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Lkgoin" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell33" ControlIdsToCheck="Lkgoin" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label67" runat="server" Text="(21. Some people like the people who help them at their school (or day program or job) and others don't.  When you think about how you feel most of the time)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label68" runat="server" Text="Do you like the people who help you at _____________?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label69" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Lkppld" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell34" ControlIdsToCheck="Lkppld" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label70" runat="server" Text="The following question applies only to adult consumers who attend a school, day program and/or work site." ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label71" runat="server" Text="(22. Some people with they could go to another school (or day program or job). Others want to stay where they are. When you think about how you feel most of the time)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label72" runat="server" Text="Do you want to keep going to _____________?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label73" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Cngoin" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell35" ControlIdsToCheck="Cngoin" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label74" runat="server" Text="The following questions apply to all consumers." ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label75" runat="server" Text="(23. We all feel sad or unhappy sometimes. Talking to other people about what happened can help us feel better.)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label76" runat="server" Text="Who do you talk to when you are sad or unhappy?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label77" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Talkto" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell36" ControlIdsToCheck="Talkto" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label78" runat="server" Text="(24. We all feel afraid or scared sometimes. Some people feel like that a lot of the time. Others feel safe most of the time.)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label79" runat="server" Text="Do you feel safe or afraid most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label80" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Safe" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell37" ControlIdsToCheck="Safe" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label81" runat="server" Text="(25. We all feel sad or unhappy sometimes. Some people feel like that a lot of the time. Others feel happy most of the time.)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label82" runat="server" Text="Are you happy or sad most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label83" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Hypsad" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell38" ControlIdsToCheck="Hypsad" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label84" runat="server" Text="(26. We all have times when we need something or want to do something different. Sometimes we speak up and sometimes we keep quiet about it.)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label85" runat="server" Text="Do you tell people what you want most of the time?" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label86" runat="server" Text="CDER NARRATIVE:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Telwnt" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="60"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell39" ControlIdsToCheck="Telwnt" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Tab11" style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label125" runat="server" Text="Services rendered by SCLARC staff:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="RenderedSVC" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell42" ControlIdsToCheck="RenderedSVC" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label126" runat="server" Text="Review of services provided/funded by SCLARC:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label127" runat="server" Font-Bold="true" Text="Placement is appropriate" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Placement_1" groupname="Placement" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Placement_2" groupname="Placement" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Placement_3" groupname="Placement" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label128" runat="server" Font-Bold="true" Text="Programming is appropriate" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Programming_1" groupname="Programming" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Programming_2" groupname="Programming" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Programming_3" groupname="Programming" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label129" runat="server" Font-Bold="true" Text="Consumer/family is satisfied w/current program" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="SatisfiedPg_1" groupname="SatisfiedPg" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="SatisfiedPg_2" groupname="SatisfiedPg" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="SatisfiedPg_3" groupname="SatisfiedPg" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label130" runat="server" Font-Bold="true" Text="Consumer has made progress this past year" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Progress_1" groupname="Progress" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Progress_2" groupname="Progress" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Progress_3" groupname="Progress" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label131" runat="server" Font-Bold="true" Text="Consumer/family is satisfied w/Service Coordinator" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="SatisfiedSC_1" groupname="SatisfiedSC" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="SatisfiedSC_2" groupname="SatisfiedSC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="SatisfiedSC_3" groupname="SatisfiedSC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label132" runat="server" Font-Bold="true" Text="Services to be continued" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="ContinueSVC_1" groupname="ContinueSVC" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="ContinueSVC_2" groupname="ContinueSVC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="ContinueSVC_3" groupname="ContinueSVC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 380px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label133" runat="server" Font-Bold="true" Text="Services to be re-evaluated" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="RevaluateSVC_1" groupname="RevaluateSVC" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="RevaluateSVC_2" groupname="RevaluateSVC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="RevaluateSVC_3" groupname="RevaluateSVC" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label134" runat="server" Text="Comments:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="FinancialComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell43" ControlIdsToCheck="FinancialComments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label135" runat="server" Text="Review of Family Cost Participation Program/Annual Family Program Fee (if applicable):" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label136" runat="server" Text="FCPP:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_ippdate" runat="server" Font-Bold="true" Text="IPP Date:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left"  style="width: 105px">
                                        <asp:TextBox ID="fcpp_ippdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                           CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_income_doc_desc" runat="server" Font-Bold="true" Text="Did Family provide income documentation?"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="100">
                                        <asp:TextBox ID="fcpp_income_doc_desc" CssClass="inface" runat="server" MaxLength=3>
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_assessment_date" runat="server" Font-Bold="true" Text="Family Cost Participation Program Assessment Date:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="fcpp_assessment_date" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_cost_share" runat="server" Font-Bold="true" Text="Share of Cost Assessment %:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="fcpp_cost_share" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_exception_desc" runat="server" Font-Bold="true" Text="Did Family meet the exception?"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="100">
                                        <asp:TextBox ID="fcpp_exception_desc" CssClass="inface" runat="server" MaxLength=3>
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_service_effected" runat="server" Font-Bold="true" Text="Services effected:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="300">
                                        <asp:TextBox ID="fcpp_service_effected" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_pos_share" runat="server" Font-Bold="true" Text="Share of POS hours:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="fcpp_pos_share" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_fcpp_familysize" runat="server" Font-Bold="true" Text="Family Size:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="fcpp_familysize" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="Label201" runat="server" Font-Bold="true" Text="Date Letter Mailed to family:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="fcpp_maileddate1" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface" ></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="Label202" runat="server" Font-Bold="true" Text="Next FCPP due:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left"  style="width: 105px">
                                        <asp:TextBox ID="next_fcpp" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface"></asp:TextBox>
                                    </td>

                                    <td>&nbsp;</td>
                                    <td style="width: auto">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height:15px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label137" runat="server" Text="AFPF:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_ippdate" runat="server" Font-Bold="true" Text="IPP Date:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left"  style="width: 105px">
                                        <asp:TextBox ID="afpf_ippdate" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                           CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_income_doc_desc" runat="server" Font-Bold="true" Text="Did Family provide income documentation?"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="100">
                                        <asp:TextBox ID="afpf_income_doc_desc" CssClass="inface"  runat="server" MaxLength=3>
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_assessment_date" runat="server" Font-Bold="true" Text="Annual Family Program Fee Assessment Date:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="afpf_assessment_date" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface" ></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_feeamount" runat="server" Font-Bold="true" Text="Fee Amount:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  width="100">
                                        <asp:TextBox ID="afpf_feeamount" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_exception_desc" runat="server" Font-Bold="true" Text="Did Family meet the exception?"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="100">
                                        <asp:TextBox ID="afpf_exception_desc" CssClass="inface"  runat="server" MaxLength="3">
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_pay_dds_desc" runat="server" Font-Bold="true" Text="Family paid Fee to DDS"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left" width="100">
                                        <asp:TextBox ID="afpf_pay_DDS_desc" CssClass="inface"  runat="server" MaxLength=3>
                                        </asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_maileddate1" runat="server" Font-Bold="true" Text="Date 1st Notice Letter Mailed to family:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  style="width: 105px">
                                        <asp:TextBox ID="afpf_maileddate1" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface" ></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_afpf_maileddate2" runat="server" Font-Bold="true" Text="Date 2nd Notice Letter Mailed to family:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td class="td_unline"  style="width: 105px">
                                        <asp:TextBox ID="afpf_maileddate2" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width: 400px">
                                        <asp:Label ID="l_next_afpf" runat="server" Font-Bold="true" Text="Next AFPF due:"></asp:Label>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td align="left"  style="width: 105px">
                                        <asp:TextBox ID="next_afpf" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width: auto">
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
                        <td  class="td_label">
                            <b><asp:Label ID="Label138" runat="server" Text="Comments:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="FCPPComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell44" ControlIdsToCheck="FCPPComments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label140" runat="server" Text="Financial Summary:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table id="FinancialInfTab" runat="server">
                                <tr class="tr_common">
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label"  style="width: 250px">
                                                    <b><asp:Label ID="Label141" runat="server" Text="Advanced Directive given:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td align="left" width="80px">
                                                    <asp:DropDownList ID="given" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                             CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td> 
                                                <td style="width:20px"></td> 
                                                <td  class="td_label"  style="width: 200px">
                                                    <b><asp:Label ID="Label143" runat="server" Text="End of life plan developed:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td align="left" width="80px">
                                                    <asp:DropDownList ID="lifeplan_developed" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>&nbsp;</td>
                                                <td style="width:auto"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common" >
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common" >
                                                <td >
                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label144" runat="server" Text="Burial Cremation Plan:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline"  width="200">
                                                                <asp:TextBox ID="burial_plan1" CssClass="inface" runat="server"  MaxLength="50"></asp:TextBox>
                                                            </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label147" runat="server" Text="Date Established:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline" style="width:100px">
							                                    <asp:textbox id="establisheddate1" runat="server" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                    </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label148" runat="server" Text="Amount of Plan:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline"  width="200">
                                                                <asp:TextBox ID="plan_amount1" CssClass="inface" runat="server" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label149" runat="server" Text="Burial Arrangements Complete:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td align="left" width="80px">
                                                                <asp:DropDownList ID="burial_arrangement1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                        CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td> 
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td  >
                                                    <table id="plan2"  runat="server" class="table_common" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label150" runat="server" Text="Burial Cremation Plan:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline"  width="200">
                                                                <asp:TextBox ID="burial_plan2" CssClass="inface" runat="server" MaxLength="50"></asp:TextBox>
                                                            </td> 
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label151" runat="server" Text="Date Established:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline" style="width:100px">
							                                    <asp:textbox id="establisheddate2" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                    </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label152" runat="server" Text="Amount of Plan:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline"  width="200">
                                                                <asp:TextBox ID="plan_amount2" CssClass="inface" runat="server"  MaxLength="50"></asp:TextBox>
                                                            </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label153" runat="server" Text="Burial Arrangements Complete:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td align="left" width="80px">
                                                                <asp:DropDownList ID="burial_arrangement2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                        CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td> 
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td >
                                                    <table id="plan3"  runat="server" class="table_common" cellspacing="0" cellpadding="0">
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label154" runat="server" Text="Burial Cremation Plan:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline"  width="200">
                                                                <asp:TextBox ID="burial_plan3" CssClass="inface" runat="server" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label155" runat="server" Text="Date Established:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline" style="width:100px">
							                                    <asp:textbox id="establisheddate3" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                    </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label156" runat="server" Text="Amount of Plan:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td class="td_unline"  width="200">
                                                                <asp:TextBox ID="plan_amount3" CssClass="inface" runat="server" MaxLength="50"></asp:TextBox>
                                                            </td>
                                                            <td style="width:auto"></td>
                                                        </tr>
                                                        <tr style="height:5px;">
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr class="tr_common">
                                                            <td  class="td_label"  style="width: 250px">
                                                                <b><asp:Label ID="Label157" runat="server" Text="Burial Arrangements Complete:"></asp:Label></b>
                                                            </td>
                                                            <td width="5" >
                                                            </td>
                                                            <td align="left" width="80px">
                                                                <asp:DropDownList ID="burial_arrangement3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                        CssClass="infaceDrop" OnClick="DataChanged()">
                                                                </asp:DropDownList>
                                                            </td> 
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
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
                                <tr class="tr_common">
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label"  style="width: 250px">
                                                    <b><asp:Label ID="Label158" runat="server" Text="Name of Trust:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td class="td_unline"  width="300">
                                                    <asp:TextBox ID="trustname" CssClass="inface" runat="server" MaxLength="50"></asp:TextBox>
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
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label" style="width:250px">
                                                    <b><asp:Label ID="Label35" runat="server" Text="Type of Trust:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td align="left" width="200" >
                                                    <asp:DropDownList ID="trusttype" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                        CssClass="infaceDrop" OnClick="DataChanged()">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>&nbsp;</td>
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
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label"  style="width: 250px">
                                                    <b><asp:Label ID="Label36" runat="server" Text="Date Established:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td class="td_unline" style="width:100px">
							                        <asp:textbox id="trustdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                        </td>
                                                <td>&nbsp;</td>
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
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  class="td_label"  style="width: 250px">
                                                    <b><asp:Label ID="Label37" runat="server" Text="Amount of Trust:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td class="td_unline"  width="300">
                                                    <asp:TextBox ID="trust_amount" CssClass="inface" runat="server" MaxLength="50"></asp:TextBox>
                                                </td>
                                                <td>&nbsp;</td>
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
                                    <td >
                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                            <tr class="tr_common">
                                                <td  valign="top" class="td_label"  style="width: 250px">
                                                    <b><asp:Label ID="Label38" runat="server" Text="Trustee Name and Contact Information:"></asp:Label></b>
                                                </td>
                                                <td width="5" >
                                                </td>
                                                <td style="height: 60px" valign="top">
                                                    <asp:TextBox ID="contactinfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                        runat="server" Width="99%" Height="60"></asp:TextBox>
                                                </td>   
                                            </tr>
                                        </table>
                                    </td>
                                </tr> 
                    <tr style="height:25px;">
                        <td>
                        </td>
                    </tr>
                </table>
            </table>   
            </div>
            <div id="Tab12"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label159" runat="server" Text="ASSESSMENT OF RESIDENTIAL TRAINING, CARE AND SERVICES:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 680px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label160" runat="server" Font-Bold="true" Text="The residential facility was assessed and is providing training, care and services in accordance with Title 17 & 22/Admission Agreement" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="AdmissionAgm_1" groupname="AdmissionAgm" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="AdmissionAgm_2" groupname="AdmissionAgm" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="AdmissionAgm_3" groupname="AdmissionAgm" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 680px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label161" runat="server" Font-Bold="true" Text="Title 17 Facility Monitoring completed Annually:" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="MontoringCompleted_1" groupname="MontoringCompleted" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="MontoringCompleted_2" groupname="MontoringCompleted" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="MontoringCompleted_3" groupname="MontoringCompleted" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 680px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label162" runat="server" Font-Bold="true" Text="Facility cited for 'Immediate Danger' and/or 'Substantial Inadequacies.'"></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Cited_1" groupname="Cited" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Cited_2" groupname="Cited" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Cited_3" groupname="Cited" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 480px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label163" runat="server" Font-Bold="true" Text="The PCIPP contains a facility component:" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="PCIPP_1" groupname="PCIPP" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="PCIPP_2" groupname="PCIPP" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="PCIPP_3" groupname="PCIPP" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
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
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                    <td  class="td_label" style="width:180px">
                                        <b><asp:Label ID="Label164" runat="server" Text="Date Of Last monitoring:" ></asp:Label></b></td>
                                    <td style="width:5px"></td>
                                    <td class="td_unline" style="width:100px">
							            <asp:textbox id="LastMntDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						            </td> 
                                    <td></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label165" runat="server" Text="Comments: (Quality of Life Survey Results if applicable.)" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="SurveyComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell46" ControlIdsToCheck="SurveyComments" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label166" runat="server" Text="Review of Personal and Incidental (P&I) records:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                    <td style="width: 480px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label167" runat="server" Font-Bold="true" Text="Receipts for consumer purchases on file:" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Receipts_1" groupname="Receipts" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Receipts_2" groupname="Receipts" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Receipts_3" groupname="Receipts" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 480px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label168" runat="server" Font-Bold="true" Text="Documentation of consumer's access to their P&I money" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Documentation_1" groupname="Documentation" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Documentation_2" groupname="Documentation" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Documentation_3" groupname="Documentation" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 480px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label169" runat="server" Font-Bold="true" Text="Care provider maintains appropriate records:" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="CareProvider_1" groupname="CareProvider" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="CareProvider_2" groupname="CareProvider" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="CareProvider_3" groupname="CareProvider" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 480px"  valign="top" class="td_label" >
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label170" runat="server" Font-Bold="true" Text="Monthly, calculated balance:" ></asp:Label></td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 180px" class="td_label"  >
                                        <asp:Radiobutton ID="Balance_1" groupname="Balance" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Balance_2" groupname="Balance" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Radiobutton ID="Balance_3" groupname="Balance" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
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
                        <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                     <td width="150px" class="td_label">
                                        <b><asp:Label ID="Label171" runat="server" Text="Current balance  -  $" ></asp:Label></b>
                                    </td>
                                    <td width="5" ></td>
                                    <td class="td_unline" style="width:130px">
                                        <asp:TextBox ID="balance_amount" CssClass="inface" runat="server" MaxLength="15"></asp:TextBox>
                                    </td>
                                    <td width="20" ></td>
                                    <td width="100px" class="td_label">
                                        <b><asp:Label ID="l_balance_date" runat="server" Text="Date:" ></asp:Label></b>
                                    </td>
                                    <td width="5" ></td>
                                    <td class="td_unline" style="width:100px">
                                        <asp:TextBox ID="balance_date" CssClass="inface" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label172" runat="server" Text="LICENSED FACILITY INFORMATION:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label180" runat="server" Text="Residential Licensing:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Checkbox ID="HHSDpt" runat="server" Text="Department of Human and Health Services">
                               </asp:Checkbox></b><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label182" runat="server" Text="9320 Telstar Ave." ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label184" runat="server" Text="El Monte, CA 91731" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label185" runat="server" Text="(626) 569 3789" ></asp:Label>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Checkbox ID="CCLAdult" runat="server" Text="Community Care License (Adults) ">
                               </asp:Checkbox></b><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label186" runat="server" Text="1000 Corporate Center Drive" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label187" runat="server" Text="Suite 500" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label192" runat="server" Text="Monterey Park, CA 91754" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label188" runat="server" Text="(323) 980 4927" ></asp:Label>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Checkbox ID="CCLChild" runat="server" Text="Community Care License (Children)">
                               </asp:Checkbox></b><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label189" runat="server" Text="6167 Bristol Parkway" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label190" runat="server" Text="Suite 210" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label193" runat="server" Text="Culver City, CA 90230" ></asp:Label><br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label191" runat="server" Text="(310) 568 1807" ></asp:Label>
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr> 
                    <tr class="tr_common">
                        <td  class="td_label">
                            <b><asp:Label ID="Label194" runat="server" Text="Expected Date of Next Contact:" ></asp:Label></b>
                            <asp:Label ID="Label195" runat="server" Text="The next expected date of contact would be on" ></asp:Label>
                            <asp:textbox id="ExpectedDate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
                        </td>
                    </tr>	
                    <tr style="height:180px;">
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Tab13"  style="display:none;">
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
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="button" id="btnUnLock" runat="server" value="UnLock" style="width: 80px; height: 25px"  
                                   onclick="javascript:UnLock();return false;" />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="button" id="btnLock" runat="server" value="Lock" style="width: 80px; height: 25px"  
                                   onclick="javascript:Lock();return false;" /> 
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
                             <asp:Label ID="l_ipp_view_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                           </td>
                           <td width="5px">
                           </td>
                           <td class="td_unline">
                             <asp:Label ID="ipp_view_date" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
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
            <div id="Tab14"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr class="tr_common">
                        <td>
                            <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                            <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25">
				                    <asp:ImageButton ID="btnAddAmend" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" ></asp:ImageButton>
                                </td>
	                            <td align="center">
			                        <asp:label id="Label40" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">ADDENDUM LIST</asp:label>
			                    </td>
		                        </tr>
		                    </table>
		                </td>
		            </tr>
                    <tr style="height:5px;">
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td align="center" colspan="2">
                            <asp:datagrid id="dg_AddendumList" runat="server" AllowPaging="false" CssClass="grd_body"
					            AutoGenerateColumns="False" AllowSorting="false" >
					        <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					        <ItemStyle CssClass="grd_item"></ItemStyle>
					        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					        <Columns>
					        <asp:BoundColumn DataField="ID" HeaderText="ID" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn DataField="IPPID" HeaderText="IPPID" Visible="False">
                            </asp:BoundColumn>        
                            <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False">
                            </asp:BoundColumn>  
						    <asp:BoundColumn DataField="createdate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Reviewdate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
						    <asp:BoundColumn DataField="ReviewPurposeDesc" HeaderText="Purpose of Review">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="IPPSectionDesc" HeaderText="IPP section">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Sign">
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
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundColumn>	
					        </Columns>
				            </asp:datagrid>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Tab15"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">
                    <tr class="tr_common">
                        <td>
                            <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                            <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25">
				                    <asp:ImageButton ID="BtnAddQuarterly" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" ></asp:ImageButton>
                                </td>
	                            <td align="center">
			                        <asp:label id="l_QuarteryList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">QUARTERLY LIST</asp:label>
			                    </td>
		                        </tr>
		                    </table>
		                </td>
		            </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:DataGrid id="dg_IPPQuartely" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False">
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>    
                                    <asp:BoundColumn DataField="ID" HeaderText="ID" Visible="False">
                                    </asp:BoundColumn>  
                                    <asp:BoundColumn DataField="IPPID" HeaderText="IPPID" Visible="False">
                                    </asp:BoundColumn>        
                                    <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False">
                                    </asp:BoundColumn>          
                                    <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="AnnouncedDesc" HeaderText="Announced" >
                                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" Visible="false">
                                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="VisitDate" HeaderText="Visit Date"  DataFormatString="{0:MM/dd/yyyy}">
                                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="QuarterlyType" HeaderText="Type">
                                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                    </asp:BoundColumn>    
                                    <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Sign">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn> 
                                    <asp:TemplateColumn HeaderText="View/Edit">
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="middle"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle"></ItemStyle>
                                        <ItemTemplate>
                                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                                BorderWidth="0"></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="DELETE">
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                        <ItemTemplate>
                                            <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                                ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="VerifyBy" HeaderText="VerifyBy" Visible="false">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                </Columns>
                            </asp:DataGrid>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Tab16"  style="display:none;">
                <table class="table_common" cellspacing="0" cellpadding="0">    
                    <tr class="tr_common">
                        <td>
                            <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                            <tr style="height: 30px;" valign="middle">
                                <td  align="left" style="width:30px;height:25">
				                    <asp:ImageButton ID="BtnAddAnnualContact" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" ></asp:ImageButton>
                                </td>
	                            <td align="center">
			                        <asp:label id="Label39" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">ANNUAL CONTACTS LIST</asp:label>
			                    </td>
		                        </tr>
		                    </table>
		                </td>
		            </tr>
                    <tr class="tr_common">
                        <td>
                            <asp:DataGrid id="dg_FormAnnualContactList" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False">
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>    
                                    <asp:BoundColumn DataField="uci" HeaderText="uci"  Visible="false">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="entereddate" HeaderText="entereddate" Visible="false">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="entereddate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="IPPID" HeaderText="IPPID"  Visible="false">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Review_pcp_ifsp_date" HeaderText="IPP Review Date" DataFormatString="{0:MM/dd/yyyy}">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="Contactdate" HeaderText="Contact Date" DataFormatString="{0:MM/dd/yyyy}">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>	
                                    <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Sign">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="AnnualType" HeaderText="Type">
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
                                    <asp:BoundColumn DataField="SCsignature" HeaderText="SCsignature" Visible="false">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>										
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

