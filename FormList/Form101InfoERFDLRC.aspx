<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form101InfoERFDLRC.aspx.cs"
    Inherits="Virweb2.FormList.Form101InfoERFDLRC" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::ES Intake:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
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
                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    document.Form101.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    document.Form101.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    document.Form101.now_div_flag.value = "3";
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
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";
            switch (obj_id) {
                case "TAB1":
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    //TAB1.style.cursor="auto";
                    document.Form101.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    //TAB2.style.cursor="auto";
                    document.Form101.now_div_flag.value = "2";
                    break;
                case "TAB3":
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    //TAB3.style.cursor="auto";
                    document.Form101.now_div_flag.value = "3";
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
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";
            Tab3.style.display = "none";

            switch (flag) {
                case 1:
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    //TAB1.style.cursor="auto";
                    document.Form101.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    //TAB2.style.cursor="auto";
                    document.Form101.now_div_flag.value = "2";
                    break;
                case 3:
                    Tab3.style.display = "";
                    TAB3.style.color = "#990066";
                    //TAB3.style.cursor="auto";
                    document.Form101.now_div_flag.value = "3";
                    break;

            }
        }

        function print_click() {
            NoConfirmExit();
            var key = document.Form101.keyid.value.toString();
            var flag = document.Form101.now_div_flag.value.toString();
            winhref("PrintForm101ERFDLRC.aspx?id=" + key + "&flag=" + flag, "PrintForm101ERFDLRC");
        }

        function submit_click() {
            doseltdbyflag(1);
            if (IsDate(document.getElementById("dob").value, true) != "true") {
                alert("Please enter DOB!");
                document.getElementById("dob").focus();
                return false;
            }

            try {
                return confirm("Do you want to submit this form, it will be readonly after submit.");
            }
            catch (err) {
                alert("The system is busy, please try again");
            }
        }

        function submitcalendar() {
            document.getElementById("<%=submitdob.ClientID %>").value = "1";
            document.form101.submit();
        }

        function MatchConsumer(mis) {
            Div_Search.style.display = 'none';
            document.getElementById("CloseSearchFlag").value = "0";
            document.getElementById("<%=submitmis.ClientID %>").value = mis;
            document.form101.submit();
        }

        function display_consumerinfo(c_key) {
            var useractname = document.getElementById("useractname").value;
            window.showModalDialog("webConsumerInfo.aspx?c_key=" + c_key.toString(), self, 'status:no;dialogWidth:1100px;dialogHeight:750px;help:yes;scroll:yes;resizable:yes;maximize:yes;minimize:yes;');
        }

        function earlystart_click(click_type) {
            if (click_type == "1") //earlystart_no
            {
                if (document.getElementById("earlystart_no").checked) {
                    
                    EnableDevelop();
                }
                else {
                    DisableDevelop();
                }
            }
        }

        function getObj(name) {
            if (document.getElementById) // test if browser supports document.getElementById
            {
                this.obj = document.getElementById(name);
                this.style = document.getElementById(name).style;
                this.parent = document.getElementById(name).parentNode;
            }
            else if (document.all) // test if browser supports document.all
            {
                this.obj = document.all[name];
                this.style = document.all[name].style;
                this.parent = document.all[name].parentElement;
            }
            else if (document.layers) // test if browser supports document.layers
            {
                this.obj = document.layers[name];
                this.style = document.layers[name].style;
                this.parent = document.layers[name].parentNode;
            }
        }

        function EnableDevelop() {
            var iq = new getObj('iq');
            iq.obj.disabled = false;
            iq.parent.disabled = false;
            document.getElementById("Iq_desc").disabled = false;
            var cp = new getObj('cp');
            cp.obj.disabled = false;
            cp.parent.disabled = false;
            document.getElementById("cp_type").disabled = false;
            var epilepsy = new getObj('epilepsy');
            epilepsy.obj.disabled = false;
            epilepsy.parent.disabled = false;
            document.getElementById("epilepsy_freq").disabled = false;
            var autism = new getObj('autism');
            autism.obj.disabled = false;
            autism.parent.disabled = false;
            document.getElementById("autism_by").disabled = false;
            var cder_other = new getObj('cder_other');
            cder_other.obj.disabled = false;
            cder_other.parent.disabled = false;
            document.getElementById("cder_other_desc").disabled = false;
            document.getElementById("age_onset").disabled = false;
            document.getElementById("medic").disabled = false;
            document.getElementById("psy_his").disabled = false;
            document.getElementById("diagnosis").disabled = false;

        }

        function DisableDevelop() {
            var iq = new getObj('iq');
            iq.obj.disabled = true;
            iq.parent.disabled = true;
            iq.obj.checked = false;
            document.getElementById("Iq_desc").value = "";
            document.getElementById("Iq_desc").disabled = true;
            var cp = new getObj('cp');
            cp.obj.disabled = true;
            cp.parent.disabled = true;
            cp.obj.checked = false;
            document.getElementById("cp_type").value = "";
            document.getElementById("cp_type").disabled = true;
            var epilepsy = new getObj('epilepsy');
            epilepsy.obj.disabled = true;
            epilepsy.parent.disabled = true;
            epilepsy.obj.checked = false;
            document.getElementById("epilepsy_freq").value = "";
            document.getElementById("epilepsy_freq").disabled = true;
            var autism = new getObj('autism');
            autism.obj.disabled = true;
            autism.parent.disabled = true;
            autism.obj.checked = false;
            document.getElementById("autism_by").value = "";
            document.getElementById("autism_by").disabled = true;
            var cder_other = new getObj('cder_other');
            cder_other.obj.disabled = true;
            cder_other.parent.disabled = true;
            cder_other.obj.checked = false;
            document.getElementById("cder_other_desc").value = "";
            document.getElementById("cder_other_desc").disabled = true;
            document.getElementById("age_onset").value = "";
            document.getElementById("age_onset").disabled = true;
            document.getElementById("medic").value = "";
            document.getElementById("medic").disabled = true;
            document.getElementById("psy_his").value = "";
            document.getElementById("psy_his").disabled = true;
            document.getElementById("diagnosis").value = "";
            document.getElementById("diagnosis").disabled = true;
        }

        function Get_CurrentAddress(addressflag) {
            switch (addressflag) {
                case "0":  //mail address (as current address)        
                    document.getElementById("mail_address_line_1").value = document.getElementById("address_line_1").value;
                    document.getElementById("mail_address_city").value = document.getElementById("address_city").value;
                    document.getElementById("mail_address_state").value = document.getElementById("address_state").value;
                    document.getElementById("mail_address_zip").value = document.getElementById("address_zip").value;
                    break;
                case "1": //relationship1 address(as current address)
                    document.getElementById("contact1_address_line_1").value = document.getElementById("address_line_1").value;
                    document.getElementById("contact1_address_city").value = document.getElementById("address_city").value;
                    document.getElementById("contact1_address_state").value = document.getElementById("address_state").value;
                    document.getElementById("contact1_address_zip").value = document.getElementById("address_zip").value;
                    break;
                case "2": //relationship1 address(as mail address)
                    document.getElementById("contact1_address_line_1").value = document.getElementById("mail_address_line_1").value;
                    document.getElementById("contact1_address_city").value = document.getElementById("mail_address_city").value;
                    document.getElementById("contact1_address_state").value = document.getElementById("mail_address_state").value;
                    document.getElementById("contact1_address_zip").value = document.getElementById("mail_address_zip").value;
                    break;
                case "3": //relationship2 address(as current address)
                    document.getElementById("contact2_address_line_1").value = document.getElementById("address_line_1").value;
                    document.getElementById("contact2_address_city").value = document.getElementById("address_city").value;
                    document.getElementById("contact2_address_state").value = document.getElementById("address_state").value;
                    document.getElementById("contact2_address_zip").value = document.getElementById("address_zip").value;
                    break;
                case "4": //relationship2 address(as mail address)
                    document.getElementById("contact2_address_line_1").value = document.getElementById("mail_address_line_1").value;
                    document.getElementById("contact2_address_city").value = document.getElementById("mail_address_city").value;
                    document.getElementById("contact2_address_state").value = document.getElementById("mail_address_state").value;
                    document.getElementById("contact2_address_zip").value = document.getElementById("mail_address_zip").value;
                    break;
                case "5": //relationship2 address(as current address)
                    document.getElementById("contact3_address_line_1").value = document.getElementById("address_line_1").value;
                    document.getElementById("contact3_address_city").value = document.getElementById("address_city").value;
                    document.getElementById("contact3_address_state").value = document.getElementById("address_state").value;
                    document.getElementById("contact3_address_zip").value = document.getElementById("address_zip").value;
                    break;
                case "6": //relationship2 address(as mail address)
                    document.getElementById("contact3_address_line_1").value = document.getElementById("mail_address_line_1").value;
                    document.getElementById("contact3_address_city").value = document.getElementById("mail_address_city").value;
                    document.getElementById("contact3_address_state").value = document.getElementById("mail_address_state").value;
                    document.getElementById("contact3_address_zip").value = document.getElementById("mail_address_zip").value;
                    break;
            }
        }

        function window_onload() {
            var closeflag = document.getElementById("CloseSearchFlag").value;
            if (closeflag == "0") {
                Div_Search.style.display = 'none';
            }
            else {
                Div_Search.style.display = '';
            }
        }

        function save_click() {

            NoConfirmExit();
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('../FormList/Form101ListER.aspx');
        }
    //-->
    </script>
</head>
<body id="body" runat="server" style="cursor:wait">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="Form101" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="CloseSearchFlag" id="CloseSearchFlag" value="0" runat="server" />
    <input type="hidden" name="submitdob" id="submitdob" value="" runat="server" />
    <input type="hidden" name="submitmis" id="submitmis" value="" runat="server" />
    <input type="hidden" name="unlockflag" id="unlockflag" value="0" runat="server" />
    <input type="hidden" name="ref_screener" id="ref_screener" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="keyid" id="keyid" runat="server" />
    <input type="hidden" name="useractname" id="useractname" value="" runat="server" />
    <div align="center" style="WIDTH:100%">  
	    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	        <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnEdit_Click"></asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click"></asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnSubmit" runat="server" AlternateText="Submit" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/reauth.jpg" ToolTip="Submit"
                        OnClientClick="return submit_click();" OnClick="btnSubmit_Click"></asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnUnlock" runat="server" AlternateText="Unlock" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/unlock.ico" ToolTip="Unlock"
                        OnClick="btnUnlock_Click"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">ES Intake</asp:Label>
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
                <!-- #AAFFC4-->
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="TAB1" style="color: #990066;" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>Referral</u></b>
                            </td>
                            <td id="TAB2" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>Intake Screening Checklist</u></b>
                            </td>
                            <td id="TAB3" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>M-Chat</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px;">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab1">
                        <div id="Div_Search" style="position: relative; width: 100%; height: 300px; display: none;
                            overflow: auto;">
                            <br />
                            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                                <tr>
                                    <td style="width: 30px;">
                                    </td>
                                    <td style="width: 60%">
                                        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                                            <tr>
                                                <td valign="top">
                                                    <b>SEARCH BY: </b>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="SearchBy" runat="server" CssClass="inface" Width="120px" OnSelectedIndexChanged="SearchBy_SelectedIndexChanged"
                                                        AutoPostBack="true">
                                                        <asp:ListItem Value="0" Selected="True">Name and Dob</asp:ListItem>
                                                        <asp:ListItem Value="1">Name</asp:ListItem>
                                                        <asp:ListItem Value="2">Dob</asp:ListItem>
                                                        <asp:ListItem Value="3">Phone number</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                                        Height="18px">SEARCH RESULT</asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <div id="Div1" style="position: relative; width: 100%; height: 200px; overflow: auto;">
                                                        <asp:DataGrid ID="dg_grid1" runat="server" AllowPaging="false" CssClass="grd_body"
                                                            Visible="True" AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false"
                                                            ShowFooter="false" BorderStyle="none">
                                                            <HeaderStyle></HeaderStyle>
                                                            <ItemStyle></ItemStyle>
                                                            <AlternatingItemStyle></AlternatingItemStyle>
                                                            <FooterStyle></FooterStyle>
                                                            <Columns>
                                                                <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left"
                                                                    ItemStyle-VerticalAlign="Middle" Visible="false"></asp:BoundColumn>
                                                                <asp:TemplateColumn ItemStyle-Width="40px">
                                                                    <ItemTemplate>
                                                                        <input type="radio" name="RadioName" value="<%# DataBinder.Eval(Container.DataItem, "c_key")%>"
                                                                            style="width: 40px;" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="ConsumerUCIName" HeaderText="" ItemStyle-HorizontalAlign="Left"
                                                                    ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td align="center" valign="top">
                                        <asp:Button ID="btnMatch" runat="server" Text="Match Selected Client" Style="width: 200px"
                                            CssClass="buttonbluestyle" OnClick="btnMatch_Click"></asp:Button>
                                    </td>
                                    <td align="center" valign="top" style="width: 121px">
                                        <input type="button" name="btnCLose" id="btnClose" runat="server" value="Close" class="buttonbluestyle"
                                            style="width: 60px;" onclick="javascript:document.getElementById('CloseSearchFlag').value='0';Div_Search.style.display='none';" />
                                    </td>
                                </tr>
                            </table>
                            <hr noshade="noshade" style="size: 3px; background-color: Black; color: Black;" />
                        </div>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr>
                                <td style="height: 10px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold" width="60px" class="td_label">
                                                <b>Due Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="Duedate" runat="server" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="font: bold" width="110px" class="td_label">
                                                <b>Intake Coordinator:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 170px">
                                                <asp:DropDownList ID="AppSC" runat="server" DataValueField="tb_entry_name" CssClass="infaceDrop" OnClick="DataChanged()"
                                                       DataTextField="tb_entry_text" >
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="100px">
                                                <b>Date of Call:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="ref_date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="100px" class="td_label">
                                                <b>Screener:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <asp:TextBox ID="ref_screener_name" runat="server" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="80px" class="td_label">
                                                <b>Submit By:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 180px">
                                                <asp:Label ID="Submittedby" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="100px" class="td_label">
                                                <b>Submit Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 100px" class="td_unline">
                                                <asp:Label ID="Submitdate" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td width="100px" class="td_label">
                                                <b>Inquiry#:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="mis" runat="server" CssClass="infaceText" MaxLength="8" ReadOnly="true"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 120px" class="td_label">
                                                <b>Case Manager:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 170px">
                                                <asp:DropDownList ID="ServSC" runat="server" DataValueField="employeeID" DataTextField="employeeName"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 150px" class="td_label">
                                                <asp:CheckBox ID="out_side" runat="server" Text="" /><b>Fax/Email Referral</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="out_sidedate" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 120px" class="td_label">
                                                <asp:CheckBox ID="WalkInRef" runat="server" Text="" /><b>Walk-In Referral</b>
                                            </td>
                                            <td style="width: auto"></td>
                                          </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            
                                            <td class="td_label" width="100px">
                                                <b>Person Calling:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:TextBox ID="ref_name_first" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:TextBox ID="ref_name_last" runat="server" CssClass="inface" MaxLength="14"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" width="150px">
                                                <b>Agency / Relationship:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 180px">
                                                <asp:DropDownList ID="ref_relationship" runat="server" DataValueField="tb_entry_name"
                                                    CssClass="infaceDrop" OnClick="DataChanged()" DataTextField="tb_entry_text">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" width="150px">
                                                <b>Other:</b>
                                            </td>
                                            <td style="width: auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="12" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="2">
                                            </td>
                                            <td class="td_label">
                                                First Name
                                            </td>
                                            <td>
                                            </td>
                                            <td class="td_label">
                                                Last Name
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label">
                                                <b>Relationship Group:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 180px">
                                                <asp:DropDownList ID="ref_group" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 300px">
                                                <asp:TextBox ID="ref_otheragency" runat="server" Width="300" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 50px;" class="td_label">
                                                <b>Street:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 560px;">
                                                <asp:TextBox ID="ref_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 40px;" class="td_label">
                                                <b>City:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 160px;">
                                                <asp:TextBox ID="ref_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 40px;" class="td_label">
                                                <b>State:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 40px;">
                                                <asp:TextBox ID="ref_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 30px;" class="td_label">
                                                <b>Zip:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="ref_address_zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 150px;" class="td_label">
                                                <b>Telephone Number:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 50px;" class="td_label">
                                                <b>Home:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="ref_phone_1_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="ref_phone_1_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="ref_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 50px;" class="td_label">
                                                <b>Cell:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="ref_phone_2_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="ref_phone_2_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="ref_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 100px" class="td_label">
                                                <b>Referred By:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 200px">
                                                <asp:DropDownList ID="ref_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 200px" class="td_label">
                                                <b>Is Family Aware of Referral?</b>
                                            </td>
                                            <td class="td_label" style="width: 120px">
                                                <asp:RadioButton Text="" ID="family_aware_yes" GroupName="family_aware" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RadioButton Text="" ID="family_aware_no" GroupName="family_aware" runat="server" /><b>No</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Email:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 200px">
                                                <asp:TextBox ID="Email" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr>
                                            <td style="width: 100px" class="td_label">
                                                <b>Referred Reason:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 800px">
                                                <asp:TextBox ID="ref_reason" runat="server" BorderStyle="Solid" Wrap="true" Height="80"
                                                    Width="99%" TextMode="MultiLine">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td style="font: bold" class="td_label">
                                    <asp:CheckBox ID="former_info" runat="server" Text="FORMER INFO ONLY" Visible="false" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 60px" class="td_label">
                                                            <b>Name:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 120px">
                                                            <asp:TextBox ID="name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 30px">
                                                            <asp:TextBox ID="name_mi" runat="server" CssClass="inface" MaxLength="1"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 120px">
                                                            <asp:TextBox ID="name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="width: 40px" class="td_label">
                                                            <b>DOB:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td style="width: 550px">
                                                            <table class="table_inside">
                                                                <tr class="tr_common">
                                                                    <td class="td_unline" style="width: 100px">
                                                                        <asp:TextBox ID="dob" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                                            runat="server" CssClass="inface">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                    <td style="width: 10px">
                                                                    </td>
                                                                    <td  style="width: 40px" class="td_label">
                                                                        <b>Age:</b>
                                                                    </td>
                                                                    <td style="width: 5px">
                                                                    </td>
                                                                    <td class="td_unline" style="width: 120px">
                                                                        <asp:TextBox ID="c_age" runat="server" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button ID="btnCheck" runat="server" Text="Check" Style="width: 60px" CssClass="buttonbluestyle"
                                                                            Visible="False" OnClientClick="javascript:document.getElementById('CloseSearchFlag').value='1';Div_Search.style.display='';"
                                                                            OnClick="btnCheck_Click"></asp:Button>
                                                                    </td>
                                                                    <td style="width: 30px">
                                                                    </td>
                                                                    <td style="font: bold; width: 40px" class="td_label">
                                                                        <b>Sex:</b>
                                                                    </td>
                                                                    <td style="width: 5px">
                                                                    </td>
                                                                    <td style="width: 120px">
                                                                        <asp:DropDownList ID="gender" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                                            <asp:ListItem Value=""></asp:ListItem>
                                                                            <asp:ListItem Value="M">MALE</asp:ListItem>
                                                                            <asp:ListItem Value="F">FEMALE</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label">
                                                            First Name
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_label">
                                                            M
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_label">
                                                            Last Name
                                                        </td>
                                                        <td width="10px">
                                                        </td>
                                                        <td colspan="6">
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="font: bold; width: 60px" class="td_label">
                                                            <b>Aka:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 120px">
                                                            <asp:TextBox ID="name_aka_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 30px">
                                                            <asp:TextBox ID="name_aka_mi" runat="server" CssClass="inface" MaxLength="1"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 120px">
                                                            <asp:TextBox ID="name_aka_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="font: bold; width: 30px" class="td_label">
                                                            <b>SSN:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td style="width: 80px" class="td_unline">
                                                            <asp:TextBox ID="ssn" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="font: bold; width: 80px" class="td_label">
                                                            <b>Birthplace:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 300px">
                                                            <asp:TextBox ID="BirthPlace" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label">
                                                            First Name
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_label">
                                                            M
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_label">
                                                            Last Name
                                                        </td>
                                                        <td width="10px">
                                                        </td>
                                                        <td colspan="10">
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr>
                                            <td style="width: 120px" class="td_label">
                                                <b>Language:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 350">
                                                <asp:DropDownList ID="language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="50">
                                            </td>
                                            <td style="font: bold; width: 120px" >
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Ethnicity:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                                <asp:DropDownList ID="ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="50">
                                            </td>
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Marital Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                                <asp:DropDownList ID="marital_status" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Residence Type:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                                <asp:DropDownList ID="residence_current" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="50">
                                            </td>
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Program Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                                <asp:DropDownList ID="program_primary" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Health District:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                                <asp:DropDownList ID="health_district" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="50">
                                            </td>
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Legal Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="350">
                                                <asp:DropDownList ID="legal_status" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="fullentry" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Current Address:</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 70px; font: bold" class="td_label">
                                                <b>Street:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 55px; font: bold" class="td_label">
                                                <b>City:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 160px">
                                                <asp:TextBox ID="address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 55px; font: bold" class="td_label">
                                                <b>State:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 40px">
                                                <asp:TextBox ID="address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 45px; font: bold" class="td_label">
                                                <b>Zip:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="address_zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Mailing Address:&nbsp;&nbsp;If different from the Current Address</b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 70px; font: bold" class="td_label">
                                                <b>Street:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="mail_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 55px; font: bold" class="td_label">
                                                <b>City:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 160px">
                                                <asp:TextBox ID="mail_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 55px; font: bold" class="td_label">
                                                <b>State:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 40px">
                                                <asp:TextBox ID="mail_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 45px; font: bold" class="td_label">
                                                <b>Zip:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="mail_address_zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 150px;" class="td_label">
                                                <b>Telephone Number:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 50px;" class="td_label">
                                                <b>Home:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="phone_1_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="phone_1_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 50px;" class="td_label">
                                                <b>Cell:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="phone_2_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="phone_2_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Group:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 150px">
                                                <asp:DropDownList ID="contact1_group" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                    OnSelectedIndexChanged="group1_SelectedIndexChanged" CssClass="infaceDrop" onchange="NoConfirmExit();"
                                                    AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Relationship:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 200px">
                                                <asp:DropDownList ID="contact1_relationship" runat="server" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 60px" class="td_label">
                                                <b>DOB:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact1_dob" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Marital Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="200">
                                                <asp:DropDownList ID="contact1_marital_status" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 60px" class="td_label">
                                                <b>UCI#:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact1_uci" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Name:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="contact1_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="contact1_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>SSN:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact1_ssn" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Legally Responsible:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact1_legalrespon" runat="server" CssClass="infaceDrop"
                                                    OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_label">
                                                First Name
                                            </td>
                                            <td>
                                            </td>
                                            <td class="td_label">
                                                Last Name
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Disabled:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact1_disabled" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Deceased:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact1_deceased" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Birth Place:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:TextBox ID="contact1_birthplace" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 20px;">
                                            </td>
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Occupation:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="250">
                                                <asp:TextBox ID="contact1_occupation" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Address:</b> &nbsp;&nbsp;<input type="button" name="btnGetRel1Address1" id="btnGetRel1Address1"
                                        runat="server" value="Same as Current Address" class="buttonbluestyle" style="width: 240px;"
                                        onclick="javascript:Get_CurrentAddress('1');" />
                                    &nbsp;&nbsp;<input type="button" name="btnGetRel1Address2" id="btnGetRel1Address2"
                                        runat="server" value="Same as Mailing Address" class="buttonbluestyle" style="width: 240px;"
                                        onclick="javascript:Get_CurrentAddress('2');" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 70px" class="td_label">
                                                <b>Street:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="contact1_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 55px;" class="td_label">
                                                <b>City:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 160px">
                                                <asp:TextBox ID="contact1_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 55px" class="td_label">
                                                <b>State:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 40px">
                                                <asp:TextBox ID="contact1_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 45px" class="td_label">
                                                <b>Zip:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="contact1_address_zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 180px" class="td_label">
                                                <b>Telephone Number:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Home:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact1_phone_1_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact1_phone_1_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="contact1_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Work:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact1_phone_2_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact1_phone_2_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="contact1_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Group:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 150px">
                                                <asp:DropDownList ID="contact2_group" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                    OnSelectedIndexChanged="group2_SelectedIndexChanged" CssClass="infaceDrop" onchange="NoConfirmExit();"
                                                    AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Relationship:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 200px">
                                                <asp:DropDownList ID="contact2_relationship" runat="server" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 60px" class="td_label">
                                                <b>DOB:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact2_dob" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Marital Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="200">
                                                <asp:DropDownList ID="contact2_marital_status" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 60px" class="td_label">
                                                <b>UCI#:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact2_uci" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Name:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="contact2_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="contact2_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>SSN:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact2_ssn" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Legally Responsible:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact2_legalrespon" runat="server" CssClass="infaceDrop"
                                                    OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_label">
                                                First Name
                                            </td>
                                            <td>
                                            </td>
                                            <td class="td_label">
                                                Last Name
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Disabled:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact2_disabled" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Deceased:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact2_deceased" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Birth Place:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:TextBox ID="contact2_birthplace" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 20px;">
                                            </td>
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Occupation:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="250">
                                                <asp:TextBox ID="contact2_occupation" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Address:</b> &nbsp;&nbsp;<input type="button" name="btnGetRel2Address1" id="btnGetRel2Address1"
                                        runat="server" value="Same as Current Address" class="buttonbluestyle" style="width: 240px;"
                                        onclick="javascript:Get_CurrentAddress('3');" />
                                    &nbsp;&nbsp;<input type="button" name="btnGetRel2Address2" id="btnGetRel2Address2"
                                        runat="server" value="Same as Mailing Address" class="buttonbluestyle" style="width: 240px;"
                                        onclick="javascript:Get_CurrentAddress('4');" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 70px; font: bold" class="td_label">
                                                <b>Street:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="contact2_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 55px; font: bold" class="td_label">
                                                <b>City:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 160px">
                                                <asp:TextBox ID="contact2_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 55px; font: bold" class="td_label">
                                                <b>State:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 40px">
                                                <asp:TextBox ID="contact2_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 45px; font: bold" class="td_label">
                                                <b>Zip:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="contact2_address_zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 180px" class="td_label">
                                                <b>Telephone Number:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Home:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact2_phone_1_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact2_phone_1_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="contact2_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Work:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact2_phone_2_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact2_phone_2_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="contact2_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Group:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 150px">
                                                <asp:DropDownList ID="contact3_group" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                                    OnSelectedIndexChanged="group3_SelectedIndexChanged" CssClass="infaceDrop" onchange="NoConfirmExit();"
                                                    AutoPostBack="true">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Relationship:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 200px">
                                                <asp:DropDownList ID="contact3_relationship" runat="server" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 60px" class="td_label">
                                                <b>DOB:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact3_dob" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Marital Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="200">
                                                <asp:DropDownList ID="contact3_marital_status" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 60px" class="td_label">
                                                <b>UCI#:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact3_uci" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Name:</b>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="contact3_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="contact3_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>SSN:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="contact3_ssn" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Legally Responsible:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact3_legalrespon" runat="server" CssClass="infaceDrop"
                                                    OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td class="td_label">
                                                First Name
                                            </td>
                                            <td>
                                            </td>
                                            <td class="td_label">
                                                Last Name
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Disabled:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact3_disabled" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="font: bold; width: 150px" class="td_label">
                                                <b>Deceased:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="100">
                                                <asp:DropDownList ID="contact3_deceased" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 100px" class="td_label">
                                                <b>Birth Place:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:TextBox ID="contact3_birthplace" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 20px;">
                                            </td>
                                            <td style="font: bold; width: 120px" class="td_label">
                                                <b>Occupation:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="250">
                                                <asp:TextBox ID="contact3_occupation" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Address:</b> &nbsp;&nbsp;<input type="button" name="btnGetRel3Address1" id="btnGetRel3Address1"
                                        runat="server" value="Same as Current Address" class="buttonbluestyle" style="width: 240px;"
                                        onclick="javascript:Get_CurrentAddress('5');" />
                                    &nbsp;&nbsp;<input type="button" name="btnGetRel3Address2" id="btnGetRel3Address2"
                                        runat="server" value="Same as Mailing Address" class="buttonbluestyle" style="width: 240px;"
                                        onclick="javascript:Get_CurrentAddress('6');" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="font: bold; width: 70px" class="td_label">
                                                <b>Street:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 560px">
                                                <asp:TextBox ID="contact3_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 55px;" class="td_label">
                                                <b>City:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 160px">
                                                <asp:TextBox ID="contact3_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 55px" class="td_label">
                                                <b>State:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 40px">
                                                <asp:TextBox ID="contact3_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="font: bold; width: 45px" class="td_label">
                                                <b>Zip:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                                <asp:TextBox ID="contact3_address_zip" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 180px" class="td_label">
                                                <b>Telephone Number:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Home:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact3_phone_1_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact3_phone_1_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="contact3_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 50px" class="td_label">
                                                <b>Work:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px">
                                                <table class="table_inside">
                                                    <tr>
                                                        <td align="center" width="10px">
                                                            (
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact3_phone_2_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="15px">
                                                            )
                                                        </td>
                                                        <td class="td_unline" width="25px">
                                                            <asp:TextBox ID="contact3_phone_2_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                                        </td>
                                                        <td align="center" width="10px">
                                                            -
                                                        </td>
                                                        <td class="td_unline" width="30px">
                                                            <asp:TextBox ID="contact3_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                        </table>
                        <table id="developTB" class="table_maindiv" runat="server">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td class="td_label" width="130px" style="font: bold; width: 130px">
                                                <b>
                                                    <input type="radio" name="earlystart_no" id="earlystart_no" value="" runat="server"
                                                        onclick="javascript:earlystart_click('1');" />
                                                    DEVELOPMENTAL </b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="160px" class="td_label" style="font: bold; width: 160px">
                                                <asp:CheckBox ID="iq" runat="server" Text="" /><b>Intellectual Disability IQ</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Description:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="Iq_desc" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                                <b>DISABILITY</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" width="160px" style="font: bold; width: 160px">
                                                <asp:CheckBox ID="cp" runat="server" Text="" /><b>Cerebral Palsy</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Type:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="cp_type" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                                <b>(over age 3):</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" width="160px" style="font: bold; width: 160px">
                                                <asp:CheckBox ID="epilepsy" runat="server" Text="" /><b>Epilepsy</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Frequency:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="epilepsy_freq" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" width="160px" style="font: bold; width: 160px">
                                                <asp:CheckBox ID="autism" runat="server" Text="" /><b>Autism</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Diagnosed By:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="autism_by" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" width="160px" style="font: bold; width: 160px">
                                                <asp:CheckBox ID="cder_other" runat="server" Text="" /><b>Other Condition</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Description:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="cder_other_desc" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="160px" style="font: bold; width: 160px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Age of Onset:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="age_onset" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="160px" style="font: bold; width: 160px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Medications:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="medic" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="160px" style="font: bold; width: 160px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Psychiatric History:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="psy_his" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td width="130px" style="font: bold; width: 130px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="160px" style="font: bold; width: 160px">
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td width="120px" style="font: bold; width: 120px" class="td_label">
                                                <b>Diagnosis:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td width="50%" style="width: 50%" class="td_unline">
                                                <asp:TextBox ID="diagnosis" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                        </table>
                        <table id="earlystartTB" class="table_maindiv" runat="server">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="7" style="font: bold" class="td_label"  style="width: 100px">
                                                <b>
                                                    DCFS Only:
                                                </b>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td colspan="5">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width: 150px">
                                                            <b>Dependent of Court:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label">
                                                            <asp:RadioButton Text="" ID="Dcfs_Dependent_yes" GroupName="Dcfs_Dependent" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp<b>Yes</b>
                                                            <asp:RadioButton Text="" ID="Dcfs_Dependent_no" GroupName="Dcfs_Dependent" runat="server" /><b>No</b>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width: 150px">
                                                            <b>Adopting:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label">
                                                            <asp:RadioButton Text="" ID="Dcfs_Adopting_yes" GroupName="Dcfs_Adopting" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;<b>Yes</b>
                                                            <asp:RadioButton Text="" ID="Dcfs_Adopting_no" GroupName="Dcfs_Adopting" runat="server" /><b>No</b>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td colspan="5">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width: 380px">
                                                            <b>Has Parent's Educational Rights Been Terminated:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label" style="width: auto">
                                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_NA" GroupName="Dcfs_EducRight" runat="server" /><b>NA</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_YES" GroupName="Dcfs_EducRight" runat="server" /><b>*Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_NO" GroupName="Dcfs_EducRight" runat="server" /><b>No</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_Unknow" GroupName="Dcfs_EducRight" runat="server" /><b>Unknown</b>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td colspan="5">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width: 380px">
                                                            <b>Minute Order:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline"style="width: auto">
                                                            <asp:DropDownList ID="MinuteOrder" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                CssClass="infaceDrop" OnClick="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td class="td_label" style="width: 380px" colspan="5">
                                                <b>*If Yes, Provide name and address/phone number of this person:</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td colspan="5">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 20px">
                                                        </td>
                                                        <td style="width: 50px" class="td_label">
                                                            <b>Name:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 200px">
                                                            <asp:TextBox ID="Dcfs_ProvideName" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="width: 120px" class="td_label">
                                                            <b>Phone Number:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 120px">
                                                            <asp:TextBox ID="Dcfs_ProvidePhone" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 20px">
                                                        </td>
                                                        <td style="font: bold" class="td_label">
                                                            <b>Address:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 300px" colspan="4">
                                                            <asp:TextBox ID="Dcfs_ProvideAddress" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 80px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td colspan="5">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width: 410px">
                                                            <b>Has "Search" for biological family been completed by CSW:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label" style="width: 150px">
                                                            <asp:RadioButton Text="" ID="Dcfs_CSW_yes" GroupName="Dcfs_CSW" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:RadioButton Text="" ID="Dcfs_CSW_no" GroupName="Dcfs_CSW" runat="server" /><b>No</b>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr> 
                                <td style="height: 5px">
                                </td>
                            </tr>
                        </table>
                        <table id="MedicationTB" class="table_maindiv" runat="server">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="2" style="font: bold" class="td_label"  style="width: 150px">
                                                <b>
                                                    Medical Information: 
                                                </b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 20px">
                                            </td>
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Pediatrician:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="Pediatrician" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Address:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="Ped_Address" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td colspan="4">
                                                            <table class="table_inside">
                                                                <tr class="tr_common">
                                                                    <td style="width: 220px" class="td_label">
                                                                        <b>Phone Number:</b>
                                                                    </td>
                                                                    <td style="width: 5px">
                                                                    </td>
                                                                    <td class="td_unline" style="width: 120px">
                                                                        <asp:TextBox ID="Ped_phone" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                                    </td>
                                                                    <td style="width: 20px">
                                                                    </td>
                                                                    <td style="width: 120px" class="td_label">
                                                                        <b>Fax Number:</b>
                                                                    </td>
                                                                    <td style="width: 5px">
                                                                    </td>
                                                                    <td class="td_unline" style="width: 120px">
                                                                        <asp:TextBox ID="Ped_fax" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                                    </td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Medications:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td style="width: 500px">
                                                            <table class="table_inside">
                                                               <tr class="tr_common">
                                                                   <td style="width: 80px" class="td_label">
                                                                      <asp:RadioButton Text="" ID="Ped_Medication_yes" GroupName="Ped_Medication" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                   </td> 
                                                                   <td style="width: 80px" class="td_label">
                                                                      <asp:RadioButton Text="" ID="Ped_Medication_no" GroupName="Ped_Medication" runat="server" /><b>No</b>
                                                                   </td>
                                                                   <td style="width: 360px" class="td_unline">
                                                                      <asp:TextBox ID="Ped_MedicationDesc" runat="server" Width="350" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                   </td>
                                                               </tr>
                                                            </table>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Birth Hospital's Name and Address:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="BirthHospital" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Specialist(s) Child Has Seen:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="SeenSpecialists" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Birth Weight:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="BirthWgt" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Prematurity:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:DropDownList ID="Prematurity" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                CssClass="infaceDrop" OnClick="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Weeks Gestation:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="WeeksGestation" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Ventilator Dependent:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:DropDownList ID="VentilatorDependent" Width="100" runat="server"
                                                                CssClass="infaceDrop" OnClick="DataChanged()">
                                                                <asp:ListItem Value="" Selected="True"></asp:ListItem>
                                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                <asp:ListItem Value="2">No</asp:ListItem>
                                                                <asp:ListItem Value="3">DK</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Seizures:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:DropDownList ID="Seizures" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                CssClass="infaceDrop" OnClick="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Discharge from NICU:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="NICUDischarge" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>NICU Stay:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:TextBox ID="NICUStay" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 220px" class="td_label">
                                                            <b>Perinatal Drug/ Alcohol Exposure:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 500px">
                                                            <asp:DropDownList ID="PerinatalDrug" Width="100" runat="server"
                                                                CssClass="infaceDrop" OnClick="DataChanged()">
                                                                <asp:ListItem Value="" Selected="True"></asp:ListItem>
                                                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                <asp:ListItem Value="2">No</asp:ListItem>
                                                                <asp:ListItem Value="3">DK</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width:20px"></td>
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="font: bold; width: 120px" class="td_label">
                                                            <asp:CheckBox ID="Medi_cal" runat="server" Text="" /><b>Medi-Cal</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 100px">
                                                            <asp:TextBox ID="Medi_cal_desc" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="font: bold; width: 120px" class="td_label">
                                                            <b>CCS</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 100px">
                                                            <asp:TextBox ID="ccs" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="font: bold; width: 70px" class="td_label">
                                                            <asp:CheckBox ID="ssi" runat="server" Text="" /><b>SSI</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 100px">
                                                            <asp:TextBox ID="ssi_desc" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="font: bold; width: 70px" class="td_label">
                                                            <asp:CheckBox ID="ssa" runat="server" Text="" /><b>SSA</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 100px">
                                                            <asp:TextBox ID="ssa_desc" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td style="font: bold; width: 70px" class="td_label">
                                                            <asp:CheckBox ID="ihss" runat="server" Text="" /><b>IHSS#</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 100px">
                                                            <asp:TextBox ID="ihss_desc" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 20px">
                                            </td>
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="font: bold; width: 120px" class="td_label">
                                                            <b>Health Insurance:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td class="td_label" style="font: bold; width: 120px">
                                                            <asp:RadioButton Text="" ID="insurance_yes" GroupName="insurance" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:RadioButton Text="" ID="insurance_no" GroupName="insurance" runat="server" /><b>No</b>
                                                        </td>
                                                        <td style="width: 10px">
                                                        </td>
                                                        <td class="td_unline" style="width: 400px">
                                                            <asp:TextBox ID="Insurance_desc" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                        </table>
                        <table class="table_maindiv">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="8" style="width: 180px;font: bold" class="td_label">
                                                <b>Evaluations Recommended:</b>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="Psychosocial" runat="server" Text="" /><b>Psychosocial</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold;" style="width: 50px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="PsychosocialDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="DevelopmentalOT" runat="server" Text="" /><b>Developmental (OT)</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="DevelopmentalOTDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr><tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="DevelopmentalPT" runat="server" Text="" /><b>Developmental (PT)</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="DevelopmentalPTDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr><tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="EvaluationPT" runat="server" Text="" /><b>PT Evaluation</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="EvaluationPTDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr><tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="EvaluationOT" runat="server" Text="" /><b>OT Evaluation</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="EvaluationOTDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr><tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="EvlSpeech" runat="server" Text="" /><b>Speech/ Language Evaluation</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="EvlSpeechDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr><tr>
                                            <td colspan="8" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 30px">
                                            </td>
                                            <td style="font: bold; width: 200px" class="td_label">
                                                <asp:CheckBox ID="EvlOther" runat="server" Text="" /><b>Other</b>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="font: bold; width: 80px" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:TextBox ID="EvlOtherDate" width="100" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="8" style="height: 15px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Tab2" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr>
                                <td style="height: 10px">
                                </td>
                            </tr>
                            <tr  class="tr_common">
                                <td valign="middle" align="center">
                                    <asp:Label ID="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                        Height="24px">Intake Screening Checklist</asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="l_ScreenedDate" Font-Bold="true" runat="server" Text="Date:" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="ScreenedDate" runat="server" Width="100px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="l_Name" runat="server" Font-Bold="true" Text="Name:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:Label ID="ConsumerName" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="l_Age" runat="server" Font-Bold="true" Text="Age:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 60px">
                                                <asp:Label ID="Age" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>Gross Motor</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label1" Font-Bold="true" runat="server" Text="1. Does your baby move all of his/her extremities (arms and legs) well?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="MoveWell" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="0-2 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label3" Font-Bold="true" runat="server" Text="2. Can your baby hold his or her head up when on his/her tummy?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="HeadUp" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label4" Font-Bold="true" runat="server" Text="2-4 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label5" Font-Bold="true" runat="server" Text="3. Can he/she prop him/herself up on her arms when on her tummy?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PropSelf" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label6" Font-Bold="true" runat="server" Text="2-4 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label7" Font-Bold="true" runat="server" Text="4. Can he/she roll over?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="RollOver" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label8" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label9" Font-Bold="true" runat="server" Text="5. Can your baby sit up without support?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="SitUp" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label10" Font-Bold="true" runat="server" Text="6-9 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label11" Font-Bold="true" runat="server" Text="6. Can your baby get around on hands and knees or by scooting on his or her bottom?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="GetAround" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label12" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label13" Font-Bold="true" runat="server" Text="7. Can your baby pull him/herself to stand on furniture?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PullStand" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label14" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label15" Font-Bold="true" runat="server" Text="8. If you hold only one of your baby's hands, can he or she take a few steps?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="TakeSteps" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label16" Font-Bold="true" runat="server" Text="12-15 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label17" Font-Bold="true" runat="server" Text="9. Can your child walk without falling much?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="WalkWell" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label18" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label19" Font-Bold="true" runat="server" Text="10. Can your child run well?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="RunWell" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label20" Font-Bold="true" runat="server" Text="18-24 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label21" Font-Bold="true" runat="server" Text="11. Can your child kick a ball?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="KickBall" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label22" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label23" Font-Bold="true" runat="server" Text="12. Can your child jump in place?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Jump" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label24" Font-Bold="true" runat="server" Text="30-32 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label25" Font-Bold="true" runat="server" Text="13. Does your child trip and fall more than other children his/her age?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="FallMore" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label26" Font-Bold="true" runat="server" Text="24-36 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>Fine Motor</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label27" Font-Bold="true" runat="server" Text="14. Are your baby's hands open most of the time, not in a fist?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="HandOpen" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label28" Font-Bold="true" runat="server" Text="3-4 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label29" Font-Bold="true" runat="server" Text="15. When your baby is holding a toy in each hand, does he or she look from one hand to the other?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="HoldToy" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label30" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label31" Font-Bold="true" runat="server" Text="16. If your baby is holding a toy in one hand can he or she transfer it to the other?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="TransferToy" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label32" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label33" Font-Bold="true" runat="server" Text="17. Can your baby poke at things with just his or her first finger?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PokeThings" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label34" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label35" Font-Bold="true" runat="server" Text="18. Can your baby bang two blocks together?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="BangBlocks" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label36" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label37" Font-Bold="true" runat="server" Text="19. Can your child stack blocks?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="StackBlocks" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label38" Font-Bold="true" runat="server" Text="18-24 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label39" Font-Bold="true" runat="server" Text="20. Does your child try to scribble with crayons or markers?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="ScribbleCrayons" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label40" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>Self-Help</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label41" Font-Bold="true" runat="server" Text="21. Does your baby open his mouth when he sees a bottle, breast, or pacifier?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="OpenMouth" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label42" Font-Bold="true" runat="server" Text="0-2 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label43" Font-Bold="true" runat="server" Text="22. Can your baby hold his/her bottle?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="HoldBottle" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label44" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label45" Font-Bold="true" runat="server" Text="23. Can your baby feed him/herself crackers?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="FeedSelf" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label46" Font-Bold="true" runat="server" Text="6-9 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label47" Font-Bold="true" runat="server" Text="24. Can your baby finger-feed him/herself Cheerios?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="FingerFeed" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label48" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label49" Font-Bold="true" runat="server" Text="25. Does your baby try to get to toys that are out of reach?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="TryToy" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label50" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label51" Font-Bold="true" runat="server" Text="26. Can your baby drink (not suck) from a cup?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="CupDrink" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label52" Font-Bold="true" runat="server" Text="12-15 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label53" Font-Bold="true" runat="server" Text="27. Can your child take off his or her own shoes if you undo the laces or buckles?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="TakeoffShoe" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label54" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label55" Font-Bold="true" runat="server" Text="28. Can your child use a spoon to feed him/herself?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="UseSpoon" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label56" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label57" Font-Bold="true" runat="server" Text="29. When you are dressing your child, does he or she help by holding out an arm or lifting a foot?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="DressingHelp" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label58" Font-Bold="true" runat="server" Text="18-24 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label59" Font-Bold="true" runat="server" Text="30. Does your child try to help when it is time to put things away?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PutSthAway" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label60" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label61" Font-Bold="true" runat="server" Text="31. Can your child take off loose clothes such as pull-down pants, or a coat?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="TakeoffCoat" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label62" Font-Bold="true" runat="server" Text="2-5 to 2-9." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>REC. Language</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label63" Font-Bold="true" runat="server" Text="32. When you face your baby, does he or she look at you, even if only for a little while?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookWhile" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label64" Font-Bold="true" runat="server" Text="0-2mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label65" Font-Bold="true" runat="server" Text="33. When you say your baby's name, does he or she stop and look at you?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookHearingName" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label66" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label67" Font-Bold="true" runat="server" Text="34. When you say thing5 like, ''Where's your bottle?'' does your baby look around for his bottle?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookAroundBottle" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label68" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label69" Font-Bold="true" runat="server" Text="35. How many of these body parts can, your child point to if you say, ''Where are your eyes?''... ''Where is your nose?'' ... ''feet''...''hair?''... ''mouth?''... ''ears?''" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="BodyParts" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label70" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label71" Font-Bold="true" runat="server" Text="36. Can your child follow 2 step directions?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="FollowDireaction" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label72" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>Expressive Language</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label73" Font-Bold="true" runat="server" Text="37. Does your baby make sounds other than crying? (cooing/ babbling)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="MakeSound" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label74" Font-Bold="true" runat="server" Text="0-2mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label75" Font-Bold="true" runat="server" Text="38. Does your baby make special sounds when he or she is happy? (chuckle/ squeal/ laugh)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="MakeSpcSound" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label76" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label77" Font-Bold="true" runat="server" Text="39. Does your baby ''talk'' or make sounds when he or she holds a toy or sees a pet?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="HoldingToyTalk" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label78" Font-Bold="true" runat="server" Text="6-9 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label79" Font-Bold="true" runat="server" Text="40. Does your baby babble chains of sounds?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Babble" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label80" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label81" Font-Bold="true" runat="server" Text="41. Does your baby say ''dada'' or ''mama'', if reference to his mother or father specifically?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="SayDada" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label82" Font-Bold="true" runat="server" Text="12-15 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label83" Font-Bold="true" runat="server" Text="42. Is your child able to say 1-2 words" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="SayWord" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label84" Font-Bold="true" runat="server" Text="12-15 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label85" Font-Bold="true" runat="server" Text="43. If you offer your child something she likes, does she nod or say ''yes''?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="SayYes" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label86" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label87" Font-Bold="true" runat="server" Text="44. Does your child try to get your attention by pointing to things?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="GetAttentions" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label88" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label89" Font-Bold="true" runat="server" Text="45. Does your child put two words together?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PutWordsTogether" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label90" Font-Bold="true" runat="server" Text="18-24 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label91" Font-Bold="true" runat="server" Text="46. Can your child name 3 pictures in a book?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="NamePics" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label92" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label93" Font-Bold="true" runat="server" Text="47. When your child talks, how many words does he or she usually use at a time?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="WordsUse" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label94" Font-Bold="true" runat="server" Text="2-5 to 2-9." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label95" Font-Bold="true" runat="server" Text="48. When your child talks to other people, how much do they understand of what he or she says?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="TalktoOther" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label96" Font-Bold="true" runat="server" Text="2-10 to 3-2." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>Social/ Emotional</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label97" Font-Bold="true" runat="server" Text="49. When you smile at your baby does he or she smile back?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="SmileBack" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label98" Font-Bold="true" runat="server" Text="0-2 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label99" Font-Bold="true" runat="server" Text="50. When you make baby talk with your baby does he or she enjoy this (move arms and legs, coo, babble)?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="EnjoyTalking" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label100" Font-Bold="true" runat="server" Text="2-4 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label101" Font-Bold="true" runat="server" Text="51. When you play gentle tickling games with your baby, does he or she enjoy this?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="EnjoyGame" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label102" Font-Bold="true" runat="server" Text="4-6 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label103" Font-Bold="true" runat="server" Text="52. Does your baby like to play peek-a-boo?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PlayPeekABoo" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label104" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label105" Font-Bold="true" runat="server" Text="53. If you point to a toy across the room does your child look for it?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookforToy" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label106" Font-Bold="true" runat="server" Text="9-12 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label107" Font-Bold="true" runat="server" Text="54. Does your baby look for new things to play with and try to figure out how they work - like busy boxes or squeaking toys?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookforNew" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label108" Font-Bold="true" runat="server" Text="12-15 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label109" Font-Bold="true" runat="server" Text="55. Does your child watch other children do things and then try to copy them?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="CopyOthers" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label110" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label111" Font-Bold="true" runat="server" Text="56. Does your child ever bring objects to you to show you something?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="BringObj" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label112" Font-Bold="true" runat="server" Text="15-18 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label113" Font-Bold="true" runat="server" Text="57. When around other children, does your child try to do things with them, such as feeding or kissing them, or even pushing or taking toys?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Feeding" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label114" Font-Bold="true" runat="server" Text="18-24 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label115" Font-Bold="true" runat="server" Text="58. Doesyourchild watch people's faces for clues to how they are feeling? Can he or she tell of someone or mad, sad, or happy?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="WatchFace" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label116" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label117" Font-Bold="true" runat="server" Text="59. Does your child try to join in when other children play?*" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="JoinInOthers" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label118" Font-Bold="true" runat="server" Text="24-30 mos." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label119" Font-Bold="true" runat="server" Text="60. Does your child pretend to do grown-up things like taking care of a baby, sweeping, driving, or cooking?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Pretend" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label120" Font-Bold="true" runat="server" Text="2-5 to 2-9." ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td colspan="6"><b>Sensory</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label121" Width="800"  Font-Bold="true" runat="server" Text="61. Is your child having any feeding difficulties, such as excessive choking, or gagging with feeding, or eating an extremely limited diet?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="FeedingDiff" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  style="width: 50px">
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label123" Font-Bold="true" runat="server" Text="62. Does your child have any medical condition that is limiting their ability to eat &/or gain weight? Is your child gaining weight at the normal rate, as far as you know?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="MedicalCond" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label125" Font-Bold="true" runat="server" Text="63. Does your child have any sensory sensitivities? (i.e. touch, sound)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="SensorySens" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  style="width: 50px">
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 800px">
                                                <asp:Label ID="Label127" Font-Bold="true" runat="server" Text="64. Have you noticed, or has a professional told you, that your child has low muscle tone (sort of floppy) or has stiff muscles?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LowMuscle" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td style="width: 50px">
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr style="height:20px;">
                                            <td colspan="6"><b>Comments:</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <td colspan="6" class="td_unline">
                                            <asp:TextBox ID="ChecklistComments" runat="server" Height="80px" TextMode="MultiLine" BorderStyle="Solid" Wrap="true" Width="97%">
                                            </asp:TextBox>
                                        </td>
                                        <tr>
                                            <td colspan="6" style="height: 25px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        </table>
                    </div>
                    <div id="Tab3" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr>
                                <td style="height: 10px">
                                </td>
                            </tr>
                            <tr  class="tr_common">
                                <td valign="middle" align="center">
                                    <asp:Label ID="Label122" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                        Height="24px">M- CHAT</asp:Label>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 150px">
                                                <asp:Label ID="Label124" Font-Bold="true" runat="server" Text="Date:" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="ChatDate" runat="server" Width="100px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);">
                                            </asp:TextBox>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label126" runat="server" Font-Bold="true" Text="Name:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:Label ID="CName" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 20">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label129" runat="server" Font-Bold="true" Text="Age:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 60px">
                                                <asp:Label ID="CAge" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 5px">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr  style="height:20px;">
                                            <td colspan="6"><b>Please fill out the following ahout how your child usually is. Please try to answer every question. If the behavior is rare(e.g., you've seen it once or twice), please answer as if the child does not do it.</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label131" Font-Bold="true" runat="server" Text="1. If you point at something across the room, does your child look at it?	
                                                    <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, if you point at a toy or an animal, does your child look at it?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Swung" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label132" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label133" Font-Bold="true" runat="server" Text="2. Have you ever wondered if your child might be deaf?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="InterestInOther" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label134" Font-Bold="true" runat="server" Text="YES*" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label135" Font-Bold="true" runat="server" Text="3. Does your child play pretend or make-believe?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, pretend to drink from an empty cup, pretend to talk on a phone, or pretend to feed a doll or stuffed animal?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Climbing" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label136" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label137" Font-Bold="true" runat="server" Text="4. Does your child like climbing on things?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, furniture, playground equipment, or stairs)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PlayPeek" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label138" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label139" Font-Bold="true" runat="server" Text="5. Does your child make unusual finger movements near his or her eyes?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, does your child wiggle his or her fingers close to his or her eyes?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PretendPhone" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label140" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label141" Font-Bold="true" runat="server" Text="6. Does your child point with one finger to ask for something or get help?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, pointing to an snack or toy that is out of reach)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="UseFingerAsk" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label142" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label143" Font-Bold="true" runat="server" Text="7. Does your child point with one finger to show you something interesting?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, pointing to an airplane in the sky or a big truck in the road)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="UseFingerInd" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label144" Font-Bold="true" runat="server" Text="YES*" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label145" Font-Bold="true" runat="server" Text="8. Is your child interested in other children?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, does your child watch other children, smile at them, or go to them?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="PlaywithToy" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label146" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label147" Font-Bold="true" runat="server" Text="9. Does your child show you things by bringing them to you or holding them up for you to see - not to get help, but just to share?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, showing you a flower, a stuffed animal, or a toy truck)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="ShowSth" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label148" Font-Bold="true" runat="server" Text="YES*" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label149" Font-Bold="true" runat="server" Text="10. Does your child respond when you call his or her name?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, does he or she look up, talk or babble or stop what he or she doing when you call him or her name?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookAtU" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label150" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label151" Font-Bold="true" runat="server" Text="11. When you smile at your child, does he or she smile back at you?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Oversensitive" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label152" Font-Bold="true" runat="server" Text="No" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label153" Font-Bold="true" runat="server" Text="12. Does your child get upset by everyday noises?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, does your child scream or cry to noise such as a vacuum cleaner or loud music?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Smile" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label154" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label155" Font-Bold="true" runat="server" Text="13. Does your child walk?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Imitate" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label156" Font-Bold="true" runat="server" Text="YES*" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label157" Font-Bold="true" runat="server" Text="14. Does your child look you in the eye when you are talking to him or her, playing with him or her, or dressing him or her?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="RespondName" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label158" Font-Bold="true" runat="server" Text="YES*" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label159" Font-Bold="true" runat="server" Text="15. Does your child try to copy what you do?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, wave bye-bye, clap, or make a funny noise when you do)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="AcrossRoom" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label160" Font-Bold="true" runat="server" Text="YES*" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label161" Font-Bold="true" runat="server" Text="16. If you turn your head to look at something, does your child look around to see what you are looking at?" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Walk" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label162" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label163" Font-Bold="true" runat="server" Text="17. Does your child try to get you to watch him or her?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, does your child look at you for praise, or say 'look' or 'watch me'?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="LookAtSth" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label164" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label165" Font-Bold="true" runat="server" Text="18. Does your child understand when you tell him or her to do something?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, if you don’t point, can your child understand put the book on the chair or bring me the blanket?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="FingerMovement" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label166" Font-Bold="true" runat="server" Text="No" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label167" Font-Bold="true" runat="server" Text="19. If something new happens, does your child look at your face to see how you feel about it?
                                                <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, if he or she hears a strange or funny noise, or sees a new toy, will he or she look at your face?)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="AttractAtt" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label168" Font-Bold="true" runat="server" Text="Yes" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr  class="tr_common">
                                            <td  class="td_label" style="width: 700px">
                                                <asp:Label ID="Label169" Font-Bold="true" runat="server" Text="20. Does your child like movement activities?
                                                   <br />&nbsp;&nbsp;&nbsp;&nbsp;(FOR EXAMPLE, being swung or bounced on your knee)" ></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline"style="width: 100px">
                                                <asp:DropDownList ID="Deaf" Width="100" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td  class="td_label" style="width: 80px">
                                                <asp:Label ID="Label170" Font-Bold="true" runat="server" Text="No" ></asp:Label>
                                            </td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr align="center" style="height:20px;">
                                            <td ><b>M- CHAT Scoring Instructions</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr style="height:20px;">
                                            <td ><b>A child fails the checklist when 2 or more critical items are failed OR when any three items are failed. Yes/No answers convert to pass/fail responses. Above are listed the pass responses for each item on the M- CHAT. Bold capitalized items are CRITICAL items.</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 5px">
                                            </td>
                                        </tr>
                                        <tr style="height:20px;">
                                            <td ><b>Not all children who fail the checklist will meet criteria for a diagnosis on the autism spectrum. However, children who fail the checklist should be evaluated in more depth by the physician or referred for a developmental evaluation with a specialist.</b></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 40px">
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
