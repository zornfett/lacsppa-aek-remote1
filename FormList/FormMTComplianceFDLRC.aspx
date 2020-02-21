<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTComplianceFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormMTComplianceFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::WORK PROGRAM COMPLIANCE REVIEW:::...</title>
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

                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            Tab1.style.display = "none";
            Tab2.style.display = "none";

            switch (obj.id) {
                case "TAB1":
                    Tab1.style.display = "";
                    document.MTInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    document.MTInfo.now_div_flag.value = "2";
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

            switch (obj_id) {
                case "TAB1":
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    //TAB1.style.cursor="auto";
                    document.MTInfo.now_div_flag.value = "1";
                    break;
                case "TAB2":
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    //TAB2.style.cursor="auto";
                    document.MTInfo.now_div_flag.value = "2";
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

            switch (flag) {
                case 1:
                    Tab1.style.display = "";
                    TAB1.style.color = "#990066";
                    //TAB1.style.cursor="auto";
                    document.MTInfo.now_div_flag.value = "1";
                    break;
                case 2:
                    Tab2.style.display = "";
                    TAB2.style.color = "#990066";
                    //TAB2.style.cursor="auto";
                    document.MTInfo.now_div_flag.value = "2";
                    break;
            }
        }

        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.MTInfo.submit(); 
            window.focus();   
        }

        function RefreshCitationData(CitaID, QNo)
        {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '2';        
            window.MTInfo.SelCitaID.value = CitaID;     
            window.MTInfo.SelCitaNo.value = QNo;     
            window.document.MTInfo.submit();
            window.focus();  
        }

        function print_click() {
            var entrykey=document.MTInfo.entrykey.value.toString();   
            winhref("PrintFormMTDayProgramFDLRC.aspx?MTID="+entrykey,"PrintFormMTDayProgramFDLRC");           
        }

        function save_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace("FormMTList.aspx");
        }

        function DropDownListChange(Qno, CitaID)
        {
            DataChanged();

            var ddl = document.activeElement; 
            var index = ddl.selectedIndex;
            var Value = ddl.options[index].value; 

            //NOT MET is selected
            if ((Value == 2) || (Value == 3)) 
            {
                if (CitaID == "")
                {
                  var entrykey=document.MTInfo.entrykey.value.toString();
                  popupDialog("FormMTCitationFDLRC.aspx?MTID=" + entrykey + "&FormType=Work Program Compliance Review&Qno=" + Qno + "&type=add");
                }
            } 
            else
            {
                if (CitaID != "")
                {
                  if (confirm("Are you sure you want to change from NotMet to Met ?"))
                  {
                   var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
                   myHdnRefreshData.value = '3';   
                   window.MTInfo.SelCitaID.value = CitaID;     
                   window.MTInfo.SelCitaNo.value = Qno;     
                   window.document.MTInfo.submit();
                   window.focus(); 
                  }
                  else
                   ddl.options[index].value = 3;
                }
            }

            return false;
        }

        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.MTInfo.submit();
            window.focus();
        }

        function CheckPwd() {
          var SignChk=document.getElementById(<%= "'" + signed_chk.ClientID + "'" %>);
          if (SignChk.checked) 
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          else
             alert("Please check 'Resource Representative has signed' first.");
        }

    //-->
    </script>
</head>
    <body id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>   
    <form id="MTInfo" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
    <input type="hidden" name="resource_key" id="resource_key" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignFlag" id="SignFlag" value="0" runat="server" />
    <input type="hidden" name="CitationExist" id="CitationExist" value="0" runat="server" />
    <input type="hidden" name="SelCitaNo" id="SelCitaNo" value="" runat="server" />
    <input type="hidden" name="SelCitaID" id="SelCitaID" value="" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
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
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="TAB1" style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                                 width="300">
                                <b><u>Work Program Compliance Review</u></b>
                            </td>
                            <td id="TAB2" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>Follow Up</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>              
        </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
          <tr>
          <td valign="top" align="center" width="100%" height="100%">
             <div id="Tab1">
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
                                                Height="24px" Text="WORK PROGRAM COMPLIANCE REVIEW"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
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
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 80px">
                                            <asp:Label ID="Label2" runat="server" Text="Vendor #:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="r_vendor_number" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="l_vendorname" runat="server" Text="Vendor Name:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 280px" class="td_unline" >
                                            <asp:TextBox ID="r_resource_name" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label6" runat="server" Text="Program Director:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 280px" class="td_unline" >
                                            <asp:TextBox ID="r_administrator" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="11">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 80px">
                                            <asp:Label ID="Label5" runat="server" Text="Service Code:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="r_service_code" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label8" runat="server" Text="Street:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:TextBox ID="r_site_address_line_1" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label9" runat="server" Text="City, State, ZIP:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:TextBox ID="CityStateZip"  runat="server"  CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="11">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 80px">
                                            <asp:Label ID="Label13" runat="server" Text="Telephone #:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:TextBox ID="r_site_phone_1" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label11" runat="server" Text="QA Specialist:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:Label ID="MonitorID" Width="20px" runat="server" CssClass="infaceText" Visible=false></asp:Label>
                                            <asp:TextBox ID="MonitorName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td colspan="3"></td>
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
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label24" runat="server" Text="Type of Form:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 400px" class="td_unline" >
                                            <asp:DropDownList ID="FormType" runat="server" width="380px" CssClass="infaceDropText" Enabled="false">
                                                 <asp:ListItem Value="Work Program Compliance Review" Selected="True">Work Program Compliance Review</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label1" runat="server" Text="Review Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="MonitoringDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="auto"></td>
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
                                <table class="table_inside">
                                    <tr>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label19" runat="server" Text="Service Type:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 80px;" class="td_unline">
                                            <asp:DropDownList ID="VisitType" runat="server" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="SEP IP">SEP IP</asp:ListItem>
                                                <asp:ListItem Value="SEP GP">SEP GP</asp:ListItem>
                                                <asp:ListItem Value="WAP">WAP</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label3" runat="server" Text="Purpose of Review:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 500px">
                                            <asp:TextBox ID="SitesDate" runat="server" CssClass="inface"></asp:TextBox>
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
                        <tr style="height:30px;" align="right">
                            <td>(Regulations: M=Met   PM=Partially Met    NM=Not Met    NA=Not Applicable)</td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:30px;">
                            <td><b>I. Administrative Responsibilities/Desk Review</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:20px;" align="left">
                            <td><b>Prior to ANY site visit:</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 500px">
                                            <asp:Label ID="l_Q1" runat="server" Text="1. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label4" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q1_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('1','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ1" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Review SIRs
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="SelfAdvocacy" runat="server" Text=""></asp:Checkbox>
                                                     Pull and review sampling of SIRs
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    
                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q2" runat="server" Text="2. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label7" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q2_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('2','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ2" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Review forms: DS 1962s, 1963s, 1964s, 1971s, and 1972s
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Training" runat="server" Text=""></asp:Checkbox>
                                                     Forms completed correctly
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Integration" runat="server" Text=""></asp:Checkbox>
                                                     Forms completed timely and consistently
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Verify regulatory compliance with temporary transfers between WAPs and SEPs 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="SelfCare" runat="server" Text=""></asp:Checkbox>
                                                     WAP billing documents include “turnaround invoice”
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="cooking" runat="server" Text=""></asp:Checkbox>
                                                     Review SEP billing documents
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q3" runat="server" Text="3. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label10" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q3_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('3','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ3" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                   CARF Accreditation/DOR Certification expires:&nbsp;&nbsp;&nbsp;
                                                   <asp:TextBox ID="BeginDate" runat="server" CssClass="inface" Width="80px"
                                                         onclick="DataChanged();showcalendar(event, this);" 
                                                         onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Review latest CARF report & corrective actions
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="cleaning" runat="server" Text=""></asp:Checkbox>
                                                     CARF Report reviewed and recommendations noted
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="shopping" runat="server" Text=""></asp:Checkbox>
                                                     Recommendations addressed in follow-up documents with appropriate plans of action
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Request and review latest DOR report & corrective actions
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="menu" runat="server" Text=""></asp:Checkbox>
                                                     DOR report reviewed and recommendations noted
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="meal" runat="server" Text=""></asp:Checkbox>
                                                     Recommendations addressed in follow-up documents with appropriate plans of action
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Request and review all subsequent annual self-reviews/audits 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="management" runat="server" Text=""></asp:Checkbox>
                                                     Reports reviewed and findings noted
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="publictrans" runat="server" Text=""></asp:Checkbox>
                                                     Appropriate corrective actions noted to address findings
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q4" runat="server" Text="4. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label12" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q4_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('4','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ4" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Review program design
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="health" runat="server" Text=""></asp:Checkbox>
                                                     Program design reviewed and appropriate per Program Design Checklist (Attachment A) 
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q5" runat="server" Text="5. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label14" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q5_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('5','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ5" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Information Received from:
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td>
                                                   <table class="table_inside">
                                                     <tr class="tr_common"> 
                                                       <td class="td_label" width="50px"> 
                                                          <asp:Checkbox ID="advocacy" runat="server" Text=""></asp:Checkbox>DOR
                                                       </td>
                                                       <td class="td_label" width="60px"> 
                                                          <asp:Checkbox ID="recreational" runat="server" Text=""></asp:Checkbox>Other
                                                       </td>
                                                       <td class="td_unline" style="width:auto"> 
                                                          <asp:TextBox ID="Ambulatory" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                                       </td>
                                                     </tr>
                                                   </table>
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:30px;">
                            <td><b>II. Monitoring / Compliance / Oversight</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:20px;" align="left">
                            <td><b>On-Site Visit:</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 500px">
                                            <asp:Label ID="l_Q6" runat="server" Text="6. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label15" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q6_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q6" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('6','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ6" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Follow up to Desk Review and interview of staff</i>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Program design changes
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="medical" runat="server" Text=""></asp:Checkbox>
                                                     Current program design maintained and available
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="community" runat="server" Text=""></asp:Checkbox>
                                                     Are there any changes to original program design
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Checkbox ID="home" runat="server" Text=""></asp:Checkbox>
                                                     If so, changes approved by vendoring regional center on:
                                                     &nbsp;&nbsp;&nbsp;
                                                     <asp:TextBox ID="EndDate" runat="server" CssClass="inface" Width="80px"
                                                         onclick="DataChanged();showcalendar(event, this);" 
                                                         onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox> 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Checkbox ID="physical" runat="server" Text=""></asp:Checkbox>
                                                     If no documentation of changes submitted, see recommendations for corrections
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q7" runat="server" Text="7. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label16" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q7_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q7" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('7','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ7" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Based on visual review of required postings and document review</i>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Verify compliance with DOL/DLSE requirements 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="cognitive" runat="server" Text=""></asp:Checkbox>
                                                     DOL/DLSE On-Site Checklist completed (Attachment B)
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q8" runat="server" Text="8. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label17" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q8_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q8" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('8','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ8" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Based on visual review, document review, SE site visits and interviews</i>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="language" runat="server" Text=""></asp:Checkbox>
                                                     Services being provided match those of program design
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="psycho" runat="server" Text=""></asp:Checkbox>
                                                     Services provided are assisting clients in achieving IPP objectives for which the vendor is responsible
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="selfhelp" runat="server" Text=""></asp:Checkbox>
                                                     Client outcomes, as established in program design, consistent with services being provided in order to reach desired outcomes
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="C1to8" runat="server" Text=""></asp:Checkbox>
                                                     Services provided in a safe and clean environment
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="C1to7" runat="server" Text=""></asp:Checkbox>
                                                     Entrance and exit criteria applied consistently and appropriately, and include:
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Checkbox ID="C1to6" runat="server" Text=""></asp:Checkbox>
                                                     Ages of clients to be served
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Checkbox ID="integration1" runat="server" Text=""></asp:Checkbox>
                                                     Level of skills and ability development indicating appropriateness of program
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Checkbox ID="C1to4" runat="server" Text=""></asp:Checkbox>
                                                     Any other prerequisites for participating in program
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="C1to3" runat="server" Text=""></asp:Checkbox>
                                                     WAP day matches program design
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                     <asp:Checkbox ID="integration2" runat="server" Text=""></asp:Checkbox>
                                                     verification of provision of allowable services
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk1" runat="server" Text=""></asp:Checkbox>
                                                     SE Job Placement align with IPP and IHSP
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk2" runat="server" Text=""></asp:Checkbox>
                                                     Services provided in compliance with allowable SE services
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q9" runat="server" Text="9. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label18" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q9_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q9" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('9','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ9" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Based on review of documents and interviews</i>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk3" runat="server" Text=""></asp:Checkbox>
                                                     Review and verify implementation of previous corrective action plans (if any) 
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q10" runat="server" Text="10. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label20" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q10_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q10" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('10','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ10" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Based on document review compared to program design</i>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk4" runat="server" Text=""></asp:Checkbox>
                                                     Staff Training Plan being followed per program design 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk5" runat="server" Text=""></asp:Checkbox>
                                                     Current written job descriptions for all personnel 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk6" runat="server" Text=""></asp:Checkbox>
                                                     Employee timesheets specifying each employee’s shift hours (For Supported Employment only as related to DS 1964s and DS 1972s)
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q11" runat="server" Text="11. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label21" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q11_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q11" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('11','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ11" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Based on desk review, IHSP reviews and visual review</i>
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk7" runat="server" Text=""></asp:Checkbox>
                                                     Staffing ratio is appropriate<br />
                                                     If ratio is in Program Design 
                                                     <asp:TextBox ID="Capacity" runat="server" CssClass="inface" width="30px" MaxLength="10"></asp:TextBox>
                                                     staff to 
                                                     <asp:TextBox ID="Vacancy" runat="server" CssClass="inface" width="30px" MaxLength="10"></asp:TextBox>
                                                     clients
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk8" runat="server" Text=""></asp:Checkbox>
                                                     Sample of current weekly schedule available <br />
                                                     From review of DS 1971s average % of paid work
                                                     <asp:TextBox ID="Adult" runat="server" CssClass="inface" width="30px" MaxLength="10"></asp:TextBox>                                                     
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk9" runat="server" Text=""></asp:Checkbox>
                                                     Work Adjustment Services appropriate                                                 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk10" runat="server" Text=""></asp:Checkbox>
                                                     Supportive Habilitation Services (non paid activities) appropriate                                                  
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 10px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q12" runat="server" Text="12. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label22" runat="server" Text="Date Reviewed:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 80px" class="td_unline" >
                                            <asp:TextBox ID="Q12_Date" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q12" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('12','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ12" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="5">
                                           <table class="table_inside">
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     <i>Based on review of IHSP and IPP documents </i>
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td colspan="2" class="td_label" style="width:auto">
                                                     (Complete Attachment C for ~10% of clients)
                                                 </td>
                                              </tr>
                                              <tr style="height: 5px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                    Documents maintained reflecting review of the clients’ performance and 
                                                    progress in relation to each IPP objective for which the vendor is responsible
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk11" runat="server" Text=""></asp:Checkbox>
                                                     Verification of semi-annual review of IHSPs 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk12" runat="server" Text=""></asp:Checkbox>
                                                     IHSPs documented in measurable terms 
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     Review IHSP
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk13" runat="server" Text=""></asp:Checkbox>
                                                     Verification of link between IPP and IHSP goals and outcomes
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk14" runat="server" Text=""></asp:Checkbox>
                                                     Documentation is clear, realistic, and appropriate
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk15" runat="server" Text=""></asp:Checkbox>
                                                     Evidence of a review of appropriateness of placement
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk16" runat="server" Text=""></asp:Checkbox>
                                                     Evidence of review of efficacy of services
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk17" runat="server" Text=""></asp:Checkbox>
                                                     For WAP Only – Evidence of assessment to determine if a 
                                                     referral for vocational rehabilitation services is appropriate
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     General attendance policy being followed
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk18" runat="server" Text=""></asp:Checkbox>
                                                     Client attendance maintained daily, indicating the dates of services
                                                 </td>
                                              </tr>
                                              <tr style="height: 2px;">
                                                 <td colspan="2">
                                                 </td>
                                              </tr>
                                              <tr class="tr_common">
                                                 <td width="50px"></td>
                                                 <td class="td_label" style="width:auto">
                                                     <asp:Checkbox ID="Chk19" runat="server" Text=""></asp:Checkbox>
                                                     Verification of conducting time studies at lease 2 times a year
                                                 </td>
                                              </tr>
                                           </table> 
                                        </td>
                                        <td colspan="4">
                                        </td>
                                    </tr>

                                    <tr style="height: 5px;">
                                        <td colspan="9">
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
                        <tr style="height: 10px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="l_quality" runat="server" Text="Notes:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="quality" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="150"></asp:TextBox>
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
                        <tr style="height:30px;">
                            <td><b>III.  Strengths and Innovations</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="l_comments" runat="server" Text="Innovative Services/Promising Practices" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="150"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="Label23" runat="server" Text="Leadership/Achievement Awards" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="comments1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="150"></asp:TextBox>
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
                        <tr style="height:30px;">
                            <td><b>Additional Information</b></td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="comments2" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="150"></asp:TextBox>
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
                                    <tr style="height: 20px;">
                                        <td colspan="4"> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="4" class="td_label">
                                           <asp:Label ID="Label25" runat="server" Font-Bold="true" 
                                             Text="If you are cited your signature below indicates your awareness of your appeal rights and acknowledgement of the meaning of these inadequacies. Corrections must be made within established time frame noted above. (56056)"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="4"> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan=4 class="td_label">
                                           <asp:CheckBox ID="signed_chk" runat="server" Text=""  Width="30" /><b>Resource Representative has signed</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="4"> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label86" runat="server" Text="QAS Signature:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="2">
                                            <table>
                                                <tr class="tr_common">
                                                    <td style="width: 200px;" class="td_unline">
                                                        <asp:TextBox ID="SignaturedBy" Font-Names="Comic Sans MS" ReadOnly="true" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td width="10">
                                                    </td>
                                                    <td  class="td_label" style="width: 60px">
                                                        <asp:Label ID="Label87" runat="server" Text="Date:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td style="width: 200px;" class="td_unline">
                                                        <asp:TextBox ID="SignaturedDate" runat="server" Font-Names="Comic Sans MS" ReadOnly="true" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="4"> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="4" class="td_label">
                                            <b><asp:Checkbox ID="AppealProcess" runat="server" Text="Appeal Process (Print only if any 'Not Met' is checked)" Visible="false"></asp:Checkbox></b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 50px;">
                            <td>
                            </td>
                        </tr>
                    </table>
             </div>
             <div id="Tab2"  style="display:none;">
                <asp:Label ID="Title_FP" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Follow Up List</asp:Label>
                <br />
                <asp:DataGrid ID="dg_FormFPList" runat="server" AllowPaging="false" CssClass="grd_body"
				   Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>     
                    <asp:BoundColumn DataField="MTID" HeaderText="MTID" Visible="False">
                    </asp:BoundColumn>        
                    <asp:BoundColumn DataField="ResourceID" HeaderText="ResourceID" Visible="False">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="MonitoringDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="SignaturedBy" HeaderText="Signed By" >
                        <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                    </asp:BoundColumn>    
                    <asp:TemplateColumn HeaderText="View/Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
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
