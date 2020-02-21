<%@ Page Language="C#" Inherits="Virweb2.FormList.FormMWEInfoFDLRC" CodeBehind="FormMWEInfoFDLRC.aspx.cs" AutoEventWireup="True" %>

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

            //var mwc_uci=document.MweInfo.mwc_uci.value.toString();
            var mwc_uci = document.getElementById("mwc_uci").innerHTML;
            var mwc_date=document.MweInfo.mwc_date.value.toString();
            var UserAct = document.MweInfo.UserAct.value.toString();   
            var url ="PrintFormMWEInfoFDLRC.aspx?mwc_uci="+mwc_uci+"&mwc_date="+mwc_date+"&UserAct="+UserAct;
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
            //var nowdate = new Date();
            //document.getElementById("mwc_signature").value = UserName.toString();          
            //document.getElementById("mwc_view_date").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.MweInfo.submit();
            window.focus();
        }

        function CheckPwd() {
            window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        }

        function NoPermission() {
            PopupMessage(42);
            return false;
        }

        function Message_click() {
            var tx_uci = document.MweInfo.consumer_key.value.toString();
            var tx_date = document.MweInfo.mwc_date.value.toString();
            var url = "../weblist/WebMessageNew.aspx?prefill=MWE&uci=" + tx_uci + "&mwc_date=" + tx_date;
            window.showModalDialog(url, self, 'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');
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
    <input type="hidden" name="mwc_date" id="mwc_date" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="isAdmin" id="isAdmin" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
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
                    <input type="image" id="btnMessage" runat="server" alt="Message"
                        style="width: 25px; height: 25px" src="../img/message_sent.gif" title="Message" onclick="javascript:Message_click();return false;" />
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
                                                <asp:Label ID="lblOtherTermReason" runat="server" Text="Other Reason:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:TextBox ID="mwc_otherterm_reason" runat="server" CssClass="inface" MaxLength="100">
                                                </asp:TextBox>
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
                                                <asp:Label ID="lblOtherReactReason" runat="server" Text="Other Reason:" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td width="5px">
                                            </td>
                                            <td class="td_unline">
                                                <asp:TextBox ID="mwc_otherreact_reason" runat="server" CssClass="inface" MaxLength="100">
                                                </asp:TextBox>
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
                             <tr>
                                  <td style="height:10px"></td>
                             </tr>
                             <tr>
                                  <td class="td_thicksepline"></td>
                             </tr>    
                             <tr>
                                  <td style="height:5px"></td>
                             </tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" >
                                                <asp:Label ID="Label9" runat="server" Text="ALL LEVEL OF CARE QUALIFYING DEFICITS:(Includes special health care requirements.)"
                                                    Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 10px;">
                                            <td>
                                            </td>
                                        </tr> 
                <tr>
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr style="height:20px;">
                                  <td align="left" colspan="4"><b>Diagnostic:</b></td>
                             </tr>
                             <!--27-->
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">
                                       <asp:Checkbox ID="a27type_1" runat="server" Text="" />&nbsp;
                                       <b>27a.&nbsp;</b><asp:label id="Labela27type_1" runat="server" Text="Type of Seizure"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="a27type_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="a27type_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>     
                              <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">                                      
                                       <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;27b.&nbsp;</b><asp:label id="Labela27btype_1" runat="server" Text="Seizure Fequency"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="b27type_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="b27type_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                                   
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="a27type_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <!------>  

                             <!--28-->
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">
                                       <asp:Checkbox ID="a28type_1" runat="server" Text="" />&nbsp;
                                       <b>28a.&nbsp;</b><asp:label id="Labela28type_1" runat="server" Text="Type of Seizure"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="a28type_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="a28type_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>     
                              <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">                                      
                                       <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;28b.&nbsp;</b><asp:label id="Labela28btype_1" runat="server" Text="Seizure Fequency"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="b28type_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="b28type_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                                   
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="a28type_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>

                             <!------>  

                             <!--29-->
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">
                                       <asp:Checkbox ID="a29type_1" runat="server" Text="" />&nbsp;
                                       <b>29a.&nbsp;</b><asp:label id="Labela29type_1" runat="server" Text="Type of Seizure"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="a29type_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="a29type_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>     
                              <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">                                      
                                       <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;29b.&nbsp;</b><asp:label id="Labela29btype_1" runat="server" Text="Seizure Fequency"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="b29type_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="b29type_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                                   
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="a29type_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <!------>  

                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width: 300px">
                                       <asp:Checkbox ID="antcnv_1" runat="server" Text="" />&nbsp;
                                       <b>31.&nbsp;</b><asp:label id="lc_antcnv" runat="server" Text="Consumer takes anticonvulsant medication:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="antcnv_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>    
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td class="td_label" align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="antcnv_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="antcnv_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="stepls_1" runat="server" Text="" />&nbsp;
                                       <b>32.&nbsp;</b><asp:label id="Label10" runat="server" Text="Status Epilepticus:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="stepls_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="stepls_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="stepls_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>

                             <tr>
                                  <td colspan="4" style="height:10px"></td>
                             </tr>
                             <tr style="height:20px;">
                                  <td colspan="4" align="left"><b>Chronic Major Medical Conditions:</b></td>
                             </tr>     
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrmc1_1" runat="server" Text="" />&nbsp;
                                       <b>54a.&nbsp;</b><asp:label id="Label12" runat="server" Text="Condition:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc1_2" runat="server" CssClass="infaceText" ReadOnly="false"></asp:textbox>
                                  </td>
							      <td style="width:100px"></td>
                             </tr>                             
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc1_3" runat="server" CssClass="inface"></asp:textbox>
							      </td>
							      <td style="width:100px">
                                       <input type="button" value="ICD10 Code" style="width:90px" ID="chrmc1Srch"  runat="server"  
                                           onclick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc1_3&FormName=MweInfo');" />
                                  </td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrmc1_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>                         
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrim1_1" runat="server" Text="" />&nbsp;
                                       <b>54b.&nbsp;</b><asp:label id="Label22" runat="server" Text="Impact:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim1_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim1_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrim1_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrmc2_1" runat="server" Text="" />&nbsp;
                                       <b>55a.&nbsp;</b><asp:label id="Label24" runat="server" Text="Condition:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc2_2" runat="server" CssClass="infaceText" ReadOnly="false"></asp:textbox>
                                  </td>
							      <td style="width:100px"></td>
                             </tr>                             
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc2_3" runat="server" CssClass="inface"></asp:textbox>
							      </td>
							      <td style="width:100px">
                                       <input type="button" value="ICD10 Code" style="width:90px" ID="Button2"  runat="server"  
                                           onclick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc2_3&FormName=MweInfo');" />
                                  </td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrmc2_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>                         
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrim2_1" runat="server" Text="" />&nbsp;
                                       <b>55b.&nbsp;</b><asp:label id="Label25" runat="server" Text="Impact:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim2_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim2_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrim2_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrmc3_1" runat="server" Text="" />&nbsp;
                                       <b>56a.&nbsp;</b><asp:label id="Label27" runat="server" Text="Condition:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc3_2" runat="server" CssClass="infaceText" ReadOnly="false"></asp:textbox>
                                  </td>
							      <td style="width:100px"></td>
                             </tr>                             
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc3_3" runat="server" CssClass="inface"></asp:textbox>
							      </td>
							      <td style="width:100px">
                                       <input type="button" value="ICD10 Code" style="width:90px" ID="Button3"  runat="server"  
                                           onclick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc3_3&FormName=MweInfo');" />
                                  </td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrmc3_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>                         
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrim3_1" runat="server" Text="" />&nbsp;
                                       <b>56b.&nbsp;</b><asp:label id="Label29" runat="server" Text="Impact:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim3_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim3_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrim3_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrmc4_1" runat="server" Text="" />&nbsp;
                                       <b>57a.&nbsp;</b><asp:label id="Label30" runat="server" Text="Condition:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc4_2" runat="server" CssClass="infaceText" ReadOnly="false"></asp:textbox>
                                  </td>
							      <td style="width:100px"></td>
                             </tr>                             
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc4_3" runat="server" CssClass="inface"></asp:textbox>
							      </td>
							      <td style="width:100px">
                                       <input type="button" value="ICD10 Code" style="width:90px" ID="Button4"  runat="server"  
                                           onclick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc4_3&FormName=MweInfo');" />
                                  </td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrmc4_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>                         
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrim4_1" runat="server" Text="" />&nbsp;
                                       <b>57b.&nbsp;</b><asp:label id="Label31" runat="server" Text="Impact:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim4_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim4_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrim4_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrmc5_1" runat="server" Text="" />&nbsp;
                                       <b>58a.&nbsp;</b><asp:label id="Label32" runat="server" Text="Condition:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc5_2" runat="server" CssClass="infaceText" ReadOnly="false"></asp:textbox>
                                  </td>
							      <td style="width:100px"></td>
                             </tr>                             
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc5_3" runat="server" CssClass="inface"></asp:textbox>
							      </td>
							      <td style="width:100px">
                                       <input type="button" value="ICD10 Code" style="width:90px" ID="Button5"  runat="server"  
                                           onclick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc5_3&FormName=MweInfo');" />
                                  </td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrmc5_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>                         
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrim5_1" runat="server" Text="" />&nbsp;
                                       <b>58b.&nbsp;</b><asp:label id="Label33" runat="server" Text="Impact:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim5_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim5_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrim5_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrmc6_1" runat="server" Text="" />&nbsp;
                                       <b>59a.&nbsp;</b><asp:label id="Label20" runat="server" Text="Condition:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc6_2" runat="server" CssClass="infaceText" ReadOnly="false"></asp:textbox>
                                  </td>
							      <td style="width:100px"></td>
                             </tr>                             
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:textbox id="chrmc6_3" runat="server" CssClass="inface"></asp:textbox>
							      </td>
							      <td style="width:100px">
                                       <input type="button" value="ICD10 Code" style="width:90px" ID="Button1"  runat="server"  
                                           onclick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc6_3&FormName=MweInfo');" />
                                  </td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrmc6_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>   
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>                             
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="chrim6_1" runat="server" Text="" />&nbsp;
                                       <b>59b.&nbsp;</b><asp:label id="Label23" runat="server" Text="Impact:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim6_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="chrim6_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="chrim6_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>

                             <tr>
                                  <td colspan="4" style="height:10px"></td>
                             </tr>
                             <tr style="height:20px;">
                                  <td colspan="4" align="left"><b>Other Diagnostic Information:</b></td>
                             </tr>     
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="hrngun_1" runat="server" Text="" />&nbsp;
                                       <b>60.&nbsp;</b><asp:label id="Label34" runat="server" Text="Level of Hearing Loss Uncorrected:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="hrngun_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="hrngun_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="hrngun_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="hrngcr_1" runat="server" Text="" />&nbsp;
                                       <b>61.&nbsp;</b><asp:label id="Label35" runat="server" Text="Level of Hearing Loss Corrected:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="hrngcr_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="hrngcr_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="hrngcr_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="vsnun_1" runat="server" Text="" />&nbsp;
                                       <b>62.&nbsp;</b><asp:label id="Label36" runat="server" Text="Level of Vision Loss Uncorrected:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="vsnun_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="vsnun_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="vsnun_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="vsncr_1" runat="server" Text="" />&nbsp;
                                       <b>63.&nbsp;</b><asp:label id="Label37" runat="server" Text="Level of Vision Loss Corrected:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="vsncr_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="vsncr_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="vsncr_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>

                             <tr>
                                  <td colspan="4" style="height:10px"></td>
                             </tr>
                             <tr style="height:20px;">
                                  <td colspan="4" align="left"><b>Behavior Modifying Drugs:</b></td>
                             </tr>     
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="apsymn_1" runat="server" Text="" />&nbsp;
                                       <b>64.&nbsp;</b><asp:label id="Label38" runat="server" Text="Anti-Psychotic:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="apsymn_2" runat="server" Width="450" Enabled="true" CssClass="infaceDropRead">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="apsymn_3" runat="server" Width="450">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="apsymn_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="adepmn_1" runat="server" Text="" />&nbsp;
                                       <b>65.&nbsp;</b><asp:label id="Label39" runat="server" Text="Anti-Depressant:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="adepmn_2" runat="server" Width="450" Enabled="true" CssClass="infaceDropRead">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="adepmn_3" runat="server" Width="450">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="adepmn_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="aanxmn_1" runat="server" Text="" />&nbsp;
                                       <b>66.&nbsp;</b><asp:label id="Label40" runat="server" Text="Anti-Anxiety:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="aanxmn_2" runat="server" Width="450" Enabled="true" CssClass="infaceDropRead">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="aanxmn_3" runat="server" Width="450">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="aanxmn_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sedhyp_1" runat="server" Text="" />&nbsp;
                                       <b>67.&nbsp;</b><asp:label id="Label41" runat="server" Text="Sedative/Hypnotic:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sedhyp_2" runat="server" Width="450" Enabled="true" CssClass="infaceDropRead">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sedhyp_3" runat="server" Width="450">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sedhyp_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="stmlnt_1" runat="server" Text="" />&nbsp;
                                       <b>68.&nbsp;</b><asp:label id="Label42" runat="server" Text="Stimulant:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="stmlnt_2" runat="server" Width="450" Enabled="true" CssClass="infaceDropRead">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="stmlnt_3" runat="server" Width="450">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="stmlnt_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="othdrg_1" runat="server" Text="" />&nbsp;
                                       <b>69.&nbsp;</b><asp:label id="Label43" runat="server" Text="Other:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="othdrg_2" runat="server" Width="450" Enabled="true" CssClass="infaceDropRead">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="othdrg_3" runat="server" Width="450">
                                           <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="othdrg_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="histpm_1" runat="server" Text="" />&nbsp;
                                       <b>70.&nbsp;</b><asp:label id="Label44" runat="server" Text="History of Prescribed Medication for Maladaptive Behavior:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="histpm_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                            Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="histpm_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="histpm_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:10px"></td>
                             </tr>
                             <tr style="height:20px;">
                                  <td colspan="4" align="left"><b>Special Health Care Requirements:</b></td>
                             </tr>     
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc1_1" runat="server" Text="" />&nbsp;
                                       <b>76.&nbsp;</b><asp:label id="Label45" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc1_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                         Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc1_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc1_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc2_1" runat="server" Text="" />&nbsp;
                                       <b>77.&nbsp;</b><asp:label id="Label46" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc2_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc2_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc2_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc3_1" runat="server" Text="" />&nbsp;
                                       <b>78.&nbsp;</b><asp:label id="Label47" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc3_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc3_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc3_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc4_1" runat="server" Text="" />&nbsp;
                                       <b>79.&nbsp;</b><asp:label id="Label48" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc4_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc4_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc4_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc5_1" runat="server" Text="" />&nbsp;
                                       <b>80.&nbsp;</b><asp:label id="Label49" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc5_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc5_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc5_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc6_1" runat="server" Text="" />&nbsp;
                                       <b>81.&nbsp;</b><asp:label id="Label50" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc6_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc6_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc6_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc7_1" runat="server" Text="" />&nbsp;
                                       <b>82.&nbsp;</b><asp:label id="Label51" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc7_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc7_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc7_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc8_1" runat="server" Text="" />&nbsp;
                                       <b>83.&nbsp;</b><asp:label id="Label52" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc8_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc8_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc8_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc9_1" runat="server" Text="" />&nbsp;
                                       <b>84.&nbsp;</b><asp:label id="Label53" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc9_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc9_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc9_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sphc10_1" runat="server" Text="" />&nbsp;
                                       <b>85.&nbsp;</b><asp:label id="Label54" runat="server" Text=""></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc10_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="sphc10_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sphc10_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:10px"></td>
                             </tr>
                             <tr style="height:20px;">
                                  <td colspan="4" align="left"><b>Special Conditions or Behaviors:</b></td>
                             </tr>     
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn1_1" runat="server" Text="" />&nbsp;
                                       <b>86.&nbsp;</b><asp:label id="Label55" runat="server" Text="Does the client display maladaptive sexual behavior?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn1_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn1_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn1_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>

                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn2_1" runat="server" Text="" />&nbsp;
                                       <b>87.&nbsp;</b><asp:label id="Label56" runat="server" Text="Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn2_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn2_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn2_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn3_1" runat="server" Text="" />&nbsp;
                                       <b>88.&nbsp;</b><asp:label id="Label57" runat="server" Text="Has the client attempted suicide in past 5 years?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn3_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn3_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn3_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn4_1" runat="server" Text="" />&nbsp;
                                       <b>89.&nbsp;</b><asp:label id="Label58" runat="server" Text="Does the client habitually engage in theft in past 5 years?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn4_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn4_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn4_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn5_1" runat="server" Text="" />&nbsp;
                                       <b>90.&nbsp;</b><asp:label id="Label59" runat="server" Text="Has the client participated in acts of vandalism or acts of property destruction in past 5 years?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn5_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn5_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn5_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                                                          <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn6_1" runat="server" Text="" />&nbsp;
                                       <b>91.&nbsp;</b><asp:label id="Label60" runat="server" Text="Has the client been convicted of any substance abuse or alcohol related offenses in past 5 years?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn6_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn6_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn6_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn7_1" runat="server" Text="" />&nbsp;
                                       <b>92.&nbsp;</b><asp:label id="Label61" runat="server" Text="Does the client have a recent history of abusing drugs or alcohol currently abusing/within past 3 years?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn7_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn7_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn7_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn8_1" runat="server" Text="" />&nbsp;
                                       <b>93.&nbsp;</b><asp:label id="Label62" runat="server" Text="Does the client have a history of habitual lying in past 3 years?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn8_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn8_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn8_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="spcn9_1" runat="server" Text="" />&nbsp;
                                       <b>94.&nbsp;</b><asp:label id="Label63" runat="server" Text="Does the client display behaviors which could result or have resulted in fire setting?"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn9_2" runat="server" Enabled="true" CssClass="infaceDropRead">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								       </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
								       <asp:dropdownlist id="spcn9_3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="spcn9_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             
                             <tr>
                                  <td colspan="4" style="height:10px"></td>
                             </tr>
                             <tr style="height:20px;">
                                  <td colspan="4" align="left"><b>Evaluation Element:</b></td>
                             </tr> 
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="handus_1" runat="server" Text="" />&nbsp;
                                       <b>1.&nbsp;</b><asp:label id="Label64" runat="server" Text="Using Hands:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="handus_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="handus_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="handus_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="walkng_1" runat="server" Text="" />&nbsp;
                                       <b>2.&nbsp;</b><asp:label id="Label65" runat="server" Text="Walking: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="walkng_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="walkng_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="walkng_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="whluse_1" runat="server" Text="" />&nbsp;
                                       <b>3.&nbsp;</b><asp:label id="Label66" runat="server" Text="Using a Wheelchair: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="whluse_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="whluse_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="whluse_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="takmed_1" runat="server" Text="" />&nbsp;
                                       <b>4.&nbsp;</b><asp:label id="Label67" runat="server" Text="Taking Prescription Medication: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="takmed_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="takmed_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="takmed_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="eating_1" runat="server" Text="" />&nbsp;
                                       <b>5.&nbsp;</b><asp:label id="Label68" runat="server" Text="Eating:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="eating_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="eating_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="eating_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="tltng_1" runat="server" Text="" />&nbsp;
                                       <b>6.&nbsp;</b><asp:label id="Label69" runat="server" Text="Toileting: (1-4)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="tltng_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="tltng_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="tltng_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="bbctrl_1" runat="server" Text="" />&nbsp;
                                       <b>7.&nbsp;</b><asp:label id="Label70" runat="server" Text="Bladder and Bowel Control: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="bbctrl_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="bbctrl_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="bbctrl_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="prshyg_1" runat="server" Text="" />&nbsp;
                                       <b>8.&nbsp;</b><asp:label id="Label71" runat="server" Text="Personal Care: (1-4)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="prshyg_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="prshyg_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="prshyg_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="drssng_1" runat="server" Text="" />&nbsp;
                                       <b>9.&nbsp;</b><asp:label id="Label72" runat="server" Text="Dressing: (1-4)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="drssng_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="drssng_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="drssng_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="safety_1" runat="server" Text="" />&nbsp;
                                       <b>10.&nbsp;</b><asp:label id="Label73" runat="server" Text="Safety Awareness: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="safety_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="safety_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="safety_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="focus_1" runat="server" Text="" />&nbsp;
                                       <b>11.&nbsp;</b><asp:label id="Label74" runat="server" Text="Focusing on Tasks and Activities:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="focus_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="focus_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="focus_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="verbal_1" runat="server" Text="" />&nbsp;
                                       <b>12.&nbsp;</b><asp:label id="Label75" runat="server" Text="Verbal Communication:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="verbal_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="verbal_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="verbal_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="novrbl_1" runat="server" Text="" />&nbsp;
                                       <b>13.&nbsp;</b><asp:label id="Label76" runat="server" Text="Nonverbal Communication:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="novrbl_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="novrbl_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="novrbl_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="social_1" runat="server" Text="" />&nbsp;
                                       <b>14.&nbsp;</b><asp:label id="Label77" runat="server" Text="Social Interaction:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="social_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="true" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="social_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="social_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="disbhv_1" runat="server" Text="" />&nbsp;
                                       <b>15.&nbsp;</b><asp:label id="Label78" runat="server" Text="Disruptive Social Behavior: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="disbhv_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="disbhv_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="disbhv_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="aggrsn_1" runat="server" Text="" />&nbsp;
                                       <b>16.&nbsp;</b><asp:label id="Label79" runat="server" Text="Aggressive Social Behavior: (1-3)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="aggrsn_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="aggrsn_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="aggrsn_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="sevsi_1" runat="server" Text="" />&nbsp;
                                       <b>17.&nbsp;</b><asp:label id="Label80" runat="server" Text="Self-Injurious Behavior: (1-4)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="sevsi_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="sevsi_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="sevsi_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="dstrpr_1" runat="server" Text="" />&nbsp;
                                       <b>18.&nbsp;</b><asp:label id="Label81" runat="server" Text="Destruction of Property: (1-2)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="dstrpr_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="dstrpr_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="dstrpr_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="rnwnd_1" runat="server" Text="" />&nbsp;
                                       <b>19.&nbsp;</b><asp:label id="Label82" runat="server" Text="Running or Wandering Away: (1-4)"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="rnwnd_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="rnwnd_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="rnwnd_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label">
                                       <asp:Checkbox ID="emoout_1" runat="server" Text="" />&nbsp;
                                       <b>20.&nbsp;</b><asp:label id="Label83" runat="server" Text="Emotional Outbursts:"></asp:label>
                                  </td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="emoout_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          Enabled="false" CssClass="infaceDropRead">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr>
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change CDER to:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:dropdownlist id="emoout_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:100px"></td>
                             </tr> 
                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr>
                             <tr class="tr_common">
                                  <td align="right" valign="top" class="td_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message To CM:</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 550px" align="left">
                                       <asp:TextBox ID="emoout_4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                               runat="server" Width="99%" Height="60"></asp:TextBox>
							      </td>
							      <td style="width:100px"></td>
                             </tr>

                             <tr style="height: 5px;">
                                  <td colspan="4">
                                  </td>
                             </tr> 
                             <tr>
                                  <td colspan="4" class="td_thicksepline"></td>
                             </tr>    
                             <tr>
                                  <td colspan="4" style="height:5px"></td>
                             </tr>                         
                         </table>
                     </td>        
                </tr>

                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" >
                                                <asp:Label ID="Label11" runat="server" Text="COMMENTS:" Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td>
                                                <asp:TextBox ID="mwc_comments" runat="server" Height="150px" TextMode="MultiLine"
                                                    Width="100%" CssClass="inface"></asp:TextBox>
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
                                                        <td class="td_unline" align="left" style="width: 360px">
                                                            <asp:TextBox ID="mwc_signature" runat="server"  Width="350px" onclick="NoPermission();" contentEditable="false"  Font-Names="Comic Sans MS">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td align="left" class="td_label" style="width: 60px">
                                                            <asp:Label ID="Label13" runat="server" Text="QIDP" Font-Bold="True"></asp:Label>
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
                                                            <asp:Label ID="Label14" runat="server" Text="&nbsp;Signature and Title(QIDP)" Font-Bold="True"></asp:Label>
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
                                            <td>
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
                                                            <asp:Label ID="mwc_uci" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
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
                                                            <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                                onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 2%">
                                                        </td>
                                                        <td align="left" class="td_label">
                                                            <asp:Label ID="Label21" runat="server" Text="Consumer Name:" Font-Bold="True" Width="115px"></asp:Label>
                                                        </td>
                                                        <td width="5px">
                                                        </td>
                                                        <td colspan="3" class="td_unline">
                                                            <asp:TextBox ID="ConsumerName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
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
                                            <td>
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
