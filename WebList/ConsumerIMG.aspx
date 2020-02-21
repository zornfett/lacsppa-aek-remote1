<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsumerIMG.aspx.cs" Inherits="Virweb2.WebList.ConsumerIMG" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
	<head>
	    <base target="_self" />
		<title>Consumer Image</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript" src="../js/common.js"></script>
		<script type="text/javascript">
		    function PreviewImage(img) {
		        //var aa = document.getElementById(<%= "'" + ViewImage.ClientID + "'" %>);        
		        //aa.src = img.value;
		    }
		    function Refresh_Data(flag) {
		        var opener = window.dialogArguments;
		        if (isIE()) {
		            opener.RefreshPhotoData();
		        }
		        else {
		            window.opener.RefreshPhotoData();
		        }
		        if (flag == 1) {
		            window.close();
		        }
		        else {
		            window.focus();
		        }
		    }

		    function hideWaiting() {
		        document.getElementById('waiting').style.visibility = 'hidden';
		        document.getElementById('mainbody').style.visibility = 'visible';
		    }

		    function showWaiting() {
		        document.getElementById('waiting').style.visibility = 'visible';
		        document.getElementById('mainbody').style.visibility = 'hidden';
		    }
    </script>
	</head>
	<body>
     <div id="mainbody" style="visibility:visible">
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
							causesvalidation="False" commandargument="Image" onclientclick="showWaiting();" onclick="UploadButton_Click"></asp:button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="DeleteButton" runat="server" cssclass="Button" text="Delete"
							causesvalidation="False" onclientclick="return PromptDel('Do you really want to delete this consumer profile picture?');" onclick="DeleteButton_Click"></asp:button>	
					</td>
				</tr>
			</table>
		</form>
     </div>
     <br />
     <br />
<DIV id="waiting" style="position:absolute; left:25px; top:50px; WIDTH:400px; height:250px; overflow: auto; font-size: medium; 
     vertical-align: middle; visibility:hidden" align=center>
     <img src="../img/loading.gif" height=150px /><br />
     <font color="Green">Loading Image! Please wait !!!</font><br />
</DIV>
	</body>
</html>
