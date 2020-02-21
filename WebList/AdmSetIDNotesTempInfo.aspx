<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmSetIDNotesTempInfo.aspx.cs" Inherits="Virweb2.WebList.AdmSetIDNotesTempInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <base target="_self" />
		<title>:::Case Notes Template Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
    </head>
	<body  runat="server" id="body">
		<form id="IDNotesTempInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
		<div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	      <tr style="height: 25px;" align=center valign=bottom>
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Case Note Template Information</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align=left valign=middle>
	        <td width=500px>
			</td>
			<td width=300px>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" OnClick="javascript:window.print();"  runat="server" />
			  <input type="button" id="btnHelp" value="Help" style="width:60px;" class="buttonbluestyle" onclick="winhref('../HelpFile/.html','help')" runat="server" />
			  <asp:Label ID="lbl_err" Runat="server" ForeColor="Blue"></asp:Label>
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
		<div align=center style="position:relative;WIDTH:100%; height:650px; overflow: auto " >
			<table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
				<tr>
				  <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Template Name:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="620" height="20" style="width: 620px">
					  <asp:textbox id="t_name" runat="server" CssClass="inface" MaxLength=24></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Template Type:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="620" height="20" style="width: 620px">
		    	    <asp:dropdownlist id="t_type" runat="server" 
			           DataValueField="txty_code" DataTextField="txty_text" Height="25" Width="200">
		            </asp:dropdownlist>
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
				  <td colspan=2 class="td_unline" width="650" height="20" style="width: 650px">
					  <asp:textbox id="t_description" runat="server" CssClass="inface" MaxLength=64></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr> 
				<tr>
				  <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Text:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" width="620" height="20" style="width: 620px">
					  <asp:textbox id="t_text" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="600" height="60" MaxLength=256></asp:textbox> 
				  </td>
				</tr>
			</table>		
		</div>													  
		</form>
	</body>
</html>



