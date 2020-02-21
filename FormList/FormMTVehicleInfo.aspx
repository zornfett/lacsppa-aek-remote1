<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTVehicleInfo.aspx.cs" Inherits="Virweb2.FormList.FormMTVehicleInfo" %>

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
                opener.RefreshVehicleList();
            }
            else {
                window.opener.RefreshVehicleList();
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
    <form id="VehicleInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="mtid" id="mtid" value="" runat="server" />
    <input type="hidden" name="entry_key" id="entry_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 30px;" align="center" valign="bottom">
	        <td width="400px">
	          <asp:label id="l_Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Vehicle Information</asp:label> 
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
                    <b><asp:Label ID="Label2" runat="server" Text="Vehicle License#"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="100">
                    <asp:TextBox ID="LicenseNo" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td  style="width: 10px"></td>
                <td class="td_label" style="width: 120px">
                    <b><asp:Label ID="Label3" runat="server" Text="Odometer Reading:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="100">
                    <asp:TextBox ID="Odometer" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>
                <td  style="width: 10px"></td>
                <td class="td_label" style="width: 120px">
                    <b><asp:Label ID="Label1" runat="server" Text="Size/Type of Van:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="TypeSize" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value=""></asp:ListItem>
                       <asp:ListItem Value="Auto">Auto</asp:ListItem>
                       <asp:ListItem Value="SUV">SUV</asp:ListItem>
                       <asp:ListItem Value="Mini Van">Mini Van</asp:ListItem>
                       <asp:ListItem Value="9-15 Passenger Van">9-15 Passenger Van</asp:ListItem>
                       <asp:ListItem Value="Mini-Shuttle">Mini-Shuttle</asp:ListItem>
                       <asp:ListItem Value="Bus">Bus</asp:ListItem>
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
                <td class="td_label" style="width: 350px">
                    <b><asp:Label ID="Label6" runat="server" Text="Date of last inspection By Highway Patrol:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="100">
                   <asp:TextBox ID="InspectDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
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
                <td colspan=4>
                   <table class="table_inside">
                     <tr class="tr_common">
                       <td width="400px" class="td_label">
                         <b><asp:Label ID="Label4" runat="server" Text="Body Condition:"></asp:Label></b>
                       </td>
                       <td width="50px"></td>
                       <td align="left" width="400">
                         <asp:TextBox ID="BodyCondition" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                       </td>
                     </tr>
                   </table>
                </td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q1" runat="server" Text="1."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q1" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q2" runat="server" Text="2."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q2" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q3" runat="server" Text="3."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q3" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q4" runat="server" Text="4."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q4" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q5" runat="server" Text="5."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q5" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q6" runat="server" Text="6."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q6" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q7" runat="server" Text="7."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q7" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q8" runat="server" Text="8."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q8" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q9" runat="server" Text="9."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q9" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q10" runat="server" Text="10."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q10" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q11" runat="server" Text="11."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q11" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q12" runat="server" Text="12."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q12" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q13" runat="server" Text="13."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q13" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q14" runat="server" Text="14."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q14" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q15" runat="server" Text="15."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q15" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q16" runat="server" Text="16."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q16" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q17" runat="server" Text="17."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q17" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q18" runat="server" Text="18."></asp:Label></b>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="FireInspectDate" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                      onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q18" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q19" runat="server" Text="19."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q19" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q20" runat="server" Text="20."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q20" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
              </tr>
              <tr style="height: 5px;">
                <td colspan=4>
                </td>
              </tr>
              <tr class="tr_common">
                <td class="td_label" width="650px">
                    <b><asp:Label ID="l_Q21" runat="server" Text="21."></asp:Label></b>
                </td>
                <td width="20px"></td>
                <td class="td_unline" align="left" width="80">
                    <asp:DropDownList ID="Q21" runat="server" OnClick="DataChanged()">
                       <asp:ListItem Value="N/A">N/A</asp:ListItem>
                       <asp:ListItem Value="YES">Yes</asp:ListItem>
                       <asp:ListItem Value="NO">No</asp:ListItem>
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
            <tr>
                <td class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td  class="td_label">
                   <b><asp:Label ID="l_comments" runat="server" Text="Comments:" ></asp:Label></b>
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 99%" class="td_unline" >
                   <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                         runat="server" Width="99%" Height="150"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 20px;">
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
