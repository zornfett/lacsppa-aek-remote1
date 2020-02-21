<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webLinkInfo.aspx.cs" Inherits="Virweb2.WebList.webLinkInfo" %>

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
		    function Refresh_Data(flag) {
		        alert("Update successful!");
		        var opener = window.dialogArguments;
		        if (isIE()) {
		            opener.RefreshMyData();
		        }
		        else {
		            window.opener.RefreshMyData();
		        }
		        if (flag == 1) {
		            self.close();
		        }
		        else {
		            self.focus();
		        }
		    }
		//-->		
		</script>
		
    </head>
	<body  runat="server" id="body">
		<form id="ListInfo" method="post" runat="server">
		<div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">WEB LINK INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td width="300px">
			</td>
			<td width="200px">
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclick="btnAdd_Click"></asp:button>
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
		<div align="center" style="position:relative;WIDTH:100%; height:350px; overflow: auto " >
			<table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
				<tr>
				  <td style="WIDTH: 100px" align="right" width="80" class="td_label" height="20" runat="server"><b>Link Name:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" align="left" width="350" height="20" style="width: 350px">
					  <asp:textbox id="LinkName" runat="server" CssClass="inface" MaxLength=100></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
				  <td id="user_td" style="WIDTH: 100px" align="right" width="80" class="td_label" height="20" runat="server"><b>Link URL:</b>
				  </td>
				  <td width="5" height="20"></td>
				  <td class="td_unline" align="left" width="350" height="20" style="width: 350px">
					  <asp:textbox id="LinkURL" runat="server" CssClass="inface" MaxLength=250></asp:textbox>
				  </td>
				</tr>
			</table>		
		</div>													  
		</form>
	</body>
</html>




