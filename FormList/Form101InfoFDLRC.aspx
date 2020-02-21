<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form101InfoFDLRC.aspx.cs" Inherits="Virweb2.FormList.Form101InfoFDLRC" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::Lanterman Intake:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
    <!--
        function print_click() {
            NoConfirmExit();
            var key = document.form101.keyid.value.toString();
            winhref("PrintForm101FDLRC.aspx?id=" + key, "PrintForm101InfoFDLRC");
        }

        function submit_click() {
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
                    if (document.getElementById("earlystart_yes") != null) {
                        document.getElementById("earlystart_yes").checked = false;
                        DisableEarlyStart();
                    }
                    EnableDevelop();
                }
                else {
                    if (document.getElementById("earlystart_yes") != null) {
                        document.getElementById("earlystart_yes").checked = true;
                        EnableEarlyStart();
                    }
                    DisableDevelop();
                }
            }
            else if (click_type == "2") //earlystart_yes
            {
                if (document.getElementById("earlystart_yes").checked) {
                    if (document.getElementById("earlystart_no") != null) {
                        document.getElementById("earlystart_no").checked = false;
                        DisableDevelop();
                    }
                    EnableEarlyStart();
                }
                else {
                    if (document.getElementById("earlystart_no") != null) {
                        document.getElementById("earlystart_no").checked = true;
                        EnableDevelop();
                    }
                    DisableEarlyStart();
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

        function EnableEarlyStart() {
            var esrk = new getObj('esrk');
            esrk.obj.disabled = false;
            esrk.parent.disabled = false;
            document.getElementById("Esrk_dueto").disabled = false;
            var dpdy = new getObj('dpdy');
            dpdy.obj.disabled = false;
            dpdy.parent.disabled = false;
            var gm = new getObj('gm');
            gm.obj.disabled = false;
            gm.parent.disabled = false;
            var fm = new getObj('fm');
            fm.obj.disabled = false;
            fm.parent.disabled = false;
            var sp = new getObj('sp');
            sp.obj.disabled = false;
            sp.parent.disabled = false;
            var dpdy_other = new getObj('dpdy_other');
            dpdy_other.obj.disabled = false;
            dpdy_other.parent.disabled = false;
            document.getElementById("dpdy_other_desc").disabled = false;
            var hrd = new getObj('hrd');
            hrd.obj.disabled = false;
            hrd.parent.disabled = false;
            document.getElementById("Hrd_dueto").disabled = false;
            document.getElementById("gest").disabled = false;
            document.getElementById("wgt").disabled = false;
            document.getElementById("wgt_unit").disabled = false;
            document.getElementById("apgar").disabled = false;
            var Low_incid = new getObj('Low_incid');
            Low_incid.obj.disabled = false;
            Low_incid.parent.disabled = false;
            var visual = new getObj('visual');
            visual.obj.disabled = false;
            visual.parent.disabled = false;
            var hearing = new getObj('hearing');
            hearing.obj.disabled = false;
            hearing.parent.disabled = false;
            var ortho = new getObj('ortho');
            ortho.obj.disabled = false;
            ortho.parent.disabled = false;
            document.getElementById("consid_other").disabled = false;

            var Dcfs_Dependent_yes = new getObj('Dcfs_Dependent_yes');
            Dcfs_Dependent_yes.obj.disabled = false;
            Dcfs_Dependent_yes.parent.disabled = false;
            var Dcfs_Dependent_no = new getObj('Dcfs_Dependent_no');
            Dcfs_Dependent_no.obj.disabled = false;
            Dcfs_Dependent_no.parent.disabled = false;
            var Dcfs_Adopting_yes = new getObj('Dcfs_Adopting_yes');
            Dcfs_Adopting_yes.obj.disabled = false;
            Dcfs_Adopting_yes.parent.disabled = false;
            var Dcfs_Adopting_no = new getObj('Dcfs_Adopting_no');
            Dcfs_Adopting_no.obj.disabled = false;
            Dcfs_Adopting_no.parent.disabled = false;
            var Dcfs_EducRight_NA = new getObj('Dcfs_EducRight_NA');
            Dcfs_EducRight_NA.obj.disabled = false;
            Dcfs_EducRight_NA.parent.disabled = false;
            var Dcfs_EducRight_YES = new getObj('Dcfs_EducRight_YES');
            Dcfs_EducRight_YES.obj.disabled = false;
            Dcfs_EducRight_YES.parent.disabled = false;
            var Dcfs_EducRight_NO = new getObj('Dcfs_EducRight_NO');
            Dcfs_EducRight_NO.obj.disabled = false;
            Dcfs_EducRight_NO.parent.disabled = false;
            var Dcfs_EducRight_Unknow = new getObj('Dcfs_EducRight_Unknow');
            Dcfs_EducRight_Unknow.obj.disabled = false;
            Dcfs_EducRight_Unknow.parent.disabled = false;

            document.getElementById("Dcfs_ProvideName").disabled = false;
            document.getElementById("Dcfs_ProvidePhone").disabled = false;
            document.getElementById("Dcfs_ProvideAddress").disabled = false;
            var Dcfs_CSW_yes = new getObj('Dcfs_CSW_yes');
            Dcfs_CSW_yes.obj.disabled = false;
            Dcfs_CSW_yes.parent.disabled = false;
            var Dcfs_CSW_no = new getObj('Dcfs_CSW_no');
            Dcfs_CSW_no.obj.disabled = false;
            Dcfs_CSW_no.parent.disabled = false;
            document.getElementById("Pediatrician").disabled = false;
            document.getElementById("Ped_Address").disabled = false;
            document.getElementById("Ped_phone").disabled = false;
            document.getElementById("Ped_fax").disabled = false;
            var Ped_Medication_yes = new getObj('Ped_Medication_yes');
            Ped_Medication_yes.obj.disabled = false;
            Ped_Medication_yes.parent.disabled = false;
            var Ped_Medication_no = new getObj('Ped_Medication_no');
            Ped_Medication_no.obj.disabled = false;
            Ped_Medication_no.parent.disabled = false;
            document.getElementById("Ped_Reason").disabled = false;
            document.getElementById("Lang_response").disabled = false;
            document.getElementById("Lang_communt").disabled = false;
            document.getElementById("Lang_words").disabled = false;
            document.getElementById("Lang_speech").disabled = false;
            document.getElementById("Lang_firstword").disabled = false;
            document.getElementById("Lang_understand").disabled = false;
        }

        function DisableEarlyStart() {
            var esrk = new getObj('esrk');
            esrk.obj.disabled = true;
            esrk.parent.disabled = true;
            esrk.obj.checked = false;
            document.getElementById("Esrk_dueto").value = "";
            document.getElementById("Esrk_dueto").disabled = true;
            var dpdy = new getObj('dpdy');
            dpdy.obj.disabled = true;
            dpdy.parent.disabled = true;
            dpdy.obj.checked = false;
            var gm = new getObj('gm');
            gm.obj.disabled = true;
            gm.parent.disabled = true;
            gm.obj.checked = false;
            var fm = new getObj('fm');
            fm.obj.disabled = true;
            fm.parent.disabled = true;
            fm.obj.checked = false;
            var sp = new getObj('sp');
            sp.obj.disabled = true;
            sp.parent.disabled = true;
            sp.obj.checked = false;
            var dpdy_other = new getObj('dpdy_other');
            dpdy_other.obj.disabled = true;
            dpdy_other.parent.disabled = true;
            dpdy_other.obj.checked = false;
            document.getElementById("dpdy_other_desc").value = "";
            document.getElementById("dpdy_other_desc").disabled = true;
            var hrd = new getObj('hrd');
            hrd.obj.disabled = true;
            hrd.parent.disabled = true;
            hrd.obj.checked = false;
            document.getElementById("Hrd_dueto").value = "";
            document.getElementById("Hrd_dueto").disabled = true;
            document.getElementById("gest").value = "";
            document.getElementById("gest").disabled = true;
            document.getElementById("wgt").value = "";
            document.getElementById("wgt").disabled = true;
            document.getElementById("wgt_unit").disabled = true;
            document.getElementById("apgar").value = "";
            document.getElementById("apgar").disabled = true;
            var Low_incid = new getObj('Low_incid');
            Low_incid.obj.disabled = true;
            Low_incid.parent.disabled = true;
            Low_incid.obj.checked = false;
            var visual = new getObj('visual');
            visual.obj.disabled = true;
            visual.parent.disabled = true;
            visual.obj.checked = false;
            var hearing = new getObj('hearing');
            hearing.obj.disabled = true;
            hearing.parent.disabled = true;
            hearing.obj.checked = false;
            var ortho = new getObj('ortho');
            ortho.obj.disabled = true;
            ortho.parent.disabled = true;
            ortho.obj.checked = false;
            document.getElementById("consid_other").value = "";
            document.getElementById("consid_other").disabled = true;
            var Dcfs_Dependent_yes = new getObj('Dcfs_Dependent_yes');
            Dcfs_Dependent_yes.obj.disabled = true;
            Dcfs_Dependent_yes.parent.disabled = true;
            Dcfs_Dependent_yes.obj.checked = false;
            var Dcfs_Dependent_no = new getObj('Dcfs_Dependent_no');
            Dcfs_Dependent_no.obj.disabled = true;
            Dcfs_Dependent_no.parent.disabled = true;
            Dcfs_Dependent_no.obj.checked = false;
            var Dcfs_Adopting_yes = new getObj('Dcfs_Adopting_yes');
            Dcfs_Adopting_yes.obj.disabled = true;
            Dcfs_Adopting_yes.parent.disabled = true;
            Dcfs_Adopting_yes.obj.checked = false;
            var Dcfs_Adopting_no = new getObj('Dcfs_Adopting_no');
            Dcfs_Adopting_no.obj.disabled = true;
            Dcfs_Adopting_no.parent.disabled = true;
            Dcfs_Adopting_no.obj.checked = false;
            var Dcfs_EducRight_NA = new getObj('Dcfs_EducRight_NA');
            Dcfs_EducRight_NA.obj.disabled = true;
            Dcfs_EducRight_NA.parent.disabled = true;
            Dcfs_EducRight_NA.obj.checked = false;
            var Dcfs_EducRight_YES = new getObj('Dcfs_EducRight_YES');
            Dcfs_EducRight_YES.obj.disabled = true;
            Dcfs_EducRight_YES.parent.disabled = true;
            Dcfs_EducRight_YES.obj.checked = false;
            var Dcfs_EducRight_NO = new getObj('Dcfs_EducRight_NO');
            Dcfs_EducRight_NO.obj.disabled = true;
            Dcfs_EducRight_NO.parent.disabled = true;
            Dcfs_EducRight_NO.obj.checked = false;
            var Dcfs_EducRight_Unknow = new getObj('Dcfs_EducRight_Unknow');
            Dcfs_EducRight_Unknow.obj.disabled = true;
            Dcfs_EducRight_Unknow.parent.disabled = true;
            Dcfs_EducRight_Unknow.obj.checked = false;

            document.getElementById("Dcfs_ProvideName").value = "";
            document.getElementById("Dcfs_ProvideName").disabled = true;
            document.getElementById("Dcfs_ProvidePhone").value = "";
            document.getElementById("Dcfs_ProvidePhone").disabled = true;
            document.getElementById("Dcfs_ProvideAddress").value = "";
            document.getElementById("Dcfs_ProvideAddress").disabled = true;
            var Dcfs_CSW_yes = new getObj('Dcfs_CSW_yes');
            Dcfs_CSW_yes.obj.disabled = true;
            Dcfs_CSW_yes.parent.disabled = true;
            Dcfs_CSW_yes.obj.checked = false;
            var Dcfs_CSW_no = new getObj('Dcfs_CSW_no');
            Dcfs_CSW_no.obj.disabled = true;
            Dcfs_CSW_no.parent.disabled = true;
            Dcfs_CSW_no.obj.checked = false;
            document.getElementById("Pediatrician").value = "";
            document.getElementById("Pediatrician").disabled = true;
            document.getElementById("Ped_Address").value = "";
            document.getElementById("Ped_Address").disabled = true;
            document.getElementById("Ped_phone").value = "";
            document.getElementById("Ped_phone").disabled = true;
            document.getElementById("Ped_fax").value = "";
            document.getElementById("Ped_fax").disabled = true;
            var Ped_Medication_yes = new getObj('Ped_Medication_yes');
            Ped_Medication_yes.obj.disabled = true;
            Ped_Medication_yes.parent.disabled = true;
            Ped_Medication_yes.obj.checked = false;
            var Ped_Medication_no = new getObj('Ped_Medication_no');
            Ped_Medication_no.obj.disabled = true;
            Ped_Medication_no.parent.disabled = true;
            Ped_Medication_no.obj.checked = false;
            document.getElementById("Ped_Reason").value = "";
            document.getElementById("Ped_Reason").disabled = true;

            document.getElementById("Lang_response").value = "";
            document.getElementById("Lang_response").disabled = true;
            document.getElementById("Lang_communt").value = "";
            document.getElementById("Lang_communt").disabled = true;
            document.getElementById("Lang_words").value = "";
            document.getElementById("Lang_words").disabled = true;
            document.getElementById("Lang_speech").value = "";
            document.getElementById("Lang_speech").disabled = true;
            document.getElementById("Lang_firstword").value = "";
            document.getElementById("Lang_firstword").disabled = true;
            document.getElementById("Lang_understand").value = "";
            document.getElementById("Lang_understand").disabled = true;
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
            //if (!isMaxLength(document.getElementById("comments"), 500)) {
            //    document.getElementById("comments").focus();
            //    return false;
            //}

            NoConfirmExit();
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('../FormList/Form101List.aspx');
        }
    //-->
    </script>
</head>
<body id="body" runat="server" style="cursor:wait">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form101" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="CloseSearchFlag" id="CloseSearchFlag" value="0" runat="server" />
    <input type="hidden" name="submitdob" id="submitdob" value="" runat="server" />
    <input type="hidden" name="submitmis" id="submitmis" value="" runat="server" />
    <input type="hidden" name="unlockflag" id="unlockflag" value="0" runat="server" />
    <input type="hidden" name="ref_screener" id="ref_screener" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="keyid" id="keyid" value="0" runat="server" />
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
                    <input type="image" id="btnPrint" runat="server" alt="Print" Visible="false" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">Lanterman Intake</asp:Label>
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
                <!-- #AAFFC4-->
            </tr>
        </table>
    </div>
    <div id="Div_Search" style="position: relative; width: 100%; height: 300px; display: none;
        overflow: auto;">
        <br />
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tr_common">
                <td style="width: 30px;">
                </td>
                <td style="width: 60%">
                    <table  class="table_inside">
                        <tr class="tr_common">
                            <td valign="top">
                                <b>SEARCH BY: </b>
                            </td>
                            <td>
                                <asp:DropDownList ID="SearchBy" runat="server" CssClass="infaceDrop" Width="120px" OnSelectedIndexChanged="SearchBy_SelectedIndexChanged"
                                    AutoPostBack="true">
                                    <asp:ListItem Value="0" Selected="True">Name and Dob</asp:ListItem>
                                    <asp:ListItem Value="1">Name</asp:ListItem>
                                    <asp:ListItem Value="2">Dob</asp:ListItem>
                                    <asp:ListItem Value="3">Phone number</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="2">
                                <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                    Height="18px">SEARCH RESULT</asp:Label>
                            </td>
                        </tr>
                        <tr class="tr_common">
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
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px;">
        <table class="table_maindiv">
            <tr>
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td style="font: bold; width: 150px;" class="td_label">
                                <b>Lanterman Intake Appointment:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="font: bold; width: 30px"  class="td_label">
                               <b>Date:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td class="td_unline" style="width: 100px">
                                <asp:TextBox ID="AppDate" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                    runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="font: bold" width="30px"  class="td_label">
                                <b>Time:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 120px">
                                <asp:DropDownList ID="AppTime" runat="server"  CssClass="infaceDrop"  OnClick="DataChanged()">
                                    <asp:ListItem Value="08:00 AM">08:00 AM</asp:ListItem>
                                    <asp:ListItem Value="08:15 AM">08:15 AM</asp:ListItem>
                                    <asp:ListItem Value="08:30 AM">08:30 AM</asp:ListItem>
                                    <asp:ListItem Value="08:45 AM">08:45 AM</asp:ListItem>
                                    <asp:ListItem Value="09:00 AM">09:00 AM</asp:ListItem>
                                    <asp:ListItem Value="09:15 AM">09:15 AM</asp:ListItem>
                                    <asp:ListItem Value="09:30 AM">09:30 AM</asp:ListItem>
                                    <asp:ListItem Value="09:45 AM">09:45 AM</asp:ListItem>
                                    <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                                    <asp:ListItem Value="10:15 AM">10:15 AM</asp:ListItem>
                                    <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
                                    <asp:ListItem Value="10:45 AM">10:45 AM</asp:ListItem>
                                    <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                                    <asp:ListItem Value="11:15 AM">11:15 AM</asp:ListItem>
                                    <asp:ListItem Value="11:30 AM">11:30 AM</asp:ListItem>
                                    <asp:ListItem Value="11:45 AM">11:45 AM</asp:ListItem>
                                    <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
                                    <asp:ListItem Value="12:15 PM">12:15 PM</asp:ListItem>
                                    <asp:ListItem Value="12:30 PM">12:30 PM</asp:ListItem>
                                    <asp:ListItem Value="12:45 PM">12:45 PM</asp:ListItem>
                                    <asp:ListItem Value="01:00 PM">01:00 PM</asp:ListItem>
                                    <asp:ListItem Value="01:15 PM">01:15 PM</asp:ListItem>
                                    <asp:ListItem Value="01:30 PM">01:30 PM</asp:ListItem>
                                    <asp:ListItem Value="01:45 PM">01:45 PM</asp:ListItem>
                                    <asp:ListItem Value="02:00 PM">02:00 PM</asp:ListItem>
                                    <asp:ListItem Value="02:15 PM">02:15 PM</asp:ListItem>
                                    <asp:ListItem Value="02:30 PM">02:30 PM</asp:ListItem>
                                    <asp:ListItem Value="02:45 PM">02:45 PM</asp:ListItem>
                                    <asp:ListItem Value="03:00 PM">03:00 PM</asp:ListItem>
                                    <asp:ListItem Value="03:15 PM">03:15 PM</asp:ListItem>
                                    <asp:ListItem Value="03:30 PM">03:30 PM</asp:ListItem>
                                    <asp:ListItem Value="03:45 PM">03:45 PM</asp:ListItem>
                                    <asp:ListItem Value="04:00 PM">04:00 PM</asp:ListItem>
                                    <asp:ListItem Value="04:15 PM">04:15 PM</asp:ListItem>
                                    <asp:ListItem Value="04:30 PM">04:30 PM</asp:ListItem>
                                    <asp:ListItem Value="04:45 PM">04:45 PM</asp:ListItem>
                                    <asp:ListItem Value="05:00 PM">05:00 PM</asp:ListItem>
                                    <asp:ListItem Value="05:15 PM">05:15 PM</asp:ListItem>
                                    <asp:ListItem Value="05:30 PM">05:30 PM</asp:ListItem>
                                    <asp:ListItem Value="05:45 PM">05:45 PM</asp:ListItem>
                                    <asp:ListItem Value="06:00 PM">06:00 PM</asp:ListItem>
                                    <asp:ListItem Value="06:15 PM">06:15 PM</asp:ListItem>
                                    <asp:ListItem Value="06:30 PM">06:30 PM</asp:ListItem>
                                    <asp:ListItem Value="06:45 PM">06:45 PM</asp:ListItem>
                                    <asp:ListItem Value="07:00 PM">07:00 PM</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 110px">
                                <asp:DropDownList ID="AppOpt" runat="server"  CssClass="infaceDrop" OnClick="DataChanged()" >
                                    <asp:ListItem Value="First Appt">First Appt</asp:ListItem>
                                    <asp:ListItem Value="Second Appt">Second Appt</asp:ListItem>
                                    <asp:ListItem Value="Third Appt">Third Appt</asp:ListItem>
                                    <asp:ListItem Value="4th Appt">4th Appt</asp:ListItem>
                                    <asp:ListItem Value="5+ Appt">5+ Appt</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 200px" class="td_label">
                                <asp:CheckBox ID="last_appointment" runat="server" Text="" /><b>Not show for the last appointment</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td style="font: bold" width="100px"  class="td_label">
                                <b>Assessment Coordinator:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 190px">
                                <asp:DropDownList ID="AppSC" runat="server"  DataValueField="tb_entry_name" CssClass="infaceDrop" OnClick="DataChanged()"
                                    DataTextField="tb_entry_text">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td style="width: 120px">
                                <asp:Button ID="btnPrintApp" runat="server" Text="Print Appointment" Style="width: 140px;"
                                    CssClass="buttonbluestyle" Visible="false"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="16" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common"> 
                            <td colspan="16"  class="td_label">
                                    <asp:CheckBox ID="Terminated_date" runat="server" Text="" />
                                    <b>Terminated</b>
                                    <u><asp:Label ID="terminated_date_value" runat="server"></asp:Label></u> 
                                    &nbsp;&nbsp;&nbsp;
                                    <b>Re-open date:</b>
                                    <u><asp:Label ID="reopen_date" runat="server"></asp:Label></u> 
                                    &nbsp;&nbsp;&nbsp;
                                    <b>Referral Time:</b>
                                    <u><asp:Label ID="referraltimes" runat="server"></asp:Label></u>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <b><asp:Label ID="l_status" runat="server" Text="Current Status:"></asp:Label></b>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                    Width="150" OnChange="DataChanged()">
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
                <td class="td_thicksepline">
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
                            <td width="80px" class="td_label">
                                <b>Submit By:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td class="td_unline" style="width: 160px">
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
                            <td colspan="6"></td>
                            <td style="width: auto"></td>  
                        </tr>
                        <tr>
                            <td colspan="14" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td width="80px" class="td_label">
                                <b>Inquiry#:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td class="td_unline" style="width: 160px">
                                <asp:TextBox ID="mis" runat="server" CssClass="infaceText" MaxLength="8" ReadOnly="true"></asp:TextBox>
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
                            <td class="td_label" width="100px" >
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
                            <td class="td_label" width="100px" >
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
                            <td class="td_label" width="150px" >
                                <b>Agency / Relationship:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 180px">
                                <asp:DropDownList ID="ref_relationship" runat="server" DataValueField="tb_entry_name"  CssClass="infaceDrop" OnClick="DataChanged()"
                                    DataTextField="tb_entry_text">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="14" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="6">
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
                            <td   style="width: 180px">
                                <asp:DropDownList ID="ref_group" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
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
                            <td style="width: 50px;"  class="td_label">
                                <b>Street:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td class="td_unline" style="width: 560px;">
                                <asp:TextBox ID="ref_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td style="width: 40px;"  class="td_label">
                                <b>City:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td class="td_unline" style="width: 160px;">
                                <asp:TextBox ID="ref_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td style="width: 40px;"  class="td_label">
                                <b>State:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td class="td_unline" style="width: 40px;" >
                                <asp:TextBox ID="ref_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td style="width: 30px;"  class="td_label">
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
                <td style="height: 5px">
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td style="width: 50px;"  class="td_label">
                                <b>Phone:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td style="width: 120px">
                                <table class="table_inside">
                                    <tr class="tr_common">
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
                            <td style="width: 40px;"  class="td_label">
                                <b>Cell:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td style="width: 120px">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td align="center" width="10px">
                                            (
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="ref_phone_2_1" runat="server" CssClass="inface" MaxLength="3" ></asp:TextBox>
                                        </td>
                                        <td align="center" width="15px">
                                            )
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="ref_phone_2_2" runat="server" CssClass="inface" MaxLength="3" ></asp:TextBox>
                                        </td>
                                        <td align="center" width="10px">
                                            -
                                        </td>
                                        <td class="td_unline" width="30px">
                                            <asp:TextBox ID="ref_phone_2_3" runat="server" CssClass="inface" MaxLength="4" ></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td style="width: 40px;"  class="td_label">
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
                                            <asp:TextBox ID="ref_phone_3_1" runat="server" CssClass="inface" MaxLength="3"
                                                ></asp:TextBox>
                                        </td>
                                        <td align="center" width="15px">
                                            )
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="ref_phone_3_2" runat="server" CssClass="inface" MaxLength="3"
                                                ></asp:TextBox>
                                        </td>
                                        <td align="center" width="10px">
                                            -
                                        </td>
                                        <td class="td_unline" width="30px">
                                            <asp:TextBox ID="ref_phone_3_3" runat="server" CssClass="inface" MaxLength="4"
                                                ></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width:30px" class="td_label">
                                <b>EXT.</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
                                <table class="table_inside">
                                    <tr>
                                        <td class="td_unline" width="40px">
                                            <asp:TextBox ID="ref_phone_3_4" runat="server" CssClass="inface" MaxLength="5"
                                                ></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width:auto">
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
                            <td  style="width:100px" class="td_label">
                                <b>Referred By:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width:200px">
                                <asp:DropDownList ID="ref_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width:200px" class="td_label">
                                <b>Is Family Aware of Referral?</b>
                            </td>
                            <td  class="td_label" style="width:120px">
                                <asp:RadioButton Text="" ID="family_aware_yes" GroupName="family_aware" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton Text="" ID="family_aware_no" GroupName="family_aware" runat="server" /><b>No</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td style="width:50px"  class="td_label">
                                <b>Email:</b>
                            </td>
                            <td style="width:5px"></td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:TextBox ID="Email" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                            </td>
                            <td style="width:auto">
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
                            <td  style="width: 100px" class="td_label">
                                <b>Reason for Referral:</b>
                            </td>
                            <td style="width:5px"></td>
                            <td  style="width: 800px">
                                <asp:TextBox ID="ref_reason" runat="server" BorderStyle="Solid" Wrap="true" Height="80" Width="99%" TextMode="MultiLine">
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
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td  style="width:120px" class="td_label">
                                <b>Intake Specialist:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width:170px">
                                <asp:DropDownList ID="ServSC" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                    CssClass="infaceDropRead">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width:100px">
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width:120px">
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td style="font: bold" class="td_label">
                                <asp:CheckBox ID="former_info" runat="server" Text="FORMER INFO ONLY" Visible="false" />
                            </td>
                            <td style="width: 10px">
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
                            <td  style="width: 150px" class="td_label">
                                <asp:CheckBox ID="juvenile_case" runat="server" Text="" /><b>Juvenile Court Case</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width: 150px" class="td_label">
                                <asp:CheckBox ID="adult_case" runat="server" Text="" /><b>Adult Court Case</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width: 150px" class="td_label">
                                <asp:CheckBox ID="over_18" runat="server" Text=""/><b>Over age 18</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width: 150px" class="td_label">
                                <asp:CheckBox ID="cb_211" runat="server" Text="" /><b>211</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width: 150px" class="td_label">
                                <asp:CheckBox ID="cb_DCFS" runat="server" Text="" /><b>DCFS</b>
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
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  style="width: 60px" class="td_label">
                                            <b>Name:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 30px">
                                            <asp:TextBox ID="name_mi" runat="server" CssClass="inface" MaxLength="1"></asp:TextBox>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 40px" class="td_label">
                                            <b>DOB:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td style="width: 550px">
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  class="td_unline" style="width: 100px">
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
                                                        <asp:TextBox ID="age" runat="server" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                                                    </td>

                                                    <td>
                                                        <asp:Button ID="btnCheck" runat="server" Text="Check" Style="width: 60px" CssClass="buttonbluestyle"
                                                            Visible="False" OnClientClick="javascript:document.getElementById('CloseSearchFlag').value='1';Div_Search.style.display='';"
                                                            OnClick="btnCheck_Click"></asp:Button>
                                                    </td>
                                                    <td style="width: 30px">
                                                    </td>
                                                    <td  style="font: bold; width: 40px" class="td_label">
                                                        <b>Sex:</b>
                                                    </td>
                                                    <td style="width: 5px">
                                                    </td>
                                                    <td  style="width: 120px">
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
                                        <td  class="td_label">
                                            First Name
                                        </td>
                                        <td width="5px">
                                        </td>
                                        <td  class="td_label">
                                            M
                                        </td>
                                        <td width="5px">
                                        </td>
                                        <td  class="td_label">
                                            Last Name
                                        </td>
                                        <td width="10px">
                                        </td>
                                        <td  style="font: bold; width: 40px" class="td_label">
                                            <b>Email:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 400px">
                                            <asp:TextBox ID="EmailInfoForC" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td colspan="3">
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
                                        <td  style="font: bold; width: 60px" class="td_label">
                                            <b>Aka:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="name_aka_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 30px">
                                            <asp:TextBox ID="name_aka_mi" runat="server" CssClass="inface" MaxLength="1"></asp:TextBox>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="name_aka_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="font: bold; width: 30px" class="td_label">
                                            <b>SSN:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 80px" class="td_unline">
                                            <asp:TextBox ID="ssn" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="font: bold; width: 80px" class="td_label">
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
                                        <td colspan="5">
                                        </td>
                                        <td  style="font: bold; width: 80px" class="td_label">
                                            <b>Birth Hospital:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td class="td_unline" style="width: 300px">
                                            <asp:TextBox ID="BirthHospital" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
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
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Language:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width:350px">
                                <asp:DropDownList ID="language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                   CssClass="infaceDrop"  OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="50">
                            </td>
                            <td  style="width: 120px">
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Ethnicity:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350">
                                <asp:DropDownList ID="ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="50">
                            </td>
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Marital Status:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350">
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
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Residence Type:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350">
                                <asp:DropDownList ID="residence_current" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="50">
                            </td>
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Program Status:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350">
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
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Health District:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350">
                                <asp:DropDownList ID="health_district" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="50">
                            </td>
                            <td  style="font: bold; width: 120px" class="td_label">
                                <b>Legal Status:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350">
                                <asp:DropDownList ID="legal_status" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="fullentry" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  style="font: bold; width: 120px" class="td_label">
                                <asp:CheckBox ID="PrivateIns" runat="server" Text="" /><b>Private Insurance</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350" class="td_unline">
                                <asp:TextBox ID="PrivateIns_desc" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td width="50">
                            </td>
                            <td  style="font: bold; width: 120px" class="td_label">
                                <asp:CheckBox ID="Medi_cal" runat="server" Text="" /><b>Medi-Cal</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="350" class="td_unline">
                                <asp:TextBox ID="Medi_cal_desc" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
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
                            <td  style="width: 70px; font: bold" class="td_label">
                                <b>Street:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 560px">
                                <asp:TextBox ID="address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 55px; font: bold"  class="td_label">
                                <b>City:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 160px">
                                <asp:TextBox ID="address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 55px; font: bold"  class="td_label">
                                <b>State:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 40px">
                                <asp:TextBox ID="address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 45px; font: bold"  class="td_label">
                                <b>Zip:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 100px">
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
                            <td  style="width: 70px; font: bold" class="td_label">
                                <b>Street:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 560px">
                                <asp:TextBox ID="mail_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 55px; font: bold"  class="td_label">
                                <b>City:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 160px">
                                <asp:TextBox ID="mail_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td style="width: 55px; font: bold"  class="td_label">
                                <b>State:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 40px">
                                <asp:TextBox ID="mail_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 45px; font: bold" class="td_label">
                                <b>Zip:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 100px">
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
                        <tr  class="tr_common">
                            <td style="width:140px" class="td_label">
                                <b>Telephone Number:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width:40px" class="td_label">
                                <b>Home:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
                                <table class="table_inside">
                                    <tr>
                                        <td align="center" width="10px">
                                            (
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="phone_1_1" runat="server" CssClass="inface" MaxLength="3" ></asp:TextBox>
                                        </td>
                                        <td align="center" width="15px">
                                            )
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="phone_1_2" runat="server" CssClass="inface" MaxLength="3" ></asp:TextBox>
                                        </td>
                                        <td align="center" width="10px">
                                            -
                                        </td>
                                        <td class="td_unline" width="30px">
                                            <asp:TextBox ID="phone_1_3" runat="server" CssClass="inface" MaxLength="4" ></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width:40px" class="td_label">
                                <b>Cell:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
                                <table class="table_inside">
                                    <tr>
                                        <td align="center" width="10px">
                                            (
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="phone_2_1" runat="server" CssClass="inface" MaxLength="3" ></asp:TextBox>
                                        </td>
                                        <td align="center" width="15px">
                                            )
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="phone_2_2" runat="server" CssClass="inface" MaxLength="3" ></asp:TextBox>
                                        </td>
                                        <td align="center" width="10px">
                                            -
                                        </td>
                                        <td class="td_unline" width="30px">
                                            <asp:TextBox ID="phone_2_3" runat="server" CssClass="inface" MaxLength="4" ></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 10px">
                            </td>

                            <td  style="width:40px" class="td_label">
                                <b>Work:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
                                <table class="table_inside">
                                    <tr>
                                        <td align="center" width="10px">
                                            (
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="phone_3_1" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                        </td>
                                        <td align="center" width="15px">
                                            )
                                        </td>
                                        <td class="td_unline" width="25px">
                                            <asp:TextBox ID="phone_3_2" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                        </td>
                                        <td align="center" width="10px">
                                            -
                                        </td>
                                        <td class="td_unline" width="30px">
                                            <asp:TextBox ID="phone_3_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width:30px" class="td_label">
                                <b>EXT.</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_unline" width="40px">
                                            <asp:TextBox ID="phone_3_4" runat="server" CssClass="inface" MaxLength="5"></asp:TextBox>
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
                            <td  style="width: 180px; font: bold" class="td_label">
                                <b>Pediatrician/Physician Name:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 560px">
                                <asp:TextBox ID="PediatricianName" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                            </td>
                            <td style="width:auto"></td>
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
                    <table id="Table1" class="table_inside" runat="server">
                        <tr  class="tr_common">
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="font: bold; width: 180px">
                                            <b>Pending Information</b>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td style="width: 260px" class="td_label">
                                            
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <b>Pending</b>
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <b>Received</b>
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <b>Date Received</b>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>IEP/Psycho-educational</b>
                                        </td>
                                        
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="iep_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="iep_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                                <asp:TextBox ID="iep_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>Medical Records</b>
                                        </td>
                                        
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="medrec_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="medrec_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                                <asp:TextBox ID="medrec_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" >
                                                </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>Psychiatric Records</b>
                                        </td>
                                        
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="psyrec_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="psyrec_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                                <asp:TextBox ID="psyrec_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>Speech and Language Assessment</b>
                                        </td>
                                       
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="sla_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="sla_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                                <asp:TextBox ID="sla_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>Court Records</b>
                                        </td>
                                        
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="courtrec_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="courtrec_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                            <asp:TextBox ID="courtrec_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);" >
                                            </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>Psychological Reports</b>
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="psyrpt_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="psyrpt_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                            <asp:TextBox ID="psyrpt_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                onfocus="showcalendar(event, this);" >
                                            </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="font: bold; width: 180px">
                                            
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 260px" class="td_label">
                                            <b>Other</b>
                                        </td>
                                        
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="other_pending" runat="server" />
                                        </td>
                                        <td  width="120px" style="font: bold; width: 120px;" class="td_label" align="center">
                                            <asp:CheckBox ID="other_received" runat="server" />
                                        </td>
                                        <td  class="td_unline" style="width:120px">
                                                <asp:TextBox ID="other_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" >
                                                </asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" style="height: 5px">
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
            <tr>
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td  style="font: bold; width: 80px" class="td_label">
                                <b>Group:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 150px">
                                <asp:DropDownList ID="contact1_group" runat="server"  DataValueField="tb_code" DataTextField="tb_entry_text" OnSelectedIndexChanged="group1_SelectedIndexChanged"
                                    CssClass="infaceDrop" onchange="NoConfirmExit();" AutoPostBack="true">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 100px" class="td_label">
                                <b>Relationship:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 200px">
                                <asp:DropDownList ID="contact1_relationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 60px"  class="td_label">
                                <b>DOB:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" width="100">
                                <asp:TextBox ID="contact1_dob" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 150px"  class="td_label">
                                <b>Marital Status:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="200">
                                <asp:DropDownList ID="contact1_marital_status" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 60px" class="td_label">
                                <b>UCI#:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" width="100">
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
                            <td  style="font: bold; width: 80px" class="td_label">
                                <b>Name:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td  class="td_unline" style="width: 180px;">
                                <asp:TextBox ID="contact1_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td  class="td_unline" style="width: 180px;">
                                <asp:TextBox ID="contact1_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 100px" class="td_label">
                                <b>SSN:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" width="100">
                                <asp:TextBox ID="contact1_ssn" runat="server" CssClass="inface" MaxLength="14"></asp:TextBox>
                            </td>
                            <td  style="font: bold; width: 150px" class="td_label">
                                <b>Legally Responsible:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="100">
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
                        <tr  class="tr_common">
                            <td>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td  class="td_label">
                                First Name
                            </td>
                            
                            <td>
                            </td>
                            <td  class="td_label">
                                Last Name
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 100px" class="td_label">
                                <b>Disabled:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="100">
                                <asp:DropDownList ID="contact1_disabled" runat="server" CssClass="infaceDrop"
                                    OnClick="DataChanged()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td  style="font: bold; width: 150px"  class="td_label">
                                <b>Deceased:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="100">
                                <asp:DropDownList ID="contact1_deceased" runat="server" CssClass="infaceDrop"
                                    OnClick="DataChanged()">
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
                            <td  style="font: bold; width: 70px" class="td_label">
                                <b>Street:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 560px">
                                <asp:TextBox ID="contact1_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 55px;" class="td_label">
                                <b>City:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 160px">
                                <asp:TextBox ID="contact1_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 55px" class="td_label">
                                <b>State:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 40px">
                                <asp:TextBox ID="contact1_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 45px" class="td_label">
                                <b>Zip:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 100px">
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
                            <td  style="width: 180px" class="td_label">
                                <b>Telephone Number:</b>
                            </td><td style="width: 5px">
                            </td>
                            <td  style="width: 50px" class="td_label">
                                <b>Home:</b>
                            </td><td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
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
                            <td  style="width: 50px" class="td_label">
                                <b>Work:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
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
                            <td style="width: 10px">
                            </td>
                            <td  style="width:30px" class="td_label">
                                <b>EXT.</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 40px">
                                <table class="table_inside">
                                    <tr>
                                        <td class="td_unline" width="40px">
                                            <asp:TextBox ID="contact1_phone_2_4" runat="server" CssClass="inface" MaxLength="5"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width:auto">
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
                            <td  style="font: bold; width: 80px" class="td_label">
                                <b>Group:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 150px">
                                <asp:DropDownList ID="contact2_group" runat="server"  DataValueField="tb_code" DataTextField="tb_entry_text" OnSelectedIndexChanged="group2_SelectedIndexChanged"
                                    CssClass="infaceDrop" onchange="NoConfirmExit();" AutoPostBack="true">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 100px" class="td_label">
                                <b>Relationship:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 200px">
                                <asp:DropDownList ID="contact2_relationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                                    CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 60px" class="td_label">
                                <b>DOB:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" width="100">
                                <asp:TextBox ID="contact2_dob" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                    onfocus="showcalendar(event, this);"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 150px" class="td_label">
                                <b>Marital Status:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="200">
                                <asp:DropDownList ID="contact2_marital_status" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="tb_entry_textID" CssClass="infaceDrop" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 60px" class="td_label">
                                <b>UCI#:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" width="100">
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
                            <td  style="font: bold; width: 80px" class="td_label">
                                <b>Name:</b>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td  class="td_unline" style="width: 180px;">
                                <asp:TextBox ID="contact2_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            <td style="width: 5px;">
                            </td>
                            <td  class="td_unline" style="width: 180px;">
                                <asp:TextBox ID="contact2_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 100px" class="td_label">
                                <b>SSN:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" width="100">
                                <asp:TextBox ID="contact2_ssn" runat="server" CssClass="inface" MaxLength="14"></asp:TextBox>
                            </td>
                            <td  style="font: bold; width: 150px" class="td_label">
                                <b>Legally Responsible:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="100">
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
                            <td  class="td_label">
                                First Name
                            </td>
                            <td>
                            </td>
                            
                            <td  class="td_label">
                                Last Name
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="font: bold; width: 100px"class="td_label">
                                <b>Disabled:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="100">
                                <asp:DropDownList ID="contact2_disabled" runat="server" CssClass="infaceDrop"
                                    OnClick="DataChanged()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td  style="font: bold; width: 150px" class="td_label">
                                <b>Deceased:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  width="100">
                                <asp:DropDownList ID="contact2_deceased" runat="server" CssClass="infaceDrop"
                                    OnClick="DataChanged()">
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
                            <td  style="width: 70px; font: bold" class="td_label">
                                <b>Street:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 560px">
                                <asp:TextBox ID="contact2_address_line_1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 55px; font: bold" class="td_label">
                                <b>City:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 160px">
                                <asp:TextBox ID="contact2_address_city" runat="server" CssClass="inface" MaxLength="19"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 55px; font: bold" class="td_label">
                                <b>State:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 40px">
                                <asp:TextBox ID="contact2_address_state" runat="server" CssClass="inface" MaxLength="2"></asp:TextBox>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 45px; font: bold" class="td_label">
                                <b>Zip:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 100px">
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
                            <td  style="width: 180px" class="td_label">
                                <b>Telephone Number:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 50px" class="td_label">
                                <b>Home:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
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
                            <td  style="width: 50px" class="td_label">
                                <b>Work:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 120px">
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
                            <td style="width: 10px">
                            </td>
                            <td  style="width:30px" class="td_label">
                                <b>EXT.</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  style="width: 40px">
                                <table class="table_inside">
                                    <tr>
                                        <td class="td_unline" width="40px">
                                            <asp:TextBox ID="contact2_phone_2_4" runat="server" CssClass="inface" MaxLength="5"></asp:TextBox>
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
            <tr class="tr_common">
                <td>
                    <table class="table_inside">
                        <tr>
                            <td  style="width: 100px" class="td_label">
                                <b>Comments:</b>
                            </td>
                            <td style="width:5px"></td>
                            <td  style="width: 800px">
							    <asp:textbox id="comments" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="60">
                                </asp:textbox>
                            </td>
                            <td style="width: 5px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        
        <table id="earlystartTB" class="table_maindiv" runat="server">
            <tr>
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td style="font: bold"  class="td_label">
                                <b>
                                    <input type="radio" name="earlystart_yes" id="earlystart_yes" value="" runat="server"
                                        onclick="javascript:earlystart_click('2');" />EARLY START(Birth to 36 months)
                                </b>
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td  class="td_label" style="width: 320px">
                                <asp:CheckBox ID="esrk" runat="server" Text="" /><b>Established Risk/Developmentally Disabled</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td style="width: 50px" class="td_label">
                                <b>Due to:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td class="td_unline" style="width: 300px">
                                <asp:TextBox ID="Esrk_dueto" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
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
                            <td  class="td_label" style="width: 150px">
                                <asp:CheckBox ID="dpdy" runat="server" Text="" /><b>Development Delay</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td colspan="5">
                                <table class="table_inside">
                                    <tr>
                                        <td style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td   class="td_label" style="width: 110px">
                                            <asp:CheckBox ID="gm" runat="server" Text="" /><b>Gross Motor</b>
                                        </td>
                                        <td   class="td_label" style="width: 100px">
                                            <asp:CheckBox ID="fm" runat="server" Text="" /><b>Fine Motor</b>
                                        </td>
                                        <td  class="td_label" style="width: 80px">
                                            <asp:CheckBox ID="sp" runat="server" Text="" /><b>Speech</b>
                                        </td>
                                        <td  class="td_label" style="width: 80px">
                                            <asp:CheckBox ID="dpdy_other" runat="server" Text="" /><b>Other</b>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td style="width: 50px" class="td_label">
                                            <b>Description:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="dpdy_other_desc" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
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
                            <td  class="td_label" style="width: 320px">
                                <asp:CheckBox ID="hrd" runat="server" Text="" /><b>High Risk for Delay</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td  style="width: 50px" class="td_label">
                                <b>Due to:</b>
                            </td>
                            <td style="width: 5px">
                            </td>
                            <td  class="td_unline" style="width: 300px" colspan="2">
                                <asp:TextBox ID="Hrd_dueto" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
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
                            <td colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width: 80px" class="td_label">
                                            <b>Gestation:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="gest" runat="server" CssClass="inface" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 80px" class="td_label">
                                            <b>Weight:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="wgt" runat="server" CssClass="inface" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td  style="width: 80px">
                                            <asp:DropDownList ID="wgt_unit" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
                                                <asp:ListItem Value="B">LB(s)</asp:ListItem>
                                                <asp:ListItem Value="G">Gram(s)</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="font: bold" class="td_label">
                                            <b>Apgar:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
                                            <asp:TextBox ID="apgar" runat="server" CssClass="inface" MaxLength="5"></asp:TextBox>
                                        </td>
                                        <td style="width: 20px">
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
                            <td  class="td_label" style="width: 320px">
                                <asp:CheckBox ID="Low_incid" runat="server" Text="" /><b>Low Incidence -- Impaired in area of</b>
                            </td>
                            <td style="width: 10px">
                            </td>
                            <td colspan="3">
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
                            <td colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width: 50px" class="td_label">
                                            <asp:CheckBox ID="visual" runat="server" Text="" /><b>Visual</b>
                                        </td>
                                        <td  style="width: 50px" class="td_label">
                                            <asp:CheckBox ID="hearing" runat="server" Text="" /><b>Hearing</b>
                                        </td>
                                        <td  style="width: 50px" class="td_label">
                                            <asp:CheckBox ID="ortho" runat="server" Text="" /><b>Orthopedic</b>
                                        </td>
                                        <td style="width: 300px">
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
                            <td colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 150px">
                                            <b>Other Considerations:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 500px">
                                            <asp:TextBox ID="consid_other" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
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
                                        <td  class="td_label" style="width: 150px">
                                            <b>Dependent of Court:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_label">
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
                                        <td  class="td_label" style="width: 150px">
                                            <b>Adopting:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_label">
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
                            <td  colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 380px">
                                            <b>Has Parent's Educational Rights Been Terminated:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_label" style="width:auto">
                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_NA" GroupName="Dcfs_EducRight" runat="server" /><b>NA</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_YES" GroupName="Dcfs_EducRight" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:RadioButton Text="" ID="Dcfs_EducRight_NO" GroupName="Dcfs_EducRight" runat="server" /><b>*No</b>&nbsp;&nbsp;&nbsp;&nbsp;
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
                        <tr class="tr_common">
                            <td>
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td  class="td_label" style="width: 380px" colspan="5">
                                <b>*If No, Provide name and address/phone number of this person:</b>
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
                            <td  colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 20px">
                                        </td>
                                        <td  style="width: 50px" class="td_label">
                                            <b>Name:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Dcfs_ProvideName" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                        </td>
                                        <td style="width: 10px">
                                        </td>
                                        <td  style="width: 120px" class="td_label">
                                            <b>Phone Number:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 120px">
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
                                        <td  style="font: bold" class="td_label">
                                            <b>Address:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 300px" colspan="4">
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
                            <td  colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td   class="td_label" style="width: 410px">
                                            <b>Has "Search" for biological family been completed by CSW:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td   class="td_label" style="width: 150px">
                                            <asp:RadioButton Text="" ID="Dcfs_CSW_yes" GroupName="Dcfs_CSW" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:RadioButton Text="" ID="Dcfs_CSW_no" GroupName="Dcfs_CSW" runat="server" /><b>No</b>
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
                        <tr class="tr_common">
                            <td>
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td  colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  style="width: 120px" class="td_label">
                                            <b>Pediatrician:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 300px">
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
                                        <td  style="width: 120px" class="td_label">
                                            <b>Address:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 300px">
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
                                        <td  colspan="4">
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  style="width: 120px" class="td_label">
                                                        <b>Phone Number:</b>
                                                    </td>
                                                    <td style="width: 5px">
                                                    </td>
                                                    <td  class="td_unline" style="width: 120px" >
                                                        <asp:TextBox ID="Ped_phone" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 20px">
                                                    </td>
                                                    <td  style="width: 120px" class="td_label">
                                                        <b>Fax Number:</b>
                                                    </td>
                                                    <td style="width: 5px">
                                                    </td>
                                                    <td  class="td_unline" style="width: 120px" >
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
                                        <td  style="width: 120px" class="td_label">
                                            <b>Medications:</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 120px" class="td_label">
                                            <asp:RadioButton Text="" ID="Ped_Medication_yes" GroupName="Ped_Medication" runat="server" /><b>Yes</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:RadioButton Text="" ID="Ped_Medication_no" GroupName="Ped_Medication" runat="server" /><b>No</b>
                                        </td>
                                        <td style="width: auto">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  colspan="4">
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td style="width: 150px"  class="td_label">
                                                        <b>Reason for Intake:</b>
                                                    </td>
                                                    <td style="width: 5px">
                                                    </td>
                                                    <td  class="td_unline" style="width: 500px">
                                                        <asp:TextBox ID="Ped_Reason" runat="server" CssClass="inface" MaxLength="200"></asp:TextBox>
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
                            <td colspan="7" style="height: 5px">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                            </td>
                            <td style="width: 20px">
                            </td>
                            <td  colspan="5">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td align="left" style="color: navy" colspan="5">
                                            <b>LANGUAGE DEVELOPMENT:</b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width:350px" class="td_label">
                                            <b>Does the child respond to their name?</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Lang_response" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width:350px" class="td_label">
                                            <b>How does the child communicate their needs?</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Lang_communt" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width:350px" class="td_label">
                                            <b>How many words does the child have?</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Lang_words" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width:350px" class="td_label">
                                            <b>Has the child lost their speech?</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Lang_speech" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width:350px" class="td_label">
                                            <b>When did the child say their first word?</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Lang_firstword" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10%">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="height: 5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 30px">
                                        </td>
                                        <td  style="width:350px" class="td_label">
                                            <b>Does the child understand and follow commands?</b>
                                        </td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:TextBox ID="Lang_understand" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 10%">
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
        
    </div>
    </form>
</body>
</html>
