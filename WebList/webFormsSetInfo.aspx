<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webFormsSetInfo.aspx.cs" Inherits="Virweb2.WebList.webFormsSetInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <base target="_self" />
		<title>:::Forms Settings Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
        
    </head>
	<body  runat="server" id="body">
	    <script type="text/javascript" src="../js/calendar.js"></script>
		<form id="FromInfo" method="post" runat=server>
	   	   <input id="NoConfirm" type=hidden value="0" />
	   	   <input type="hidden" name="f_path" id="f_path" runat="server" />
	   	   <br /><br />
			<table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">			
				<tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Forms Name:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="450" height="20" >
					  <asp:textbox id="f_name" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
				  </td>
				</tr> 
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Agency:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="450" height="20" style="width: 450px">
					  <asp:DropDownList ID="f_agency" runat="server" DataValueField="accountname" DataTextField="accountname"  
					  Width="200px" enabled=false>
                      </asp:DropDownList>
				  </td>
				</tr> 
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Category:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="450" height="20" style="width: 450px">
					  <asp:DropDownList ID="f_category" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
					  Width="200px" >
                      </asp:DropDownList>
				  </td>
				</tr>  
				<tr>
				   <td colspan="3" height="5"></td>
				</tr>
				<tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Form Date:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="450" height="20" style="width: 450px">
					  <asp:textbox id="f_date" runat="server"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  CssClass="inface"></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Admin Only:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="450" height="20" style="width: 450px">
                      &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton  Text="yes" ID="f_group_yes" GroupName="f_group" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RadioButton  Text="no" ID="f_group_no" GroupName="f_group" runat="server" />
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Permission Group:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="450" height="20" style="width: 450px">
					  <asp:DropDownList ID="f_permission" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
					       Width="300px">
                      </asp:DropDownList>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 120px" valign="top" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Description:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="450" height="20" style="width: 450px">
					  <asp:textbox id="f_desc" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" MaxLength="100"
					  Width="430" Height="60" ></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				   <td colspan="3" height="5" align="center">
				     <asp:button id="btnEdit" Runat="server" Text="Save"  style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" 
				     OnClick="btnEdit_Click" ></asp:button>
				   </td>
				</tr>
				
			</table>		 									  
		</form>
	</body>
</html>


