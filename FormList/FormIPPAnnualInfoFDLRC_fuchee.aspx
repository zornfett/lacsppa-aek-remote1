<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIPPAnnualInfoFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIPPAnnualInfoFDLRC" %>

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
        
    </script>

    <script type="text/javascript">
    <!--
    var CurrentTab= "1";
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
            TAB11.style.color = "";
            TAB11.style.color = "";
            obj.style.color = "darkred";

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
        CurrentTab=obj.id.replace("TAB","");           
        document.getElementById("<%= CurrentTab.ClientID %>").value = CurrentTab;
        var tabNumber=obj.id;

        switch (tabNumber) {
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
        {
            document.location.replace(document.IPPInfo.gobackPage.value);
        }
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

    function Message_Click(option)
    {
        var tx_uci=document.IPPInfo.consumer_key.value.toString();  
        var url="../weblist/WebMessagePopup.aspx?txt="+option;            
        window.showModalDialog(url, self,'status:yes;dialogWidth:750px;dialogHeight:400px;help:yes;scroll:yes;resizable:yes');                    
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

    function openPopup(strOpen)
    {
        open(strOpen, "Info", 
             "status=1, width=300, height=200, top=100, left=300");
    }
    function windowClose() {
        ///window.location.reload();
        window.location.replace('FormIppAnnualInfoFDLRC.aspx'+"?reloadTab=3");
    }

    function windowCloseMain(win) {

           
        var win_timer = setInterval(function() {   if(win.closed) {
            //windows.location.href=windows.location.href+"?reloadTab=3";   
            //window.location.reload();
            window.document.IPPInfo.submit();
            clearInterval(win_timer);
        }
        }, 1000); 
    }
    function popup() {
        var win =  window.open('../WebList/webConsumerinfo.aspx','new','menubar=no,toolbar=no,statusbar=no,scrollbars=yes,height=730,width=930,left=0,top=0');
        var win_timer = setInterval(function() {   
            if(win.closed) {
                window.location.reload();
                clearInterval(win_timer);
            } 
        }, 100); 

        PageMethods.CheckBox_CheckedChanged("hello", OnSuccessCallback, OnFailureCallback);
    }
       
    function OnSuccessCallback(res) {
        alert(res);
    }
 
    function OnFailureCallback() {
        alert('Error');
    } 

    //window.open('','new','menubar=no,toolbar=no,statusbar=no,scrollbars=yes,height=900,width=800,left=0,top=0')
    </script>
</head>
<body runat="server" id="body">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="IPPInfo" runat="server">
        <input id="CurrentTab" name="CurrentTab" type="hidden" value="1" runat="server" />
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
        <asp:HiddenField ID="hdnPlanTitle1" runat="server" Value="0" />
        <asp:HiddenField ID="hdnPlanTitle2" runat="server" Value="0" />
        <asp:HiddenField ID="hdnPlanTitle3" runat="server" Value="0" />
        <asp:HiddenField ID="hdnPlanTitle4" runat="server" Value="0" />
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />

        <asp:HiddenField ID="hdnMWChecked2" runat="server" Value="0" />
        <asp:HiddenField ID="hdnMWChecked3" runat="server" Value="0" />
        <asp:HiddenField ID="hdnMWChecked4" runat="server" Value="0" />
        <asp:HiddenField ID="hdnMWChecked5" runat="server" Value="0" />
        <asp:HiddenField ID="hdnMWChecked6" runat="server" Value="0" />
        <asp:HiddenField ID="hdnMWChecked7" runat="server" Value="0" />
        <asp:HiddenField ID="hdnMWChecked8" runat="server" Value="0" />

        <div align="left" style="width: 100%;">
            <table id="headericon" runat="server" border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                    <td align="left" valign="middle" width="25%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
                <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px; height: 25px"
                    ImageUrl="../img/save.ico" ToolTip="Save"
                    OnClientClick="return save_click();" OnClick="btnEdit_Click"></asp:ImageButton>
                        <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px; height: 25px"
                            ImageUrl="../img/save.ico" ToolTip="Save"
                            OnClientClick="return save_click();" OnClick="btnAdd_Click"></asp:ImageButton>
                        &nbsp;      
                <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px; height: 25px"
                    src="../img/print.ico" title="Print"
                    onclick="javascript:print_click();return false;" />
                        &nbsp; 
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                    src="../img/back.ico" title="Back"
                    onclick="javascript:back_click();return false;" />
                    </td>
                    <td align="left" width="60%">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Annual For</asp:Label></td>
                    <td align="left" width="15%">
                        <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px; height: 25px"
                            src="../img/supportdesk.ico" title="Support"
                            onclick="javascript:window.top.outsidelinks(1);return false;" />
                        &nbsp;
                <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                    src="../img/help.ico" title="Help"
                    onclick="javascript:window.top.outsidelinks(2);return false;" />
                        &nbsp;
                <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px"
                    src="../img/logout.jpg" title="Logout"
                    onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                        &nbsp;
                    </td>
                </tr>
                <tr style="height: 2px">
                    <td colspan="3" style="background-color: #137AC5"></td>
                </tr>
            </table>
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr class="tab_bar">
                    <td>
                        <table id="TABLE_Label1" cellspacing="0" cellpadding="0" runat="server">
                            <tr id="tr_info">
                                <td id="TAB1" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="120">
                                    <b><u>Header</u></b>
                                </td>
                                <td id="TAB2" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="160">
                                    <b><u>Health Status</u></b>
                                </td>
                                <td id="TAB3" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="180">
                                    <b><u>Well Being & Safety</u></b>
                                </td>
                                <td id="TAB4" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="160">
                                    <b><u>Financial</u></b>
                                </td>
                                <td id="TAB5" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="160">
                                    <b><u>Purchase of Services</u></b>
                                </td>
                                <td id="TAB6" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="160">
                                    <b><u>Work/Education</u></b>
                                </td>
                                <td id="TAB7" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="160">
                                    <b><u>Outcomes Narative</u></b>
                                </td>
                                <td id="TAB8" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="60">
                                    <b><u>Comments</u></b>
                                </td>
                                <td id="TAB9" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="130">
                                    <b><u>Signature</u></b>
                                </td>
                                <td id="TAB10" runat="server" class="tab_sel"
                                    width="130">
                                    <a href="#" style='text-decoration: none; color: #0000ff' onclick="var foo =window.open('../weblist/webConsumerInfo.aspx?annual=1','',' scrollbars=yes,menubar=no,width=500, resizable=yes,toolbar=no,location=no,status=no,width=1200,height=700');foo.onbeforeunload=windowCloseMain(foo)"><b><u>Profile</u></b></a>
                                </td>
                                <td id="TAB11" runat="server" class="tab_sel" width="130">
                                    <a href="#" style='text-decoration: none; color: #0000ff' onclick="var foo =window.open('FormCDER08Info.aspx?annual=1&uci=<%=this.ClientIDVar%>&entrykey=<%=this.ClientIDVar%>&type=edit','',' scrollbars=yes,menubar=no,width=500, resizable=yes,toolbar=no,location=no,status=no,width=1200,height=700');foo.onbeforeunload=windowCloseMain(foo)"><b><u>CDER</u></b></a>
                                </td>
                                <td id="TAB12" runat="server" class="tab_sel" onclick="doseltd(this);"
                                    width="130">
                                    <a href="#" style='text-decoration: none; color: #0000ff' onclick="var foo =window.open('../weblist/webMedicalInfo.aspx?annual=1&uci=<%=this.ClientIDVar%>&entrykey=<%=this.ClientIDVar%>&type=edit','',' scrollbars=yes,menubar=no,width=500, resizable=yes,toolbar=no,location=no,status=no,width=1200,height=700');foo.onbeforeunload=windowCloseMain(foo);"><b><u>Medical</u></b></a>

                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="tab_bar">
                    <td>
                        <table id="TABLE_Label2" cellspacing="0" cellpadding="0" runat="server">
                            <tr>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 480px">
            <table class="table_maindiv">
                <tr>
                    <td valign="top" align="center" width="100%" height="100%">
                        <div id="Tab1">
                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_ConsumerName" runat="server" Text="Client Name:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="ClientName" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>


                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_address1" runat="server" Text="Address1:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_address1" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_dob" runat="server" Text="Date of Birth:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" Style="background-color: lightgrey; width: 40%" onclick="DataChanged();showcalendar(event, this);"
                                            onfocus="DataChanged();showcalendar(event, this);" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_address2" runat="server" Text="Address2:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_address2" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_phone" runat="server" Text="Home Phone:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_phone" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_city" runat="server" Text="City/State:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_city" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_cell" runat="server" Text="Cell Phone:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_cell" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_zip" runat="server" Text="Zip Code:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_zip" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td style="width: 180px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_uci" runat="server" Text="UCI#:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 220px" class="td_unline">
                                        <asp:Label ID="UCI" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_email" runat="server" Text="Email:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_email" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td style="width: 180px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_sc_nm" runat="server" Text="SC Name / No:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_sc_nm" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>


                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="ann_line">
                                    <td colspan="10"></td>
                                </tr>

                                <tr style="height: 20px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">

                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_ReviewDate" runat="server" Text="Review Date:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="ReviewDate" runat="server" Style="width: 40%" CssClass="inface" onclick="DataChanged();showcalendar(event, this);"
                                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                    </td>

                                    <td width="5"></td>
                                    <td style="width: 180px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_location" runat="server" Text="Location:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_location" runat="server" CssClass="inface"></asp:TextBox>
                                    </td>
                                </tr>


                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">

                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_ipp_dt" runat="server" Text="Last IPP Date:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_ipp_dt" runat="server" CssClass="inface" Style="width: 40%" onclick="DataChanged();showcalendar(event, this);"
                                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                    </td>

                                    <td width="5"></td>
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_qt_dt" runat="server" Text="Last Quarterly Date:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_qt_dt" runat="server" CssClass="inface" Style="width: 40%" onclick="DataChanged();showcalendar(event, this);"
                                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">

                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_annual_dt" runat="server" Text="Last Annual Date:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_annual_dt" runat="server" CssClass="inface" Style="width: 40%" onclick="DataChanged();showcalendar(event, this);"
                                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                    </td>

                                    <td width="5"></td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">
                                    <td colspan="1" style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_face" runat="server" Text="Face to Face participants:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>

                                    </td>
                                    <td width="5" />
                                    <td>
                                        <asp:TextBox ID="header_face" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="20"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <%--<tr class="tr_common">
                        <td colspan="10" style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="header_face" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="20"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="Participants" ShowModal="true"
                                runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>--%>
                                <tr style="height: 25px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_comment" runat="server" Text="Comments:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" style="width: 99%" class="td_unline">
                                        <asp:TextBox ID="header_comment" TextMode="MultiLine" Wrap="true"
                                            runat="server" Width="99%" Height="80"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="Participants" ShowModal="true"
                                            runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="ann_line">
                                    <td colspan="10"></td>
                                </tr>
                                <tr style="height: 20px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">
                                    <td style="width: 200px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_ethnicity" runat="server" Text="Ethnicity:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td style="width: 5px"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_ethnicity" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td style="width: 180px" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_leg" runat="server" Text="Legal Status:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                                    <td width="5"></td>
                                    <td style="width: 600px" class="td_unline">
                                        <asp:TextBox ID="header_leg" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>

                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_dia" runat="server" Text="Diagnosis:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" style="width: 99%" class="td_unline">
                                        <asp:TextBox ID="header_dia" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="80" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="Participants" ShowModal="true"
                                            runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_live" runat="server" Text="Current Living Arragnement:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" class="td_unline">
                                        <asp:TextBox ID="header_live" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="80"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_desc_consumer" runat="server" Text="Brief Description of Consumers:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" style="width: 99%" class="td_unline">
                                        <asp:TextBox ID="header_desc_consumer" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="80"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Participants" ShowModal="true"
                                            runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="ann_line">
                                    <td colspan="10"></td>
                                </tr>
                                <tr style="height: 20px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_situ" runat="server" Text="Family Situation / Name:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" style="width: 99%" class="td_unline">
                                        <asp:TextBox ID="header_situ" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="20"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="Participants" ShowModal="true"
                                            runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_address" runat="server" Text="Address:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" style="width: 99%" class="td_unline">
                                        <asp:TextBox ID="header_address" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="20"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="Participants" ShowModal="true"
                                            runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" class="td_label">
                                        <b>
                                            <asp:Label ID="l_header_ext" runat="server" Text="Extend of Involvement:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>
                                    </td>
                                </tr>
                                <tr style="height: 5px;">
                                    <td colspan="10"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="10" style="width: 99%" class="td_unline">
                                        <asp:TextBox ID="header_ext" TextMode="MultiLine" Wrap="true" 
                                            runat="server" Width="99%" Height="20"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="Participants" ShowModal="true"
                                            runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <%--</div>--%>
                            </table>
                            <hr class="ann_line" />
                            <br />
                            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab1" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
                            <input id="Button3" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
                            <hr class="ann_line" />
                        </div>

                        <br />

                        <div id="Tab2" style="display: none;">
                            <div style="float: left; width: 100%">
                                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 22px;">
                                    <b>
                                        <asp:Label runat="server" ID="l_hea_pri_phy" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Primary Physician:</asp:Label></b>
                                </div>
                                <asp:TextBox TextMode="MultiLine" Rows="1" runat="server" ID="hea_pri_phy" Style="width: 82%; position: relative; left: -17px; background-color: lightgrey;" ReadOnly="true"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <div style="float: left; width: 100%">
                                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 22px">
                                    <b>
                                        <asp:Label runat="server" ID="l_hea_address" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Address:</asp:Label></b>
                                </div>
                                <asp:TextBox TextMode="MultiLine" Rows="1" runat="server" ID="hea_address" Style="width: 82%; position: relative; left: -17px; background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                            </div>

                            <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr style="height: 5px;">
                                    <td></td>
                                </tr>
                        <td width="5"></td>
                    <td style="width: 490px; position: relative; left: -2px;" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_lst_dt" runat="server" Text="Date of Last Comp. Physical:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_lst_dt" runat="server" CssClass="inface" Style="position: relative; left: 4px;" onclick="DataChanged();showcalendar(event, this);"
                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_tel" runat="server" Text="Telephone:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_tel" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_fax" runat="server" Text="Fax:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 590px" class="td_unline">
                        <asp:TextBox ID="hea_fax" runat="server" CssClass="inface" Style="background-color: lightgrey; width: 505px;" ReadOnly="true"></asp:TextBox>
                    </td>

                    <tr style="height: 5px;">
                        <td></td>
                    </tr>
            </table>

            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px">
                    <b>
                        <asp:Label class="td_label" runat="server" ID="l_hea_ho_em_visit" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Hospital Admissions/ Emergency Room Visits:</asp:Label></b>
                </div>
                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_ho_em_visit" Style="background-color: lightgrey;width: 82%; position: relative; left: -17px;"></asp:TextBox>
            </div>

            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_hea_iss" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Current Health Issues:</asp:Label></b>
                </div>
                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_hea_iss" Style="width: 82%; position: relative; left: -17px; background-color: lightgrey" ReadOnly="true"></asp:TextBox>
            </div>

            <br />
            <br />

            <br />
            <br />

            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px">
                    <b>
                        <asp:Label runat="server" ID="l_hea_pre_hea" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Preventive Health Care:</asp:Label></b>
                </div>
                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_pre_hea" Style="width: 82%; position: relative; left: -17px; background-color: lightgrey" ReadOnly="true"></asp:TextBox>
            </div>

            <br />
            <br />
            <br />
            <br />

            <hr class="ann_line" />


            <table class="table_common" cellspacing="0" cellpadding="0">
                <tr style="height: 5px;">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td style="width: 510px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_lst_rap" runat="server" Text="Last Pap Smear:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_lst_rap" runat="server" CssClass="inface" Style="background-color: lightgrey; position: relative; left: 8px;" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_gyn" runat="server" Text="Last Gynecological Exam:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_gyn" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_lst_mam" runat="server" Text="Last Mammogram:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_lst_mam" runat="server" CssClass="inface" Style="background-color: lightgrey; width: 510px;" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px;">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td style="width: 510px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_lst_men" runat="server" Text="Last Menses:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_lst_men" runat="server" Style="position: relative; left: 8px;" CssClass="inface" ></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_geg_men" runat="server" Text="Regular Menses:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_geg_men" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px">&nbsp;</td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">&nbsp;
                    </td>
                </tr>
                <tr style="height: 5px;">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td style="width: 510px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_bir_con" runat="server" Text="Birth Control:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_bir_con" runat="server" CssClass="inface" Style="background-color: lightgrey; position: relative; left: 8px;" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_bir_con_type" runat="server" Text="Birth Control Type:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_bir_con_type" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px">&nbsp;</td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">&nbsp;
                    </td>
                </tr>
                <tr style="height: 5px;">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td style="width: 510px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_flu" runat="server" Text="Flu Shot:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_flu" runat="server" CssClass="inface" Style="background-color: lightgrey; position: relative; left: 8px;" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_col" runat="server" Text="Colonoscopy:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_col" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td style="width: 320px" class="td_label">
                        <b>
                            <asp:Label ID="l_hea_pne" runat="server" Text="Pneumonia Vaccine:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="hea_pne" runat="server" CssClass="inface" Style="background-color: lightgrey; width: 510px;" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px;">
                    <td></td>
                </tr>

                <tr class="ann_line">
                    <td colspan="10"></td>
                </tr>

                <tr style="height: 20px;">
                    <td colspan="10"></td>
                </tr>

            </table>

            <div style="float: left; width: 100%; padding-bottom: 10px;">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 28px; padding-bottom: 15px;">
                    <b>
                        <asp:Label class="td_label" runat="server" ID="l_hea_nur_sta" Style="display: block; text-align: left; padding-left: 10px; padding-top: 13px;">Nutrional Status (Special Diet):</asp:Label></b>
                </div>
                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_nur_sta" Style="width: 82%; background-color: lightgrey; padding-bottom: 15px; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>

            <div style="float: left; width: 100%; padding-bottom: 10px;">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 28px; padding-bottom: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_spe" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;padding-top: 13px;">Spec. Health/Medical Needs:</asp:Label></b>
                </div>
                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_spe" Style="width: 82%; background-color: lightgrey; padding-bottom: 15px; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>
            <br />

            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 28px;padding-bottom: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_add_sp" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;padding-top: 13px;">Additional Special Health Needs</asp:Label></b>
                </div>
                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_add_sp" Style="width: 82%; background-color: lightgrey; padding-bottom: 15px; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>

            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_dentist" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Dentist</asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_dentist" Style="width: 82%; background-color: lightgrey; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_dentist_health" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Dental Health</asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_dentist_health" Style="width: 82%; background-color: lightgrey; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>

            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_audio" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Audiologist: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_audio" Style="width: 82%; background-color: lightgrey; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_hear" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Current Hearing Issues: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_hear" Style="width: 82%; background-color: lightgrey; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_opto" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Optometry: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_opto" Style="width: 82%; background-color: lightgrey; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_vision" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Current Vision Issues: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_vision" Style="width: 82%; background-color: lightgrey; height: 25px; position: relative; left: -17px;" ReadOnly="true"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_neur" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Neurologist: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_neur" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_curr_neur" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Current Neurologcal Issues: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_curr_neur" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_psy_con" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Psychologist/Counselor: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_psy_con" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_issue" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Current Issues: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_issue" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_psychiatrist" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Psychiatrist: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_psychiatrist" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_mental" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Curr. Mental Health Issues: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_mental" Style="position: relative; left: 14px; width: 82%; height: 25px; position: relative; left: -2px;"></asp:TextBox>
                <input name="Image1" title="Send Message" id="Image1" style="height: 25px; width: 25px; position: relative; left: 9px" onclick="javascript:Message_Click('A/R - Does the Client feel safe at home/work? Does the Client feel safe in the neighborhood and/or when going into the community? Is the home/work site environment clean, healthy and free of safety hazards? ');return false;" type="image" alt="Message" src="../img/help.ico">
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_other_doc" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Other Doctors: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_other_doc" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_other_doc" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Current Other Doctors: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_other_doc" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 15%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 25px; height: 29px; position: relative; top: 15px;">
                    <b>
                        <asp:Label runat="server" ID="l_hea_cur_medi" Style="display: block; text-align: left; padding-left: 10px; padding-top: 5px;">Curr. Medications/Purpose: </asp:Label></b>
                </div>
                <br />

                <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="hea_cur_medi" Style="width: 82%; height: 25px; position: relative; left: -17px;"></asp:TextBox>
            </div>
            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab2" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <input id="btnSubmitTab2" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
            <hr class="ann_line" />
        </div>
        <div id="Tab3" style="display: none;">
            <div style="float: left; width: 100%">
                <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="l_well_sense" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Sense of Well Being and Safety:</asp:Label></b>
                </div>
                <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="well_sense" Style="width: 90%"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="image" id="Image1" runat="server" alt="Message" style="width: 25px; height: 25px"
                                src="../img/help.ico" title="Send Message"
                                onclick="javascript:Message_Click('A/R - Does the Client feel safe at home/work? Does the Client feel safe in the neighborhood and/or when going into the community? Is the home/work site environment clean, healthy and free of safety hazards? ');return false;" />
                </div>
            </div>
            <br />
            <br />
            <div style="float: left; width: 100%">
                <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">
                    <b>
                        <asp:Label runat="server" ID="l_well_freedom" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Freedom from Abuse and Neglect:</asp:Label></b>
                </div>
                <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="well_freedom" Style="width: 90%"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="image" id="btnMessager" runat="server" alt="Message" style="width: 25px; height: 25px"
                                src="../img/help.ico" title="Send Message"
                                onclick="javascript:Message_Click('A/R - Has the Client been inappropriately touched or sexually abused in the last year? Has the Client been teased, verbally abused or threatened? Has the Client been physically abused? Has the Client been left unattended or neglected during the last year? ');return false;" />
                </div>
            </div>

            <div style="float: left; width: 100%">
                <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">
                    <b>
                        <asp:Label runat="server" ID="l_well_safe" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Safety Skills and Network:</asp:Label></b>
                </div>
                <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="well_safe" Style="width: 90%"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="image" id="Image2" runat="server" alt="Message" style="width: 25px; height: 25px"
                                src="../img/help.ico" title="Send Message"
                                onclick="javascript:Message_Click('A/R - Does the Client know what to do/whom to contact in an emergency? Does the Client know what to do if he/she gets lost? Does the Client know how to exit the home/work site in case of a fire? Does the Client know what to do if a stranger approaches? Does the Client have someone he/she feels comfortable with, and can talk to about such issues? Does the Client need and/or want safety skills training?');return false;" />
                </div>
            </div>

            <div style="float: left; width: 100%">
                <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">
                    <b>
                        <asp:Label runat="server" ID="l_well_consumer" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;">Consumer Rights:</asp:Label></b>
                </div>
                <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="well_consumer" Style="width: 90%"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="image" id="Image3" runat="server" alt="Message" style="width: 25px; height: 25px"
                                src="../img/help.ico" title="Send Message"
                                onclick="javascript:Message_Click('A/R - Was the Client involved in any court activities? Was the Client involved in any allegations of abuse or criminal activity? ');return false;" />
                </div>
            </div>

            <br />
            <br />
            <br />
            <br />
            <hr class="ann_line " />
            <div align="left" style="font-size: large">Voter Registration</div>
            <table class="table_common" cellspacing="0" cellpadding="0">
                <tr style="height: 5px;">
                    <td></td>
                </tr>
                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_well_vote" runat="server" Text="Is Consumer Registered to vote?" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="well_vote" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_well_nvra" runat="server" Text="Next NVRA form due:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="well_nvra" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 10px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="3" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_well_if_vote" runat="server" Text="If Voter Registrastion Completed by Regional Center, Registration Date:" Style="display: block; text-align: left; padding-left: 10px; padding-top: 2px;"></asp:Label></b>

                    </td>
                    <td width="5" />
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="well_if_vote" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>

                </tr>
            </table>
            <br />
            <asp:Button ID="btnSubmitTab3" runat="server" Text="ReConfirm" Style="width: 100px; display: none" CssClass="buttonbluestyle"></asp:Button>
            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab3" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <input id="Button1" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
            <hr class="ann_line" />
        </div>
        <div id="Tab4" style="display: none;">
            <table class="table_common" cellspacing="0" cellpadding="0">
                <tr style="height: 5px;">
                    <td></td>
                </tr>
                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ssn" runat="server" Text="Social Security Number:"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ssn" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_medi_num" runat="server" Text="Medicare Number:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_medi_num" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 5px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_medi_cal_num" runat="server" Text="Medi-Cal Number:"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_medi_cal_num" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_medi_cal_type" runat="server" Text="Type of Medi-Cal:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_medi_cal_type" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 5px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ssi_amt" runat="server" Text="SSI(amount / per ):"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ssi_amt" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ssi_pay" runat="server" Text="SSI Payee:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ssi_pay" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 5px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ssa_amt" runat="server" Text="SSA(amount / per ):"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ssa_amt" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ssa_pay" runat="server" Text="SSA Payee:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ssa_pay" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 5px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_pri_ins" runat="server" Text="Primary Insurance:"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_pri_ins" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_sec_ins" runat="server" Text="Secondary Insurance:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_sec_ins" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 5px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ihss_ttl_hr" runat="server" Text="IHSS Total Hours:"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ihss_ttl_hr" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_prot_hr" runat="server" Text="Protective Supervision Hours:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_prot_hr" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr style="height: 5px">
                    <td></td>
                </tr>

                <tr class="tr_common">
                    <td colspan="1" style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_ccs" runat="server" Text="CCS:"></asp:Label></b></td>
                    <td style="width: 5px"></td>
                    <td style="width: 600px" class="td_unline">
                        <asp:TextBox ID="fin_ccs" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                </tr>
                <tr style="height: 5px;">
                    <td colspan="10"></td>
                </tr>
                <tr class="ann_line">
                    <td colspan="10"></td>
                </tr>

                <tr style="height: 20px;">
                    <td colspan="10"></td>
                </tr>

                <tr>

                    <td style="width: 200px;" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_fcpp_dt" runat="server" Text="FCPP Assessment Date:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 100px;" class="td_unline">
                        <asp:TextBox ID="fin_fcpp_dt" runat="server" CssClass="inface" Style="width: 40%; background-color: lightgrey" ReadOnly="true" onclick="DataChanged();showcalendar(event, this);"
                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                    </td>

                    <td width="5"></td>
                    <td style="width: 150px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_share" runat="server" Text="Share of Cost %:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 50px" class="td_unline">
                        <asp:TextBox ID="fin_share" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 350px" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_meet1" runat="server" Text="Did Family Meet the Exemption:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 20px" class="td_unline">
                        <asp:TextBox ID="fin_meet1" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>


                <tr style="height: 5px;">
                    <td colspan="10"></td>
                </tr>

                <tr class="tr_common">

                    <td style="width: 15%" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_afpf_dt" runat="server" Text="AFPF Assessment Date:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 21%" class="td_unline">
                        <asp:TextBox ID="fin_afpf_dt" runat="server" CssClass="inface" Style="width: 40%; background-color: lightgrey" ReadOnly="true" onclick="DataChanged();showcalendar(event, this);"
                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                    </td>

                    <td width="5"></td>
                    <td style="width: 15%" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_fee_amt" runat="server" Text="Fee Amount:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 21%" class="td_unline">
                        <asp:TextBox ID="fin_fee_amt" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td width="5"></td>
                    <td style="width: 15%" class="td_label">
                        <b>
                            <asp:Label ID="l_fin_meet2" runat="server" Text="Did Family Meet the Exemption:"></asp:Label></b></td>
                    <td width="5"></td>
                    <td style="width: 21%" class="td_unline">
                        <asp:TextBox ID="fin_meet2" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>


                <tr style="height: 5px;">
                    <td colspan="10"></td>
                </tr>

                <%--<tr class="tr_common">
                        <td colspan="3" style="width: 200px" class="td_label">
                            <b><asp:Label ID="Label8" runat="server" Text="If Voter Registrastion Completed by Regional Center, Registration Date:" ></asp:Label></b>
                         
                        </td>
                        <td width="5" />
                        <td  style="width: 600px" class="td_unline"  >
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="inface" ReadOnly="true"></asp:TextBox>
                        </td>

                    </tr>    --%>
            </table>
            <br />
            <hr />
            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab4" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <input id="Button2" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
            <hr class="ann_line" />
            <br />
            <asp:Button ID="btnSubmitTab4" runat="server" Text="ReConfirm" Style="width: 100px; display: none" CssClass="buttonbluestyle"></asp:Button>
        </div>
        <div id="Tab5" style="display: none;">
            <div>
                <asp:DataGrid ID="dg_posufs" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
                    AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
                    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
                    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
                    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                    <Columns>
                        <asp:BoundColumn DataField="rap_uci" HeaderText="" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="rap_auth" HeaderText="" Visible="False"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            <ItemTemplate>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td colspan="7">
                                            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                <tr>
                                                    <td align="left" style='width: 100px; background-color: <%#DataBinder.Eval(Container.DataItem, "specbkcolor") %>; color: <%#DataBinder.Eval(Container.DataItem, "speccolor") %>'
                                                        class="td_label">
                                                        <asp:Label ID="rap_svc_code" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "rap_svc_code") %>'></asp:Label>
                                                    </td>
                                                    <td width="20"></td>
                                                    <td style='width: 400px; background-color: <%#DataBinder.Eval(Container.DataItem, "specbkcolor") %>; color: <%#DataBinder.Eval(Container.DataItem, "speccolor") %>' align="left" width="400" class="td_label">
                                                        <asp:Label ID="SvcCodeName" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "SvcCodeName") %>'></asp:Label>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="7"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width="350">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="left" style="width: 100px" class="td_label">
                                                        <asp:Label ID="rap_vid" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "rap_vid") %>'></asp:Label>
                                                    </td>
                                                    <td width="100"></td>
                                                    <td style="width: 140px" align="left" class="td_label">
                                                        <asp:Label ID="r_site_phone_1" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "r_site_phone_1") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="50"></td>
                                        <td style="width: 100px" align="right" class="td_label">
                                            <asp:Label ID="l_rap_auth" runat="server" Text="Auth#:"></asp:Label>
                                        </td>
                                        <td width="5"></td>
                                        <td class="td_label" align="left" style="width: 150px">
                                            <asp:Label ID="rap_auth" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "rap_auth") %>'></asp:Label>
                                        </td>
                                        <td width="10"></td>
                                        <td width="300">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="left" style="width: 100px" class="td_label">
                                                        <asp:Label ID="l_RapUnitName" runat="server" Text="Unit Type:"></asp:Label>
                                                    </td>
                                                    <td width="20"></td>
                                                    <td style="width: 170px" align="left" class="td_label">
                                                        <asp:Label ID="RapUnitName" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "RapUnitName") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="7"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width="350" class="td_label">
                                            <asp:Label ID="r_resource_name" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "r_resource_name") %>'></asp:Label>
                                        </td>
                                        <td width="50"></td>
                                        <td style="width: 100px" align="right" class="td_label">
                                            <asp:Label ID="l_rap_start_dt" runat="server" Text="Start Date:"></asp:Label>
                                        </td>
                                        <td width="5"></td>
                                        <td align="left" style="width: 150px" class="td_label">
                                            <asp:Label ID="rap_start_dt" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "rap_start_dt", "{0:d}") %>'></asp:Label>
                                        </td>
                                        <td width="10"></td>
                                        <td width="300" rowspan="7" align="left" class="td_label">
                                            <asp:Label ID="rap_desc" runat="server" Height="80"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "rap_desc") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="6"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width="350" class="td_label">
                                            <asp:Label ID="r_site_address_line_1" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_line_1") %>'></asp:Label>
                                        </td>
                                        <td width="50"></td>
                                        <td style="width: 100px" align="right" width="150" class="td_label">
                                            <asp:Label ID="l_rap_term_dt" runat="server" Text="End Date:"></asp:Label>
                                        </td>
                                        <td width="5"></td>
                                        <td class="td_label" align="left" style="width: 150px; color: <%#DataBinder.Eval(Container.DataItem, "speccolor") %>">
                                            <asp:Label ID="rap_term_dt" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "rap_term_dt", "{0:d}") %>'></asp:Label>
                                        </td>
                                        <td width="10"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="6"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width="350">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td class="td_label" align="left" style="width: 170px">
                                                        <asp:Label ID="r_site_address_city" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_city") %>'></asp:Label>
                                                    </td>
                                                    <td width="5"></td>
                                                    <td class="td_label" style="width: 60px" align="left" width="60">
                                                        <asp:Label ID="r_site_address_state" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_state") %>'></asp:Label>
                                                    </td>
                                                    <td width="5"></td>
                                                    <td class="td_label" style="width: 100px" align="left" width="100">
                                                        <asp:Label ID="r_site_address_zip" runat="server"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_zip") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="50"></td>
                                        <td style="width: 100px" align="right" width="150" class="td_label">
                                            <asp:Label ID="l_rap_rate" runat="server" Text="Rate:"></asp:Label>
                                        </td>
                                        <td width="5"></td>
                                        <td class="td_label" align="left" style="width: 150">
                                            <asp:Label ID="rap_rate" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "rap_rate") %>'></asp:Label>
                                        </td>
                                        <td width="10"></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="6"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width="350">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="right" style="width: 240px">
                                                        <asp:Label ID="l_LastPaid" runat="server" CssClass="infaceText"></asp:Label>
                                                    </td>
                                                    <td width="5"></td>
                                                    <td class="td_unline" style="width: 100px" align="left" width="100">
                                                        <asp:Label ID="LastPaid" runat="server" CssClass="infaceText"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "LastPaid") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="50"></td>
                                        <td style="width: 100px" align="right" class="td_label">
                                            <asp:Label ID="l_rap_unit_freq" runat="server" Text="Frequency:"></asp:Label>
                                        </td>
                                        <td width="5"></td>
                                        <td class="td_label" align="left" width="150">
                                            <asp:Label ID="rap_unit_freq" runat="server"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "rap_unit_freq") %>'></asp:Label>
                                        </td>
                                        <td width="10"></td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="7"></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
            <br />
            <hr />
            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab5" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <input id="Button4" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
            <hr class="ann_line" />
            <br />
            <!--<asp:Button ID="btnSubmitTab5" runat="server" Text="Confirm" Style="width: 100px" CssClass="buttonbluestyle"></asp:Button>-->
        </div>
        <div id="Tab6" style="display: none;">
            <h3>Employment</h3>
            <div style="border: solid 1px; width: 100%; height: 300px">
                <asp:DataGrid ID="dg_employment" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
                    AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
                    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
                    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
                    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                    <Columns>
                        <asp:TemplateColumn HeaderText="">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            <ItemTemplate>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <asp:Label ID="l_employer" runat="server" Text="Name of Employer:"></asp:Label>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td style="width: 600px" align="left" class="td_unline">
                                            <asp:TextBox ID="employer" runat="server" Style="background-color: lightgrey" CssClass="inface" MaxLength="50" ReadOnly="true"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "employer") %>'></asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <asp:Label ID="l_city" runat="server" Text="Address/Phone:"></asp:Label>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td style="width: 600px" align="left" class="td_unline">
                                            <asp:TextBox ID="city" runat="server" CssClass="inface" MaxLength="100" ReadOnly="true" Style="background-color: lightgrey"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "city") %>'></asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <asp:Label ID="l_jobtitle" runat="server" Text="Job Title:"></asp:Label>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td style="width: 600px" align="left" class="td_unline">
                                            <asp:TextBox ID="jobtitle" runat="server" CssClass="inface" MaxLength="50" ReadOnly="true" Style="background-color: lightgrey"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "jobtitle") %>'></asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <asp:Label ID="l_jobtype" runat="server" Text="Type of Job:"></asp:Label>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td style="width: 600px" align="left">
                                            <asp:TextBox ID="jobtype" runat="server" CssClass="inface" Style="background-color: lightgrey" ReadOnly="true" Text='<%# DataBinder.Eval(Container.DataItem, "jobtype_desc").ToString().TrimEnd()%>'>
                                            </asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <asp:Label ID="l_employmenttype" runat="server" Text="Type of Paid Employment:"></asp:Label>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td style="width: 600px" align="left">
                                            <asp:TextBox ID="employmenttype" CssClass="inface" runat="server" Style="background-color: lightgrey" ReadOnly="true" Text='<%# DataBinder.Eval(Container.DataItem, "employmenttype_desc").ToString().TrimEnd()%>'>
                                            </asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <asp:Label ID="l_timeonjob" runat="server" Text="Start Date:"></asp:Label>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td style="width: 600px" align="left" class="td_unline">
                                            <asp:TextBox ID="timeonjob" runat="server" CssClass="inface" MaxLength="100" ReadOnly="true" Style="background-color: lightgrey"
                                                Text='<%# DataBinder.Eval(Container.DataItem, "timeonjob", "{0:d}") %>'></asp:TextBox>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="td_thinsepline"></td>
                                    </tr>
                                    <tr style="height: 5px">
                                        <td colspan="4"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="left" style="width: 210px" class="td_label">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="left" style="width: 120px" class="td_label">
                                                        <asp:Label ID="l_monthyear" runat="server" Text="For the Month As of:"></asp:Label>
                                                    </td>
                                                    <td width="5"></td>
                                                    <td style="width: 80px" align="left" class="td_unline">
                                                        <asp:TextBox ID="monthyear" runat="server" CssClass="inface" ReadOnly="true" Style="background-color: lightgrey"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "monthyear", "{0:d}") %>'></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 10px"></td>
                                        <td colspan="2" align="left">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="left" style="width: 120px" class="td_label">
                                                        <asp:Label ID="l_rate" runat="server" Text="Hourly Rate:"></asp:Label>
                                                    </td>
                                                    <td width="5"></td>
                                                    <td style="width: 80px" align="left" class="td_unline">
                                                        <asp:TextBox ID="rate" runat="server" CssClass="inface" MaxLength="10" ReadOnly="true" Style="background-color: lightgrey"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "rate") %>'></asp:TextBox>
                                                    </td>
                                                    <td align="center" style="width: 60px" class="td_label">
                                                        <asp:Label ID="Label10" runat="server" Text="or:"></asp:Label>
                                                    </td>
                                                    <td align="left" style="width: 120px" class="infaceTextNoPad">
                                                        <asp:CheckBox ID="piecerate" runat="server" Text="" ReadOnly="true" Style="background-color: lightgrey"
                                                            Checked='<%# (DataBinder.Eval(Container.DataItem, "piecerate").ToString().TrimEnd() =="Y") ? true : false %>'></asp:CheckBox>Piece Rate
                                                    </td>
                                                    <td align="right" style="width: 120px" class="td_label">
                                                        <asp:Label ID="l_hours" runat="server" Text="Total weekly hours worked:"></asp:Label>
                                                    </td>
                                                    <td width="5"></td>
                                                    <td style="width: 80px" align="left" class="td_unline">
                                                        <asp:TextBox ID="hours" runat="server" CssClass="inface" MaxLength="10" ReadOnly="true" Style="background-color: lightgrey"
                                                            Text='<%# DataBinder.Eval(Container.DataItem, "hours") %>'></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>



                                </table>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
            <br />

            <br />
            <h3>School</h3>
            <div style="border: solid 1px; width: 100%; height: 350px">
                <div>
                    <asp:DataGrid ID="dg_school" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
                        AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
                        <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
                        <ItemStyle CssClass="grd_itemborder"></ItemStyle>
                        <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                        <Columns>
                            <asp:TemplateColumn HeaderText="">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                <ItemTemplate>
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                        <tr style="height: 5px">
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 210px" class="td_label">
                                                <asp:Label ID="l_employer" runat="server" Text="Name of School:"></asp:Label>
                                            </td>
                                            <td width="10"></td>
                                            <td style="width: 600px" align="left" class="td_unline">
                                                <asp:TextBox ID="SchoolName" runat="server" CssClass="inface" MaxLength="50" ReadOnly="true" Style="background-color: lightgrey"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "employer") %>'></asp:TextBox>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 210px" class="td_label">
                                                <asp:Label ID="l_city" runat="server" Text="Address/Phone:"></asp:Label>
                                            </td>
                                            <td width="10"></td>
                                            <td style="width: 600px" align="left" class="td_unline">
                                                <asp:TextBox ID="SchoolAddressPhone" runat="server" CssClass="inface" MaxLength="100" ReadOnly="true" Style="background-color: lightgrey"
                                                    Text='<%# DataBinder.Eval(Container.DataItem, "city") %>'></asp:TextBox>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" style="width: 210px" class="td_label">
                                                <asp:Label ID="l_edutype" runat="server" Text="Type of Education Placement:"></asp:Label>
                                            </td>
                                            <td width="10" height="20"></td>
                                            <td colspan="2" align="left" class="infaceTextNoPad">
                                                <asp:CheckBox ID="fullinclusion" runat="server" onclick="return false;" Text=""
                                                    Checked='<%# (DataBinder.Eval(Container.DataItem, "fullinclusion").ToString().TrimEnd() =="Y") ? true : false %>'></asp:CheckBox>Full Inclusion
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="specialclass" runat="server" onclick="return false;" Text=""
                                                Checked='<%# (DataBinder.Eval(Container.DataItem, "specialclass").ToString().TrimEnd() =="Y") ? true : false %>'></asp:CheckBox>Special Day Class
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="mainstream" runat="server" onclick="return false;" Text=""
                                                Checked='<%# (DataBinder.Eval(Container.DataItem, "mainstream").ToString().TrimEnd() =="Y") ? true : false %>'></asp:CheckBox>Mainstream
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="4"></td>
                                        </tr>

                                    </table>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </div>

                <br />
                <br />

            </div>
            <br />

            <br />
            <h3>Program</h3>
            <div style="border: solid 1px; width: 100%; height: 200px">
                <div>
                    <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                        <b>
                            <asp:Label runat="server" ID="Label70">Day Program:</asp:Label></b>
                    </div>
                    <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 20px">
                        <asp:TextBox runat="server" ID="TextBox11" Style="width: 90%; background-color: lightgrey" ReadOnly="true" Text=""></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <div>
                    <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                        <b>
                            <asp:Label runat="server" ID="Label71">Funded Program:</asp:Label></b>
                    </div>
                    <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                        <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="TextBox12" Style="width: 90%; background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div>
                    <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                        <b>
                            <asp:Label runat="server" ID="Label73">Non-Funded Program/Type:</asp:Label></b>
                    </div>
                    <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                        <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="TextBox13" Style="width: 90%; background-color: lightgrey" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>

                <br />
                <br />

            </div>
            <!--<asp:Button ID="btnSubmitTab6" runat="server" Text="ReConfirm" Style="width: 100px" CssClass="buttonbluestyle"></asp:Button>-->
            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab6" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <input id="Button5" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
            <hr class="ann_line" />
        </div>
        <div id="Tab7" style="display: none;">
            <div style="float: left; width: 100%">
                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label18">Medicaid Waiver Benefits:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="MedicalWaiverDeficit" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="lb_living_arra">Living Arrangement:</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb1" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_liv_arr" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label1">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label2">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm" Style="width: 100%"></asp:TextBox>
                </div>

                <%--<asp:DataGrid ID="dg_plan_tab2" runat="server" AllowPaging="false"
                    AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false" Style="float: left; width: 100%">
                    <Columns>
                        <asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            <ItemTemplate>
                                <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                                    <b>
                                        <asp:Label runat="server" ID="Label12">Living Arrangement:</asp:Label></b><br />
                                    <b>
                                        <asp:Label runat="server" ID="Label78">New Outcome:</asp:Label></b><br />
                                </div>
                                <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 70px">
                                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="TextBox1" name="LivingArrangements" Style="width: 90%" Text='<%# DataBinder.Eval(Container.DataItem, "desiredoutcome") %>'></asp:TextBox>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>--%>
            </div>
            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label3">Skills Demonstrated in Life::</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb2" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_ski_dem" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label4">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa2" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label5">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm2" Style="width: 100%"></asp:TextBox>
                </div>

            </div>
            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label6">Challenging Behaviors</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb3" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_ch_beh" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label7">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa3" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label8">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm3" Style="width: 100%"></asp:TextBox>
                </div>

            </div>
            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label9">School,Work, Or Day Activity:</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb4" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_sch_wor" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label11">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa4" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label12">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm4" Style="width: 100%"></asp:TextBox>
                </div>

            </div>
            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label13">Commnunity and Social Life:</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb5" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_com_soc" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label14">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa5" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label15">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm5" Style="width: 100%"></asp:TextBox>
                </div>

            </div>
            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label16">Health and Safety:</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb6" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_hea_saf" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label17">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa6" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label19">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm6" Style="width: 100%"></asp:TextBox>
                </div>

            </div>
            <br />
            <br />
            <br />
            <br />

            <div style="float: left; width: 100%">

                <div style="width: 10%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label style="text-align:left" runat="server" ID="Label20">Legal:</asp:Label></b>
                    <br />
                    <br />
                    <asp:CheckBox Style="margin-left: 50px; background-color: #CEE3F6; height: 100px" TextAlign="Left" runat="server" ID="out_cb7" Text="New Outcome:"></asp:CheckBox>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_leg" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label21">Plan for Medicaid Waiver:</asp:Label></b>

                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_plan_mewa7" Style="width: 100%"></asp:TextBox>
                </div>
            </div>
            <div style="float: left; width: 100%">
                <div style="width: 8%; float: left; margin-left: 32px; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label22">Comments:</asp:Label></b>
                </div>
                <div style="width: 75%; float: left; vertical-align: top; height: 70px">
                    <asp:TextBox TextMode="MultiLine" Rows="3" runat="server" ID="out_li_comm7" Style="width: 100%"></asp:TextBox>
                </div>

            </div>
    

            <br />
            <hr />
            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab7" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <input id="Button6" runat="server" type="button" value="ReConfirm" style="width: 100px; display: none" class="buttonbluestyle" />
            <hr class="ann_line" />
            <br />
            <!--<asp:Button ID="btnSubmitTab7" runat="server" Text="ReConfirm" Style="width: 100px" CssClass="buttonbluestyle"></asp:Button>-->
        </div>
        <div id="Tab8" style="display: none;">
            <div style="float: left; width: 100%">
                <div style="width: 20%; float: left; margin-right: 3px; background-color: #CEE3F6; height: 20px">

                    <b>
                        <asp:Label runat="server" ID="Label101">Self Determination Program:</asp:Label></b>
                </div>
                <div style="width: 45%; float: left; background-color: #CEE3F6; vertical-align: top; height: 200px">
                    <asp:TextBox TextMode="MultiLine" Rows="6" runat="server" ID="SelfDeterminationProgram" Style="width: 90%"></asp:TextBox>
                </div>
            </div>
            <br />
            <asp:Button ID="btnSubmitTab8" runat="server" Text="ReConfirm" Style="width: 100px; display: none" CssClass="buttonbluestyle"></asp:Button>

            <hr class="ann_line" />
            <br />
            <b>CHECK TO CONFIRM THIS TABLE IS COMPLETE: &nbsp;
                                <asp:CheckBox ID="chktab8" runat="server"
                                    AutoPostBack="True" OnCheckedChanged="CheckBox_CheckedChanged" /></b>
            <hr class="ann_line" />
        </div>
        <div id="Tab9" style="display: none;">
            <table class="table_common" cellspacing="0" cellpadding="0">
                <tr style="height: 5px;">
                    <td></td>
                </tr>
                <tr class="tr_common">
                    <td class="td_label">
                        <b>
                            <asp:Label ID="l_logs" runat="server" Text="CONFIRMATION LOGS:"></asp:Label></b>
                    </td>
                </tr>
                <tr style="height: 5px;">
                    <td></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 99%" class="td_unline">
                        <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" 
                            runat="server" Width="99%" Height="400" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 10px;">
                    <td></td>
                </tr>
                <tr class="tr_common">
                    <td class="td_label">
                        <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                                <td width="150px" class="td_label">
                                    <b>
                                        <asp:Label ID="l_statuses" runat="server" Text="CONFIRMATION STATUS:"></asp:Label></b>
                                </td>
                                <td width="5"></td>
                                <td class="td_unline" style="width: 900px">
                                    <asp:TextBox ID="Statuses" CssClass="inface" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 10px;">
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <table class="table_inside" border="1" cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                            <tr>
                                <td width="50%" style="border: medium solid #CC99CC;">
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td colspan="5" align="center">
                                                <input type="button" id="btnVerify" runat="server" value="Submit" style="width: 80px; height: 25px"
                                                    onclick="javascript:Verify();return false;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="5"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td width="120px" class="td_label">
                                                <asp:Label ID="l_ipp_verify" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px"></td>
                                            <td class="td_unline" align="left" style="width: 300px">
                                                <asp:Label ID="ipp_verify" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                                </asp:Label>
                                            </td>
                                            <td width="auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3"></td>
                                            <td class="td_label">
                                                <asp:Label ID="l_ippverifytitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td class="td_label" style="width: 120px">
                                                <asp:Label ID="l_ipp_verify_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px"></td>
                                            <td class="td_unline">
                                                <asp:Label ID="ipp_verify_date" runat="server" CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                </asp:Label>
                                            </td>
                                            <td width="auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="50%">
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                        <tr class="tr_common">
                                            <td colspan="5" align="center">
                                                <input type="button" id="btnSign" runat="server" value="Submit" style="width: 80px; height: 25px"
                                                    onclick="javascript:CheckPwd();return false;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td colspan="3" class="td_label">
                                                <asp:RadioButton ID="approved_yes" GroupName="approved" runat="server" Text=""></asp:RadioButton><b>Approve</b>
                                                &nbsp;&nbsp;
                               <asp:RadioButton ID="approved_no" GroupName="approved" runat="server" Text=""></asp:RadioButton><b>Return</b>
                                            </td>
                                            <td width="auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td width="120px" class="td_label">
                                                <asp:Label ID="l_ipp_signature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px"></td>
                                            <td class="td_unline" align="left" style="width: 300px">
                                                <asp:Label ID="ipp_signature" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                                </asp:Label>
                                            </td>
                                            <td width="auto"></td>
                                            <tr>
                                                <td colspan="5" height="5px"></td>
                                            </tr>
                                        <tr class="tr_common">
                                            <td colspan="3"></td>
                                            <td class="td_label">
                                                <asp:Label ID="l_ippsigntitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
                                            </td>
                                            <td width="auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td class="td_label" style="width: 120px">
                                                <asp:Label ID="l_ipp_signature_msg" runat="server" Text="Message to SC:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px"></td>
                                            <td class="td_unline">
                                                <%-- <asp:Label ID="ipp_signature_msg" runat="server" CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                                    </asp:Label>--%>
                                                <asp:DropDownList ID="ipp_signature_msg" runat="server"
                                                    DataValueField="employeeName" DataTextField="employeeName" Height="20" Width="220">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td class="td_label" style="width: 120px">
                                                <asp:Label ID="l_ipp_signature_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px"></td>
                                            <td class="td_unline">
                                                <asp:Label ID="ipp_signature_date" runat="server" CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                </asp:Label>
                                            </td>
                                            <td width="auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="10px"></td>
                                            <td valign="top" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_sign_comments" runat="server" Text="Comments:"></asp:Label></b>
                                            </td>
                                            <td width="5px"></td>
                                            <td colspan="2" class="td_unline">
                                                <asp:TextBox ID="sign_comments" TextMode="MultiLine" Wrap="true" 
                                                    runat="server" Width="99%" Height="60" CssClass="inface"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" height="5px"></td>
                                        </tr>
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
    <script type="text/javascript">
    
        var LoadTab='TAB1';
        if('<%=CurrentOpenedTab%>'!=null&&'<%=CurrentOpenedTab%>'>0)
            LoadTab='TAB'+'<%=CurrentOpenedTab%>';
        //alert(LoadTab);
        Tab1.style.display = "none";
        Tab2.style.display = "none";
        Tab3.style.display = "none";
        Tab4.style.display = "none";
        Tab5.style.display = "none";
        Tab6.style.display = "none";
        Tab7.style.display = "none";
        Tab8.style.display = "none";
        Tab9.style.display = "none";
        switch (LoadTab) {
            case "TAB1":
                Tab1.style.display = "";
                Tab1.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "1";
                break;
            case "TAB2":
                Tab2.style.display = "";
                Tab2.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "2";
                break;
            case "TAB3":
                Tab3.style.display = "";
                Tab3.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "3";
                break;
            case "TAB4":
                Tab4.style.display = "";
                Tab4.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "4";
                break;
            case "TAB5":
                Tab5.style.display = "";
                Tab5.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "5";
                break;
            case "TAB6":
                Tab6.style.display = "";
                Tab6.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "6";
                break;
            case "TAB7":
                Tab7.style.display = "";
                Tab7.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "7";
                break;
            case "TAB8":
                Tab8.style.display = "";
                Tab8.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "8";
                break;
            case "TAB9":
                Tab9.style.display = "";
                Tab9.style.color = "#990066";
                document.IPPInfo.now_div_flag.value = "9";
                break;
                
             
        }
        
    </script>
</body>
</html>

