<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmSetIDNotesTempInfo.aspx.cs" Inherits="Virweb2.AdmPage.AdmSetIDNotesTempInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
		<title>:::Case Notes Template Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
    </head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
		<form id="IDNotesTempInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
        <div align="center" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      OnClick="btnEdit_Click" >
                    </asp:ImageButton>

                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save"
                      OnClick="btnAdd_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('AdmSetIDNotesTemp.aspx');return false;" />  
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">IDNotes Template Info</asp:Label>
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
			               DataValueField="category_name" DataTextField="category_name" Height="25" Width="200"
                           OnSelectedIndexChanged="category_SelectedIndexChanged" AutoPostBack=true >
		              </asp:dropdownlist>
				  </td>
				</tr> 
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" width="150" class="td_label" height="20"><b>Template Name:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td class="td_unline" width="620" height="20" style="width: 620px">
					  <asp:textbox id="t_name" runat="server" CssClass="inface" MaxLength=24></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" class="td_label"><b>Template Type:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td class="td_unline" style="width: 620px">
                    <table class="tabel_inside">
				       <tr class="tr_common">
						<td class="td_unline" style="width: 160px">
		    	           <asp:dropdownlist id="t_type" runat="server" 
			                   DataValueField="txty_code" DataTextField="txty_text" Height="25" Width="150">
		                   </asp:dropdownlist>
                        </td>  
                        <td style="WIDTH:5px"></td>
                        <td class="td_label" style="WIDTH: 150px" align="right" >
                           <b><asp:CheckBox id="t_tickler" runat="server" Text="Client Tickler">
                           </asp:CheckBox></b>
                        </td>
                        <td style="WIDTH:5px"></td>
                        <td style="WIDTH: 150px" align="right" class="td_label"><b>Client TicklerRpt:</b>
				        </td>
                        <td style="WIDTH:5px"></td>
                        <td class="td_unline" style="width: 160px">
		    	           <asp:dropdownlist id="t_tickler_rpt" runat="server" 
			                   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="25" Width="150">
		                   </asp:dropdownlist>
                        </td> 
                       </tr>
                    </table>
				  </td>
				</tr>
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Status:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td colspan="2" class="td_unline" style="width: 650px">
			          <asp:dropdownlist id="t_status" runat="server" width="160px"
						      CssClass="infaceDrop">
                          <asp:ListItem Text="ACTIVE" Value="0" Selected=True />
                          <asp:ListItem Text="DISABLE" Value="1" />
			          </asp:dropdownlist>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Description:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td colspan="2" class="td_unline" style="width: 650px">
					  <asp:textbox id="t_description" runat="server" CssClass="inface" MaxLength=64></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr> 
				<tr class="tr_common">
				  <td style="WIDTH: 150px" align="right" class="td_label"><b>Text:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td class="td_unline" style="width: 620px">
					  <asp:textbox id="t_text" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="600" height="60" MaxLength=256></asp:textbox> 
				  </td>
				</tr>
			</table>		
		</div>													  
		</form>
	</body>
</html>



