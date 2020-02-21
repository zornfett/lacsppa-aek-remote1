﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormESRPsychoSocialFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormESRPsychoSocialFDLRC" %>
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::ES Psycho-Social Assessment:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/Common.js"></script>
    <script type="text/JavaScript">
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
                    document.ESRPsychoInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    document.ESRPsychoInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    document.ESRPsychoInfo.now_div_flag.value = "3";
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
                    document.ESRPsychoInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    document.ESRPsychoInfo.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    document.ESRPsychoInfo.now_div_flag.value = "3";
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
                    document.ESRPsychoInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    document.ESRPsychoInfo.now_div_flag.value = "2";
                    break;
                case 3:
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    document.ESRPsychoInfo.now_div_flag.value = "3";
                    break;
            }
        }

        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.ESRPsychoInfo.submit(); 
            window.focus();   
        }

        function print_click() {
            //PopupMessage(10);
            var entrykey = document.ESRPsychoInfo.entrykey.value.toString();
            var consumer_key = document.ESRPsychoInfo.consumer_key.value.toString();
            var consumer_mis = document.ESRPsychoInfo.consumer_mis.value.toString();
            var UserAct = document.ESRPsychoInfo.UserAct.value.toString();       
            var flag=document.ESRPsychoInfo.now_div_flag.value.toString(); 
            var url = "PrintFormEsrPsychoSocialFDLRC.aspx?Entrykey="+entrykey+"&uci=" + consumer_key + "&mis=" + consumer_mis +
               "&flag=" + flag + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormEsrPsychoSocialFDLRC');
        }

        function save_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormESRPsychoSocialList.aspx');
        }

       function isDigit() {
            var Chronage = document.getElementById("Chronage").value;
            var Adjustedage = document.getElementById("Adjustedage").value;
            var WeeksGestation = document.getElementById("WeeksGestation").value; 
        } 

        function Sign(UserName) {
            //if ( document.ESRPsychoInfo.checksign.value == "Sign")
            //{
            //}
            //else 
            /*if (document.ESRPsychoInfo.checksign.value == "Finial")
            {          
               document.ESRPsychoInfo.checksign.value = "Finialed";
               var nowdate = new Date();
               document.getElementById("SubmittedBy").value = UserName.toString();
               document.getElementById("SubmitDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
               document.getElementById("l_SubmittedBy").innerHTML = UserName.toString();   
            }
            */
            if (document.ESRPsychoInfo.checksign.value == "Signed")
            {
               var nowdate = new Date();
               document.getElementById("SCSignature").value = UserName.toString();
               document.getElementById("SCSignatureDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            }
            else if ( document.ESRPsychoInfo.checksign.value == "RemoveSign")
            {
               document.ESRPsychoInfo.checksign.value = "RemoveSigned";
            }
            window.document.ESRPsychoInfo.submit(); 
        }

        function SCSign(UserName)  {
            document.ESRPsychoInfo.checksign.value = "Signed";
            //var nowdate = new Date();
            //document.getElementById("SCSignature").value = UserName.toString();
            //document.getElementById("SCSignatureDate").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            //window.document.ESRPsychoInfo.submit(); 
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }
        /*
        function CheckFinialPwd() {
            document.ESRPsychoInfo.checksign.value = "Finial";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }
        */
        function CheckRemoveSignPwd() {
            document.ESRPsychoInfo.checksign.value = "RemoveSign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission()
        {
            PopupMessage(42);
            return false;
        }

        function NoSCPermission()
        {
            PopupMessage(80);
            return false;
        }

    </script>

</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ESRPsychoInfo" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="consumer_mis" id="consumer_mis" value="" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="checksign" id="checksign" value="" runat="server" />
    <div align="center" style="WIDTH:100%">  
	    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	        <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return isDigit();" OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return isDigit();" OnClick="btnAdd_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <asp:ImageButton ID="btnTransfer" runat="server" AlternateText="Transfer" 
                        Style="width: 25px; height: 25px" ImageUrl="../img/tools.ico" ToolTip="Transfer" Visible="false" 
                        OnClick="btnTransfer_Click"></asp:ImageButton>
                    &nbsp;
                <asp:ImageButton ID="btnRetrieve" runat="server" AlternateText="Retrieve"
                        Style="width: 25px; height: 25px" ImageUrl="../img/unlock.ico" ToolTip="Retrieve" Visible="false" 
                        OnClick="btnRetrieve_Click"></asp:ImageButton>
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
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 500px">
        <table class="table_maindiv" width="100%">
            <tr class="tr_common">
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab1">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%;height:100%">
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr  class="tr_common">
                                        <td valign="middle" align="center">
                                            <asp:Label ID="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                                Height="24px">EI PSYCHO-SOCIAL</asp:Label>
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
                                            <td class="td_label" style="width: 150px;">
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
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  colspan="3" class="td_label" style=" height:25px; width: 150px;">
                                            <asp:Label ID="Label51" runat="server" Font-Bold="true" Text="Informant:"></asp:Label>
                                        </td>
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label58" runat="server" Font-Bold="true" Text="First Name:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label64" runat="server" Font-Bold="true" Text="Last Name:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label67" runat="server" Font-Bold="true" Text="Relationship/ Group:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:DropDownList ID="Relationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style=" height:25px; width: 150px;">
                                            <asp:Label ID="Label63" runat="server" Font-Bold="true" Text="Other(s) Present:"></asp:Label>
                                        </td>
                                        <td colspan="11">
                                        </td>
                                    </tr> 
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="height: 40px" valign="top" colspan="12">
                                            <asp:TextBox ID="OtherPresent" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="40"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="OtherPresent" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
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
                                    <tr  class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="lbllastmoddate" Font-Bold="true" runat="server" Text="Date:" ></asp:Label>
                                        </td>
                                        <td width="5px">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="lastmoddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label5" runat="server" Font-Bold="true" Text="Intake Coordinator:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="IntakeSC" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label69" runat="server" Font-Bold="true" Text="Intake Vendor:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 300px">
                                            <asp:DropDownList ID="IntakeVendorID" runat="server" DataValueField="employeeID" DataTextField="employeeName"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label70" runat="server" Font-Bold="true" Text="Referred By:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px"> 
                                            <asp:TextBox ID="ReferredBy" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Client Name:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="ConsumerName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="UCI#:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 120px">
                                            <asp:Label ID="UCI" runat="server" CssClass="infaceText" ></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label6" runat="server" Font-Bold="true" Text="Language:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:TextBox ID="LanguageName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label66" runat="server" Font-Bold="true" Text="Ethnicity:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:TextBox ID="EthnicityName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label8" runat="server" Font-Bold="true" Text="D.O.B:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                 onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label10" runat="server" Font-Bold="true" Text="Chron. Age:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="Chronage" runat="server" Enabled="false" onkeyup="javascript:CA.value=this.value;" CssClass="inface"  Width="60px" MaxLength="5">
                                            </asp:TextBox>
                                            <asp:Label ID="l_chmonth" runat="server" Text="Months" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label12" runat="server" Font-Bold="true" Text="Adjusted Age:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:TextBox ID="Adjustedage" Enabled="false" runat="server" CssClass="inface" Width="60px" MaxLength="5">
                                            </asp:TextBox>
                                            <asp:Label ID="l_admonth" runat="server" Text="Months" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label62" runat="server" Font-Bold="true" Text="Weeks Gestation:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline"  style="width: 50px">
                                            <asp:TextBox ID="WeeksGestation"  runat="server" CssClass="inface" MaxLength="50">
                                            </asp:TextBox>   
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Address:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="13" class="td_unline" style="width: 500px">
                                            <asp:TextBox ID="address" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <asp:Label ID="Label9" runat="server" Font-Bold="true" Text="Submitted By:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="13" class="td_unline" style="width: 500px">
                                            <asp:Label ID="l_SubmittedBy" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: auto"></td>
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
                            <td  class="td_label">
                                <asp:Label ID="Label37" Font-Bold="True" runat="server" Text="I. IDENTIFYING INFORMATION/ FAMILY SITUATION/ LIVING ARRANGEMENT/ REASON FOR REFERRAL"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="IdentifyingInfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="IdentifyingInfo" ShowModal="true"
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
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr  class="tr_common">
                                        <td  class="td_label" style="width: 180px">
                                            <asp:Label ID="Label17" Font-Bold="True" runat="server" Text="II. Other Agencies Involved:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 300px">
                                            <asp:TextBox ID="OtherAgcInvolved" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
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
                            <td  class="td_label">
                                <asp:Label ID="Label19" Font-Bold="True" runat="server" Text="III. FINANCIAL STATUS:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
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
                                                    onKeyup="autotab(this, document.ESRPsychoInfo.SSN_2);"></asp:TextBox>
                                                 </td>
                                                 <td align="center" width="15px">-</td>
                                                 <td class="td_unline" width="30px">
                                                    <asp:TextBox ID="SSN_2" runat="server" CssClass="inface" MaxLength="2" Width="30"
                                                    onKeyup="autotab(this, document.ESRPsychoInfo.SSN_3);"></asp:TextBox>
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
                                            <asp:TextBox ID="CSSAddress" runat="server" CssClass="inface" MaxLength="500" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr  style="height: 5px;">
                                        <td colspan="9"></td>
                                    </tr>
                                    <tr  class="tr_common">
                                        <td style="width: 60px" class="td_label" >
                                            <b><asp:Label ID="Label18" runat="server" Font-Bold="true" Text="SSI:"></asp:Label></b>
                                        </td>
                                        <td style="width: 5px" >
                                        </td>
                                        <td class="td_unline" style="width:120">
                                            <asp:DropDownList ID="SSI" Width="120px" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                            CssClass="infaceDrop" OnClick="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    
                                    <tr  style="height: 5px;">
                                        <td colspan="9"></td>
                                    </tr>
                                    <tr  class="tr_common">
                                        <td style="width: 400px" colspan="7" class="td_label" >
                                            <b><asp:Label ID="Label76" runat="server" Font-Bold="true" Text="Parents Employment Status:"></asp:Label></b>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr  style="height: 5px;">
                                        <td colspan="9"></td>
                                    </tr>
                                    <tr  class="tr_common">
                                        <td style="width: 160px" class="td_label" >
                                            <b><asp:Label ID="Label73" runat="server" Font-Bold="true" Text="Father:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td colspan="5" class="td_unline">
                                            <asp:TextBox ID="FatherEmp" runat="server" CssClass="inface" MaxLength="100" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr  style="height: 5px;">
                                        <td colspan="9"></td>
                                    </tr>
                                    <tr  class="tr_common">
                                        <td style="width: 160px" class="td_label" >
                                            <b><asp:Label ID="Label75" runat="server" Font-Bold="true" Text="Mother:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td colspan="5" class="td_unline">
                                            <asp:TextBox ID="MotherEmp" runat="server" CssClass="inface" MaxLength="100" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr  style="height: 5px;">
                                        <td colspan="9"></td>
                                    </tr>
                                    <tr  class="tr_common">
                                        <td style="width: 160px" class="td_label" >
                                            <b><asp:Label ID="Label72" runat="server" Font-Bold="true" Text="Comments:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td colspan="5" class="td_unline">
                                            <asp:TextBox ID="ParentsComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="80"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
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
                            <td  class="td_label">
                                <asp:Label ID="Label22" Font-Bold="True" runat="server" Text="IV. LEGAL STATUS/ CUSTODY ISSUES/ DCFS/COURT INVOLVEMENT/ CSW CONTACT INFORMATION"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="CustodyIssues" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="CustodyIssues" ShowModal="true"
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label25" Font-Bold="True" runat="server" Text="V. HISTORY OF PREGNANCY AND BIRTH/ Include parent's ages, gravida number, length of pregnancy, illness or complications, medications, drugs or alcohol use, procedures, if any, during pregnancy. Hospital of birth, details of labor and delivery, gestation, birth weight/length, neonatal complications, course in hospital and duration of stay in NICU, APGARS scores"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="PregnancyInfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell11" ControlIdsToCheck="PregnancyInfo" ShowModal="true"
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label28" Font-Bold="True" runat="server" Text="VI. MEDICAL HISTORY:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label29"  runat="server"  Text="Current Health status:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="HealthStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="HealthStatus" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label15"  runat="server"  Text="Medical Equipment/ Adaptive Devices:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="MedicalEquipment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="MedicalEquipment" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label31"  runat="server" Text="Nutrition and diet / Health (include any special diets or formulas):"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Nutrition" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell15" ControlIdsToCheck="Nutrition" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label16"  runat="server" Text="Oral/ Dental Health:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="OralHealth" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="OralHealth" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label20"  runat="server"  Text="Allergies:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Allergies" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Allergies" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>

                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label32"  runat="server" Text="Immunizations:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Immunizations" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell16" ControlIdsToCheck="Immunizations" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label33" runat="server" Font-Bold="true" Text="Current Height:" ></asp:Label>
                                        </td>
                                        <td width="5px">
                                        </td>
                                        <td class="td_unline" style="width: 60px">
                                            <asp:TextBox ID="Height" runat="server" CssClass="inface" MaxLength="10">
                                            </asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label11" runat="server" Font-Bold="true" Text="Inches"></asp:Label>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label34" runat="server" Font-Bold="true" Text="Weight:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 60px">
                                            <asp:TextBox ID="Weight" runat="server" CssClass="inface" MaxLength="10">
                                            </asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Pounds"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width: auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 15px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width:220px">
                                            <asp:Label ID="Label35" Font-Bold="True" runat="server" Text="Vision and Hearing:"></asp:Label>
                                        </td>
                                        <td style="width: auto"></td>
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
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td style="width:49%">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td class="td_label"  valign="bottom" style="width:300px">
                                                        <asp:Label ID="Label40" runat="server" Font-Bold="true"  Text="HEARING STATUS"></asp:Label>
                                                    </td>
                                                    <td style="width: 20"></td>
                                                    <td></td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_label"  valign="bottom" style="width:300px">
                                                        <asp:Label ID="Label41" runat="server"  Font-Bold="true" Text="Newborn Screening Results:"></asp:Label>
                                                    </td>
                                                    <td style="width: 5px"></td>
                                                    <td  class="td_label" style="width: 400px">
                                                        <asp:Checkbox ID="Hearing_Pass" runat="server" Text=""></asp:Checkbox><b>Pass</b>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Checkbox ID="Hearing_Followup" runat="server" Text=""></asp:Checkbox><b>Follow up</b>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" valign="bottom" style="width:300px">
                                                        <asp:Label ID="Label43" runat="server" Font-Bold="true"  Text="Date of Hearing Screening Test:"></asp:Label>
                                                    </td>
                                                    <td style="width: 5px"></td>
                                                    <td class="td_unline" style="width: 100px">
                                                        <asp:TextBox ID="Hearing_Screeningdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                            onfocus="showcalendar(event, this);">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" colspan="5">
                                                        <asp:Label ID="Label59" runat="server" Font-Bold="true"  Text="Comments:"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 50px" valign="top" colspan="5">
                                                        <asp:TextBox ID="Hearing_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                            runat="server" Width="99%" Height="50"></asp:TextBox>
                                                        <cc1:UltimateSpell ID="UltimateSpell32" ControlIdsToCheck="Hearing_comments" ShowModal="true"
                                                            runat="server">
                                                        </cc1:UltimateSpell>
                                                    </td> 
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width:2%"></td>
                                        <td style="width:49%">
                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td class="td_label"  valign="bottom" style="width:300px">
                                                        <asp:Label ID="Label42" runat="server" Font-Bold="true"  Text="VISION STATUS"></asp:Label>
                                                    </td>
                                                    <td style="width: 20"></td>
                                                    <td></td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_label"  valign="bottom" style="width:300px">
                                                        <asp:Label ID="Label30" runat="server" Font-Bold="true"  Text="Newborn Screening Results:"></asp:Label>
                                                    </td>
                                                    <td style="width: 5px"></td>
                                                    <td  class="td_label" style="width: 400px">
                                                        <asp:Checkbox ID="Vision_Pass" runat="server" Text=""></asp:Checkbox><b>Pass</b>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Checkbox ID="Vision_Followup" runat="server" Text=""></asp:Checkbox><b>Follow up</b>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" valign="bottom" style="width:300px">
                                                        <asp:Label ID="Label21" runat="server" Font-Bold="true"  Text="Date of Screening:"></asp:Label>
                                                    </td>
                                                    <td style="width: 5px"></td>
                                                    <td class="td_unline" style="width: 100px">
                                                        <asp:TextBox ID="Vision_Screeningdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                            onfocus="showcalendar(event, this);">
                                                        </asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td  class="td_label" colspan="5">
                                                        <asp:Label ID="Label36" runat="server" Font-Bold="true" Text="Comments:"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="5">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 50px" valign="top" colspan="5">
                                                        <asp:TextBox ID="Vision_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                            runat="server" Width="99%" Height="50"></asp:TextBox>
                                                        <cc1:UltimateSpell ID="UltimateSpell17" ControlIdsToCheck="Vision_comments" ShowModal="true"
                                                            runat="server">
                                                        </cc1:UltimateSpell>
                                                    </td> 
                                                </tr>
                                            </table>
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
                            <td  class="td_label">
                                <asp:Label ID="Label38" Font-Bold="True" runat="server" Text="VII. FAMILY HISTORY"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label78" Font-Bold="True" runat="server" Text="Mother:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 80px">
                                            <asp:TextBox ID="MotherName_first" runat="server" CssClass="inface" MaxLength="20">
                                            </asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 80px">
                                            <asp:TextBox ID="MotherName_last" runat="server" CssClass="inface" MaxLength="20">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 40px">
                                            <asp:Label ID="Label87" Font-Bold="True" runat="server" Text="DOB:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="MotherDOB" runat="server" Width="100px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 40px">
                                            <asp:Label ID="Label79" Font-Bold="True" runat="server" Text="Age:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 40px">
                                            <asp:TextBox ID="MotherAge" runat="server" CssClass="inface" MaxLength="10">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label81" Font-Bold="True" runat="server" Text="Education Level:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:TextBox ID="MotherEduLvl" runat="server" CssClass="inface" MaxLength="50">
                                            </asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label44" Font-Bold="True" runat="server" Text="Marital Status:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:DropDownList ID="MaritalStatus_M" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 120px">
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px">
                                            First Name
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px">
                                            Last Name
                                        </td>
                                        <td colspan="15"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label82" Font-Bold="True" runat="server" Text="Father:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 80px">
                                            <asp:TextBox ID="FatherName_first" runat="server" CssClass="inface" MaxLength="20">
                                            </asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 80px">
                                            <asp:TextBox ID="FatherName_last" runat="server" CssClass="inface" MaxLength="20">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 40px">
                                            <asp:Label ID="Label88" Font-Bold="True" runat="server" Text="DOB:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="FatherDOB" runat="server" Width="100px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 40px">
                                            <asp:Label ID="Label84" Font-Bold="True" runat="server" Text="Age:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 40px">
                                            <asp:TextBox ID="FatherAge" runat="server" CssClass="inface" MaxLength="10">
                                            </asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label85" Font-Bold="True" runat="server" Text="Education Level:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:TextBox ID="FatherEduLvl" runat="server" CssClass="inface" MaxLength="50">
                                            </asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label24" Font-Bold="True" runat="server" Text="Marital Status:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" style="width: 150px">
                                            <asp:DropDownList ID="MaritalStatus" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label89" Font-Bold="True" runat="server" Text="Siblings:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="11" class="td_unline">
                                            <asp:TextBox ID="Siblings" runat="server" CssClass="inface" MaxLength="50">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="7">
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label">
                                            <asp:Label ID="Label90" Font-Bold="True" runat="server" Text="Family Medical/ Genetic History:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 120px">
                                            <asp:Label ID="Label91" runat="server" Text="intellectual disability:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="15" class="td_unline">
                                            <asp:TextBox ID="Mental" runat="server" CssClass="inface" MaxLength="200">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label92" runat="server" Text="Autism:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="15" class="td_unline">
                                            <asp:TextBox ID="Autism" runat="server" CssClass="inface" MaxLength="200">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label93"  runat="server" Text="Cerebral palsy:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="15" class="td_unline">
                                            <asp:TextBox ID="Palsy" runat="server" CssClass="inface" MaxLength="200">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label94" runat="server" Text="Epilepsy :"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="15" class="td_unline">
                                            <asp:TextBox ID="Epilepsy" runat="server" CssClass="inface" MaxLength="200">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label95" runat="server" Text="Familial Diseases/ Birth Defects:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="15" class="td_unline">
                                            <asp:TextBox ID="Diseases" runat="server" CssClass="inface" MaxLength="200">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label96"  runat="server" Text="Other Disabilities:"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="15" class="td_unline">
                                            <asp:TextBox ID="Disabilities" runat="server" CssClass="inface" MaxLength="200">
                                            </asp:TextBox>
                                        </td>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label" style="width: 90%">
                                            <asp:Label ID="Label97" Font-Bold="True" runat="server" Text="Family Support System (transportation, child care, other)"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px" valign="top" colspan="20">
                                            <asp:TextBox ID="FamilySupportSys" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="50"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="FamilySupportSys" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label" style="width: 90%">
                                            <asp:Label ID="Label98" Font-Bold="True" runat="server" Text="Emergency Contact info"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px" valign="top" colspan="20">
                                            <asp:TextBox ID="EmergencyContact" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="50"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="EmergencyContact" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label" style="width: 90%">
                                            <asp:Label ID="Label99" Font-Bold="True" runat="server" Text="Mother’s History:"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label" style="width: 90%">
                                            <asp:Label ID="Label100" runat="server" Text="Obstetrical History"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 40px" valign="top" colspan="20">
                                            <asp:TextBox ID="Obstetrical" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="40"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="Obstetrical" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label" style="width: 90%">
                                            <asp:Label ID="Label101"  runat="server" Text="Prenatal Care"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 40px" valign="top" colspan="20">
                                            <asp:TextBox ID="PrenatalCare" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="40"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="PrenatalCare" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="20" class="td_label" style="width: 90%">
                                            <asp:Label ID="Label103"  runat="server" Text="Type of Delivery"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 40px" valign="top" colspan="20">
                                            <asp:TextBox ID="Delivery" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="40"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell14" ControlIdsToCheck="Delivery" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="20">
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
                            <td  class="td_label">
                                <asp:Label ID="Label104" Font-Bold="True" runat="server" Text="Parent/Child Interaction"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label105"  runat="server" Text="Infant/ Child Temperament:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Infant" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell18" ControlIdsToCheck="Infant" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label106"  runat="server" Text="Alertness/ Activity Level:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Alertness" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell19" ControlIdsToCheck="Alertness" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label107"  runat="server" Text="Method of Comfort/ Response:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Comfort" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell20" ControlIdsToCheck="Comfort" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label108"  runat="server" Text="Parent's Perception of Child:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Perception" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell22" ControlIdsToCheck="Perception" ShowModal="true"
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label49" Font-Bold="True" runat="server" Text="VIII. CURRENT FUNCTIONING:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label55"  runat="server" Text="Cognitive:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Cognitive" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell27" ControlIdsToCheck="Cognitive" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label54"  runat="server" Text="Social:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Social" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell26" ControlIdsToCheck="Social" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label53"  runat="server" Text="Selp-help:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="AdaptiveBehavior" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell25" ControlIdsToCheck="AdaptiveBehavior" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>

                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label23"  runat="server" Text="Gross Motor:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="GrossMotor" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell30" ControlIdsToCheck="GrossMotor" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label52"  runat="server" Text="Fine Motor:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="FineMotor" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell24" ControlIdsToCheck="FineMotor" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label56"  runat="server" Text="Communication:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Communication" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell28" ControlIdsToCheck="Communication" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label57"  runat="server" Text="Behavior:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Behavior" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell29" ControlIdsToCheck="Behavior" ShowModal="true"
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label47" Font-Bold="true" runat="server" Text="Areas of Strength:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="AreasStrength" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell21" ControlIdsToCheck="AreasStrength" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label48" Font-Bold="true"  runat="server" Text="Areas of Concern/ Behaviors:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="AreasConcern" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell23" ControlIdsToCheck="AreasConcern" ShowModal="true"
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <asp:Label ID="Label60" Font-Bold="True" runat="server" Text="IX. Summary and Observation/ Recommendations:"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Summary" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell31" ControlIdsToCheck="Summary" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
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
                                        <td style="width:auto">
                                            <asp:button id="btnRemoveSign" Runat="server" Text="Remove Signature" style="width:200px" OnClientClick="CheckRemoveSignPwd();return false;"
                                                    Enabled="false" CssClass="buttonbluestyle"></asp:button>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <asp:Label ID="Label7" runat="server" Text="&nbsp;Intake Specialist" Font-Bold="True"></asp:Label>
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
