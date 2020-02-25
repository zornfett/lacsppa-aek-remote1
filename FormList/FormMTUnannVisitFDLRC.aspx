﻿<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTUnannVisitFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormMTUnannVisitFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Unannounced Visit:::...</title>
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
                  popupDialog("FormMTCitationFDLRC.aspx?MTID=" + entrykey + "&FormType=Unannounced Visit&Qno=" + Qno + "&type=add");
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
                                <b><u>Unannounced Visit</u></b>
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
                                                Height="24px" Text="UNANNOUNCED VISIT"></asp:Label>
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
                                            <asp:Label ID="l_vendorname" runat="server" Text="Home Name:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 280px" class="td_unline" >
                                            <asp:TextBox ID="r_resource_name" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label6" runat="server" Text="Home Administrator:" Font-Bold="true"></asp:Label>
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
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="l_r_license_number" runat="server" Text="License:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:TextBox ID="r_license_number" runat="server"  CssClass="inface" MaxLength="15"></asp:TextBox>
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
                                        <td  class="td_label" style="width: 180px">
                                            <asp:Label ID="Label3" runat="server" Text="This Unannounced Visit is:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 150px" class="td_unline" >
                                            <asp:DropDownList ID="capacity" runat="server" width="140px" CssClass="infaceDrop">
                                                 <asp:ListItem Value=""></asp:ListItem>
                                                 <asp:ListItem Value="Routine">Routine</asp:ListItem>
                                                 <asp:ListItem Value="Additional">Additional</asp:ListItem>
                                            </asp:DropDownList>
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
                                                 <asp:ListItem Value="Unannounced Visit"  Selected="True">Unannounced Visit</asp:ListItem>
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
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height: 10px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:30px;">
                            <td align="left"><b>Participants Included:</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>  
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="l_sitesdate" runat="server" Text="Residents:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="Sitesdate" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="40"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>  
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="l_quality" runat="server" Text="Residential Staff:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="quality" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="40"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 10px;">
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
                            <td><b>Regulatory Requirements:</b></td>
                        </tr>
                        <tr style="height: 10px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:30px;">
                            <td><b>A. Physical Plant</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q1" runat="server" Text="1. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q2" runat="server" Text="2. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q3" runat="server" Text="3. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q4" runat="server" Text="4. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q5" runat="server" Text="5. " Font-Bold="true"></asp:Label>
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
                                    <tr class="tr_common">
                                        <td colspan="5">
                                            <table class="table_inside">
                                               <tr class="tr_common">
                                                   <td class="td_label" style="width: 60px">
                                                       <asp:Label ID="l_children" runat="server" Text="Temp"></asp:Label>
                                                   </td>
                                                   <td width="5">
                                                   </td>
                                                   <td style="width: 150px;" class="td_unline">
                                                       <asp:TextBox ID="Children" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                   </td>
                                                   <td width="auto">
                                                   </td>
                                               </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q6" runat="server" Text="6. " Font-Bold="true"></asp:Label>
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
                                    <tr class="tr_common">
                                        <td colspan="5">
                                            <table class="table_inside">
                                               <tr class="tr_common">
                                                   <td  class="td_label" style="width: 60px">
                                                       <asp:Label ID="l_vacancy" runat="server" Text="Temp"></asp:Label>
                                                   </td>
                                                   <td width="5">
                                                   </td>
                                                   <td style="width: 150px;" class="td_unline">
                                                       <asp:TextBox ID="Vacancy" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                   </td>
                                                   <td width="10">
                                                   </td>
                                                   <td  class="td_label" style="width: 60px">
                                                       <asp:Label ID="l_adult" runat="server" Text="Temp"></asp:Label>
                                                   </td>
                                                   <td width="5">
                                                   </td>
                                                   <td style="width: 150px;" class="td_unline">
                                                       <asp:TextBox ID="Adult" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                   </td>
                                                   <td width="auto">
                                                   </td>
                                               </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="5">
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
                            <td><b>B. Food Supplies and Storage</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q7" runat="server" Text="7. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q8" runat="server" Text="8. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q9" runat="server" Text="9. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q10" runat="server" Text="10. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 5px;">
                                        <td colspan="5">
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
                            <td><b>C. Health and Safety</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q11" runat="server" Text="11. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q12" runat="server" Text="12. " Font-Bold="true"></asp:Label>
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q13" runat="server" Text="13. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q13" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('13','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ13" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q14" runat="server" Text="14. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q14" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('14','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ14" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q15" runat="server" Text="15. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q15" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('15','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ15" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="5">
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
                            <td><b>D. Resident Rights</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q16" runat="server" Text="16. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q16" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('16','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ16" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                     <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q17" runat="server" Text="17. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q17" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('17','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ17" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q18" runat="server" Text="18. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q18" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('18','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ18" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q19" runat="server" Text="19. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q19" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('19','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ19" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="5">
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
                            <td><b>E. Administration and Staffing</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q20" runat="server" Text="20. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q20" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('20','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ20" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q21" runat="server" Text="21. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q21" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('21','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ21" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="5">
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
                            <td><b>F. Correction of Previously Identified QA Issues</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q22" runat="server" Text="22. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q22" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('22','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ22" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="5">
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
                               <b><asp:Label ID="l_comments" runat="server" Text="COMMENDATIONS/RECOMMENDATIONS:" ></asp:Label></b>
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
                                           <asp:Label ID="Label4" runat="server" Font-Bold="true" 
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