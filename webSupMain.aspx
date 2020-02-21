<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webSupMain.aspx.cs" Inherits="Virweb2.webSupMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>::Virtual eChart:::.....</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />	
	<script language="javascript">
	 function SetCwinHeight()
      {
         var cwin=document.getElementById("cwin");
         if (document.getElementById)
          {
            if (cwin && !window.opera)
             {
                if (cwin.contentDocument && cwin.contentDocument.body.offsetHeight)
                    cwin.height = cwin.contentDocument.body.offsetHeight; 
                else if(cwin.Document && cwin.Document.body.scrollHeight)
                    cwin.height = cwin.Document.body.scrollHeight;
             }
           }
       }

	</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" >
	<map name="Map">
     <area shape="rect" coords="10,4,66,50" href="" target="_blank">
     <area shape="rect" coords="80,4,130,50" href="webLogout.aspx" target="_self">
    </map>
<form id="frmMain">
    <center>
    <div  style="overflow:auto">
	<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" height="100%">
	    <tr>
		  <td height="86" background="img/top_bg.gif">
			<div align="center">
			<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
			<tr>
			  <td rowspan="2" width="591" valign="top">
				<div align="center" >
				<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">				
				<tr>
				  <td width="200"></td>
				  <td width="350" >
				  <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
				  <tr><td style="height:62px;"></td></tr>
				  <tr>
				  <td>
				  <font color="#000000">
				     Account <asp:Label ID="accountdesc" Runat="server" ForeColor="RoyalBlue"></asp:Label>
				     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User <asp:Label ID="username" Runat="server" ForeColor="RoyalBlue"></asp:Label>
				  </font>
				  </td>
				  </tr>
				  </table>
				  </td>
				  <td></td>
				</tr>
				</table>
			    </div>			  
			  </td>
			  <td height="8" valign="top">
				<div align="right"><img src="img/top_right.gif"  usemap="#Map" border=0></div>
			  </td>
		    </tr>
			<tr>
			  <td valign="top">
			    <div align="center">
				<table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="268">
				<tr>
				 <td width="60"></td>				
				 <td background="img/top_right_time.gif" width="208" height="29" align="center">
					<font color="#000000">
					<script type="text/javascript">
					today=new Date();					
					document.write(today.toLocaleDateString());
					</script></font>
				  </td>
				</tr>
				</table>
				</div>
			  </td>
			</tr>
			</table>
			</div>
		  </td>
		</tr>
		<tr>
		  <td>
		    <div align="center">
			<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
			<tr>			 
			  <td valign="top">
			     <iframe width="100%" id="cwin" onload="Javascript:SetCwinHeight()" height="1" frameborder="0" src="webSupManage.aspx"></iframe> 
              </td>
			</tr>
			</table>
			</div>
		  </td>
		</tr>
		<tr>
		  <td height="20" bgcolor="#115f88">
		    <p align="center">
			<font color="#ffffff">KeaSystems</font>
			</p>
		  </td>
		</tr>
	</table>
	</div>
	</center>
</form>
</body>
</html>

