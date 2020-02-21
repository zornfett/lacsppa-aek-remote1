<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webUserInfo.aspx.cs" Inherits="Virweb2.WebList.webUserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <base target="_self" />
		<title>:::User info:::...</title>
		<script type="text/javascript" src="../js/common.js"></script>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript">
		<!--
		    function print_click() {
		        PopupMessage(10);
		        /*
		        var s_key=document.SirInfo.s_key.value.toString();
		        var UserAct=document.SirInfo.UserAct.value.toString();         
		        winhref('PrintFormSirInfo.aspx?s_key=" + s_key + "&UserAct=" + UserAct + "','PrintFormSirInfo');";
		        */
		    }
		//-->		
		</script>
    </head>
	<body  runat="server" id="body">
		<form id="UserInfo" method="post" runat="server">
		<input id="NoConfirm" type="hidden" value="0" />
		<input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="EmployeeKey" id="EmployeeKey" value="" runat="server" />	
        <div align="left" style="WIDTH:100%; height: auto">
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
                      onclientclick="return save_click();" OnClick="btnAdd_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('WebUserList.aspx');return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">User Info</asp:Label>
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
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 25px;height:25px"  
                        src="../img/exit button.ico" title="Logout"
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
			  <td id="user_td" style="WIDTH: 110px" align="right" class="td_label" runat=server><b>User ID:</b>
			  </td>
			  <td style="width:5px"></td>
			  <td class="td_unline" align="left" style="width: 135px">
				  <asp:textbox id="EmployeeID" runat="server" CssClass="inface" MaxLength="10"></asp:textbox>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Other ID:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="EmployeeID2" runat="server" CssClass="inface" MaxLength="10"></asp:textbox>
			  </td>
			  <td colspan="4"></td>
			</tr>
			<tr style="height:5px">
              <td colspan="11">
              </td>
            </tr>
			<tr class="tr_common">
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>User Name:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 135px">
				  <asp:textbox id="LoginName" runat="server" CssClass="inface" MaxLength="20"></asp:textbox>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>First Name:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="FirstName" runat="server" CssClass="inface" MaxLength="20"></asp:textbox>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Last Name:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="LastName" runat="server" CssClass="inface" MaxLength="20"></asp:textbox>
			  </td>
			</tr> 
			<tr style="height:5px">
              <td colspan="11">
              </td>
            </tr> 
			<tr class="tr_common">
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>User Type:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 135px">
			      <asp:dropdownlist id="EmployeeType" runat="server" OnClick="DataChanged()"
						   DataValueField="TypeID" DataTextField="TypeName" CssClass="infaceDrop">
			      </asp:dropdownlist>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Email:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="Email1" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Email2:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="Email2" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
			  </td>
			</tr>
			<tr style="height:5px">
              <td colspan="11">
              </td>
            </tr>
            <tr class="tr_common">
              <td style="WIDTH: 110px" align="right" class="td_label"><b>WorkPhone:</b>
			  </td>
			  <td width="5"></td>
              <td class="td_unline" align="left" style="width: 135px">
				  <asp:textbox id="Phone1" runat="server" CssClass="inface" MaxLength=20></asp:textbox>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>CellPhone:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="Phone2" runat="server" CssClass="inface" MaxLength=20></asp:textbox>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Fax:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:textbox id="Phone3" runat="server" CssClass="inface" MaxLength=20></asp:textbox>
			  </td>
			</tr> 
			<tr style="height:5px">
              <td colspan="11">
              </td>
            </tr> 
			<tr class="tr_common">
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Management:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 135px">
				  <asp:dropdownlist id="Management" runat="server" CssClass="inface" Width="80" OnClick="DataChanged()">
				 	<asp:ListItem Value=""></asp:ListItem>
					<asp:ListItem Value="Y">Yes</asp:ListItem>
					<asp:ListItem Value="N">No</asp:ListItem>
				  </asp:dropdownlist>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>SecurityGroup:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
				  <asp:dropdownlist id="GroupLevel2" runat="server" OnClick="DataChanged()"
						   DataValueField="GroupID" DataTextField="GroupName" CssClass="infaceDrop">
			      </asp:dropdownlist>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Language:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
			      <asp:DropDownList ID="language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                CssClass="infaceDrop" OnClick="DataChanged()">
                  </asp:DropDownList>
			  </td>
			</tr>
            <tr style="height:5px">
              <td colspan="11">
              </td>
            </tr> 
			<tr class="tr_common">
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Area/Group1:</b>
			  </td>
			  <td width="5"></td>
			  <td style="width: 135px">
                  <asp:DropDownList ID="unit_area" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()"
                         CssClass="infaceDrop">
                  </asp:DropDownList>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Area/Group2:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left" style="width: 200px">
                  <asp:DropDownList ID="unit_area2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()"
                         CssClass="infaceDrop">
                  </asp:DropDownList>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Area/Group3:</b>
			  </td>
			  <td width="5" height="20"></td>
			  <td width="200" height="20" style="width: 200px">
                  <asp:DropDownList ID="unit_area3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()"
                         CssClass="infaceDrop">
                  </asp:DropDownList>
			  </td>
			</tr>
            <tr style="height:5px">
              <td colspan="11">
              </td>
            </tr> 
		    <tr class="tr_common">
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Area/Group4:</b>
			  </td>
			  <td width="5" height="20"></td>
			  <td style="width: 135px">
                  <asp:DropDownList ID="unit_area4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()"
                         CssClass="infaceDrop">
                  </asp:DropDownList>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Area/Group5:</b>
			  </td>
			  <td width="5"></td>
			  <td class="td_unline" align="left"style="width: 200px">
                  <asp:DropDownList ID="unit_area5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()"
                         CssClass="infaceDrop">
                  </asp:DropDownList>
			  </td>
			  <td width="5"></td>
			  <td style="WIDTH: 110px" align="right" class="td_label"><b>Area/Group6:</b>
			  </td>
			  <td width="5"></td>
			  <td style="width: 200px">
                  <asp:DropDownList ID="unit_area6" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()"
                         CssClass="infaceDrop">
                  </asp:DropDownList>
			  </td>
			</tr>
            <tr style="height:5px">
              <td colspan="11">
              </td>
            </tr> 
			<tr class="tr_common">
			  <td colspan="11">
				  <asp:button id="btnRestPWD" Runat="server" Text="Reset Password" style="width:150px" CssClass="buttonbluestyle" 
			               onclick="btnResetPWD_Click"></asp:button>
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <asp:Radiobutton ID="DisAcct" groupname="Acct" runat="server" Font-Bold=true Text="Disable User " Checked=false ></asp:Radiobutton> 
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <asp:Radiobutton ID="LockAcct" groupname="Acct" runat="server" Font-Bold=true Text="Lock User " Checked=false ></asp:Radiobutton>	
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <asp:Radiobutton ID="ActAcct" groupname="Acct" runat="server" Font-Bold=true Text="Activate User " Checked=true ></asp:Radiobutton>				        
			  </td>             
			</tr>
		</table>		
		</div>													  
		</form>
	</body>
</html>




