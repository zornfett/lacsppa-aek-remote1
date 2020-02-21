<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormESRTurning3Info.aspx.cs" Inherits="Virweb2.FormList.FormESRTurning3Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::ESR Turning 3:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>         

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
                TAB2.style.color = "";
                //TAB2.style.cursor="pointer";
                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";

            var btn_ad = document.getElementById('btn_addRecmd');
            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = "none"; 
                    }
                    document.Turning3Info.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = ""; 
                    }
                    document.Turning3Info.now_div_flag.value = "2";
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
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";

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
                    document.Turning3Info.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = ""; 
                    }              
                    //TAB2.style.cursor="auto";
                    document.Turning3Info.now_div_flag.value = "2";
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
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";

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
                    document.Turning3Info.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    if(btn_ad != null)
                    {
                        document.getElementById('btn_addRecmd').style.display = ""; 
                    }
                    //TAB2.style.cursor="auto";
                    document.Turning3Info.now_div_flag.value = "2";
                    break;
            }
        }

        function RefreshMyData()    
        { 
            NoUnLockFormPage();  
                                     
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.Turning3Info.submit(); 
            window.focus();   
        }

        function addrecmd_click() {
            var consumer_key = document.Turning3Info.consumer_key.value.toString();
            var entrykey = document.Turning3Info.entrykey.value.toString();
            popupDialog("FormBLUESHEETAddRecmd.aspx?EligibilityKey=" + entrykey + "&Consumer_key=" + consumer_key+"&type=add")
        }

        function print_click() {
            // PopupMessage(10);

            var flag = document.Turning3Info.now_div_flag.value.toString();
            var consumer_key = document.Turning3Info.consumer_key.value.toString();
            var entrykey = document.Turning3Info.entrykey.value.toString();
            var UserAct = document.Turning3Info.UserAct.value.toString();
            var url = "PrintFormESRTurning3Info.aspx?uci=" + consumer_key + "&entrykey=" + entrykey + "&flag=" + flag + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormESRTurning3Info');
        }

        function save_click() {
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
            if (!isMaxLength(document.getElementById("memberspresent"), 500))
            {
               document.getElementById("memberspresent").focus();
               return false;
            }

            NoUnLockFormPage();
            NoCreateIDNotes();
            return true;
        }

        function verify_click() {
            NoCreateIDNotes();
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace(document.Turning3Info.gobackPage.value);
        }

        function Sign(UserName) {
            NoUnLockFormPage();

            if ( document.Turning3Info.checksign.value == "Sign")
            {
               document.Turning3Info.checksign.value = "Signed";
            }
            else if (document.Turning3Info.checksign.value == "Finial")
            {          
               document.Turning3Info.checksign.value = "Finialed";
               var nowdate = new Date();
               document.getElementById("leader").value = UserName.toString();
               document.getElementById("SignedDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            else if (document.Turning3Info.checksign.value == "Review")
            {          
               document.Turning3Info.checksign.value = "Reviewed";
               var nowdate = new Date();
               document.getElementById("reviewby").value = UserName.toString();
               document.getElementById("revieweddate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            else if ( document.Turning3Info.checksign.value == "RemoveSign")
            {
               document.Turning3Info.checksign.value = "RemoveSigned";
            }
            window.document.Turning3Info.submit(); 
        }

        function CheckReviewPwd() {
            document.Turning3Info.checksign.value = "Review";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckSignPwd() {
            document.Turning3Info.checksign.value = "Sign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckFinialPwd() {
            document.Turning3Info.checksign.value = "Finial";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function CheckRemoveSignPwd() {
            document.Turning3Info.checksign.value = "RemoveSign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission()
        {
            PopupMessage(42);
            return false;
        }

        function UnLockFormPage(key) {
            if (!NoUnlockForm) {
              $.ajax({
              type: "POST",
              data: "",
              url: 'FormESRTurning3Info.aspx?isAjax=true&entrykey=' + key,
              dataType: "json",
              success: function (data) {
                if (!data.Success) { alert(data.ErrMsg); return; }
              },
              error: function (XMLHttpRequest, textStatus, thrownError) {
                alert('failure: ' + data.responseText + ' == ' + textStatus);
              }
              });
            }
        }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="Turning3Info" method="post" runat="server">
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
    <input type="hidden" name="specsign" id="specsign" value="" runat="server" />
    <input type="hidden" name="speccheck" id="speccheck" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormESRTurning3List.aspx" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
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
                    <asp:ImageButton ID="btnUnlock" runat="server" AlternateText="Unlock" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/unlock.ico" ToolTip="Unlock"
                        OnClick="btnUnlock_Click"></asp:ImageButton>
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
                            <td id="TAB2" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>Recommendations</u></b>
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
                                                    Height="24px">ES TURNING 3</asp:Label>
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
                                                <asp:Label ID="type" runat="server" CssClass="infaceText" Text="Redetermination"></asp:Label>
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
                                                <asp:Label ID="Label72" runat="server" Text="Eligibility Determination Date:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="decisiondate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
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
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label">
                                                <b>DEVELOPMENTAL DISABILITIES</b>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label17" runat="server" Text="CDER Date:" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="width: 20px" >
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:Label ID="cderdate" runat="server" CssClass="infaceText"></asp:Label>
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
                                                <asp:Label ID="Label16" runat="server" Text="intellectual disability:" Font-Bold="true"></asp:Label>
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
                                                <asp:Label ID="mrelabel" runat="server" Text="MR Etiology:" Font-Bold="true"></asp:Label>
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=mret&FormName=Turning3Info');" />
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=cpet&FormName=Turning3Info');" />
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
                                                <asp:Label ID="Label24" runat="server" Text="Autism:" Font-Bold="true"></asp:Label>
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
                                                <asp:Label ID="Label27" runat="server" Text="Autism Etiology:" Font-Bold="true"></asp:Label>
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=auet&FormName=Turning3Info');" />
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=epet&FormName=Turning3Info');" />
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=otet&FormName=Turning3Info');" />
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
                                            <td  class="td_label">
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
                                                <asp:Label ID="Label35" runat="server" Text="Axis I:" Font-Bold="true"></asp:Label>
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis1a&FormName=Turning3Info');" />
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis2a&FormName=Turning3Info');" />
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
                                                <asp:Label ID="Label37" runat="server" Text="Axis II:" Font-Bold="true"></asp:Label>
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis1b&FormName=Turning3Info');" />
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
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchDSM.aspx?FieldName=axis2b&FormName=Turning3Info');" />
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
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="Cmmc1Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=Cmmc1&FormName=Turning3Info');" />
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
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="Cmmc2Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=Cmmc2&FormName=Turning3Info');" />
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
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="Cmmc3Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=Cmmc3&FormName=Turning3Info');" />
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
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="Cmmc4Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=Cmmc4&FormName=Turning3Info');" />
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
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="Cmmc5Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=Cmmc5&FormName=Turning3Info');" />
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
                                                <input type="button" value="ICD10 Code" style="width: 100px" id="Cmmc6Srch" runat="server"
                                                    onclick="DataChanged();javascript:popupDialogSmall('SearchICD10.aspx?FieldName=Cmmc6&FormName=Turning3Info');" />
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
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" style="width:220px">
                                                <asp:Label ID="lc_dtemre" runat="server" Text="RELATED NOTES:" Font-Bold="true">
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
                                                <asp:TextBox ID="notes" runat="server" BorderStyle="Solid" Wrap="true" Height="100px" TextMode="MultiLine" Width="97%">
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
                            <tr style="height: 30px;">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td  class="td_label" >
                                                <b>ELIGIBILITY RECOMMENDATIONS (next tab)</b>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 35px;">
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
                                            <td  class="td_label" >
                                                <b>ELIGIBILITY TEAM CONFERENCE</b>
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
                                                <asp:TextBox ID="reason" runat="server" Height="100px" TextMode="MultiLine" Width="97%" BorderStyle="Solid" Wrap="true">
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
                                           <td class="td_label"  style="width: 220px;" valign="top">
                                            <b>Comments</b>	
                                           </td>
                                           <td style="width:5px"></td>
                                           <td colspan=6 class="td_unline">
                                            <asp:TextBox ID="memberspresent" runat="server" Height="40px" TextMode="MultiLine" BorderStyle="Solid" Wrap="true" Width="97%">
                                            </asp:TextBox><br />
                                            <asp:RegularExpressionValidator ID="regMemberspresent" runat="server" ControlToValidate="memberspresent" 
                                               ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Maximum of 500 characters allowed" Text="" ></asp:RegularExpressionValidator>
                                           </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                           <td colspan=8>
                                           </td>
                                        </tr>
                                        <tr class="tr_common">
                                           <td class="td_label"  style="width: 220px;">
                                            <b>Service Coordinator</b>	
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
                                           <td align="middle" style="width: 250px">
                                            <asp:button id="btnRemoveSign" Runat="server" Text="Remove Signature" style="width:200px" OnClientClick="CheckRemoveSignPwd();return false;"
                                                Enabled="false" CssClass="buttonbluestyle"></asp:button>
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
                    <div id="Tab2" style="display: none;">
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
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
