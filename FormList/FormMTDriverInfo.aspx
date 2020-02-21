<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTDriverInfo.aspx.cs" Inherits="Virweb2.FormList.FormMTDriverInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self" />
    <title>Driver Information</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function Refresh_Data(flag) {
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshDriverList();
            }
            else {
                window.opener.RefreshDriverList();
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
    <form id="DriverInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="mtid" id="mtid" value="" runat="server" />
    <input type="hidden" name="entry_key" id="entry_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 30px;" align="center" valign="bottom">
	        <td width="400px">
	          <asp:label id="l_Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Driver Information</asp:label> 
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
            <tr style="height: 10px;">
                <td >
                </td>
            </tr>
            <tr class="tr_common">
             <td>
             <table class="table_inside">
              <tr class="tr_common">
                <td class="td_label" style="width: 120px">
                    <b><asp:Label ID="Label5" runat="server" Text="Driver's Name:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="Name" Width="400" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td  style="width: 10px"></td>
                <td class="td_label" style="width: 120px">
                    <b><asp:Label ID="Label1" runat="server" Text="Date of Hire:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="100">
                   <asp:TextBox ID="HireDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
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
            <tr class="tr_common">
             <td>
             <table class="table_inside">
              <tr class="tr_common">
                <td class="td_label" style="width: 120px">
                    <b><asp:Label ID="Label2" runat="server" Text="Class License:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="180">
                    <asp:TextBox ID="LicenseClass" Width="180" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td  style="width: 10px"></td>
                <td class="td_label" style="width: 150px">
                    <b><asp:Label ID="Label3" runat="server" Text="Driver's License#"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:TextBox ID="LicenseNo" Width="100" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>
                <td  style="width: 10px"></td>
                <td class="td_label" style="width: 250px">
                    <b><asp:Label ID="Label6" runat="server" Text="Driver's License Exp. Date & DOB"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="100">
                   <asp:TextBox ID="LicenseExpDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
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
            <tr class="tr_common">
             <td>
             <table class="table_inside">
              <tr class="tr_common">
                <td class="td_label" style="width: 180px">
                    <b><asp:Label ID="Label4" runat="server" Text="Fingerprints on File ?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="FingerPrint" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value=""></asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  style="width: 10px"></td>
                <td align="right" class="td_label" style="width: 350px">
                    <b><asp:Label ID="Label9" runat="server" Text="Date of Calif. Driver's Certificate [AB 1611] Exp. Date:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="100">
                   <asp:TextBox ID="CertExpDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                      onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                </td>
                <td style="width:auto"></td>
              </tr>
             </table>
             </td>
            </tr>
            <tr style="height: 250px;">
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
