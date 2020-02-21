<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webTicklerInfoComp.aspx.cs" Inherits="Virweb2.WebList.webTicklerInfoComp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self"></base>
    <title>:::Delete Tickler Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javascript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
        function Refresh_Data(flag) {
            if (flag == "1") {
                alert("Update Complete Date successful!");

                var opener = window.dialogArguments;
                if (isIE()) {
                    opener.RefreshMyData();
                }
                else {
                    window.opener.RefreshMyData();
                }
            }
            window.close();
        }
    //-->
    </script>
</head>
<body>
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <div align="center">
            <br />          
            <br /> 
            <table class="table_common" cellspacing="0" cellpadding="0" border="0" width="500px">
                <tr class="tr_common" style="height: 20pt">
                    <td width="250px"><h4>Please enter the complete date </h4></td>
                    <td class="td_unline" align="left" width="210px">
                        <asp:TextBox ID="txt_completedate" runat="server" Width="210" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" ></asp:TextBox></td>
                    <td>
                    <td width="20px"> </td>
                </tr>    
                <tr class="tr_common" style="height: 20pt">
                   <td colspan=3></td>
                </tr>  
                <tr class="tr_common" style="height: 20pt">
                    <td colspan=3 align="center"><asp:Button ID="btn_ok" runat="server" Text="OK" Style="width: 60px" CssClass="buttonbluestyle"  OnClick="btn_ok_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Style="width: 60px" CssClass="buttonbluestyle"  OnClick="btn_cancel_Click"  TabIndex=1></asp:Button>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

