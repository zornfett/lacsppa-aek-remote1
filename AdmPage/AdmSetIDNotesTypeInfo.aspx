<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmSetIDNotesTypeInfo.aspx.cs" Inherits="Virweb2.AdmPage.AdmSetIDNotesTypeInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
		<title>:::Case Notes Type Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>

        <script type="text/javascript">
        function save_click()
        {
           NoConfirmExit();
           var str="WARNING !!\nMaking any changes to this ID NOTE TYPE could permanently affect your transaction data and historical information.\n"+  
                   "If you are sure you want to make changes, please make note of warning above and select 'OK' below.";
           if (confirm(str))
             return true;
           else  
             return false;
        }     
        </script>

    </head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
		<form id="IDNotesTypeInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
        <div align="center" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      onclientclick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>

                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save"
                      OnClick="btnAdd_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('AdmSetIDNotesType.aspx');return false;" />  
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">IDNotes Type Info</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                        src="../img/supportdesk.ico" title="Support"
                        onclick="javascript:window.top.outsidelinks(1);return false;" />             
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                        src="../img/help.ico" title="Help"
                        onclick="javascript:window.top.outsidelinks(2);return false;" />             
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                        src="../img/logout.jpg" title="Logout"
                        onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                    &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                 <td colspan="3" style="background-color:#137AC5"></td> 
            </tr>
            <tr style="height:8px">
                 <td colspan="3"></td> 
		    </tr>	
        </table> 
		</div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
                <tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" class="td_label"><b>Select Category:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td align="left" class="td_unline" style="width: 600px" >
		    	      <asp:dropdownlist id="category" runat="server" 
			               DataValueField="category_name" DataTextField="category_name" Height="25" Width="200">
		              </asp:dropdownlist>
				  </td>
				</tr> 
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" class="td_label"><b>Type Code:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td align="left" class="td_unline" style="WIDTH:600px">
					  <asp:textbox id="txty_code" runat="server" CssClass="inface" MaxLength="1" Width="30px"></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" class="td_label"><b>Description:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td align="left" class="td_unline" style="width: 600px" >
					  <asp:textbox id="txty_text" runat="server" CssClass="inface" MaxLength=128></asp:textbox>
				  </td>
				</tr> 
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
                  <td colspan="3" class="td_label>
                      <b><asp:label id="Title" runat="server" Text="For Client IDNotes Only" CssClass="infaceText"></asp:label></b>
                  </td>
				</tr> 
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" class="td_label"><b>Def Template:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td align="left" class="td_unline" style="width: 600px" >
		    	      <asp:dropdownlist id="txty_deftemplate" runat="server" 
			               DataValueField="t_name" DataTextField="t_name" Height="25" Width="550">
		              </asp:dropdownlist>
				  </td>
				</tr> 
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
                  <td style="WIDTH: 150px" align="right" class="td_label"><b>Attach Addendum:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
                  <td style="width: 600px" align="left" >
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RadioButton ID="txty_bill_0" GroupName="txty_bill" runat="server" Text="None" Width="100" />
				      <asp:RadioButton ID="txty_bill_1" GroupName="txty_bill" runat="server" Text="Billing" Width="100" />
				      <asp:RadioButton ID="txty_bill_2" GroupName="txty_bill" runat="server" Text="Attendance" Width="100" />
				      <asp:RadioButton ID="txty_bill_3" GroupName="txty_bill" runat="server" Text="POS" Width="100" />
                      <asp:RadioButton ID="txty_bill_4" GroupName="txty_bill" runat="server" Text="Referral" Width="100" />
                      <asp:RadioButton ID="txty_bill_5" GroupName="txty_bill" runat="server" Text="Appraisal" Width="100" />
				  </td>
                </tr>
			</table>		
		</div>													  
		</form>
	</body>
</html>


