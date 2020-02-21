<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchIPPPlan" CodeBehind="SearchIPPPlan.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::IPP Plan Group Search:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function PostText(SelectedItem)    
        {
            // var PlanID = document.getElementById(<%= "'" + PlanID.ClientID + "'" %>);
          var pos = SelectedItem.indexOf(" ---- ");
          var v = SelectedItem.substring(0, pos);  
          var opener = window.dialogArguments;
          if (isIE())
          {
              opener.SelectPlanItems(v);
              opener.focus();
              window.close();
          }
          else
          {
              window.opener.SelectPlanItems(v);
              window.opener.focus();
              window.close();
          }
        }             
    </script>
</head>
<body>
    <form id="SearchIPPPlan" runat="server">
    <asp:HiddenField ID="PlanID" runat="server" Value="" />
    <br />
    <br />
    <div>
        <table class="table_full" width="100%">
            <tr>
                <td colspan="3" align="center">
                    <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                        Height="24px">IPP Plan Group Search</asp:Label><br />
                </td>
                <td width="300px"></td>
            </tr>
            <tr>
                <td style="width: 150px" align="right" width="80" bgcolor="#9fb0f4" height="20">
                    <b>Search Plan:</b>
                </td>
                <td width="5" height="20">
                </td>
                <td height="20" style="width: 350px">
                    <asp:TextBox ID="plan_desc" runat="server" Width="330"></asp:TextBox>
                </td>
                <td width="300px"></td>
            </tr>
            <tr>
                <td colspan="3" align="left">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"></asp:Button>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnPaste" runat="server" Text="Paste" OnClick="btnPaste_Click"></asp:Button>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnView" runat="server" Text="Details" OnClick="btnView_Click"></asp:Button>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <asp:ListBox ID="PlanList" runat="server" Width="800" Height="400"></asp:ListBox>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
