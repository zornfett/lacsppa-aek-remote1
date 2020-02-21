<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webReportsSetInfo.aspx.cs" Inherits="Virweb2.WebList.webReportsSetInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <base target="_self" />
		<title>:::Reports Settings Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
        
    </head>
	<body  runat="server" id="body">
	    <script type="text/javascript" src="../js/calendar.js"></script>
		<form id="IDNotesTypeInfo" method="post" runat=server>
	   	   <input id="NoConfirm" type=hidden value="0" />
	   	   <input type="hidden" name="txt_crfID" id="txt_crfID" runat="server" />
	   	   <br /><br />
			<table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">			
				<tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Reports Name:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="450" height="20" >
					  <asp:textbox id="crfName" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
				  </td>
				</tr>				 				
				<tr>
				   <td colspan="3" height="5"></td>
				</tr>
				<tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Agency:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="450" height="20" style="width: 450px">
					  <asp:DropDownList ID="crfAgency" runat="server" DataValueField="accountname" DataTextField="accountname"  
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
				  <td class="td_unline" width="450" height="20" style="width: 450px">
				      <asp:DropDownList ID="crfCategory" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
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
					  <asp:textbox id="crfDate" runat="server"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  CssClass="inface"></asp:textbox>
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
                      &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton  Text="yes" ID="crfgroup_yes" GroupName="crfgroup" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RadioButton  Text="no" ID="crfgroup_no" GroupName="crfgroup" runat="server" />
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
					  <asp:DropDownList ID="crfpermission" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
					       Width="300px">
                      </asp:DropDownList>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b>Description:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="450" height="20" >
					  <asp:textbox id="crfLinkDesc" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" MaxLength="100"
					       Width="430" Height="60" ></asp:textbox>
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


