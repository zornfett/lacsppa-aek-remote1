<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormBLUESHEETInfoFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormBLUESHEETInfoFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::Lanterman Eligibility Review:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
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
                //TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                TAB3.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB4.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB_New.style.color = "";
                TAB_Doctor.style.color = "";
                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            Tab1.style.display = "none";
            //Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            Tab_New.style.display = "none";
            Tab_Doctor.style.display = "none";

            var btn_ad = document.getElementById('btn_addRecmd');
            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    document.BULESHEETInfo.now_div_flag.value = "1";
                    break;
//                case "TAB2":
//                    Tab2.style.display = "";
//                    if(btn_ad != null)
//                    {
//                        document.getElementById('btn_addRecmd').style.display = ""; 
//                    }
//                    document.BULESHEETInfo.now_div_flag.value = "2";
//                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    document.BULESHEETInfo.now_div_flag.value = "3";
                    break;
                case "TAB4":
                    Tab4.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    document.BULESHEETInfo.now_div_flag.value = "4";
                    break;
                case "TAB_New":
                    Tab_New.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    document.BULESHEETInfo.now_div_flag.value = "5";
                    break;
                case "TAB_Doctor":
                    Tab_Doctor.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    document.BULESHEETInfo.now_div_flag.value = "6";
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
                //TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                TAB3.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB4.style.color = "";
                TAB_New.style.color = "";
                //TAB4.style.cursor = "pointer";
                TAB_Doctor.style.color = "";
            }
            Tab1.style.display = "none";
            //Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            Tab_New.style.display = "none";
            Tab_Doctor.style.display = "none";

            var btn_ad = document.getElementById('btn_addRecmd');
            switch (obj_id) {
                case "TAB1":
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none";    
                    }              
                    //TAB1.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "1";
                    break;
//                case "TAB2":
//                    Tab2.style.display = "";
//                    TAB2.style.color = "#990066";
//                    if(btn_ad != null)
//                    {
//                        document.getElementById('btn_addRecmd').style.display = ""; 
//                    }              
//                    //TAB2.style.cursor="auto";
//                    document.BULESHEETInfo.now_div_flag.value = "2";
//                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none";                 
                    }
                    //TAB3.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "3";
                    break;
                case "TAB4":
                    Tab4.style.display = "";
                    TAB4.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none";             
                    }    
                    //TAB3.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "4";
                    break;
                case "TAB_New":
                    Tab_New.style.display = "";
                    TAB_New.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none";            
                    }
                    //TAB3.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "5";
                    break;
                case "TAB_Doctor":
                    Tab_Doctor.style.display = "";
                    TAB_Doctor.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none";            
                    }
                    //Tab_Doctor.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "6";
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
                //TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                TAB3.style.color = "";
                //TAB3.style.cursor = "pointer";
                TAB4.style.color = "";
                //TAB4.style.cursor = "pointer";
                TAB_New.style.color = "";
                TAB_Doctor.style.color = "";
            }
            Tab1.style.display = "none";
            //Tab2.style.display = "none";
            Tab3.style.display = "none";
            Tab4.style.display = "none";
            Tab_New.style.display = "none";
            Tab_Doctor.style.display = "none";

            var btn_ad = document.getElementById('btn_addRecmd');
            switch (flag) {
                case 1:
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    //TAB1.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "1";
                    break;
//                case 2:
//                    Tab2.style.display = "";
//                    TAB2.style.color = "#990066";
//                    if(btn_ad != null)
//                    {
//                        document.getElementById('btn_addRecmd').style.display = ""; 
//                    }
//                    //TAB2.style.cursor="auto";
//                    document.BULESHEETInfo.now_div_flag.value = "2";
//                    break;
                case 3:
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    //TAB3.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "3";
                    break;
                case 4:
                    Tab4.style.display = "";
                    TAB4.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    //TAB3.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "4";
                    break;
                case 5:
                    Tab_New.style.display = "";
                    TAB_New.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    //TAB3.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "5";
                    break;
                case 6:
                    Tab_Doctor.style.display = "";
                    TAB_Doctor.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    //Tab_Doctor.style.cursor="auto";
                    document.BULESHEETInfo.now_div_flag.value = "6";
                    break;
 
            }
        }

        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.BULESHEETInfo.submit(); 
            window.focus();   
        }

        function addrecmd_click() {
            var consumer_key = document.BULESHEETInfo.consumer_key.value.toString();
            var entrykey = document.BULESHEETInfo.entrykey.value.toString();
            popupDialog("FormBLUESHEETAddRecmd.aspx?EligibilityKey=" + entrykey + "&Consumer_key=" + consumer_key+"&type=add")
        }

        function print_click() {
            // PopupMessage(10);

            var flag = document.BULESHEETInfo.now_div_flag.value.toString();
            var consumer_key = document.BULESHEETInfo.consumer_key.value.toString();
            var entrykey = document.BULESHEETInfo.entrykey.value.toString();
            var UserAct = document.BULESHEETInfo.UserAct.value.toString();
            var url = "PrintFormBLUESHEETInfoFDLRC.aspx?uci=" + consumer_key + "&entrykey=" + entrykey + "&flag=" + flag + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormBLUESHEETInfoFDLRC');
        }

        function printall_click(){
           var consumer_key = document.BULESHEETInfo.consumer_key.value.toString();
            var entrykey = document.BULESHEETInfo.entrykey.value.toString();
            var UserAct = document.BULESHEETInfo.UserAct.value.toString();
            var url = "PrintFormBLUESHEETInfoFDLRC.aspx?uci=" + consumer_key + "&entrykey=" + entrykey + "&flag=1&UserAct=" + UserAct;
            winhref(url, 'PrintFormBLUESHEETInfoFDLRC');
        }

        function save_click() {
            if (document.BULESHEETInfo.type.value=="")
            {
               alert('The \"Review Type\" is required.');
               return false;
            }

            if (!isMaxLength(document.getElementById("notes"), 750))
            {
               document.getElementById("notes").focus();
               return false;
            }
            if (!isMaxLength(document.getElementById("reason"), 1500))
            {
               document.getElementById("reason").focus();
               return false;
            }
//            if (!isMaxLength(document.getElementById("memberspresent"), 500))
//            {
//               document.getElementById("memberspresent").focus();
//               return false;
//            }

            NoCreateIDNotes();
            return true;
        }

        function verify_click() {
            NoCreateIDNotes();
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace(document.BULESHEETInfo.gobackPage.value);
        }

        function CheckAge(){
        /*
            var type = document.getElementById('type');
            if (type.options[type.selectedIndex].value.toString() == "6") {
                if(parseInt(document.BULESHEETInfo.consumer_age.value)>=parseInt("3")){
                    alert("The Turning Three review type is for Early Start consumers that will soon turn three years of age.\n\nPlease select another review type.");
                    document.getElementById('type').value = "";
                }
                else{
                    TAB_New.style.display="";
                }
            }
            else{
                TAB_New.style.display="none";
            }
        */
        }

        function RadioBoxCheck()
        {
            if(document.getElementById('AU_no').checked)
            {
                document.getElementById('AUDate_td').style.display="none";
                document.getElementById('AUDate').style.display="none";
                AU_tr1.style.display="none";
                AU_tr2.style.display="none";
            }
            if(document.getElementById('AU_yes').checked)
            {
                document.getElementById('AUDate_td').style.display="";
                document.getElementById('AUDate').style.display="";
                AU_tr1.style.display="";
                AU_tr2.style.display="";
            }
            if(document.getElementById('CP_no').checked)
            {
                document.getElementById('CPDate_td').style.display="none";
                document.getElementById('CPDate').style.display="none";
                CP_tr1.style.display="none";         
            }
            if(document.getElementById('CP_yes').checked)
            {
                document.getElementById('CPDate_td').style.display="";
                document.getElementById('CPDate').style.display="";
                CP_tr1.style.display="";
            }
            if(document.getElementById('CPWalk_no').checked)
            {
                document.getElementById('CPAssistance_td').style.display="none";
                document.getElementById('CPAssistance').style.display="none";
                CP_tr2.style.display="none";         
            }
            if(document.getElementById('CPWalk_yes').checked)
            {
                document.getElementById('CPAssistance_td').style.display="";
                document.getElementById('CPAssistance').style.display="";
                CP_tr2.style.display="";
            }
            if(document.getElementById('EP_no').checked)
            {
                document.getElementById('EPDate_td').style.display="none";
                document.getElementById('EPDate').style.display="none";
                EP_tr1.style.display="none";  
                EP_tr2.style.display="none";
                EP_tr3.style.display="none";
                EP_tr4.style.display="none";       
            }
            if(document.getElementById('EP_yes').checked)
            {
                document.getElementById('EPDate_td').style.display="";
                document.getElementById('EPDate').style.display="";
                EP_tr1.style.display="";
                EP_tr2.style.display="";
                EP_tr3.style.display="";
                EP_tr4.style.display="";
            }
            if(document.getElementById('EPSDT_no').checked)
            {
                document.getElementById('EPSDTHours_td').style.display="none";
                document.getElementById('EPSDTHours').style.display="none";      
            }
            if(document.getElementById('EPSDT_yes').checked)
            {
                document.getElementById('EPSDTHours_td').style.display="";
                document.getElementById('EPSDTHours').style.display="";
            }

            if(document.getElementById('Vision_no').checked)
            {
                document.getElementById('Glasses_td').style.display="none";
                Vision_tr.style.display="none";         
            }
            if(document.getElementById('Vision_yes').checked)
            {
                document.getElementById('Glasses_td').style.display="";
                Vision_tr.style.display="";
            }

            if(document.getElementById('Hearing_no').checked && document.getElementById('Audio_no').checked)
            {
           
                Hearing_tr1.style.display="none";  
                Hearing_tr2.style.display="none";
                Hearing_tr3.style.display="none";
                Hearing_tr4.style.display="none";       
            }
            else
            {
                Hearing_tr1.style.display="";
                Hearing_tr2.style.display="";
                Hearing_tr3.style.display="";
                Hearing_tr4.style.display="";
            }
        }

        function Sign(UserName) {
            if ( document.BULESHEETInfo.checksign.value == "Sign")
            {
               document.BULESHEETInfo.checksign.value = "Signed";
            }
            else if (document.BULESHEETInfo.checksign.value == "Finial")
            {          
               document.BULESHEETInfo.checksign.value = "Finialed";
               var nowdate = new Date();
               document.getElementById("leader").value = UserName.toString();
               document.getElementById("SignedDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            else if (document.BULESHEETInfo.checksign.value == "Review")
            {          
               document.BULESHEETInfo.checksign.value = "Reviewed";
               var nowdate = new Date();
               document.getElementById("reviewby").value = UserName.toString();
               document.getElementById("revieweddate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            window.document.BULESHEETInfo.submit(); 
        }

        function CheckReviewPwd() {
            document.BULESHEETInfo.checksign.value = "Review";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckSignPwd() {
            document.BULESHEETInfo.checksign.value = "Sign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckFinialPwd() {
            document.BULESHEETInfo.checksign.value = "Finial";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission()
        {
            PopupMessage(42);
            return false;
        }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="BULESHEETInfo" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="consumer_age" id="consumer_age" value="" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="ReviewType" id="ReviewType" runat="server" />
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
    <input type="hidden" name="checksign" id="checksign" value="" runat="server" />
    <input type="hidden" name="casemgrname" id="casemgrname" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormBLUESHEETList.aspx" runat="server" />
    <div align="center" style="width: 100%;">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btn_addRecmd" runat="server" alt="AddRecmd" visible="true" style="width: 25px;
                        height: 25px; display:none" src="../img/add.ico" title="New" onclick="javascript:addrecmd_click();return false;" />
                    &nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnEdit_Click"></asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnPrintAll" runat="server" alt="Print All"  visible="false" style="width: 25px;height:25px"  
                        src="../img/printall.ico" title="Print All"
                        onclick="javascript:printall_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Eligibility For</asp:Label>
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
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="TAB1" style="color: #990066;" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>Review</u></b>
                            </td>
                            <td id="TAB_New" class="tab_sel" onclick="doseltd(this);" width="200" style="display: none;">
                                <b><u>Turning 3 Worksheet</u></b>
                            </td>

                            <td id="TAB3" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>Medical Information</u></b>
                            </td>
                            <td id="TAB4" class="tab_sel" onclick="doseltd(this);" width="150">
                                <b><u>Medication</u></b>
                            </td>
                            <td id="TAB_Doctor" class="tab_sel" onclick="doseltd(this);" width="150">
                                <b><u>Doctor</u></b>
                            </td>
                            <td id="TAB_CDER" runat="server" class="tab_sel"  width="100">
                                <b><u>CDER</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab1">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
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
                                                    Height="24px">LANTERMAN ELIGIBILITY REVIEW</asp:Label>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 140px">
                                                <asp:Label ID="Label1" runat="server" Text="Consumer:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:Label ID="consumername" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label2" runat="server" Text="UCI#:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:Label ID="c_uci" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td  class="td_label" style="width: 180px">
                                                <asp:Label ID="Label4" runat="server" Text="Review Type:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px">
                                                <asp:DropDownList ID="type" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop"  onchange="CheckAge();">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 140px">
                                                <asp:Label ID="Label6" runat="server" Text="D.O.B:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:Label ID="c_dob" runat="server"  CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label72" runat="server" Text="Decision Date:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="decisiondate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td  class="td_label" style="width: 180px">
                                                <asp:Label ID="ddd" runat="server" Text="Due Date:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:Label ID="Duedate" runat="server"  CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 140px">
                                                <asp:Label ID="Label7" runat="server" Text="Assigned SC:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px">
                                                <asp:Label ID="AssignedSC" runat="server"  CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td style="width: 120px">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                            
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td  class="td_label" style="width: 180px">
                                                <asp:Label ID="Label13" runat="server" Text="Next Eligibility Review Date:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:TextBox ID="eligreviewdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 200px">
                                                <asp:Label ID="Label11" runat="server" Text="To Be Reviewed By HRG Group:" Visible="false" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="reviewgroup" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop"  Visible="false">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 200px">
                                                <asp:Label ID="Label14" runat="server" Text="Last Modified By:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:Label ID="lastmodby" runat="server"  CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label">
                                                <b>DEVELOPMENTAL DISABILITIES</b>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td style="width: 80px">
                                                
                                            </td>
                                            <td style="width: 20px" >
                                            </td>
                                            <td style="width: 150px;">
                                               
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label16" runat="server" Text="intellectual disability (Intellectual Disability):" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 180px">
                                                <asp:DropDownList ID="mr" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label19" runat="server" Text="Eligible Condition:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 180px">
                                                <asp:DropDownList ID="mreligible" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="mrelabel" runat="server" Text="MR (ID) Etiology:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="mret" runat="server" CssClass="inface" MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="mret_text" runat="server" CssClass="inface" ></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="mretSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=mret&FormName=BULESHEETInfo');" />
                                            </td>
                                        </tr>
                                        <tr style="height: 15px">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label20" runat="server" Text="Cerebral Palsy:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 180px">
                                                <asp:DropDownList ID="cp" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label23" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width:100px">
                                                <asp:DropDownList ID="cpimpact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label21" runat="server" Text="Eligible Condition:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 180px">
                                                <asp:DropDownList ID="cpeligible" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label22" runat="server" Text="CP Etiology:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="cpet" runat="server" CssClass="inface"  MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="cpet_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="cpetSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=cpet&FormName=BULESHEETInfo');" />
                                            </td>
                                        </tr>
                                        <tr style="height: 15px">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label24" runat="server" Text="Autism (Autism Spectrum Disorder):" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 180px">
                                                <asp:DropDownList ID="autism" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label25" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:DropDownList ID="autismimpact" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label26" runat="server" Text="Eligible Condition:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 180px">
                                                <asp:DropDownList ID="aueligible" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label27" runat="server" Text="Autism (ASD) Etiology:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="auet" runat="server" CssClass="inface"  MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="auet_text" runat="server" CssClass="inface" ></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="auetSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=auet&FormName=BULESHEETInfo');" />
                                            </td>
                                        </tr>
                                        <tr style="height: 15px">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label28" runat="server" Text="Epilepsy:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 180px">
                                                <asp:DropDownList ID="epilepsy" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label29" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:DropDownList ID="epilepsyimpact" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label30" runat="server" Text="Eligible Condition:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 180px">
                                                <asp:DropDownList ID="epeligible" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label31" runat="server" Text="Epilepsy Etiology:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="epet" runat="server" CssClass="inface" MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="epet_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="epetSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=epet&FormName=BULESHEETInfo');" />
                                            </td>
                                        </tr>
                                        <tr style="height: 15px">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label32" runat="server" Text="Other Type of DD:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width:180px">
                                                <asp:TextBox ID="otherdd" CssClass="inface" runat="server" OnClick="DataChanged()">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label33" runat="server" Text="Eligible Condition:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 180px">
                                                <asp:DropDownList ID="othereligible" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label34" runat="server" Text="Other Etiology:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="otet" runat="server" CssClass="inface" MaxLength="7"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="otet_text" runat="server" CssClass="inface" ></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="otetSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=otet&FormName=BULESHEETInfo');" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="6">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 250px">
                                                <asp:Label ID="Label12" runat="server" Text="Condition originated before 18?" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 80px">
                                                <asp:DropDownList ID="OrigBefore18" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td  class="td_label" style="width: 250px">
                                                <asp:Label ID="Label17" runat="server" Text="Condition is likely to continue indefinitely?" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 80px">
                                                <asp:DropDownList ID="ContinueIdfy" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label">
                                                <b>ADDITIONAL DIAGNOSES</b>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 50px">
                                                <asp:Label ID="Label35" runat="server" Text="" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="axis1a" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="axis1a_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="axis1aSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis1a&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label36" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="axis1aimpact" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="axis2a" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="axis2a_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="axis2aSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis2a&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label38" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="axis2aimpact" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 50px">
                                                <asp:Label ID="Label37" runat="server" Text="" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="axis1b" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="axis1b_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="axis1bSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis1b&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label39" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="axis1bimpact" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="axis2b" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="axis2b_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="axis2bSrch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis2b&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label40" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="axis2bimpact" runat="server" DataTextField="tb_entry_text"
                                                    DataValueField="tb_entry_name" OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label">
                                                <b>Chronic Major Medical Conditions:</b>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Cmmc1" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Cmmc1_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="Cmmc1Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=Cmmc1&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label41" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="Cmmc1impact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Cmmc2" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Cmmc2_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="Cmmc2Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=Cmmc2&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label42" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="Cmmc2impact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Cmmc3" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Cmmc3_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="Cmmc3Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=Cmmc3&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label43" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="Cmmc3impact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Cmmc4" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Cmmc4_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="Cmmc4Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=Cmmc4&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label44" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="Cmmc4impact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Cmmc5" runat="server" CssClass="inface" ></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Cmmc5_text" runat="server" CssClass="inface" ></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="Cmmc5Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=Cmmc5&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label45" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="Cmmc5impact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Cmmc6" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Cmmc6_text" runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td>
                                                <input type="button" value="DSM Code" style="width: 100px" id="Cmmc6Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=Cmmc6&FormName=BULESHEETInfo');" />
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label46" runat="server" Text="Condition Impact:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:DropDownList ID="Cmmc6impact" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label">
                                                <b>SPECIAL HEALTH CARE REQUIREMENTS</b>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label47" runat="server" Text="1:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px">
                                                <asp:DropDownList ID="shcr1" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label48" runat="server" Text="6:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 250px">
                                                <asp:DropDownList ID="shcr6" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label49" runat="server" Text="2:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px">
                                                <asp:DropDownList ID="shcr2" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label50" runat="server" Text="7:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 250px">
                                                <asp:DropDownList ID="shcr7" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label51" runat="server" Text="3:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px">
                                                <asp:DropDownList ID="shcr3" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label52" runat="server" Text="8:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 250px">
                                                <asp:DropDownList ID="shcr8" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label53" runat="server" Text="4:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px">
                                                <asp:DropDownList ID="shcr4" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label54" runat="server" Text="9:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 250px">
                                                <asp:DropDownList ID="shcr9" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()" CssClass="infaceDrop" >
                                                </asp:DropDownList>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label55" runat="server" Text="5:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px">
                                                <asp:DropDownList ID="shcr5" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 30px">
                                                <asp:Label ID="Label56" runat="server" Text="10:"  Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline"  style="width: 250px">
                                                <asp:DropDownList ID="shcr10" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                                    OnClick="DataChanged()"  CssClass="infaceDrop" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label57" runat="server" Text="Self-Care:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="disability1" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="disability1comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label58" runat="server" Text="Receptive / Expressive Language:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="Disability2" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="Disability2comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label59" runat="server" Text="Learning:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="Disability3" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="Disability3comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label60" runat="server" Text="Mobility:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="Disability4" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="Disability4comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label61" runat="server" Text="Self-Direction:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="Disability5" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="Disability5comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label62" runat="server" Text="Capacity for Independent Living:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="Disability6" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="Disability6comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 220px">
                                                <asp:Label ID="Label63" runat="server" Text="Economic Self-Sufficiency:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="Disability7" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
                                                <asp:TextBox ID="Disability7comment" runat="server" CssClass="inface">
                                                </asp:TextBox>
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width:220px">
                                                <asp:Label ID="lc_dtemre" runat="server" Text="Comments:" Font-Bold="true">
                                                </asp:Label>
                                            </td>
                                            <td style="width: auto">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 100%" colspan="2">
                                                <asp:TextBox ID="notes" runat="server" BorderStyle="Solid" Wrap="true" Height="150px" TextMode="MultiLine" Width="97%">
                                                </asp:TextBox><br />
                                                <asp:RegularExpressionValidator ID="regNotes" runat="server" ControlToValidate="notes" 
                                                    ValidationExpression="^[\s\S]{0,750}$" ErrorMessage="Maximum of 750 characters allowed" Text="" ></asp:RegularExpressionValidator>
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label">
                                                <b>Eligibility Team Recommendations</b>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 40px">
                                                <asp:Label ID="Label64" runat="server" Text="At:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="signaturedate" runat="server"  CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label66" runat="server" Text="Eligibility:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 100px" >
                                                <asp:DropDownList ID="eligibility" runat="server" OnClick="DataChanged()" CssClass="infaceDrop">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                                    <asp:ListItem Value="2">No</asp:ListItem>
                                                    <asp:ListItem Value="3">Deferred</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 100%">
                                                <asp:TextBox ID="reason" runat="server" Height="150px" TextMode="MultiLine" Width="97%" BorderStyle="Solid" Wrap="true">
                                                </asp:TextBox><br />
                                                <asp:RegularExpressionValidator ID="regReason" runat="server" ControlToValidate="reason" 
                                                    ValidationExpression="^[\s\S]{0,1500}$" ErrorMessage="Maximum of 256 characters allowed" Text="" ></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 20px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                  <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                                    <tr class="table_inside" style="border: thin solid #CC99CC; height:40px">
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
                                    <tr><td colspan=3>
                                      <table class="table_inside">
                                        <tr style="height: 5px;">
                                           <td colspan=8>
                                           </td>
                                        </tr>
                                        <tr class="tr_common">
                                           <td class="td_label"  style="width: 220px;">
                                            <b>Intake Specialist/ Service Coordinator</b>	
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
                                            <asp:TextBox ID="reviewby" runat="server" MaxLength="50" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
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
                                            <asp:TextBox ID="leader" runat="server" MaxLength="50" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                            </asp:TextBox>
                                           </td>
                                           <td style="width:5px"></td>
                                           <td class="td_label"  style="width: 80px;">
                                            <b>Date:</b>
                                           </td>
                                           <td style="width:5px"></td>
                                           <td  class="td_unline" style="width: 150px;">
                                            <asp:TextBox ID="SignedDate" runat="server" CssClass="inface" contentEditable="false" Font-Names="Comic Sans MS">
                                            </asp:TextBox>
                                           </td>
                                           <td style="width:auto"></td>
                                        </tr>
                                      </table>
                                    </td></tr>
                                    <tr style="height: 15px;">
                                        <td colspan=3>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        </table>
                    </div>
                    <%--<div id="Tab2" style="display: none;">
                        <asp:DataGrid ID="dg_RecommendationsList" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="false" OnDeleteCommand="dg_RecommendationsList_DeleteCommand"
                            OnItemDataBound="dg_RecommendationsList_ItemDataBound">
                            <HeaderStyle CssClass="grd_head"></HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn DataField="EntryKey" HeaderText="EntryKey" Visible="false"></asp:BoundColumn>
                                <asp:BoundColumn DataField="EntryDate" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="employeename" HeaderText="Entered By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="employeetype" HeaderText="Title">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="recommendation" HeaderText="Eligibility Recommendation">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="View/Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
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
                            </Columns>
                        </asp:DataGrid>
                    </div>--%>
                    <div id="Tab_New" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td valign="middle" align="center">
                                                <asp:Label ID="Label10" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                                    Height="24px">For Review Only - Continue to fill out Turning 3 Worksheet through  Web Forms and send to HRG</asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 20px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 180px">
                                                <asp:Label ID="Label15" runat="server" Text="Initial Inquiry Date:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:TextBox ID="InitialInquiry" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td  class="td_label" style="width: 160px">
                                                <asp:Label ID="Label68" runat="server" Text="Referral Source:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="Referral" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="8">
                                            </td>
                                        </tr> 
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 180px">
                                                <asp:Label ID="Label18" runat="server" Text="Mother's age at birth:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="MothersAge" runat="server" CssClass="inface" MaxLength="3">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td  class="td_label" style="width: 200px">
                                                <asp:Label ID="Label69" runat="server" Text="ES Eligible Condition:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="ESCondition" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>                      
                            <tr align="left"  style="height: 15px">
                                <td>
                                <b>Genetic Syndrome</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Does child have a genetic syndrome?	
                                                   &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Genetic_yes" groupname="Genetic" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Genetic_no" groupname="Genetic" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label71" runat="server" Text="Date Diagnosed:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="GeneticDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 100px">
                                                <asp:Label ID="Label70" runat="server" Text="Diagnosis:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="GeneticDx" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:700px">
						                        <b>Is there a report under the medical section tab from geneticist supporting this DX?	
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="GeneticReport_yes" groupname="GeneticReport" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="GeneticReport_no" groupname="GeneticReport" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td>
                                <b>Autism</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:250px">
						                        <b>Autism Diagnosis?	
                                                   &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="AU_yes" groupname="AU" runat="server" Font-Bold=true Text="" Checked="false" onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="AU_no" groupname="AU" runat="server" Font-Bold=true Text="" Checked="false" onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td ID="AUDate_td"  class="td_label" style="width: 120px">
                                                <asp:Label ID="l_AUDate" runat="server" Text="Date Diagnosed:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="AUDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="AU_tr1">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label73" runat="server" Text="Diagnosis made by:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="AUDR" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="AU_tr2">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:700px">
						                        <b>Are updated records from Doctor who made diagnosis in the chart?	
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="AUReport_yes" groupname="AUReport" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="AUReport_no" groupname="AUReport" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td>
                                <b>Cerebral Palsy</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:300px">
						                        <b>Cerebral Palsy Diagnosis?	
                                                   &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="CP_yes" groupname="CP_turning3" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="CP_no" groupname="CP_turning3" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td id="CPDate_td"  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label74" runat="server" Text="Date Diagnosed:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="CPDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="CP_tr1">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" colspan="2">
                                                <asp:Label ID="Label75" runat="server" Text="Note: Updated CCS & Neurological records are mandatory for eligibility under CP diagnosis" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td  class="td_label" colspan="2">
                                                <asp:Label ID="Label76" runat="server" Text="If yes - How does it affect ADLs?" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="2">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="CPADL" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:340px">
						                        <b>Child needs assistance to walk?	
                                                   &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="CPWalk_yes" groupname="CPWalk" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="CPWalk_no" groupname="CPWalk" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td id="CPAssistance_td" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label77" runat="server" Text="Type of Assistance:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 300px;">
                                                <asp:TextBox ID="CPAssistance" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="CP_tr2">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" colspan="2">
                                                <asp:Label ID="Label78" runat="server" Text="List all adaptive equipment consumer has (special chair, walker, braces/AFO, etc.):" Font-Bold="true"></asp:Label>
                                            </td>
                                         </tr>
                                         <tr style="height: 5px">
                                            <td colspan="2">
                                            </td>
                                         </tr>
                                         <tr class="tr_common">
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="CPEquip" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td class="td_label">
                                <b>Seizure Activity</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Seizure Disorder/Epilepsy Diagnosis?	
                                                   &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="EP_yes" groupname="EP" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="EP_no" groupname="EP" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td id = "EPDate_td"  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label79" runat="server" Text="Date Diagnosed:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="EPDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="EP_tr1">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label80" runat="server" Text="Date of last seizure:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="EPLast" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="EP_tr2">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 200px">
                                                <asp:Label ID="Label81" runat="server" Text="Type of seizure activity:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="EPType" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="EP_tr3">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 200px">
                                                <asp:Label ID="Label82" runat="server" Text="Frequency of seizure:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="EPFreq" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="EP_tr4">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:700px">
						                        <b>Has child been hospitalized due to continuous seizure activity?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="EPHospital_yes" groupname="EPHospital" runat="server" Font-Bold=true Text="" Checked="false"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="EPHospital_no" groupname="EPHospital" runat="server" Font-Bold=true Text="" Checked="false"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td class="td_label">
                                <b>Specialist Involvement</b>&nbsp;&nbsp;&nbsp;
                                Identify any specialist that may be able to provide assistance in determining eligibility
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label83" runat="server" Text="Specialist:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 500px">
                                                <asp:TextBox ID="Specialist1" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label84" runat="server" Text="Specialist:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 500px">
                                                <asp:TextBox ID="Specialist2" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td class="td_label">
                                <b>EPSDT/NF Services</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:450px">
						                        <b>Is child receiving EPSDT/NF Shift Nursing?
                                                   &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="EPSDT_yes" groupname="EPSDT" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="EPSDT_no" groupname="EPSDT" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td id="EPSDTHours_td"  class="td_label" style="width: 120px">
                                                <asp:Label ID="Label85" runat="server" Text="Hours per week:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:TextBox ID="EPSDTHours" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td class="td_label">
                                <b>Development</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 400px">
                                                <asp:Label ID="Label86" runat="server" Text="Date of current developmental progress report (2.9 report):" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:TextBox ID="DevDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td  class="td_label" style="width: 60px">
                                                <asp:Label ID="Label87" runat="server" Text="Age:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="DevAge" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label88" runat="server" Text="Assessment By:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 400px;">
                                                <asp:TextBox ID="DevAssessed" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
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
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="7"  class="td_label">
                                                <asp:Label ID="Label91" runat="server" Text="Skill Levels (all areas must be addressed)" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label89" runat="server" Text="Gross Motor:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="GrossMotor" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 5%">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label90" runat="server" Text="Social Emotional:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="Social" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label92" runat="server" Text="Fine Motor:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="FineMotor" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 5%">
                                            </td>
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label93" runat="server" Text="Cognitive:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="Cognitive" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label94" runat="server" Text="Adaptive/Self-Help:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="Adaptive" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 5%">
                                            </td>
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label95" runat="server" Text="Receptive Language:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="Receptive" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 150px">
                                                <asp:Label ID="Label96" runat="server" Text="Expressive Language:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;">
                                                <asp:TextBox ID="Expressive" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 5%">
                                            </td>
                                            <td align="left" style="width: 150px">   
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 320px;"> 
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td class="td_label" colspan="7">
                                <b>Hearing</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Does the child have hearing diffculties?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Hearing_yes" groupname="Hearing" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Hearing_no" groupname="Hearing" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Audiological evaluation recommended?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Audio_yes" groupname="Audio" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Audio_no" groupname="Audio" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="Hearing_tr1">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 200px">
                                                <asp:Label ID="Label97" runat="server" Text="Date of testing:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:TextBox ID="AudioDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 10%">
                                            </td>
                                            <td  class="td_label" style="width: 160px">
                                                <asp:Label ID="Label98" runat="server" Text="Location:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="AudioLoc" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="Hearing_tr2">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 100px">
                                                <asp:Label ID="Label99" runat="server" Text="Results:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="AudioResult" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="Hearing_tr3">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:300px">
						                        <b>Follow-Up recommended:
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Followup_yes" groupname="Followup" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Followup_no" groupname="Followup" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="Hearing_tr4">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 200px">
                                                <asp:Label ID="Label100" runat="server" Text="If not tested, reason:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="Reason_turning3" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td>
                                <b>Vision</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Does the child have vision limitations?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Vision_yes" groupname="Vision" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Vision_no" groupname="Vision" runat="server" Font-Bold=true Text="" Checked=false onclick="RadioBoxCheck();"></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td style="width: auto">
                                            </td>
                                            <td id ="Glasses_td" class="td_label"  style="width:400px">
						                        <b>Does child wear glasses?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Glasses_yes" groupname="Glasses" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Glasses_no" groupname="Glasses" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr id="Vision_tr">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width: 100px">
                                                <asp:Label ID="Label101" runat="server" Text="Diagnosis:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="VisionDx" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 100px">
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                            <tr align="left" style="height: 15px">
                                <td>
                                <b>Medical</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Does the child have medical issues?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Medical_yes" groupname="Medical" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Medical_no" groupname="Medical" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td class="td_label" colspan="3"  style="width:400px">
                                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label102" runat="server" Text="(review medical infomation in tab above)" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Updated medical records in the chart:
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="MedUpdate_yes" groupname="MedUpdate" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="MedUpdate_no" groupname="MedUpdate" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td  class="td_label" style="width: 50px">
                                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label104" runat="server" Text="Reason:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: auto;">
                                                <asp:TextBox ID="MedReason" runat="server" CssClass="inface" MaxLength="50">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label"  style="width:400px">
						                        <b>Does the child take medication?
                                                &nbsp;&nbsp;&nbsp;	      
                                                <asp:Radiobutton ID="Meds_yes" groupname="Meds" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>Yes
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="Meds_no" groupname="Meds" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton>No
                                                </b>						   						    
						                    </td>
                                            <td class="td_label" colspan="3"  style="width:400px">
                                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label103" runat="server" Text="(review medications in tab above)" Font-Bold="true"></asp:Label>
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
                                <td class="td_thicksepline">
                                </td>
                            </tr>   
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr> 
                        </table>
                    </div>
                    <div id="Tab3" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0"  border="0">
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
                                                    <asp:Label ID="Label5" runat="server" Text="Lbs"></asp:Label></b>
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
                                                    <asp:Label ID="Label8" runat="server" Text="Inches"></asp:Label></b>
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
                                                    <asp:Label ID="Label9" runat="server" Text="Lbs"></asp:Label></b>
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
                                    <table  class="table_inside">
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
                                    <table  class="table_inside">
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
                    <div id="Tab4" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr style="height: 30px;" valign="middle">
                                            <td align="left">
                                                <asp:Label ID="l_MedicationList" runat="server" Font-Size="Larger" Font-Bold="True"
                                                    ForeColor="Green" Height="18px">MEDICATION(s) LIST</asp:Label>
                                            </td>
                                            <td  width="300px">
                                                <asp:Button ID="BtnAddMC" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px" Visible="false"></asp:Button>
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
                    <div id="Tab_Doctor"  style="display:none;">
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
