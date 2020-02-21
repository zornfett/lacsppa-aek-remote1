<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webUpdOffline.aspx.cs" Inherits="Virweb2.webUpdOffline" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head >    
     <base target="_self" />
     <title>::Update Offline Program::</title>
	 <link href="./css/style.css" type="text/css" rel="stylesheet" />
     <script type="text/javascript" src="./js/Common.js"></script>	
     <script type="text/javascript">
     <!--
         function upgrade_click() {
             winhref('./UpgradeKeaClient/UpgradeKeaclient.exe', 'Upgrade');
             return true;
         }
     //-->
     </script> 
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
            <td><asp:label id="Label1" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" 
                Text='A new Kea Offline update is now available. Please click following link to download/install it.'></asp:label></td>
         </tr>
         <tr style="height:20px;">
            <td colspan="2"></td>
         </tr>
         <tr style="height:20px;">
            <td colspan="2">
              <asp:LinkButton ID="hy_upgrade" Runat="server" Text="Download/Install Kea Offline Upgrade" 
                 Font-Bold="true" ForeColor="Red" Font-Underline="True" Font-Size="Small" 
                 OnClientClick="return upgrade_click();" OnClick="btnUpgradeOffline_Click"></asp:LinkButton>
            </td>
         </tr>
         <tr style="height:20px;">
            <td colspan="2"></td>
         </tr>
         <tr>
            <td colspan="2" align="center">
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
