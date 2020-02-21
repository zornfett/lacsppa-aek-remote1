<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerCoPayFDLRC.aspx.cs" Inherits="Virweb2.WebList.webConsumerCoPayFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>Client Co-Pay/Co-Insurance Reimbursement Detail</title>
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
    <form id="CoPayInfo" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="p_otherperiodfrom" id="p_otherperiodfrom" value="" runat="server" />
    <input type="hidden" name="p_otherperiodto" id="p_otherperiodto" value="" runat="server" />
    <input type="hidden" name="s_otherperiodfrom" id="s_otherperiodfrom" value="" runat="server" />
    <input type="hidden" name="s_otherperiodto" id="s_otherperiodto" value="" runat="server" />
    <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 50px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Co-Payment/Co-Insurance Reimbursement<br />
              Under 400% Federal Poverty Level or Exemption</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Co-Pay/Co-Insurance Reimbursement For</asp:label>
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
                <td colspan="4">
                 <table class="table_common" cellspacing="0" cellpadding="0">
                  <tr class="tr_common">
                  <td align="right" class="td_label" style="width: 200px">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="Insurance Company Name:"></asp:Label></b>
                  </td>
                  <td width="5">
                  </td>
                  <td class="td_unline" align="left" width="400">
                    <asp:DropDownList ID="Insurancename" runat="server" DataValueField="othername"
                        DataTextField="othername" CssClass="infaceDrop" OnSelectedIndexChanged="Insurancename_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                  </td>
                  <td style="width: 120px"  class="td_label" >
                    <b><asp:Label ID="Label18" runat="server" Text="Input Date:" ></asp:Label></b></td>
                  <td width="5" >
                  </td>
                  <td style="width: 120px" class="td_unline"  >
                    <asp:Label ID="createdate" runat="server" CssClass="infaceText" visible="false"></asp:Label>
                    <asp:TextBox ID="cpdate"  onclick="DataChanged();showcalendar(event, this);" 
                                   onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" width="80px"></asp:TextBox>
                  </td>
                  <td  style="width: 20px"></td>
                  </tr>
                 </table>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label10" runat="server" Text="Service or Item requested:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="ServiceItem" Width="400" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="4">
                 <table class="table_common" cellspacing="0" cellpadding="0">
                   <tr class="tr_common">  
                      <td style="width: 100px" width="100px" class="td_label" >
                        <b><asp:Label ID="Label123" runat="server" Text="Benefits Period"></asp:Label></b>
                      </td>					   						    
                      <td width="5"></td>
                      <td class="td_unline" align="left" width="120">
                        <asp:TextBox ID="startdate" runat="server" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                      </td>
                      <td style="width: 100px" width="100px" class="td_label" >
                        <b><asp:Label ID="Label124" runat="server" Text="To"></asp:Label></b>
                      </td>					   						    
                      <td width="5"></td>
                      <td class="td_unline" align="left" width="120">
                        <asp:TextBox ID="enddate" runat="server" CssClass="infaceText" ReadOnly="true"></asp:TextBox>
                      </td>
                      <td style="width:350px"></td>
                   </tr>
                 </table>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label11" runat="server" Text="Individual Out of Pocket Maximum (OOPM):"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="OopmAmount" Width="400" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label5" runat="server" Text="Co-Payment?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="400">
                    <asp:DropDownList ID="copay" runat="server" Width="105" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text="Dollar Amount per Copayment:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="Amount" Width="400" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label3" runat="server" Text="Co-payment Frequency:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="Frequency" Width="400" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label12" runat="server" Text="Co-Insurance?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="400">
                    <asp:DropDownList ID="coins" runat="server" Width="105" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label13" runat="server" Text="Co-Insurance Percentage:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="coins_perc" Width="400" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label14" runat="server" Text="Service or Item Actual Cost:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="ItemCost" Width="400" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label15" runat="server" Text="Co-Insurance Cost:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="InsCost" Width="400" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label16" runat="server" Text="Deductible?"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td align="left" width="400">
                    <asp:DropDownList ID="deductible" runat="server" Width="105" DataValueField="tb_entry_name"
                        DataTextField="tb_entry_text" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" class="td_label" style="width: 400px">
                    <b>
                        <asp:Label ID="Label17" runat="server" Text="Individual Deductible Amount:"></asp:Label></b>
                </td>
                <td width="5">
                </td>
                <td class="td_unline" align="left" width="400">
                    <asp:TextBox ID="deductAmount" Width="400" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" class="td_label">      
                        <asp:Radiobutton ID="purchase_yes" groupname="purchase" runat="server" Font-Bold=true Text="Purchase Reimbursement" Checked=false></asp:Radiobutton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Radiobutton ID="purchase_no" groupname="purchase" runat="server" Font-Bold=true Text="Vendor" Checked=false></asp:Radiobutton>
                </td>
                <td  style="width: 40px"></td>
            </tr>
            <tr style="height: 5px;">
                <td  colspan="4">
                </td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
