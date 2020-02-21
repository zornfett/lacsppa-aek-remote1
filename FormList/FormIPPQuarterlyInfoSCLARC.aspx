<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIPPQuarterlyInfoSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIPPQuarterlyInfoSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base target="_self" />
    <title>:::QUARTERLY REVIEW:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    
    <script type="text/JavaScript">
    <!--
        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.QuarterlyInfo.submit(); 
            window.focus();   
        }
        function print_click() {
            //PopupMessage(10); 
            var entrykey = document.QuarterlyInfo.entrykey.value.toString();
            var UserAct = document.QuarterlyInfo.UserAct.value.toString();
            var url = "PrintFormIPPQuarterlyInfoSCLARC.aspx?entrykey=" + entrykey + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormIPPQuarterlyInfoSCLARC');          
        }
        
        function printIPP_click() {
           var entrykey=document.QuarterlyInfo.ipp_key.value.toString();
           var UserAct = document.QuarterlyInfo.UserAct.value.toString();   
           winhref("PrintFormIPP.aspx?IPPID="+entrykey+"&UserAct="+UserAct,"PrintFormIPP");
        }

        function verify_click() {
            return true;
        }
        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.QuarterlyInfo.submit();
            window.focus();
        }

        function Verify() {
            var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
            mySignVerify.value = "1";  
            window.document.QuarterlyInfo.submit();
            window.focus();
       }

       function UnLock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "3";  
          window.document.QuarterlyInfo.submit();
          window.focus();
       }

       function Lock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "4";  
          window.document.QuarterlyInfo.submit();
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
             window.document.QuarterlyInfo.submit();
             window.focus();
          }
       }

        function back_click() {
            if (Confirm_Page())
                document.location.replace(document.QuarterlyInfo.gobackPage.value);
        }

    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>   
    <form id="QuarterlyInfo" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" /> 
    <input type="hidden" name="ipp_key" id="ipp_key" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormIPPQuarterlyListSCLARC.aspx" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnAdd_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnPrintIPP" runat="server" alt="View IPP" 
                    style="width: 25px; height: 25px" src="../img/idnotes.ico" title="View IPP" onclick="javascript:printIPP_click();return false;" />
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
            <tr class="tr_common">
                <td valign="top" align="center" width="100%" height="100%">
                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%;height:100%">
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
                                                Height="24px">Quarterly Review</asp:Label>
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
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width: 160px">
                                            <asp:Label ID="Label1" runat="server" Text=" QUARTERLY REPORT VISIT:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 250px" class="td_label"  >
                                            <asp:Radiobutton ID="Announced_yes" groupname="Announced" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>ANNOUNCED</b>
                                            <asp:Radiobutton ID="Announced_no" groupname="Announced" runat="server" Text="" Checked="false"></asp:Radiobutton><b>UNANNOUNCED</b>
                                        </td>
                                        <td style="width:auto"></td>
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
                        <tr class="tr_common">
                            <td>
                             <table class="table_inside">
                              <tr class="tr_common">
                               <td  class="td_label" style="width: 160px">
                                   <asp:Label ID="Label2" runat="server" Text="Consumer Name:" Font-Bold="true"></asp:Label>
                               </td>
                               <td width="5">
                               </td>
                               <td  class="td_unline" style="width: 200px">
                                   <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                               </td>
                               <td style="width: 20px">
                               </td>
                               <td  class="td_label" style="width: 130px">
                                   <asp:Label ID="l_reviewdate" runat="server" Text="Review Period From:" Font-Bold="true"></asp:Label>
                               </td>
                               <td width="5">
                               </td>
                               <td  style="width: 100px" class="td_unline" >
                                   <asp:TextBox ID="ReviewDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                    onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td  class="td_label" style="width: 40px">
                                   <asp:Label ID="l_reviewdateto" runat="server" Text="To:" Font-Bold="true"></asp:Label>
                               </td>
                               <td width="5">
                               </td>
                               <td  style="width: 100px" class="td_unline" >
                                   <asp:TextBox ID="ReviewDateTo" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                    onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width: 20">
                               </td>
                               <td  class="td_label" style="width: 120px">
                                   <asp:Label ID="Label6" runat="server" Text="Date of Visit:" Font-Bold="true"></asp:Label>
                               </td>
                               <td width="5">
                               </td>
                               <td  style="width: 100px" class="td_unline" >
                                   <asp:TextBox ID="VisitDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                    onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
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
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 160px">
                                            <asp:Label ID="Label5" runat="server" Text="UCI#:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="ClientID" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20px">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label8" runat="server" Text="D.O.B:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="ClientDOB" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                CssClass="inface" ></asp:TextBox>
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
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 160px">
                                            <asp:Label ID="Label3" runat="server" Text="Medicaid Waiver:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px" class="td_label"  >
                                            <asp:Radiobutton ID="MedWaiver_yes" groupname="MedWaiver" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Yes</b>
                                            <asp:Radiobutton ID="MedWaiver_no" groupname="MedWaiver" runat="server" Text="" Checked="false"></asp:Radiobutton><b>No</b>
                                        </td>
                                        <td style="width: 20px">
                                        </td>
                                        <td style="width: auto" >
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td style="width: 400px" class="td_label">
                                                        <asp:Radiobutton ID="Quarterly_1" groupname="Quarterly" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>1st Quarterly</b>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Radiobutton ID="Quarterly_2" groupname="Quarterly" runat="server" Text="" Checked="false"></asp:Radiobutton><b>2nd Quarterly</b>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Radiobutton ID="Quarterly_3" groupname="Quarterly" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>3rd Quarterly </b>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Radiobutton ID="Quarterly_4" groupname="Quarterly" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Other</b>
                                                    </td>
                                                    <td style="width:auto" class="td_unline">
                                                        <asp:TextBox ID="QuarterlyDesc" runat="server" CssClass="inface" MaxLength="500"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <b><asp:Label ID="Label10" runat="server" Text="Consumer was seen face to face at (name of location):" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Location" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="60"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Location" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 600px" class="td_label"  >
                                            <asp:Label ID="Label4" runat="server" Text="Consumer's type of living arrangement:" Font-Bold="true"></asp:Label>
                                            <asp:Radiobutton ID="LivingType_1" groupname="LivingType" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>CCF</b>
                                            &nbsp;/
                                            <asp:Radiobutton ID="LivingType_2" groupname="LivingType" runat="server" Text="" Checked="false"></asp:Radiobutton><b>SNF</b>
                                            &nbsp;/
                                            <asp:Radiobutton ID="LivingType_3" groupname="LivingType" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>ICF</b>
                                            /&nbsp;
                                            <asp:Radiobutton ID="LivingType_4" groupname="LivingType" runat="server" Text="" Checked="false"></asp:Radiobutton><b>FHA</b>
                                            &nbsp;/
                                            <asp:Radiobutton ID="LivingType_5" groupname="LivingType" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>IND.LIVING</b>
                                            &nbsp;/
                                            <asp:Radiobutton ID="LivingType_6" groupname="LivingType" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>OTHER:</b>
                                        </td>
                                        <td style="auto" class="td_unline">
                                            <asp:TextBox ID="LivingTypeDesc" runat="server" CssClass="inface" MaxLength="500"></asp:TextBox>
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
                        <tr class="tr_common">
                            <td  class="td_label">
                                <b><asp:Label ID="Label12" runat="server" Text="Participants Attending Meeting:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="height: 60px" valign="top">
                                <asp:TextBox ID="Meeting" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="60"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Meeting" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
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
                        <tr style="height:20px;">
                            <td><b>Item Numbers</b></td>
                        </tr>
                        <tr>
                            <td >
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label11" runat="server" Text="1. Is the consumer living arrangement the appropriate level to address the developmental needs and intensity of care required?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="Developmental" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label13" runat="server" Text="If no, please explain:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="DevelopmentalExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="DevelopmentalExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label16" runat="server" Text="2. Describe any changes related to the consumer’s health and/or safety during this period." ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="RelatedChanges" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
                                                             Width="80" OnClick="DataChanged()" Visible="false">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="ChangesExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell14" ControlIdsToCheck="ChangesExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label15" runat="server" Text="3. List current medication:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="CurrentMedi" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label14" runat="server" Text="4. If any hospitalization(s) during this period, list names of hospital(s), and date(s) here:" ></asp:Label></b>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnHospList" Runat="server" Text="Refresh" CssClass="buttonbluestyle"  Style="width:100px" 
                                                     OnClick="btnHospList_Click"></asp:Button>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="HospitalList" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="80" CssClass="inface"></asp:TextBox>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label17" runat="server" Text="5. Have there been any changes in benefits during the period in review? (i.e. IHSS, SSI, SSA, Medi-Cal etc.)" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="Benefits" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label18" runat="server" Text="If yes, please explain:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="BenefitsExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="BenefitsExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label19" runat="server" Text="6. Are the IPP (and addendum) outcomes and plans being addressed and monitored?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="Monitored" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="MonitoredExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell15" ControlIdsToCheck="MonitoredExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label20" runat="server" Text="7. Discuss any significant progress (+25%) or barriers ( -25%) that have been identified related to the consumer achieving his/her desired outcomes:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="Significant" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="Significant" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label21" runat="server" Text="8. Is the consumer/conservator/family satisfied with the living arrangement?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="SatisfiedLiving" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label22" runat="server" Text="If no, describe the plan for addressing the concerns:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="SatisfiedLivingExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="SatisfiedLivingExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label23" runat="server" Text="9. Is the consumer/conservator/family satisfied with day program/SLS/ILS?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="SatisfiedProg" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label24" runat="server" Text="If no, describe the plan for addressing the concerns:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="SatisfiedProgExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="SatisfiedProgExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label25" runat="server" Text="10. Is there a need for Quality Assurance follow up?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="Assurance" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label26" runat="server" Text="If yes, please explain:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="AssuranceExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="AssuranceExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label27" runat="server" Text="11. Have there been any SIR's reported in this period?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="SIRRpt" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label28" runat="server" Text="If yes, list and discuss the SIR's reviewed and documented in I.D. notes (include follow up actions taken):" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="SIRRptExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell11" ControlIdsToCheck="SIRRptExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                        <tr class="tr_common">
                            <td colspan="3" align="center">
                            <asp:datagrid id="dg_sir" runat="server" AllowPaging="False" CssClass="grd_body"
					            Visible="True" AutoGenerateColumns="False" AllowSorting="False">
					            <HeaderStyle CssClass="grd_head"></HeaderStyle>
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					                <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="s_rpt_date" HeaderText="Report Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_rpt_date">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_vendor_number" HeaderText="Vendor #" SortExpression="s_vendor_number">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_incident_site_type" HeaderText="Incident Location" SortExpression="s_incident_site_type">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_incident_dt" HeaderText="Incident Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="s_incident_dt">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="s_followup_person" HeaderText="Addendum" SortExpression="s_followup_person">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_addendums_num" HeaderText="Subst" SortExpression="s_addendums_num">
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_type" HeaderText="Type" SortExpression="s_type">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:BoundColumn DataField="s_verify" HeaderText="Verified" SortExpression="s_verify">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:TemplateColumn HeaderText="View">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="s_uci" HeaderText="s_uci" Visible="False"></asp:BoundColumn>
					            </Columns>
				            </asp:datagrid>
                            </td>
                        </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label29" runat="server" Text="12. Are the consumer's P & I records in accordance with the Admission Agreement?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="Admission" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3">
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 230px">
                                                        &nbsp;&nbsp;&nbsp;<b><asp:Label ID="Label30" Width="230px"  runat="server" Text="Current balance of client's P & I funds: $" ></asp:Label></b>
                                                    </td>
                                                    <td class="td_unline" style="width: 100px">
                                                        <asp:TextBox ID="CurBalanceM" runat="server" CssClass="inface" Width="100px" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td  class="td_label" style="width: 40px">
                                                        &nbsp;&nbsp;&nbsp;<b><asp:Label ID="Label31" Width="40px" runat="server" Text="as of" ></asp:Label></b>
                                                    </td>
                                                    <td class="td_unline" style="width: 100px">
                                                        <asp:TextBox ID="CurBalanceDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <b><asp:Label ID="Label32" runat="server" Text="13. Was a Quality of Life Survey/Assessment Report Completed?" ></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px" align="left">
								            <asp:dropdownlist id="Completed" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="80" OnClick="DataChanged()">
	                                        </asp:dropdownlist>
							            </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3"  class="td_label">
                                            <b><asp:Label ID="Label33" runat="server" Text="If yes, describe follow up plan to address recommendations:" ></asp:Label></b>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="height: 60px" valign="top">
                                            <asp:TextBox ID="CompletedExplain" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell12" ControlIdsToCheck="CompletedExplain" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td> 
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td><b>LIST ANY SIGNIFICANT CHANGES NOT ADDRESSED IN THE IPP BELOW</b></td>
                        </tr>
                        <tr class="tr_common">
                            <td style="height: 80px" valign="top">
                                <asp:TextBox ID="SignificantChanges" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="Meeting" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="3">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 135px">
                                            <b><asp:Checkbox ID="AddendumCompleted" runat="server" Text="">
                                            </asp:Checkbox></b>	
                                            <b><asp:Label ID="Label34" Width="100px"  runat="server" Text="Addendum(s)#:" ></asp:Label></b>
                                        </td>
                                        <td class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="Addendum" runat="server" CssClass="inface" Width="100px" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <b><asp:Label ID="Label35" Width="60px" runat="server" Text="Completed" ></asp:Label></b>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" colspan="3">
                                            <b><asp:Checkbox ID="CDERUpdated" runat="server" Text="">
                                            </asp:Checkbox></b>	
                                            <b><asp:Label ID="Label36" runat="server" Text="CDER Updated (if needed)" ></asp:Label></b>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" colspan="3" style="width: 350px">
                                            <b><asp:Checkbox ID="FaceSheetUpdated" runat="server" Text="">
                                            </asp:Checkbox></b>	
                                            <b><asp:Label ID="Label37" runat="server" Text="Face Sheet information reviewed and updated (if needed)" ></asp:Label></b>
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
                                                <tr>
                                                    <td colspan="5" height="5px">
                                                    </td>
                                                </tr>
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
                                                    <asp:Label ID="VerifyBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                                    </asp:Label>
                                                </td>
                                                <td width="auto"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" height="5px">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                </td>
                                                <td class="td_label">
                                                    <asp:Label ID="l_ippverifytitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" height="5px">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td width="10px">
                                                </td>
                                                <td class="td_label" style="width: 120px">
                                                    <asp:Label ID="l_ipp_verify_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline">
                                                    <asp:Label ID="VerifyByDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                    </asp:Label>
                                                </td>
                                                <td width="auto"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" height="5px">
                                                </td>
                                            </tr>
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
                                            <tr>
                                                <td colspan="5" height="5px">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td width=10px"></td>
                                                <td colspan=3 class="td_label">
                                                    <asp:Radiobutton ID="approved_yes" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Approve</b>
                                                    &nbsp;&nbsp;
                                                    <asp:Radiobutton ID="approved_no" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Return</b>
                                                </td>	
                                                <td width="auto"></td>
                                            </tr> 
                                            <tr>
                                                <td colspan="5" height="5px">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td width=10px"></td>
                                                <td width="120px" class="td_label">
                                                    <asp:Label ID="l_ipp_signature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline" align="left" style="width: 300px">
                                                    <asp:Label ID="SignatureBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                                    </asp:Label>
                                                </td>
                                                <td width="auto">
                                                    <asp:hiddenfield id="SignatureBy_ID" runat="server" value="" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" height="5px">
                                                </td>
                                            </tr>
                                            <tr class="tr_common">
                                                <td colspan="3">
                                                </td> 
                                                <td class="td_label">
                                                    <asp:Label ID="l_ippsigntitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
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
                                                <td class="td_label" style="width: 120px">
                                                    <asp:Label ID="l_ipp_view_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline">
                                                    <asp:Label ID="SignatureByDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
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
                                                <b><asp:Label ID="l_comments" runat="server" Text="Comments:" ></asp:Label></b>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td colspan=2 class="td_unline" >
                                                   <asp:TextBox ID="Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
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
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="l_logs" runat="server" Text="Logs:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="height: 80px" valign="top">
                               <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="80" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
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
