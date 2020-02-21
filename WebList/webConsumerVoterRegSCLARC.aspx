<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerVoterRegSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerVoterRegSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<html>
<head>
    <base target="_self" />
    <title>Client Voter Registration Detail</title>
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
    <form id="VoterRegInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">VOTER REGISTRATION INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Voter For</asp:label>
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
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="IPP Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_label" style="width: 105px">
                    <asp:TextBox ID="ippdate" runat="server" CssClass="inface" Style="width: 100px"  onclick="showcalendar(event, this);" 
                         onfocus="showcalendar(event, this);" >
                    </asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label5" runat="server" Text="Is Consumer Registered to vote?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:DropDownList ID="voter_reg" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" Width="105" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="Was an NVRA Voter Form Completed?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:DropDownList ID="nvra_voter" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" Width="105" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label3" runat="server" Text="If No, please explain:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="300px">
                    <asp:TextBox ID="nvra_voter_explain" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text="If Voter Registration completed by Regional Center Registration Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="100">
                    <asp:TextBox ID="reg_completeddate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                        CssClass="inface" Width="100"></asp:TextBox>
                </td>
                <td></td>  
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label6" runat="server" Text="Additional Comments:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td style="height: 40px" valign="top">
                    <asp:TextBox ID="additionalcomment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                        runat="server" Width="99%" Height="60"></asp:TextBox>
                    <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="additionalcomment" ShowModal="true"
                        runat="server">
                    </cc1:UltimateSpell>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text="Next NVRA Form due:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" class="td_label" style="width: 105px">
                    <b>
                        <asp:Label ID="next_nvra_due" runat="server" Text="" CssClass="infaceText"></asp:Label></b>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
