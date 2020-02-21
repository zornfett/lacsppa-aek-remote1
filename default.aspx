<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Virweb2._default" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <title>::Kea Live Login::... </title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/JavaScript" src="js/common.js"></script>
    <style>
        .BGStyle {
            background-image: url(img/bg_login.gif);
            background-position: right;
            background-repeat: repeat-y;
        }
    </style>

    <script type="text/javascript">
<!--
    function ConfirmPWD() {
        if (confirm("Do you really want to reset your password ?"))
            return true;
        else return false;
    }
    ////-->
    </script>

    <%-- Add Reference to jQuery at Google CDN --%>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

    <%-- Add Reference to spin.js (an animated spinner) --%>
    <script src="//spin.js.org/spin.js"></script>

    <script type="text/javascript">

        var wcppPingDelay_ms = 10000;

        function wcppDetectOnSuccess() {
            <%-- WCPP utility is installed at the client side
                 redirect to WebClientPrint sample page --%>
             
            <%-- get WCPP version --%>
            var wcppVer = arguments[0];
            if (wcppVer.substring(0, 1) == "2")
                window.location.href = "CrystalReportViewerCustomPrint.aspx";
            else //force to install WCPP v2.0
                wcppDetectOnFailure();
        }

        function wcppDetectOnFailure() {
            <%-- It seems WCPP is not installed at the client side
                 ask the user to install it --%>
            $('#msgInProgress').hide();
            $('#msgInstallWCPP').show();
        }

        $(document).ready(function () {
            <%-- Create the Spinner with options (http://fgnass.github.io/spin.js/) --%>
            var spinner = new Spinner({
                lines: 12,
                length: 7,
                width: 3,
                radius: 10,
                color: '#336699',
                speed: 1,
                trail: 60
            }).spin($('#mySpinner')[0]);
        });

    </script>

</head>
<body bottommargin="0" leftmargin="0" topmargin="0" style="overflow: hidden;">
    <form id="loginfrm" runat="server">
        <center>
            <div style="background-color: royalblue; overflow: auto;">
                <table border="0" cellpadding="0" style="border-collapse: collapse; width: 100%; height: 100%">
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td height="320px" bgcolor="#ffffff">
                            <div align="center">
                                <table width="100%" height="100%" border="0" cellpadding="0" style="border-collapse: collapse"
                                    class="BGStyle">
                                    <tr>
                                        <td width="50%" align="right" valign="middle">
                                            <asp:Image ID="logo" runat="server" ImageUrl="img/Logo/kea-live_logo.jpg" Width="404px" Height="201px" />
                                        </td>
                                        <td align="right">
                                            <div align="center">
                                                <table border="0" cellpadding="0" style="border-collapse: collapse" height="100%"
                                                    align="right">
                                                    <tr>
                                                        <td colspan="2" align="right">
                                                            <asp:Image ID="logintop" runat="server" ImageUrl="img/login_top.gif" Width="360px" Height="200px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="51%" valign="bottom" align="right" style="height: 206px">
                                                            <div align="center">
                                                                <table border="0" cellpadding="0" style="border-collapse: collapse; width: 337px; height: 136px;"
                                                                    align="right">
                                                                    <tr>
                                                                        <td background="img/login_input.gif">
                                                                            <div align="center">
                                                                                <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%"
                                                                                    height="100%">
                                                                                    <tr>
                                                                                        <td height="35">&nbsp;
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="right">
                                                                                            <div align="right">
                                                                                                <table border="0" cellpadding="0" style="border-collapse: collapse" width="337px"
                                                                                                    height="100%">
                                                                                                    <tr style="height: 22px;">
                                                                                                        <td width="90"></td>
                                                                                                        <td width="82" align="right">Account:&nbsp;&nbsp;
                                                                                                        </td>
                                                                                                        <td width="130">
                                                                                                            <asp:TextBox ID="Account" runat="server" Width="120px"></asp:TextBox></td>
                                                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                                                    </tr>
                                                                                                    <tr style="height: 22px;">
                                                                                                        <td width="90"></td>
                                                                                                        <td width="82" align="right">Login Name:&nbsp;&nbsp;
                                                                                                        </td>
                                                                                                        <td width="130">
                                                                                                            <asp:TextBox ID="UserName" runat="server" Width="120px"></asp:TextBox>
                                                                                                        </td>
                                                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                                                    </tr>
                                                                                                    <tr style="height: 22px;">
                                                                                                        <td width="90"></td>
                                                                                                        <td width="82" align="right">Password:&nbsp;&nbsp;
                                                                                                        </td>
                                                                                                        <td width="130">
                                                                                                            <asp:TextBox ID="Password" runat="server" Width="120px" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox></td>
                                                                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                                                                    </tr>
                                                                                                    <tr style="width: 100%">
                                                                                                        <td colspan="3" align="center">
                                                                                                            <asp:Button ID="btnLogin" runat="server" Text="OK" Width="70px" Height="26px"
                                                                                                                BackColor="LightSkyBlue" OnClick="btnLogin_Click"></asp:Button>
                                                                                                            &nbsp;&nbsp;
                                                                                                        <input type="reset" name="cancel" value="Cancel" style="width: 70px; height: 26px; background-color: LightSkyBlue;" />
                                                                                                            &nbsp;&nbsp;
                                                                                                        <asp:Button ID="btnResetPwd" runat="server" Text="Forgot Password" Width="130px" Height="26px"
                                                                                                            BackColor="LightSkyBlue" OnClientClick="return ConfirmPWD();" OnClick="btnResetPWD_Click"></asp:Button>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td colspan="3" align="center"></td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </div>
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
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr style="height: 20px; background-color: royalblue;">
                                        <td valign="bottom" align="center" colspan="2">
                                            <font size="2" color="white">Powered By Kea Systems&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        Version  01.01.01.06 Copyright 2019 KeaSystems&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top">
                            <div align="center">
                                <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                                    <tr>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </center>
    </form>
</body>
</html>
