<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerSLSSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerSLSSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>Client SLS Detail</title>
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
    <form id="SLSInfo" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SLS ASSESSMENT QUESTIONNAIRE</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">SLS For</asp:label>
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
                <td colspan="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="IPP Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" style="width: 100px">
                    <b>
                        <asp:TextBox ID="sls_ippdate" runat="server" CssClass="inface"
                        onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox></b>
                </td>
                <td width="5">
                </td>
                <td style="width: 80px"></td>
                <td width="5">
                </td>
                <td style="width: 100px"></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label5" runat="server" Text="SLS Assessment Questionnaire completed?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:DropDownList ID="sls_question_completed" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td width="5">
                </td>
                <td class="td_label" style="width: 80px"><b>Date:</b></td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" style="width: 100px">
                    <asp:TextBox ID="sls_question_compdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" width="80" ></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="Provided SLS Services?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:DropDownList ID="sls_service" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td width="5">
                </td>
                <td style="width: 80px"></td>
                <td width="5">
                </td>
                <td style="width: 100px"></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text="IHSS Hours considered?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:DropDownList ID="sls_ihsshrs_considered" runat="server" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" OnClick="DataChanged()" CssClass="infaceDrop">
                    </asp:DropDownList>
                </td>
                <td width="5">
                </td>
                <td style="width: 80px"></td>
                <td width="5">
                </td>
                <td style="width: 100px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label12" runat="server" Text="#:of IHSS Hours:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" style="width: 100px">
                    <b><asp:TextBox ID="sls_ihsshrs" runat="server" Text="" CssClass="inface" MaxLength="6"></asp:TextBox></b>
                </td>
                <td width="5">
                </td>
                <td style="width: 80px"></td>
                <td width="5">
                </td>
                <td style="width: 100px"></td>
            </tr>
            <tr style="height: 150px;">
                <td  colspan="7">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
