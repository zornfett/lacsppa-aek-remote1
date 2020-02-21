<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webAdmHelpPage.aspx.cs" Inherits="Virweb2.webAdmHelpPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head >    
     <base target="_self" />
     <title>::Admin Help Page::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script type="text/JavaScript" src="./js/common.js"></script>
     <script type="text/JavaScript">
     <!--
         function PopHelpMeg(option, HelpStr) {
             if (option == 1) {
                 PopupMessage(0);
                 window.close();
             }
             else if (option == 2) {
                 PopupMessage(1);
             }
             else if (option == 3) {
                 alert("The help document is not available");
                 window.close();
             }
             else if (option == 4) {
                 winhref(HelpStr, "Help");
                 window.close();
             }
             else if (option == 5) {
                 alert("The help document is not available");
             }
             else window.close();
         }	 
     //-->
     </script>
</head>
<body style="background-color:whitesmoke;">
    <form id="form1" runat="server">    
         <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
         <tr style="height:50px;">
            <td colspan=2></td>
         </tr>
         <tr style="height:20px;">
            <td width="30px">  
            </td>
            <td align="left"><img src='./img/blue-arrow.png'  height="18px" width="18px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:label id="Label1" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text=''></asp:label>
                 <asp:HyperLink id="helplink" NavigateUrl="" Target="_blank" ForeColor="Red" Font-Size="Small" Font-Bold="True" Font-Underline=true
                      Text="Click here to open the help file" onclick="PopHelpMeg(6,'');" runat="server"/> 
            </td>
         </tr>
         <tr style="height:40px;">
            <td colspan="2"></td>
         </tr>
         </table>
         <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 20px;" valign="middle">
                    <td width="30px"></td>
                    <td align="left"><img src='./img/blue-arrow.png'  height="18px" width="18px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Info" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">
                        Choose a Word document to upload
                        </asp:Label>
                    </td>
                </tr>
                <tr style="height: 40px;" valign="middle" >
                    <td width="30px"></td>
                    <td align="left">
                        <input class="text" id="helppath" type="file" name="HelpPath" runat="server" style="width: 450px" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAdd" runat="server" Text="Upload" CssClass="buttonbluestyle" OnClick="btnAdd_Click">
                        </asp:Button>
                    </td>
                </tr>
          </table> 
    </form>
</body>
</html>
