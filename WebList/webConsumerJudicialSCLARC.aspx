<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerJudicialSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerJudicialSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="MetaBuilders.WebControls" Namespace="MetaBuilders.WebControls"
    TagPrefix="mb" %>
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base target="_self" />
    <title>Client Judicial Involvement Detail</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function Refresh_Data(flag) {
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshFinancialData();
            }
            else {
                window.opener.RefreshFinancialData();
            }
            if (flag == 1) {
                window.close();
            }
            else {
                window.focus();
            }
        }

        function displayCourtDate() {
            var flag = document.JudicialInfo.CourtDateCnt.value;
            switch (flag) {
                case "1":
                    D2.style.display = "";
                    D3.style.display = "none";
                    D4.style.display = "none";
                    D5.style.display = "none";
                    D6.style.display = "none";
                    D7.style.display = "none";
                    D8.style.display = "none";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "2";
                    break;
                case "2":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "none";
                    D5.style.display = "none";
                    D6.style.display = "none";
                    D7.style.display = "none";
                    D8.style.display = "none";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "3";
                    break;
                case "3":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "none";
                    D6.style.display = "none";
                    D7.style.display = "none";
                    D8.style.display = "none";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "4";
                    break;
                case "4":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "";
                    D6.style.display = "none";
                    D7.style.display = "none";
                    D8.style.display = "none";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "5";
                    break;
                case "5":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "";
                    D6.style.display = "";
                    D7.style.display = "none";
                    D8.style.display = "none";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "6";
                    break;
                case "6":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "";
                    D6.style.display = "";
                    D7.style.display = "";
                    D8.style.display = "none";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "7";
                    break;
                case "7":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "";
                    D6.style.display = "";
                    D7.style.display = "";
                    D8.style.display = "";
                    D9.style.display = "none";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "8";
                    break;
                case "8":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "";
                    D6.style.display = "";
                    D7.style.display = "";
                    D8.style.display = "";
                    D9.style.display = "";
                    D10.style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "9";
                    break;
                case "9":
                    D2.style.display = "";
                    D3.style.display = "";
                    D4.style.display = "";
                    D5.style.display = "";
                    D6.style.display = "";
                    D7.style.display = "";
                    D8.style.display = "";
                    D9.style.display = "";
                    D10.style.display = "";
                    document.getElementById("btn_AddCourtDate").style.display = "none";
                    document.JudicialInfo.CourtDateCnt.value = "10";
                    break;
            }
        }

        function SelectResource(VendorNumber,SvcCode,SubCode,Rate)
       {
            var myVendorNumber = document.getElementById(<%= "'" + hdnVendorNumber.ClientID + "'" %>);        
            myVendorNumber.value = VendorNumber;      

            window.document.JudicialInfo.submit(); 
            window.focus();   
       }
        
    </script>
</head>
<body id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="JudicialInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="hdnVendorNumber" id="hdnVendorNumber" value="" runat="server" />
    <input type="hidden" name="CourtDateCnt" id="CourtDateCnt" value="1" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">JUDICIAL INVOLVEMENT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Judicial Involvement For</asp:label>
			</td>
			<td>
              <asp:ImageButton ID="btnAdd" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclick="btnAdd_Click"></asp:ImageButton>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclick="btnEdit_Click"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="image" id="btnPrint" src="../img/print.ico" alt="Print" style="width: 25px;height:25px" visible="false" 
                  onclick="javascript:print_click();" runat="server" /> 
			  &nbsp;&nbsp;&nbsp;&nbsp;
              <input type="image" id="btnHelp" src="../img/help.ico" alt="Help" style="width: 25px;height:25px" visible="false" 
                  onclick="winhref('./HelpFile/.html','help')" runat="server" />
            </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
    </div>
    <div align="center" valign="top" style="position:relative;WIDTH:100%; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label1" runat="server" Text="Case Number:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="100">
                                <asp:TextBox ID="casenumber" width="100" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label5" runat="server" Text="Current Criminal Charge(s):"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td align="left" width="250px">
                                <asp:textbox id="criminal_charge" runat="server" CssClass="inface" maxlength="50"></asp:textbox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label2" runat="server" Text="Type:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td align="left" width="250px">
                                <asp:textbox id="criminal_type" runat="server" CssClass="inface" maxlength="50"></asp:textbox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label3" runat="server" Text="Courthouse:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td style="width: 350px;" align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td style="width: 350px;" align="left">
                                            <mb:ComboBox ID="courthouse" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="310px" BorderStyle="Inset" BorderWidth="2px">
                                            </mb:ComboBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width:auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label4" runat="server" Text="Division:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td style="width: 350px;" align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td style="width: 350px;" align="left">
                                            <mb:ComboBox ID="division" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="310px" BorderStyle="Inset" BorderWidth="2px">
                                            </mb:ComboBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label7" runat="server" Text="Date of arrest:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="100">
                                <asp:TextBox ID="arrestdate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="100"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label8" runat="server" Text="Housing:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td align="left" width="250px">
                                <asp:DropDownList ID="housing" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="tb_entry_text" Width="235px" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label9" runat="server" Text="Attorney/Public Defender Name:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="230px">
                                <asp:TextBox ID="defendername" width="230px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td width="20">
                            </td>
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label11" runat="server" Text="Phone Number:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="150">
                                <asp:TextBox ID="defender_phone" width="150px" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label12" runat="server" Text="Court Dates:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate1" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td align="left" style="width:25px; height:25px">
                                <asp:Image ID="btn_AddCourtDate" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Court Date" onclick="displayCourtDate();" />
                            </td>
                            <td width="5">
                            </td>
                            <td id="D2" style="display:none" class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate2" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td id="D3" style="display:none" class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate3" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td id="D4" style="display:none" class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate4" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td id="D5" style="display:none"  class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate5" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td id="D6" style="display:none"  class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate6" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td id="D7" style="display:none"  class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate7" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td  id="D8" style="display:none" class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate8" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td  id="D9" style="display:none" class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate9" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td width="5">
                            </td>
                            <td  id="D10" style="display:none" class="td_unline" align="left" width="60">
                                <asp:TextBox ID="courtdate10" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="60"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label13" runat="server" Text="Number of Strikes:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left"  width="230px">
                                <asp:TextBox ID="strikes_total"  width="230px" runat="server" readonly="true" CssClass="infaceText" MaxLength="5"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label14" runat="server" Text="Current judicial status:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td style="width: 250px;" align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td style="width: 250px;" align="left">
                                            <mb:ComboBox ID="judicial_stat" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="210px" BorderStyle="Inset" BorderWidth="2px">
                                            </mb:ComboBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label15" runat="server" Text="End Date of current judicial status:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="120">
                                <asp:TextBox ID="enddate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="120"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label16" runat="server" Text="If IST is consumer receiving CST Training?"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td align="left" width="235px">
                                <asp:DropDownList ID="ist" runat="server" DataValueField="tb_entry_name"
                                    DataTextField="tb_entry_text" Width="105px" OnClick="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="20">
                            </td>
                            <td width="80px" align="right">
                                <input type="button" value="Select" style="width: 80px" id="btnResource" onclick="javascript:popupDialogWide('../FormList/SearchResource.aspx');" />
                                
                            </td>
                            <td width="20">
                            </td>
                            <td align="right" class="td_label" style="width: 140px">
                                <b>
                                    <asp:Label ID="Label17" runat="server" Text="Name of CST:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="150">
                                <asp:TextBox ID="cstname" width="150px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label18" runat="server" Text="If on Parole or Probation Name of Probation Officer:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="230px">
                                <asp:TextBox ID="prob_officername" width="230px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td width="20">
                            </td>
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label19" runat="server" Text="Phone Number:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="150">
                                <asp:TextBox ID="officer_phone" width="150px" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label6" runat="server" Text="If in prison name of prison:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="230px">
                                <asp:TextBox ID="prisonname" width="230px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td width="20">
                            </td>
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label10" runat="server" Text="Scheduled Date of Release:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="100">
                                <asp:TextBox ID="releasedate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="100"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label20" runat="server" Text="Entered By:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left"  width="230px">
                                <asp:TextBox ID="judicial_sc" width="230px" ReadOnly="true" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px">
                                <b>
                                    <asp:Label ID="Label21" runat="server" Text="Closed Case:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" width="120">
                                <asp:TextBox ID="closed_cases_date" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" Width="120"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
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
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 250px" valign="top">
                                <b><asp:Label ID="judicialcomments" runat="server" Text="Comments:"></asp:Label></b>	
                            </td>
                            <td width="5">
                            </td>
                            <td style="height: 40px" valign="top">
                                <asp:TextBox ID="judicialcomment_text" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="judicialcomment_text" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 10px;">
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

