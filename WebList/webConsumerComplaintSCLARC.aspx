<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerComplaintSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerComplaintSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>Client Complaints Detail</title>
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
        function submitcalendar(boxid) {
            var InputDate = JTrim(boxid.value);
            var MonStr = "";
            var DayStr = "";
            if (InputDate != "") {
                if (IsDate(InputDate, false) == "true") {
                    var dt = new Date(InputDate);
                    dt.setDate(dt.getDate() + 22);
                    MonStr = (dt.getMonth() + 1).toString();
                    if (MonStr.length == 1) {
                        MonStr = "0" + MonStr;
                    }
                    DayStr = (dt.getDate()).toString();
                    if (DayStr.length == 1) {
                        DayStr = "0" + DayStr;
                    }
                    document.getElementById("complaint_due").value = MonStr + "/" + DayStr + "/" + dt.getFullYear();
                }
            }
        }
</script>
</head>
<body id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ComplaintInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">COMPLAINT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Complaint For</asp:label>
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
                <td align="right" class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text="4731 Complaint Received Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="120">
                    <asp:TextBox ID="complaint_recv_date" onclick="DataChanged();showcalendarsubmit(event, this);" onfocus="DataChanged();showcalendarsubmit(event, this);"  runat="server"
                        CssClass="inface" Width="120"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text="Complaint Type:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td style="width: 250px;" align="left">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 250px;" align="left">
                                <asp:textbox ID="complaint_type" runat="server" CssClass="inface" MaxLength=50>
                                </asp:textbox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="4731 Complaint Due:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="120">
                    <asp:TextBox ID="complaint_due" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                        CssClass="inface" Width="120"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 250px">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="Date Mailed to consumer:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="120">
                    <asp:TextBox ID="complaint_maileddate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                        CssClass="inface" Width="120"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" valign="top" style="width: 250px">
                    <b><asp:Label ID="Label3" runat="server" Text="Resolution:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td colspan=2 class="td_unline" align="left">
                    <asp:TextBox ID="complaint_resolution" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                       runat="server" Width="99%" Height="80"></asp:TextBox> </td>
            </tr>
            <tr style="height: 100px;">
                <td colspan="4">
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
