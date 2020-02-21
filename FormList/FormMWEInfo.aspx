<%@ Page Language="C#" Inherits="Virweb2.FormList.FormMWEInfo" CodeBehind="FormMWEInfo.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::DS3770--Medicaid Waiver Certification And Data Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript"type="text/javascript" >
    <!--
        function print_click() {
           // PopupMessage(10);
               
            var mwc_uci=document.MweInfo.mwc_uci.value.toString();
            var mwc_date=document.MweInfo.mwc_date.value.toString();
            var UserAct = document.MweInfo.UserAct.value.toString();   
            var url ="PrintFormMWEInfo.aspx?mwc_uci="+mwc_uci+"&mwc_date="+mwc_date+"&UserAct="+UserAct;
            winhref(url, 'PrintFormMWEInfo');            
        }

        function save_click() {
            return true;
        }
        
        function verify_click() {
        return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormMWEList.aspx');
        }

        function Sign(UserName) {
            var nowdate = new Date();
            //document.getElementById("mwc_signature").setAttribute("readonly", "false"); 
            document.getElementById("mwc_signature").value = UserName.toString();          
            document.getElementById("mwc_view_date").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            if (document.MweInfo.checksign.value == "Sign") {
                document.MweInfo.checksign.value = "Signed";
            }
            window.document.MweInfo.submit(); 
        }

        function CheckPwd() {
            document.MweInfo.checksign.value = "Sign";
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission() {
            PopupMessage(42);
            return false;
        }
    //-->
    </script>

</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="MweInfo" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="mwc_uci" id="mwc_uci" value="" runat="server" />	
    <input type="hidden" name="mwc_date" id="mwc_date" value="" runat="server" />
    <input type="hidden" name="isAdmin" id="isAdmin" value="" runat="server" />
    <input type="hidden" name="checksign" id="checksign" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();" OnClick="btnAdd_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
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
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 450px">
        <table class="table_maindiv" width="100%">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="MWE">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr style="height: 20px;">
                                            <td style="width: 100%">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle" align="left">
                                                <asp:Label ID="Label2" runat="server" Font-Size="Large" Font-Bold="True" ForeColor="black"
                                                    Width="100%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State of California - Health and Human Services Agency </asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="middle" align="center">
                                                <asp:Label ID="Label7" runat="server" Font-Size="Large" Font-Bold="True" ForeColor="blue"
                                                    Width="100%">Medicaid Waiver Eligibility Record - DS 3770</asp:Label>
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
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px;">
                                                <asp:Label ID="lblEligibility" runat="server" Text="Eligibility Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 140px;">
                                                <asp:TextBox ID="mwc_eligibility_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" Width="140px">
                                                </asp:TextBox>
                                            </td>
                                            <td  style="width: auto;">
                                                
                                            </td>
                                            <td align="left" class="td_label" style="width: 180px;">
                                                <asp:Label ID="lblRecertification" runat="server" Text="Recertification Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline" style="width: 140px;">
                                                <asp:TextBox ID="mwc_recertification_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" Width="140px">
                                                </asp:TextBox>
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px;">
                                                <asp:Label ID="Label4" runat="server" Text="Termination Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:TextBox ID="mwc_termination_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" Width="140px">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                 </table>
                                 </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px">
                                                <asp:Label ID="lblTerminationReason" runat="server" Text="Termination Reason:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="mwc_termination_reason" runat="server" Width="500px" DataValueField="tb_code" DataTextField="fullentry"
                                                     OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px">
                                                <asp:Label ID="Label1" runat="server" Text="Regional Center:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="mwc_termination_rc" runat="server" Width="500px" DataValueField="tb_entry_name" DataTextField="fullentry"
                                                     OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px;">
                                                <asp:Label ID="Label3" runat="server" Text="Reactivation Date:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:TextBox ID="mwc_reactivation_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);" Width="140px">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px">
                                                <asp:Label ID="Label5" runat="server" Text="Reactivation Reason:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="mwc_reactivation_reason" runat="server" Width="500px" DataValueField="tb_code" DataTextField="fullentry"
                                                     OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px">
                                                <asp:Label ID="Label6" runat="server" Text="Regional Center:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:DropDownList ID="mwc_reactivation_rc" runat="server" Width="500px" DataValueField="tb_entry_name" DataTextField="fullentry"
                                                     OnClick="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 180px">
                                                <asp:Label ID="Label8" runat="server" Text="Short Term Absence:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_label">
                                                <asp:RadioButton ID="mwc_short_term_absence_yes" runat="server" GroupName="mwc_short_term_absence"
                                                    Text="Yes" OnClick="DataChanged()"/>
                                                <asp:RadioButton ID="mwc_short_term_absence_no" runat="server" GroupName="mwc_short_term_absence"
                                                    Text="No" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <asp:TextBox ID="mwc_sta_dates" runat="server" Height="100px" TextMode="MultiLine"
                                                    Width="100%" CssClass="inface"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" >
                                                <asp:Label ID="Label9" runat="server" Text="ALL LEVEL OF CARE QUALIFYING DEFICITS:(Includes special health care requirements.)"
                                                    Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <asp:TextBox ID="mwc_deficits" runat="server" Height="150px" TextMode="MultiLine"
                                                    Width="100%" CssClass="inface" ></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" >
                                                <asp:Label ID="Label10" runat="server" Text="SPECIAL HEALTH CARE REQUIREMENTS:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <asp:TextBox ID="mwc_shcr" runat="server" Height="150px" TextMode="MultiLine" 
                                                    Width="100%" CssClass="inface" ></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" >
                                                <asp:Label ID="Label11" runat="server" Text="COMMENTS:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <asp:TextBox ID="mwc_comments" runat="server" Height="150px" TextMode="MultiLine"
                                                    Width="100%" CssClass="inface"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" style="width: 360px">
                                                            <asp:TextBox ID="mwc_signature" runat="server"  Width="350px" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td align="left" class="td_label" style="width: 60px">
                                                            <asp:Label ID="Label13" runat="server" Text="QMRP" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="35px">
                                                        </td>
                                                        <td class="td_unline">
                                                            <asp:TextBox ID="mwc_view_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);"
                                                                       onfocus="showcalendar(event, this);" Width="140px" Font-Names="Comic Sans MS">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td align="left" class="td_label">
                                                            <asp:Label ID="Label14" runat="server" Text="&nbsp;Signature and Title(QMRP)" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td colspan="2">
                                                        </td>
                                                        <td align="left" class="td_label">
                                                            <asp:Label ID="Label15" runat="server" Text="Date" Font-Bold="True"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="4">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" class="td_thicksepline">
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="4">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                                    <tr class="tr_common">
                                                        <td align="left" class="td_label" style="width: 110px;">
                                                            <asp:Label ID="Label16" runat="server" Text="Eligibility Group:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 140px;">
                                                            <asp:DropDownList ID="mwc_eligibility_group" runat="server" Width="140px" 
                                                                 DataValueField="mwc_eligibility_group" DataTextField="mwc_eligibility_group" OnClick="DataChanged()">
                                                                <asp:ListItem>&nbsp;</asp:ListItem>
                                                                <asp:ListItem>I</asp:ListItem>
                                                                <asp:ListItem>B</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td style="width: 2%">
                                                        </td>
                                                        <td align="left" class="td_label" style="width: 80px;">
                                                            <asp:Label ID="Label17" runat="server" Text="UCI:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 160px">
                                                            <asp:Label ID="c_uci" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
                                                        </td>
                                                        <td style="width: 2%">
                                                        </td>
                                                        <td align="left" class="td_label" style="width: 80px;">
                                                            <asp:Label ID="Label18" runat="server" Text="Medicaid ID:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 160px">
                                                            <asp:Label ID="mwc_medi_cal" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="11">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td align="left" class="td_label" style="width: 80px;">
                                                            <asp:Label ID="Label19" runat="server" Text="DOB:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 160px">
                                                            <asp:Label ID="c_dob" runat="server" Width="160px" CssClass="infaceText" ></asp:Label>
                                                        </td>
                                                        <td style="width: 2%">
                                                        </td>
                                                        <td align="left" class="td_label">
                                                            <asp:Label ID="Label21" runat="server" Text="Consumer Name:" Font-Bold="True" Width="115px"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td colspan="3" class="td_unline">
                                                            <asp:Label ID="ConsumerName" runat="server" CssClass="infaceText"></asp:Label>
                                                        </td>
                                                        <td colspan="2">
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="11">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="11" class="td_thicksepline">
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="11">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                                    <tr class="tr_common">
                                                        <td align="left" class="td_label" style="width: 110px">
                                                            <asp:Label ID="Label26" runat="server" Text="Regional Center:" Font-Bold="True" Width="110px"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 200px">
                                                            <asp:Label ID="mwc_regional_center" runat="server" Width="200px" CssClass="infaceText"></asp:Label>
                                                        </td>
                                                        <td style="width: 20%">
                                                        </td>
                                                        <td align="left" class="td_label" style="width: 80px;">
                                                            <asp:Label ID="Label28" runat="server" Text="SC:" Font-Bold="True"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td class="td_unline" style="width: 200px">
                                                            <asp:DropDownList ID="mwc_cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeIDName" 
                                                                 CssClass="infaceDrop">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td >
                                                        </td>
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
</body>
</html>
