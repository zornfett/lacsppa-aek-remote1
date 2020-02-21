<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIFSPParticipantsInfo.aspx.cs" Inherits="Virweb2.FormList.FormIFSPParticipantsInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self" />
    <title>Participant Information</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function Refresh_Data(flag) {
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshParticipantList();
            }
            else {
                window.opener.RefreshParticipantList();
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
    <form id="PtInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="ifsp_key" id="ifsp_key" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_key" id="entry_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="l_Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Participant Information</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Participant For</asp:label>
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
                <td >
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 100px">
                    <b><asp:Label ID="Label5" runat="server" Text="Name:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="200">
                    <asp:TextBox ID="Name" Width="200" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
                <td align="right" class="td_label" style="width: 100px">
                    <b><asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="Title" Width="400" runat="server" CssClass="inface" MaxLength="500"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 100px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="Agency:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="200">
                    <asp:TextBox ID="Agency" Width="200" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
                <td align="right" class="td_label" style="width: 100px">
                    <b><asp:Label ID="Label3" runat="server" Text="Phone:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="200">
                    <asp:TextBox ID="Phone" Width="200" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 100px">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="200px">
                    <asp:TextBox ID="Email" Width="200" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
                <td align="right" class="td_label" colspan="3">
                    <b><asp:Checkbox ID="Present" runat="server" Text="" Checked="true"></asp:Checkbox>Present</b>						   						    
					&nbsp;&nbsp;&nbsp;
                    <b><asp:Checkbox ID="Consult" runat="server" Text=""></asp:Checkbox>Consult</b>
                    &nbsp;&nbsp;&nbsp;
                    <b><asp:Checkbox ID="Report" runat="server" Text=""></asp:Checkbox>Report</b>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 100px">
                    <b>
                        <asp:Label ID="Label6" runat="server" Text="Program:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="200">
                    <asp:TextBox ID="Program" Width="200" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
                <td align="right" class="td_label" style="width: 100px">
                    <b><asp:Label ID="Label7" runat="server" Text="Service:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="Service" Width="400" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="7">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" style="width: 100px">
                    <b>
                        <asp:Label ID="Label8" runat="server" Text="Address:" Visible="false"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="500" colspan="5">
                    <asp:TextBox ID="Address" Width="600" runat="server" CssClass="inface" MaxLength="500" Visible="false"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
