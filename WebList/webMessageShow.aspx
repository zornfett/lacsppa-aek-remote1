<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.webMessageShow" Codebehind="webMessageShow.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
</head>
<body style="background-color: ButtonFace;">
    <form id="form1" runat="server">
        <div>
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2" style="height: 5px;">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="width:200px;">
                                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="From:"></asp:Label></b>&nbsp;&nbsp;<asp:Label
                                                    ID="lbl_from" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td style="width:200px;"> 
                                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label></b>&nbsp;&nbsp;<asp:Label
                                                    ID="lbl_sentdate" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="To:"></asp:Label></b>&nbsp;&nbsp;<asp:Label
                                                    ID="lbl_to" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:8%;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Subject:"></asp:Label></b></td>
                                <td  align="left">
                                    <asp:Label ID="lbl_subject" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top" style="height: 100%">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_text" TextMode="MultiLine"
                                        Wrap="true" BorderStyle="Solid" runat="server" Width="860px" Height="200px" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
