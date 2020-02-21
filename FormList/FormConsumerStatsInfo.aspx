<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormConsumerStatsInfo.aspx.cs" Inherits="Virweb2.FormList.FormConsumerStatsInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Client Status Change Detail:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript" type="text/javascript" >
    <!--
        function save_click() {
        }

        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormConsumerStatsList.aspx');
        }

    //-->
    </script>
</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="StatsInfo" method="post" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Modification Detail</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Client For</asp:label>
			</td>
			<td>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
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
	<div align="center" valign="top" style="position:relative;WIDTH:100%; height:450px; overflow: auto " >
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab1">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr height="5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="lblFieldNameScreen" runat="server" Font-Bold="True" Text="Modified Info:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:Label ID="FieldNameScreen" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Category:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:Label ID="Category" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="lblCreate" runat="server" Font-Bold="True" Text="Effective Date:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:Label ID="CreateDate" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Modified By:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:Label ID="CreatedByID" runat="server" CssClass="infaceText">
                                                </asp:Label>
                                                <asp:Label ID="CreatedByName" runat="server" CssClass="infaceText">
                                                </asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Previous Data:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" colspan="5">
                                                <asp:Label ID="OldValue_desc" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="OldValue2" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Current Data:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" colspan="5">
                                                <asp:Label ID="NewValue_desc" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="NewValue2" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Change 'Effective Date' To:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" width="100">
                                                <asp:Textbox ID="ModDate" runat="server" CssClass="inface"
                                                       onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:Textbox>
                                            </td>
                                            <td colspan="4"></td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Changed Date:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" width="200">
                                                <asp:Label ID="LastModDate" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="lblModifiedby" runat="server" Font-Bold="True" Text="Changed By:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:Label ID="LastModID" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                                <asp:Label ID="LastModname" runat="server" CssClass="infaceText" >
                                                </asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td></td>
                            </tr>
                            <tr class="tr_common">
                                <td  class="td_label">
                                   <b><asp:Label ID="l_logs" runat="server" Text="Logs:" ></asp:Label></b>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td tyle="height: 80px" valign="top">
                                    <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                       runat="server" Width="99%" Height="80" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
