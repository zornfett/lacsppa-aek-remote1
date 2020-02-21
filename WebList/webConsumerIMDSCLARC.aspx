<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerIMDSCLARC.aspx.cs"
    Inherits="Virweb2.WebList.webConsumerIMDSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<html>
<head>
    <base target="_self" />
    <title>Client IMD Detail</title>
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

        function save_click() {
            if (!isMaxLength(document.getElementById("placement_reason"), 250)) {
                document.getElementById("placement_reason").focus();
                return false;
            }

            if (!isMaxLength(document.getElementById("ssrs_reason"), 250)) {
                document.getElementById("ssrs_reason").focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="IMDInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">IMD/MHRC INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">IMD For</asp:label>
			</td>
			<td>
              <asp:ImageButton ID="btnAdd" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" 
                  onclientclick="return save_click();" onclick="btnAdd_Click"></asp:ImageButton>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" 
                  onclientclick="return save_click();" onclick="btnEdit_Click"></asp:ImageButton>
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
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="IPP Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" class="td_label" style="width: 105px">
                    <b>
                        <asp:Label ID="ippdate" runat="server" Text="" CssClass="infaceText"></asp:Label></b>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="Emergency Placement Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left"  style="width: 100px">
                    <asp:TextBox ID="placementdate" onclick="DataChanged();showcalendar(event, this);"
                        onfocus="DataChanged();showcalendar(event, this);" runat="server" CssClass="inface"
                        Width="100"></asp:TextBox>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label5" runat="server" Text="Was Assessment Completed?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" style="width: 100px">
                    <asp:DropDownList ID="assessment_completed" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged();">
                    </asp:DropDownList>
                </td>
                <td width="5">
                </td>
                <td align="right" class="td_label" style="width: 150px">
                    <b>
                        <asp:Label ID="Label3" runat="server" Text="Date of Assessment:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" style="width: 100px">
                    <asp:TextBox ID="assessment_date" onclick="DataChanged();showcalendar(event, this);"
                        onfocus="DataChanged();showcalendar(event, this);" runat="server" CssClass="inface"
                        Width="100"></asp:TextBox>
                </td>
                <td width="150px">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text="Last Quarterly Completed:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" class="td_label" style="width: 105px">
                    <b>
                        <asp:Label ID="last_quarterly_completed" runat="server" Text="" CssClass="infaceText"></asp:Label></b>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label6" runat="server" Text="Has a placement been secured?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" style="width: 100px">
                    <asp:DropDownList ID="placement_secured" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label8" runat="server" Text="If Yes Name of Placement:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td colspan=6 class="td_unline" align="left">
                    <asp:TextBox ID="placement_name" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" valign="top" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text="If No or Pending please explain:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left"  colspan="6" >
                    <asp:TextBox ID="placement_reason" TextMode="MultiLine" Height="60px" runat="server" CssClass="inface">
                    </asp:TextBox></br>
                    <asp:RegularExpressionValidator ID="regPlacementReason" runat="server" ControlToValidate="placement_reason" 
                        ValidationExpression="^[\s\S]{0,250}$" ErrorMessage="Maximum of 250 characters allowed" Text="" > </asp:RegularExpressionValidator>
                    <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="placement_reason" ShowModal="true" runat="server">
                    </cc1:UltimateSpell>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label9" runat="server" Text="Has SSRS been contacted?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" style="width: 105px">
                    <asp:DropDownList ID="ssrs_contacted" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" valign="top" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label10" runat="server" Text="Please explain:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left"  colspan="6" >
                    <asp:TextBox ID="ssrs_reason" TextMode="MultiLine" Height="60px" runat="server" CssClass="inface">
                    </asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="regSsrsReason" runat="server" ControlToValidate="ssrs_reason" 
                        ValidationExpression="^[\s\S]{0,250}$" ErrorMessage="Maximum of 250 characters allowed" Text=""></asp:RegularExpressionValidator>
                    <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="ssrs_reason" ShowModal="true" runat="server">
                    </cc1:UltimateSpell>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label12" runat="server" Text="180 day due date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" style="width: 100px">
                    <asp:TextBox ID="placementdate_180" runat="server" ReadOnly="true" CssClass="infaceText"
                        Width="100"></asp:TextBox>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label11" runat="server" Text="Next Quarterly Due:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" class="td_label" style="width: 105px">
                    <b>
                        <asp:Label ID="next_quarterlydue" runat="server" Text="" CssClass="infaceText"></asp:Label></b>
                </td>
                <td colspan="5">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="8">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
