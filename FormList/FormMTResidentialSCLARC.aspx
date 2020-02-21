<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTResidentialSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormMTResidentialSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::RESIDENTIAL FACILITY MONITORING:::...</title>
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
            winhref("PrintFormMTResidentialSCLARC.aspx?MTID="+entrykey,"PrintFormMTResidentialSCLARC");         
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
                  popupDialog("FormMTCitationResident.aspx?MTID=" + entrykey + "&FormType=Residential Facility Monitoring&Qno=" + Qno + "&type=add");
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
          window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
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
                <td colspan="5" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="TAB1" style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>Residential Facility Monitoring</u></b>
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
            <tr class="tr_common">
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
                                                Height="24px">RESIDENTIAL FACILITY MONITORING</asp:Label>
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
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label3" runat="server" Text="Review Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="MonitoringDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td  class="td_label" style="width: 160px">
                                            <asp:Label ID="Label1" runat="server" Text="Part Two of the Monitoring:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="ProgDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width:20px">
                                        </td>
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label4" runat="server" Text="Type of Form:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 300px" class="td_unline" >
                                            <asp:DropDownList ID="FormType" runat="server" width="280px" CssClass="infaceDropText" Enabled="false">
                                                 <asp:ListItem Value="Residential Facility Monitoring" Selected="True">Residential Facility Monitoring</asp:ListItem>
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
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label2" runat="server" Text="Vendor #:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:TextBox ID="r_vendor_number" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="l_vendorname" runat="server" Text="Vendor Name:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 250px" class="td_unline" >
                                            <asp:TextBox ID="r_resource_name" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label6" runat="server" Text="Administrator:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 250px" class="td_unline" >
                                            <asp:TextBox ID="r_administrator" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label7" runat="server" Text="Service Code:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:TextBox ID="r_service_code" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label10" runat="server" Text="Service Level:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td colspan="4" class="td_unline">
                                            <asp:TextBox ID="ProgramType" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label11" runat="server" Text="Name of QA:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 280px">
                                            <asp:Label ID="MonitorID" Width="20px" runat="server" CssClass="infaceText" Visible=false></asp:Label>
                                            <asp:TextBox ID="MonitorName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label8" runat="server" Text="Street:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 250px">
                                            <asp:TextBox ID="r_site_address_line_1" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label9" runat="server" Text="City, State, ZIP:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 250px">
                                            <asp:TextBox ID="CityStateZip" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="9">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="3" style="width: 385px">
                                          <table class="table_inside">
                                          <tr class="tr_common">
                                            <td class="td_label" style="width: 90px">
                                              <b><asp:Checkbox ID="Ambulatory" runat="server" Text="Ambulatory"></asp:Checkbox></b>
                                            </td>
                                            <td class="td_label" style="width: 50px">
                                              <asp:Label ID="Label5" runat="server" Text="Number:"></asp:Label>
                                            </td>  
                                            <td class="td_label" style="width: 25px">
                                              <asp:TextBox ID="StaffNum" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                            </td>
                                            <td class="td_label" style="width: 10px">
                                            </td> 
                                            <td class="td_label" style="width: 120px">
                                              <b><asp:Checkbox ID="AmbulatoryNum" runat="server" Text="Non-Ambulatory"></asp:Checkbox></b>
                                            </td>
                                            <td class="td_label" style="width: 50px">
                                              <asp:Label ID="Label12" runat="server" Text="Number:"></asp:Label>
                                            </td>
                                            <td class="td_label" style="width: 25px">
                                               <asp:TextBox ID="ClientNum" runat="server" CssClass="inface" MaxLength="3"></asp:TextBox>
                                            </td>
                                          </tr>
                                          </table>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label13" runat="server" Text="Telephone #:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 250px">
                                            <asp:TextBox ID="r_site_phone_1" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="l_r_license_number" runat="server" Text="License:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 250px">
                                            <asp:TextBox ID="r_license_number"  runat="server"  CssClass="inface" MaxLength="15"></asp:TextBox>
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
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label15" runat="server" Text="Capacity:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:TextBox ID="Capacity" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label16" runat="server" Text="Vacancy:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:TextBox ID="Vacancy" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label17" runat="server" Text="Adult:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:TextBox ID="Adult" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label18" runat="server" Text="Children:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:TextBox ID="Children" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
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
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label19" runat="server" Text="Type of Visit:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:DropDownList ID="VisitType" runat="server" Width="140px" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="Annual">Annual</asp:ListItem>
                                                <asp:ListItem Value="Semi-Annual">Semi-Annual</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label20" runat="server" Text="Begin:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="BeginDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:TextBox ID="BeginTime" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 50px;" class="td_unline">
                                            <asp:DropDownList ID="BeginAP" runat="server" Width="50px" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="AM">AM</asp:ListItem>
                                                <asp:ListItem Value="PM">PM</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label21" runat="server" Text="End:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="EndDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:TextBox ID="EndTime" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                        </td>
                                        <td style="width: 50px;" class="td_unline">
                                            <asp:DropDownList ID="EndAP" runat="server" Width="50px" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="AM">AM</asp:ListItem>
                                                <asp:ListItem Value="PM">PM</asp:ListItem>
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
                            <td  class="td_label">
                            T17-56048 – The Regional Center shall complete a minimum of one monitoring visit, which may be unannounced, 
                            to each facility each year; in which it has a client in placement, to assure that the facility is providing 
                            care and services in accordance with the client’s IPP and the admission agreement.
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
                            <td><b>CLIENTS’ RIGHTS</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
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
                            <td><b>HEALTH AND SAFETY</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
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
                                    <tr style="height: 10px;">
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
                                    <tr style="height: 10px;">
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
                                    <tr style="height: 10px;">
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
                            <td><b>PROGRAM</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
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
                                    <tr style="height: 10px;">
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
                            <td><b>FACILITY ADMINSTRATION</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
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
                                    <tr style="height: 10px;">
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
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q23" runat="server" Text="23. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q23" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('23','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ23" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q24" runat="server" Text="24. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q24" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('24','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ24" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q25" runat="server" Text="25. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q25" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('25','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ25" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q26" runat="server" Text="26. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q26" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('26','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ26" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q27" runat="server" Text="27. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q27" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('27','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ27" Width="15px" Height="15px"
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
                            <td><b>FACILITY PHYSICAL ENVIRONMENT</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q28" runat="server" Text="28. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q28" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('28','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ28" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q29" runat="server" Text="29. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q29" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('29','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ29" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q30" runat="server" Text="30. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q30" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('30','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ30" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q31" runat="server" Text="31. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q31" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('31','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ31" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q32" runat="server" Text="32. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q32" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('32','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ32" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q33" runat="server" Text="33. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q33" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('33','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ33" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q34" runat="server" Text="34. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q34" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('34','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ34" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q35" runat="server" Text="35. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q35" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('35','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ35" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q36" runat="server" Text="36. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q36" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('36','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ36" Width="15px" Height="15px"
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
                            <td><b>RESIDENT MONIES (P&I)</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q37" runat="server" Text="37. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q37" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('37','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ37" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q38" runat="server" Text="38. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q38" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('38','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ38" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q39" runat="server" Text="39. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q39" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('39','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ39" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="5">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q40" runat="server" Text="40. " Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q40" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                                   CssClass="infaceDrop" onchange="DropDownListChange('40','');" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ40" Width="15px" Height="15px"
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
                        <tr style="height: 10px;">
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
                               <b><asp:Label ID="l_quality" runat="server" Text="QUALITY ENHANCEMENT:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                               <asp:TextBox ID="quality" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" Width="99%" Height="150"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 10px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label">
                               <b><asp:Label ID="l_comments" runat="server" Text="COMMENTS:" ></asp:Label></b>
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
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 200px">
                                            <asp:Label ID="Label85" runat="server" Text="Name of Supervisor:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_label">
                                            <asp:Radiobutton ID="Supervisor_1" groupname="Supervisor" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Kim Bowie</b>
                                            <asp:Radiobutton ID="Supervisor_2" groupname="Supervisor" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Marsha Mitchell</b>
                                            <asp:Radiobutton ID="Supervisor_3" groupname="Supervisor" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Other</b>
                                            <asp:TextBox ID="OtherSupervisor" Width="200px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="4"> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan=4 class="td_label">
                                           <asp:CheckBox ID="signed_chk" runat="server" Text=""  Width="30" /><b>Facility Representative has signed the form</b>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="4"> 
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 200px">
                                            <asp:Label ID="Label86" runat="server" Text="SCLARC Facility Monitor Signature:" Font-Bold="true"></asp:Label>
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
                                                    <td width="10">
                                                    </td>
                                                    <td  class="td_label" style="width: 60px">
                                                        <asp:Label ID="Label88" runat="server" Text="Telephone:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td style="width: 200px;" class="td_unline">
                                                        <asp:TextBox ID="Telephone" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td style="width: auto"></td>
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

