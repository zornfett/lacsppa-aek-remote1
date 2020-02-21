<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmFormsSetInfo.aspx.cs" Inherits="Virweb2.AdmPage.AdmFormsSetInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
		<title>:::Forms Settings Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>      
    </head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
	    <script type="text/javascript" src="../js/calendar.js"></script>
		<form id="FromInfo" method="post" runat=server>
	   	   <input id="NoConfirm" type=hidden value="0" />
	   	   <input type="hidden" name="f_path" id="f_path" runat="server" />
        <div align="center" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">	
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      OnClick="btnEdit_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('AdmFormsSet.aspx');return false;" />  
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Report Setting Info</asp:Label>
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
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Forms Name:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td class="td_unline" width="450">
					  <asp:textbox id="f_name" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
				  </td>
				</tr> 
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Agency:</b>
				  </td>
				   <td style="WIDTH:5px"></td>
				  <td class="td_unline" style="width: 450px">
					  <asp:DropDownList ID="f_agency" runat="server" DataValueField="accountname" DataTextField="accountname"  
					  Width="200px" enabled=false>
                      </asp:DropDownList>
				  </td>
				</tr> 
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Category:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td style="width: 450px">
					  <asp:DropDownList ID="f_category" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
					  Width="200px" >
                      </asp:DropDownList>
				  </td>
				</tr>  
				<tr>
				   <td colspan="3" height="5"></td>
				</tr>
				<tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Form Date:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td class="td_unline" style="width: 450px">
					  <asp:textbox id="f_date" runat="server"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  CssClass="inface"></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Admin Only:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td width="450" style="width: 450px">
                      &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton  Text="yes" ID="f_group_yes" GroupName="f_group" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RadioButton  Text="no" ID="f_group_no" GroupName="f_group" runat="server" />
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
				  <td style="WIDTH: 120px" align="right" class="td_label"><b>Permission Group:</b>
				  </td>
				  <td style="WIDTH:5px"></td>
				  <td style="width: 450px">
					  <asp:DropDownList ID="f_permission" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
					       Width="300px">
                      </asp:DropDownList>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr class="tr_common">
				  <td style="WIDTH: 120px" valign="top" align="right" class="td_label"><b>Description:</b>
				  </td>
				 <td style="WIDTH:5px"></td>
				  <td style="width: 450px">
					  <asp:textbox id="f_desc" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" MaxLength="100"
					  Width="430" Height="60" ></asp:textbox>
				  </td>
				</tr>
			</table>		 									  
		</form>
	</body>
</html>


