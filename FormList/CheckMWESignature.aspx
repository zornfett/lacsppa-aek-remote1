<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckMWESignature.aspx.cs" Inherits="Virweb2.FormList.CheckMWESignature" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head >    
     <base target="_self" />
     <title>::Auto-signature::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script type="text/JavaScript"  src="../js/common.js"></script>
     <script language="javascript">
		<!--
         function PassUsername(UserName) {
             var opener = window.dialogArguments;
             if (isIE()) {
                 opener.Sign(UserName);
             }
             else {
                 window.opener.Sign(UserName);
             }
             self.close();
         }
		//-->
		</script>	 
</head>
<body style="background-color:whitesmoke;">
    <form id="form1" runat="server" defaultbutton="btnOK">    
        <center>
         <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
         <tr style="height:10px;">
            <td colspan="2"></td>
         </tr>
         <tr style=" height:30px">          
            <td align="right" width="80px"><img src="../img/information.gif"/></td>
            <td ><asp:label id="Label1" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text='Please enter password...'></asp:label></td>
         </tr>
         
         <tr style=" height:30px">
            <td></td>
            <td align="center">
                <asp:TextBox ID="password" runat="server" TextMode="Password" MaxLength="32"></asp:TextBox>
            </td>
         </tr>
      
         <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnOK" runat="server" Text="OK" CssClass="buttonbluestyle" 
                    width="80px" onclick="btnOK_Click"/>&nbsp;&nbsp;&nbsp;
                <input type="button" name="btnCancel" id="btnCancel" runat="server" value="Cancel"  class="buttonbluestyle" style="width:80px"  onclick="javascript:self.close();" />
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
