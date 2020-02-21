<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.DefFieldLabel" Codebehind="DefFieldLabel.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self"></base>    
		<title>:::Define Label:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
             <tr style="height:30px">
                <td colspan="2" align="center" style="font-family: Arial"><h3>
                   <asp:Label ID="Title" runat="server">Define the Label</asp:Label> 
                </h3></td>
            </tr>
            <tr style="height:30px">
                <td colspan="2" align="center" style="font-family: Arial"><h2>
                   <asp:Label ID="TitleF" runat="server">Field and Table</asp:Label> 
                </h2></td>
            </tr>
            <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>Display Name:</td>    
                <td>
                   <asp:TextBox ID="txtLabel" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                </td>              
            </tr>
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>ToolTip</td>    
                <td>
                   <asp:TextBox ID="txtToolTip" runat="server" CssClass="inface" MaxLength="256"></asp:TextBox>
                </td>              
            </tr> 
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>   
            <tr>
                <td>Red Color:</td>    
                <td>
                   <asp:CheckBox ID="txtRed" runat="server"  Text=""/>
                </td>              
            </tr>
        </table>
        <br />
        <asp:button id="btnSave" Runat="server" Text="Save" style="width:80px" CssClass="buttonbluestyle" onclick="btnSave_Click"></asp:button>
        </center>
    </form>  
</body>
</html>
