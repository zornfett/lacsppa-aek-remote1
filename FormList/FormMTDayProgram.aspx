<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormMTDayProgram.aspx.cs" Inherits="Virweb2.FormList.FormMTDayProgram" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::ANNUAL DAY PROGRAM MONITORING TOOL:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>
    <script type="text/JavaScript">
    <!--
        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.MTDayProg.submit(); 
            window.focus();   
        }

        function RefreshCitationData()
        {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '2';        
            window.document.MTDayProg.submit();
            window.focus();  
        }

        function print_click() {
            //PopupMessage(10); 
            var entrykey=document.MTDayProg.entrykey.value.toString();
            var UserAct = document.MTDayProg.UserAct.value.toString();   
            winhref("PrintFormMTDayProgram.aspx?DayProgID="+entrykey+"&UserAct="+UserAct,"PrintFormMTDayProgram");          
        }

        function verify_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace("FormMTList.aspx");
        }

        function DropDownListChange(Qno)
        {
            var ddl = document.activeElement; 
            var index = ddl.selectedIndex;
            var Value = ddl.options[index].value; 

            //NOT MET is selected
            if (Value == 2) 
            {
                var entrykey=document.MTDayProg.entrykey.value.toString();
                popupDialog("FormMTCitation.aspx?MTID=" + entrykey + "&FormType=Day Program&Qno=" + Qno + "&type=add");
            } 
            return false;
        }

        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.MTDayProg.submit();
            window.focus();
        }

        function CheckPwd() {
          window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
       }
    //-->
    </script>
</head>
    <body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>   
    <form id="MTDayProg" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
    <input type="hidden" name="resource_key" id="resource_key" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignFlag" id="SignFlag" value="0" runat="server" />
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
                                                Height="24px">ANNUAL DAY PROGRAM MONITORING TOOL</asp:Label>
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
                                            <asp:Label ID="Label3" runat="server" Text="Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="ProgDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td style="width:200px">
                                        </td>
                                        <td  class="td_label" style="width: 160px">
                                            <asp:Label ID="Label1" runat="server" Text="Part Two of the Monitoring:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:TextBox ID="MonitoringDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
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
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="r_vendor_number" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="l_vendorname" runat="server" Text="Vendor Name:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:Label ID="r_resource_name" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label6" runat="server" Text="Administrator:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:Label ID="r_administrator" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label5" runat="server" Text="Service Code:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="r_service_code" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label8" runat="server" Text="Street:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:Label ID="r_site_address_line_1" runat="server" Width="200px"  CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label9" runat="server" Text="City, State, ZIP:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:Label ID="CityStateZip"  Width="200px" runat="server"  CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: auto"></td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label11" runat="server" Text="Name Of QA:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 200px">
                                            <asp:Label ID="r_qa_monitor" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label13" runat="server" Text="Telephone #:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_unline" style="width: 100px">
                                            <asp:Label ID="r_site_phone_1" runat="server" Width="200px" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td colspan="5" style="width: auto"></td>
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
                                            <asp:Label ID="Label19" runat="server" Text="Type Of Visit:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:DropDownList ID="VisitType" runat="server" Width="140px" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="1">Annual</asp:ListItem>
                                                <asp:ListItem Value="2">Semi-Annual</asp:ListItem>
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
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label22" runat="server" Text="Ambulatory:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 150px;" class="td_unline">
                                            <asp:DropDownList ID="Ambulatory" runat="server" Width="140px" CssClass="infaceDrop">
                                                <asp:ListItem Value=""></asp:ListItem> 
                                                <asp:ListItem Value="1">Ambulatory</asp:ListItem>
                                                <asp:ListItem Value="2">Non-Ambulatory</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 50px;" class="td_unline">
                                            <asp:DropDownList ID="AmbulatoryNum" runat="server" Width="50px" CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 20">
                                        </td>
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label24" runat="server" Text="Type Of Program:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 120px" class="td_unline" >
                                            <asp:DropDownList ID="ProgramType" runat="server" Width="120px" DataTextField="tb_entry_text" DataValueField="tb_entry_name" CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 10">
                                        </td>
                                        <td  class="td_label" style="width: 250px">
                                            <asp:Label ID="Label26" runat="server" Text="Transportation As An Additional Component:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  style="width: 100px" class="td_unline" >
                                            <asp:DropDownList ID="Transportation" runat="server" Width="100px" DataTextField="tb_entry_text" DataValueField="tb_entry_name" CssClass="infaceDrop">
                                            </asp:DropDownList>
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
                                        <td  class="td_label" style="width: 100px">
                                            <asp:Label ID="Label23" runat="server" Text="Program Hours:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td  class="td_label" style="width: 40px">
                                            <asp:Label ID="Label25" runat="server" Text="Begin:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 90px;" class="td_unline">
                                            <asp:TextBox ID="ProgHrBegin" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td width="20">
                                        </td>
                                        <td  class="td_label" style="width: 40px">
                                            <asp:Label ID="Label27" runat="server" Text="End:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:TextBox ID="ProgHrEnd" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
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
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr style="height:30px;">
                            <td><b>GENERAL REQUIREMENTS [Title 17, 56710]</b></td>
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
                                            <asp:Label ID="l_Q1" runat="server" Text="1. Community–based day programs vendors shall adopt and review, annually, a written internal grievance procedure for clients to W & I Code, section 4705:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q1" onchange="DropDownListChange('1');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                            <asp:Label ID="l_Q2" runat="server" Text="2. Licensed subcontractors are used to provide a portion of the direct service to consumers with unique needs with written approval of Regional Center" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q2" onchange="DropDownListChange('2');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                            <td><b>PROGRAM DESIGN [Title 17, 56712]</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q3" runat="server" Text="3. (a) the purpose and goals of service" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q3" onchange="DropDownListChange('3');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q4" runat="server" Text="3. (b) anticipated client outcome stated in measurable terms" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q4" onchange="DropDownListChange('4');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q5" runat="server" Text="3. (c) program curriculum pursuant to Title 17, 56742 or 56764" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q5" onchange="DropDownListChange('5');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q6" runat="server" Text="3. (d) description of training locations (centered-based, home, natural environment)" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q6" onchange="DropDownListChange('6');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q7" runat="server" Text="3. (e). client attendance policy (notify RC on client's 5th day of unplanned absence)" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q7" onchange="DropDownListChange('7');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q8" runat="server" Text="3. (f). staffing ratio pursuant to Title 17, 56756 or 56772" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q8" onchange="DropDownListChange('8');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q9" runat="server" Text="3. (g) direct service hours including weekly schedule" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q9" onchange="DropDownListChange('9');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q10" runat="server" Text="3. (h). staff training plan pursuant to Title 17, 56726, and 56774" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q10" onchange="DropDownListChange('10');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q11" runat="server" Text="3. (i) client entrance/exit criteria pursuant to Title 17, 56714 and 56746" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q11" onchange="DropDownListChange('11');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q12" runat="server" Text="4. A rate adjustment request which results from a program design change is submitted to RC prior to Dec. 1 of the current calendar year." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q12" onchange="DropDownListChange('12');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q13" runat="server" Text="5. There is documentation that the client is making reasonable progress toward IPP objectives and should therefore maintain continued placement." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q13" onchange="DropDownListChange('13');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q14" runat="server" Text="6. Client termination procedures are maintained pursuant to Title 17, 56718" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q14" onchange="DropDownListChange('14');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ14" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
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
                            <td><b>CLIENT DOCUMENTATION</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q15" runat="server" Text="7. The vendor shall provide documentation regarding IPP objectives for which the vendor is responsible within 30 days of receipt" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q15" onchange="DropDownListChange('15');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q16" runat="server" Text="8. Written semiannual progress reports are submitted to RC/RSS Family." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q16" onchange="DropDownListChange('16');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
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
                            <td><b>PERSONNEL REQUIREMENTS (Title 17, 56722 and 56724)</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q17" runat="server" Text="9. Vendor provides a current job description for all personnel" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q17" onchange="DropDownListChange('17');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q18" runat="server" Text="10. Each staff occupies no more than the equivalent of one full-time position." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q18" onchange="DropDownListChange('18');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q19" runat="server" Text="11. Volunteers do not replace paid staff" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q19" onchange="DropDownListChange('19');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
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
                            <td><b>STAFF TRAINING</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q20" runat="server" Text="12. A written new employee orientation is implemented within two weeks of hire." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q20" onchange="DropDownListChange('20');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q21" runat="server" Text="13. Ongoing staff training is provided at least annually." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q21" onchange="DropDownListChange('21');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
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
                            <td><b>PROGRAM RECORDS (Title 17, 56726)</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q22" runat="server" Text="14. Employee time sheets specifying each employee's shift hours" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q22" onchange="DropDownListChange('22');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q23" runat="server" Text="15. Employee payroll records." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q23" onchange="DropDownListChange('23');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q24" runat="server" Text="16. Client attendance, maintained daily, indicating the date of service" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q24" onchange="DropDownListChange('24');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q25" runat="server" Text="17. All records used to complete the DS 1897 for rate determination" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q25" onchange="DropDownListChange('25');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q26" runat="server" Text="18. All written approvals from RC or the Department required by these regulations (i.e. rate letters, vendorization letter)." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q26" onchange="DropDownListChange('26');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q27" runat="server" Text="19. Records are maintained for a period of five (5) years." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q27" onchange="DropDownListChange('27');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
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
                            <td><b>CLIENT RECORDS (Title 17, 56730)</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q28" runat="server" Text="20. (a) emergency and personal identification information" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q28" onchange="DropDownListChange('28');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q29" runat="server" Text="20. (b) a medical history including medications, allergies, medical conditions, infectious, contagious or communicable conditions, nutritional needs, immunization records." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q29" onchange="DropDownListChange('29');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q30" runat="server" Text="20. (c) medical, psychological and social evaluations" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q30" onchange="DropDownListChange('30');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q31" runat="server" Text="20. (d) authorization for emergency medical treatment" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q31" onchange="DropDownListChange('31');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q32" runat="server" Text="20. (e) client rights" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q32" onchange="DropDownListChange('32');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q33" runat="server" Text="20. (f) IPP" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q33" onchange="DropDownListChange('33');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q34" runat="server" Text="20. (g) special incident reports" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q34" onchange="DropDownListChange('34');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q35" runat="server" Text="20. (h) case progress notes" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q35" onchange="DropDownListChange('35');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q36" runat="server" Text="20. (i) records are maintained on site for five years in a locked secured place after client termination" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q36" onchange="DropDownListChange('36');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
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
                            <td><b>PROGRAM EVALUATION</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q37" runat="server" Text="21. (a) purpose of the evaluation" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q37" onchange="DropDownListChange('37');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q38" runat="server" Text="21. (b) type of data to be collected and used" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q38" onchange="DropDownListChange('38');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q39" runat="server" Text="21. (c) frequency of data collection" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q39" onchange="DropDownListChange('39');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
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
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q40" runat="server" Text="21. (d) data collection and analysis methods" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q40" onchange="DropDownListChange('40');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ40" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q41" runat="server" Text="21. (e) description of distribution, and actions taken as a result of the evaluation" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q41" onchange="DropDownListChange('41');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ41" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q42" runat="server" Text="21. (f) written summary of evaluation is forwarded to RC, user RC's and DDS" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q42" onchange="DropDownListChange('42');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ42" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q43" runat="server" Text="22. Activity Center, Adult Development Center, or Behavior Management Program is center-based and/or natural environments and has at least one of the training components specified:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_label">
                                            <b><asp:Checkbox ID="SelfAdvocacy" runat="server" Text=""></asp:Checkbox>Self-Advocacy</b><br />
                                            <b><asp:Checkbox ID="Training" runat="server" Text=""></asp:Checkbox>Employment Training</b><br />
                                            <b><asp:Checkbox ID="Integration" runat="server" Text=""></asp:Checkbox>Community Integration</b><br />
                                            <b><asp:Checkbox ID="SelfCare" runat="server" Text=""></asp:Checkbox>Self Care</b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q44" runat="server" Text="23. Social recreation program provides community integration and self-advocacy training as they relate to recreation and leisure pursuits." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q44" onchange="DropDownListChange('44');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ44" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q45" runat="server" Text="24. Independent Living Program is not center-based and includes all of the following functional skills training components specified:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q45" onchange="DropDownListChange('45');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ45" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td >
                                            <table style="width:100%">
                                                <tr class="tr_common">
                                                    <td class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label70" runat="server" Text="[MAKE MULIPLE CHOICES]" Font-Bold="true"></asp:Label><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="cooking" runat="server" Text=""></asp:Checkbox>(a) cooking </b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="cleaning" runat="server" Text=""></asp:Checkbox>(b) cleaning</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="shopping" runat="server" Text=""></asp:Checkbox>(c) shopping in natural environment</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="menu" runat="server" Text=""></asp:Checkbox>(d) menu planning</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="meal" runat="server" Text=""></asp:Checkbox>(e) meal preparation</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="management" runat="server" Text=""></asp:Checkbox>(f) money management, inc. check cashing and purchasing activities</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="publictrans" runat="server" Text=""></asp:Checkbox>(g) use of public transportation</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="health" runat="server" Text=""></asp:Checkbox>(h) personal health and hygiene</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="advocacy" runat="server" Text=""></asp:Checkbox>(i) self advocacy training</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="recreational" runat="server" Text=""></asp:Checkbox>(j) independent recreational</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="medical" runat="server" Text=""></asp:Checkbox>(k) use of medical and dental services, as well as other community resources</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="community" runat="server" Text=""></asp:Checkbox>(l) community awareness such as police, fire, or emergency help</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="home" runat="server" Text=""></asp:Checkbox>(m) home and community safety or provide supports necessary for a client to maintain a self-sustaining, independent living situation in the community.</b>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q45MC" onchange="DropDownListChange('45MC');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ45MC" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q46" runat="server" Text="25. Infant Development Program is center-based and includes intervention in all the following:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q46" onchange="DropDownListChange('46');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ46" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td >
                                            <table style="width:100%">
                                                <tr class="tr_common">
                                                    <td class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label72" runat="server" Text="[MAKE MULIPLE CHOICES]" Font-Bold="true"></asp:Label><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="physical" runat="server" Text=""></asp:Checkbox>(a) physical development</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="cognitive" runat="server" Text=""></asp:Checkbox>(b) cognitive development</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="language" runat="server" Text=""></asp:Checkbox>(c) language and speech development</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="psycho" runat="server" Text=""></asp:Checkbox>(d) psycho-social development</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="selfhelp" runat="server" Text=""></asp:Checkbox>(e) self-help and feeding</b>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q46MC" onchange="DropDownListChange('46MC');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ46MC" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
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
                            <td><b>STAFFING RATIO</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q47" runat="server" Text="26. For activity centers, adult development centers, behavior management programs, and social recreational programs, the vendor may supplement direct care staff by one staff person, six hours/day, for every 10 non-mobile (persons confined to wheelchairs or gurneys) clients attending. A written request for supplemental staff has been submitted to RC and approved by DDS" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q47" onchange="DropDownListChange('47');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ47" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q48" runat="server" Text="27. Activity center direct care ratio is" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q48" onchange="DropDownListChange('48');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ48" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td >
                                            <table style="width:100%">
                                                <tr class="tr_common">
                                                    <td class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label76" runat="server" Text="[MAKE MULIPLE CHOICES]" Font-Bold="true"></asp:Label><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="C1to8" runat="server" Text=""></asp:Checkbox>(a) 1:8</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="C1to7" runat="server" Text=""></asp:Checkbox>(b) 1:7 (one two hr session/wk)</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="C1to6" runat="server" Text=""></asp:Checkbox>(c) 1:6 (two two-hr sessions/wk)</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="integration1" runat="server" Text=""></asp:Checkbox>(d) Center is providing community integration or employment training in groups of 3 or less</b>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q48MC" onchange="DropDownListChange('48MC');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ48MC" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q49" runat="server" Text="28. Adult development center direct care ratio is" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q49" onchange="DropDownListChange('49');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ49" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td >
                                            <table style="width:100%">
                                                <tr class="tr_common">
                                                    <td class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label78" runat="server" Text="[MAKE MULIPLE CHOICES]" Font-Bold="true"></asp:Label><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="C1to4" runat="server" Text=""></asp:Checkbox>(a) 1:4</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="C1to3" runat="server" Text=""></asp:Checkbox>(b) 1:3 (two two-hr sessions/wk)</b><br />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="integration2" runat="server" Text=""></asp:Checkbox>(c) Center is providing community integration or employment training in groups of 3 or less</b>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q49MC" onchange="DropDownListChange('49MC');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ49MC" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q50" runat="server" Text="29. Behavior management program direct care ratio is 1:3" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q50" onchange="DropDownListChange('50');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ50" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q51" runat="server" Text="30. Social recreation program direct care ratio is 1:10" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q51" onchange="DropDownListChange('51');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ51" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q52" runat="server" Text="31. Independent living program direct care ration is 1:1 / 1:2 / 1:3" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q52" onchange="DropDownListChange('52');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ52" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q53" runat="server" Text="32. Infant development program direct care ratio is 1:1 / 1:2 / 1:3" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q53" onchange="DropDownListChange('53');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ53" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
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
                            <td><b>ADDITIONAL REQUIREMENTS</b></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_inside" border="0"  cellspacing="0" cellpadding="0" style="border: 2px solid #CC99CC;">
                                    <tr style="height: 5px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q54" runat="server" Text="33. The program maintains adequate liability insurance coverage" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q54" onchange="DropDownListChange('54');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ54" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q55" runat="server" Text="34. The program has a first aid and emergency disaster plan" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q55"  onchange="DropDownListChange('55');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ55" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q56" runat="server" Text="35. The program's license is current and posted" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q56" onchange="DropDownListChange('56');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ56" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q57" runat="server" Text="36. Medication location is locked. Medication administration procedure (log sheet) is completed daily. Destruction log is completed for discontinued medications." Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q57" onchange="DropDownListChange('57');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ57" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 10px;">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td  class="td_label">
                                            <asp:Label ID="l_Q58" runat="server" Text="37. Facility has adequate kitchen and storage area for lunches" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 100px;" class="td_unline">
                                            <asp:DropDownList ID="Q58" onchange="DropDownListChange('58');" runat="server" Width="100px" CssClass="infaceDrop">
                                                <asp:ListItem Value="1">Met</asp:ListItem>
                                                <asp:ListItem Value="2">NOT MET</asp:ListItem>
                                                <asp:ListItem Value="3">N/A</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td width="15px">
                                            <asp:ImageButton runat="server" Visible="false" ID="btnQ58" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td colspan="3">
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
                                        <td colspan="4" class="td_label" style="width: 180px">
                                            <b><asp:Checkbox ID="AppealProcess" runat="server" Text=""></asp:Checkbox>Add Appeal Process</b>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
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
