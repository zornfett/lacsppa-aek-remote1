<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webTicklerInfoDel.aspx.cs" Inherits="Virweb2.WebList.webTicklerInfoDel" %>

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
                alert("Delete Successful!");

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
    <form id="form1" runat="server">
        <input type="hidden" name="tickler_key" id="tickler_key" value="" runat="server" />
        <div align="center">
            <br />           
            <table id="table_rec" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 60%" visible="false">
                <tr class="tr_common">
                    <td><h4>This tickler "<asp:Label ID="Title" runat="server" >IPP</asp:Label>" is set to recur in the future.</h4></td>                    
                </tr>
                <tr class="tr_common">
                    <td><h4>Do you want to delete all future occurrences</h4></td>                    
                </tr>
                <tr class="tr_common">
                    <td><h4>of the tickler or just this occurrence?</h4></td>                    
                </tr>
                <tr class="tr_common">                    
                    <td>
                         <asp:RadioButtonList ID="rbt_delete" runat="server" Font-Size="Large">
                             <asp:ListItem Value="1" Selected="True">Delete All</asp:ListItem>
                             <asp:ListItem Value="2">Delete this one</asp:ListItem>
                         </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <table id="table_norec" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 60%" visible="false">
                <tr class="tr_common">
                    <td><h4>Are you sure you want to delete this tickler ? </h4></td>                    
                </tr>
            </table>
            <table class="table_common" cellspacing="0" cellpadding="0"  align="center" border="0" style="width: 60%" >
                <tr class="tr_common">
                   <td></td>
                </tr>    
                <tr class="tr_common">
                    <td align="center"><asp:Button ID="btn_ok" runat="server" Text="Delete" Style="width: 60px" CssClass="buttonbluestyle"  OnClick="btn_ok_Click" ></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Style="width: 60px" CssClass="buttonbluestyle" OnClick="btn_cancel_Click" ></asp:Button>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

