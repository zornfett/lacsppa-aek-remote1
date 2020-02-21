<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ImageMissingPerson.aspx.cs" Inherits="Virweb2.FormList.ImageMissingPerson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
	    <base target="_self" />
		<title>Missing Person Image</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript" src="../js/common.js"></script>
		<script type="text/javascript">
		    function PreviewImage(img) {
		        //var aa = document.getElementById(<%= "'" + ViewImage.ClientID + "'" %>);        
		        //aa.src = img.value;
		    }
    </script>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table align="center" height="98%" width="100%" border="0" cellpadding="0">
				<tr class="tr_common">
					<td align="center">
						<asp:image id="ViewImage" runat="server" bordercolor="#8080ff" borderwidth="1" Visible="False"
							borderstyle="Solid" Height="400"></asp:image>
					</td>
				</tr>
				<tr class="tr_common">
					<td align="center">
					</td>
				</tr>
				<tr class="tr_common">
					<td align="center" valign="bottom" height=25>
						<input class="text" id="Image" onpropertychange="PreviewImage(this)" type="file"
							name="Image" runat="server" size="20">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="UpLoadButton" runat="server" cssclass="Button" commandname="Upload" text="Upload"
							causesvalidation="False" commandargument="Image" onclick="UploadButton_Click"></asp:button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="DeleteButton" runat="server" cssclass="Button" text="Delete"
							causesvalidation="False" onclientclick="return PromptDel('Do you really want to delete this missing person profile picture?');" onclick="DeleteButton_Click"></asp:button>	
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
