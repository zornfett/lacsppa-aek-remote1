<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormESRTurning3.aspx.cs" Inherits="Virweb2.FormList.FormESRTurning3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base target="_self" />
    <title>:::Eligibility Turning Three Review:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
        function save_click() {
            return true;
        }
        function print_click() {
            //PopupMessage(10);
            var consumer_key = document.Turning3Info.consumer_key.value.toString();
            var UserAct = document.Turning3Info.UserAct.value.toString();
            var url = "PrintFormBLUESHEETInfo.aspx?uci=" + consumer_key + "&entrykey=&flag=5&UserAct=" + UserAct;
            winhref(url, 'PrintFormBLUESHEETInfo');
        }
        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormESRTurning3List.aspx');
        }
        function RadioBoxCheck() {
            if (document.getElementById('AU_no').checked) {
                document.getElementById('AUDate_td').style.display = "none";
                document.getElementById('AUDate').style.display = "none";
                AU_tr1.style.display = "none";
                AU_tr2.style.display = "none";
            }
            if (document.getElementById('AU_yes').checked) {
                document.getElementById('AUDate_td').style.display = "";
                document.getElementById('AUDate').style.display = "";
                AU_tr1.style.display = "";
                AU_tr2.style.display = "";
            }
            if (document.getElementById('CP_no').checked) {
                document.getElementById('CPDate_td').style.display = "none";
                document.getElementById('CPDate').style.display = "none";
                CP_tr1.style.display = "none";
            }
            if (document.getElementById('CP_yes').checked) {
                document.getElementById('CPDate_td').style.display = "";
                document.getElementById('CPDate').style.display = "";
                CP_tr1.style.display = "";
            }
            if (document.getElementById('CPWalk_no').checked) {
                document.getElementById('CPAssistance_td').style.display = "none";
                document.getElementById('CPAssistance').style.display = "none";
                CP_tr2.style.display = "none";
            }
            if (document.getElementById('CPWalk_yes').checked) {
                document.getElementById('CPAssistance_td').style.display = "";
                document.getElementById('CPAssistance').style.display = "";
                CP_tr2.style.display = "";
            }
            if (document.getElementById('EP_no').checked) {
                document.getElementById('EPDate_td').style.display = "none";
                document.getElementById('EPDate').style.display = "none";
                EP_tr1.style.display = "none";
                EP_tr2.style.display = "none";
                EP_tr3.style.display = "none";
                EP_tr4.style.display = "none";
            }
            if (document.getElementById('EP_yes').checked) {
                document.getElementById('EPDate_td').style.display = "";
                document.getElementById('EPDate').style.display = "";
                EP_tr1.style.display = "";
                EP_tr2.style.display = "";
                EP_tr3.style.display = "";
                EP_tr4.style.display = "";
            }
            if (document.getElementById('EPSDT_no').checked) {
                document.getElementById('EPSDTHours_td').style.display = "none";
                document.getElementById('EPSDTHours').style.display = "none";
            }
            if (document.getElementById('EPSDT_yes').checked) {
                document.getElementById('EPSDTHours_td').style.display = "";
                document.getElementById('EPSDTHours').style.display = "";
            }

            if (document.getElementById('Vision_no').checked) {
                document.getElementById('Glasses_td').style.display = "none";
                Vision_tr.style.display = "none";
            }
            if (document.getElementById('Vision_yes').checked) {
                document.getElementById('Glasses_td').style.display = "";
                Vision_tr.style.display = "";
            }

            if (document.getElementById('Hearing_no').checked && document.getElementById('Audio_no').checked) {

                Hearing_tr1.style.display = "none";
                Hearing_tr2.style.display = "none";
                Hearing_tr3.style.display = "none";
                Hearing_tr4.style.display = "none";
            }
            else {
                Hearing_tr1.style.display = "";
                Hearing_tr2.style.display = "";
                Hearing_tr3.style.display = "";
                Hearing_tr4.style.display = "";
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
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Eligibility Turning Three For</asp:Label>
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
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
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
                            <td>
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
                            <td>
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
                            <td>
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
                            <td>
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
                            <td colspan="7">
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
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
