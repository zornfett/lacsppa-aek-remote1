<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ChangeConsumerUCI.aspx.cs" Inherits="Virweb2.WebList.ChangeConsumerUCI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head >    
     <base target="_self" />
     <title>::Edit Client UCI::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script type="text/JavaScript"  src="../js/common.js"></script> 
     <script type="text/javascript">
       <!--   
       function CheckNewUCI() {
           if (document.form1.uci_enter.checked) {
               if (document.form1.newUCI.value == "") {
                   alert("The new UCI cannot be empty.")
                   return false;
               }
               if (!IsInteger(document.form1.newUCI.value)) {
                   alert("The new UCI must be digits.")
                   return false;
               }

               if (document.form1.newUCI.value.length != 7) {
                   alert("The new UCI must be exactly 7 digits.")
                   return false;
               }
           }

           if (confirm("Are you sure you want to change the Client UCI ?")) {

               window.onbeforeunload = DisableButton;
               return true;
           }
           else return false;
       }

       function DisableButton() {
           document.form1.btnOK.disabled = true;
           document.form1.btnCancel.disabled = true;
       }
       function FinishChgUCI() 
       {
           var opener = window.dialogArguments;
           if (isIE()) {
               opener.reloadwindow();
           }
           else {
               window.opener.reloadwindow();
           }

           window.close();
       }

       //-->
    </script>
</head>
<body id="body" runat="server" style="background-color:whitesmoke;">
    <form id="form1" runat="server">    
        <center>
         <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
         <tr style="height:10px;">
            <td colspan="2"></td>
         </tr>
         <tr style=" height:30px">          
            <td align="right" width="80px"><img src="../img/information.gif"/></td>
            <td ><asp:label id="l_title" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text='The Original UCI'></asp:label></td>
         </tr>
         
         <tr style=" height:30px">
            <td></td>
            <td align="left">
                <asp:Radiobutton ID="uci_auto" groupname="uci" runat="server" Font-Size="10pt" Font-Bold="True" 
                   Text="Please assign a UCI number automatically. " ></asp:Radiobutton>
            </td>
         </tr>

         <tr style=" height:30px">
            <td></td>
            <td align="left">
                <asp:Radiobutton ID="uci_enter" groupname="uci" runat="server" Font-Size="10pt" Font-Bold="True" 
                   Text="Please edit the UCI Number: " checked=true ></asp:Radiobutton>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="newUCI" runat="server" MaxLength="7"></asp:TextBox>
            </td>
         </tr>
      
         <tr style=" height:40px">
            <td colspan="2" align="center">
                <asp:Button ID="btnOK" runat="server" Text="OK" CssClass="buttonbluestyle" 
                    width="80px" onclientclick="return CheckNewUCI();" onclick="btnOK_Click"/>&nbsp;&nbsp;&nbsp;
                <input type="button" name="btnCancel" id="btnCancel" runat="server" value="Cancel"  class="buttonbluestyle" 
                    style="width:80px"  onclick="javascript:self.close();" />
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
