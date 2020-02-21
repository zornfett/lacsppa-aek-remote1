<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ChangeSCMonthInitEOM.aspx.cs" Inherits="Virweb2.WebList.ChangeSCMonthInitEOM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head >    
     <base target="_self" />
     <title>::Edit SCMonth Case C/O::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script type="text/JavaScript"  src="../js/common.js"></script> 
     <script type="text/javascript">
       <!--   
       function Save() {
           if (confirm("Are you sure you want to change the Cases C/O ?"))
               return true;
           else return false;
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
         <tr style=" height:30px">          
            <td align="right" width="80px"><img src="../img/information.gif"/></td>
            <td><asp:label id="l_title" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text='The Original Cases C/O'></asp:label></td>
         </tr>
         <tr style=" height:30px">
            <td></td>
            <td align="left">
                <asp:label id="label1" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text='Enter New Cases C/O:'></asp:label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="newEOM" runat="server" MaxLength="7"></asp:TextBox>
            </td>
         </tr>
         <tr style=" height:40px">
            <td colspan="2" align="center">
                <asp:Button ID="btnOK" runat="server" Text="OK" CssClass="buttonbluestyle" 
                    width="80px" onclientclick="return Save();" onclick="btnOK_Click"/>&nbsp;&nbsp;&nbsp;
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
