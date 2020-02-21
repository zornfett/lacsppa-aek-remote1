<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webSaveChange.aspx.cs" Inherits="Virweb2.webSaveChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head >    
     <base target="_self" />
     <title>::Confirmation::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	 
</head>
<body style="background-color:whitesmoke;">
    <form id="form1" runat="server">    
        <center>
         <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
         <tr style="height:10px;">
            <td colspan="2"></td>
         </tr>
         <tr style=" height:50px">          
            <td ><img src="./img/information.gif" /></td>
            <td><asp:label id="Label1" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text='Do you want to save the changes made?'></asp:label></td>
         </tr>
         <tr style="height:10px;">
            <td colspan="2"></td>
         </tr>
         <tr>
            <td colspan="2" align="center"><input type="button" name="btnYes" id="btnYes" runat="server" value="Yes"  class="buttonbluestyle"  style="width:80px" onclick="javascript:window.returnValue='1';self.close();"/>&nbsp;&nbsp;
                <input type="button" name="btnNo" id="btnNo" runat="server" value="No"  class="buttonbluestyle" style="width:80px" onclick="javascript:window.returnValue='0';self.close();"  />
                <input type="button" name="btnCancel" id="btnCancel" runat="server" value="Cancel"  class="buttonbluestyle" style="width:80px"  onclick="javascript:window.returnValue='2';javascript:self.close();" />
            </td>
         </tr>
         <tr style="height:10px;">
            <td colspan="2"></td>
         </tr>
         </table>
        </center>
    </form>
</body>
</html>
