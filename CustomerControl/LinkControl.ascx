<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LinkControl.ascx.cs" Inherits="Virweb2.CustomerControl.LinkControl" %>
		<div align="center" style="WIDTH:250px; height:140px">
			<table id="dlink" runat="server" class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 95%; background-color:#E0FFFF">
                <tr height="10px"><td></td></tr>
                <tr>
				  <td width="250" height="30" style="width: 250px">
                      <asp:Image ID="linkicon" Height="30px" Width="30px" runat="server" imageurl="../webicon/ie.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  <asp:Label Font-Bold="true" Font-Italic="true" Font-Size="14" ForeColor="maroon" id="linkname" runat="server" Text="" />
				  </td>
				</tr>
                <tr>
				  <td width="250" height="20" style="width: 250px">
				      <asp:Label id="linkurl" runat="server" Text="" />
				  </td>
				</tr>
                <tr height="10px"><td></td></tr>
                <tr>
                  <td>
                     <asp:button id="btnAdd" Runat="server" Text="Add" style="width:80px" CssClass="buttongraystyle" 
                     onclick="btnAdd_Click"></asp:button>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
                     <asp:button id="btnRemove" Runat="server" Text="Remove" style="width:80px" CssClass="buttongraystyle" onclick="btnRemove_Click"></asp:button>
                     <asp:button id="btnEdit" Runat="server" Text="Edit" style="width:80px" CssClass="buttongraystyle" 
                     onclick="btnEdit_Click"></asp:button>	
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:button id="btnDelete" Runat="server" Text="Delete" style="width:80px" CssClass="buttongraystyle" onclick="btnDelete_Click"></asp:button>
                  </td>
                </tr>
                <tr height="10px"><td></td></tr>
            </table>
			<table id="elink" runat="server" class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 95%; background-color:#E0FFFF">
				<tr height="10px"><td colspan="3"></td></tr>
                <tr height="20">
				  <td style="WIDTH: 80px" align="right" width="80" class="td_label" height="20"><b>Link Name:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="165" height="20" style="width: 165px">
					  <asp:textbox id="elinkname" runat="server" MaxLength="100"></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="10">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 80px" align="right" width="80" class="td_label" height="20"><b>Link URL:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td width="165" height="20" style="width: 165px">
					  <asp:textbox id="elinkurl" runat="server" MaxLength="250"></asp:textbox>
				  </td>
				</tr>
                <tr height="10px">
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td colspan="3">
                     <asp:button id="btnNew" Runat="server" Text="Save" style="width:150px" CssClass="buttongraystyle" onclick="btnNew_Click"></asp:button>	
                     <asp:button id="btnSave" Runat="server" Text="Save" style="width:80px" CssClass="buttongraystyle" onclick="btnSave_Click"></asp:button>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
                     <asp:button id="btnCancel" Runat="server" Text="Cancel" style="width:80px" CssClass="buttongraystyle" onclick="btnCancel_Click"></asp:button>
                  </td>
                </tr>
                <tr height="10px">
                  <td colspan="3"></td>
                </tr>
			</table>		
		</div>													  