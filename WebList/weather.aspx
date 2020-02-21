<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="weather.aspx.cs" Inherits="Virweb2.WebList.weather" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >
<html>
<head id="Head1" runat="server">
    <title>:::Display Weather:::...</title>
</head>
<body >
    <form id="form1" runat="server">       
        <center>
            <div id="search_title">
                <asp:label id="weather_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue"></asp:label>
            </div>
            <div id="weather">
                <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td rowspan="6" align="center">
                            <asp:Label ID="cityCH" runat="server" Text=""></asp:Label><br />
                            <img id="win_img" src="" runat="server" /><br />
                            <asp:Label ID="textCH" runat="server" Text=""></asp:Label>
                        </td>
                        <td align="right">
                            Feel:</td>
                        <td align="center">
                            <asp:Label ID="chillV" runat="server" Text=""></asp:Label>&#176</td>
                    </tr>
                    <tr style="background-color: #E6F5FF">
                        <td align="right">
                            Fact:</td>
                        <td align="center">
                            <asp:Label ID="tempV" runat="server" Text=""></asp:Label>&#176</td>
                    </tr>
                    <tr>
                        <td align="right">
                            Direction:</td>
                        <td align="center">
                            <asp:Label ID="windCH" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr style="background-color: #E6F5FF">
                        <td align="right">
                            Speed:</td>
                        <td align="center">
                            <asp:Label ID="speedV" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right">
                            Humidity:</td>
                        <td align="center">
                            <asp:Label ID="humidityV" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr style="background-color: #E6F5FF">
                        <td align="right">
                            Visibility:</td>
                        <td align="center">
                            <asp:Label ID="visibility" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
                <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="2" align="center" class="time">
                            <asp:Label ID="lastV" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFCC">
                            Sunrise:<asp:Label ID="sunriseV" runat="server" Text=""></asp:Label></td>
                        <td bgcolor="#FFCC00">
                            Sunset:<asp:Label ID="sunsetV" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
                <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center">
                            <asp:Label ID="datev1" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="dayCH1" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="weabmp1" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="texttCH1" runat="server" Text=""></asp:Label><br />
                            High:<asp:Label ID="highV1" runat="server" Text=""></asp:Label>&#176<br />
                            Low:<asp:Label ID="lowV1" runat="server" Text=""></asp:Label>&#176</td>
                        <td align="center">
                            <asp:Label ID="datev2" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="dayCH2" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="weabmp2" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="texttCH2" runat="server" Text=""></asp:Label><br />
                            High:<asp:Label ID="highV2" runat="server" Text=""></asp:Label>&#176<br />
                            Low:<asp:Label ID="lowV2" runat="server" Text=""></asp:Label>&#176</td>
                    </tr>
                </table>
            </div>
        </center>
    </form>
</body>
</html>

