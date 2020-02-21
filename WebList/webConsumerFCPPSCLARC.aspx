<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerFCPPSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerFCPPSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>Client FCPP Detail</title>
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
    </script>
</head>
<body id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="FCPPInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 35px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">FCPP INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">FCPP For</asp:label>
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
		  <tr style="height:30px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
    </div>
    <div align="center" valign="top" style="position:relative;WIDTH:100%; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height: 15px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="IFSP/IPP Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="ippdate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                        CssClass="inface"></asp:TextBox>
                </td>
                <td  style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label5" runat="server" Text="Did Family provide income documentation?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="105">
                    <asp:DropDownList ID="income_doc" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td  style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="Family Cost Participation Program Assessment Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="assessment_date" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                        CssClass="inface"></asp:TextBox>
                </td>
                <td  style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label3" runat="server" Text="Share of Cost Assessment %:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="cost_share" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td  style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text="Did Family meet the exception?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="105">
                    <asp:DropDownList ID="exception" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label6" runat="server" Text="Services effected:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:DropDownList ID="service_effected" runat="server" CssClass="infaceDrop" MaxLength="50">
                        <asp:ListItem Value=""></asp:ListItem>
                        <asp:ListItem Value="Respite">Respite</asp:ListItem>
                        <asp:ListItem Value="Camp">Camp</asp:ListItem>
                        <asp:ListItem Value="Day Care">Day Care</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text="Share of POS Hours Family:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="pos_share" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label11" runat="server" Text="Share of POS Hours RC:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="pos_share_rc" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label8" runat="server" Text="Family Size:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="familysize" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label9" runat="server" Text="Date Letter Mailed to family:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="105">
                    <asp:TextBox ID="maileddate1" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                        CssClass="inface"></asp:TextBox>
                </td>
                <td style="width: 250px"></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label10" runat="server" Text="Next FCPP due:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left"  style="width: 105px">
                    <b>
                        <asp:Label ID="next_fcpp" runat="server" Text="" CssClass="infaceText"></asp:Label></b>
                </td>
                <td style="width: 250px"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
