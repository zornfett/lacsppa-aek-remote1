<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.webTicklerSCLARCBaseMon" Codebehind="webTicklerSCLARCBaseMon.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self"></base>    
		<title>:::Update Tickler Info:::...</title>
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
                   <asp:Label ID="Title" runat="server">Client Tickler Information</asp:Label> 
                </h3></td>
            </tr>
            <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr class="td_common">
                <td class="td_label" width="120px">Tickler Month:</td>    
                <td class="td_unline" align="left" width="300px">
                   <asp:DropDownList ID="base_month" runat="server" CssClass="infaceDrop" Width="150">
                       <asp:ListItem Value=""></asp:ListItem>
                       <asp:ListItem Value="1">January</asp:ListItem>
                       <asp:ListItem Value="2">February</asp:ListItem>
                       <asp:ListItem Value="3">March</asp:ListItem>
                       <asp:ListItem Value="4">April</asp:ListItem>
                       <asp:ListItem Value="5">May</asp:ListItem>
                       <asp:ListItem Value="6">June</asp:ListItem>
                       <asp:ListItem Value="7">July</asp:ListItem>
                       <asp:ListItem Value="8">August</asp:ListItem>
                       <asp:ListItem Value="9">September</asp:ListItem>
                       <asp:ListItem Value="10">October</asp:ListItem>
                       <asp:ListItem Value="11">November</asp:ListItem>
                       <asp:ListItem Value="12">December</asp:ListItem>
                   </asp:DropDownList>
                </td>              
            </tr>
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>
            <tr class="td_common">
                <td class="td_label" width="120px">Tickler Cycle:</td>  
                <td class="td_unline" align="left" width="300px">
                   <asp:DropDownList ID="tickler_cycle" runat="server" CssClass="infaceDrop" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                       Width="150" OnChange="DataChanged()">       
                   </asp:DropDownList>
                   &nbsp;Year:&nbsp;
                   <asp:TextBox ID="tickler_date" runat="server" CssClass="inface" Width="80px"></asp:TextBox>
                </td>   
        </table>
        <br />
        <asp:button id="btnSave" Runat="server" Text="Save" style="width:80px" CssClass="buttonbluestyle" onclick="btnSave_Click"></asp:button>
        </center>
    </form>  
</body>
</html>
