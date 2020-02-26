<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlUserSet.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlUserSet" %>
<script type="text/javascript">
<!--
    function MaximumMyData9() 
    {
       //window.top.bg_change(9);
       window.top.Menu_Click(9);
       return false;
    }          
          
    //-->
</script>

<div align="center" style="WIDTH:100%; overflow: auto ">
    <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">                 
      <tr style="height:24px">
          <td align="left" width="100px"><asp:Label ID="Label2" runat="server" Font-Size="8pt">ID:</asp:Label></td>
          <td align="left"><asp:Label ID="lbl_UserID" runat="server" Font-Size="8pt"></asp:Label></td>
      </tr>
      <tr style="height:24px">
          <td align="left" width="100px"><asp:Label ID="Label3" runat="server" Font-Size="8pt">Login:</asp:Label></td>
          <td align="left"><asp:Label ID="lbl_LoginName" runat="server" Font-Size="8pt"></asp:Label></td>
      </tr>
      <tr style="height:24px">
          <td align="left" width="100px"><asp:Label ID="Label1" runat="server" Font-Size="8pt">Session Timeout:</asp:Label></td>
          <td align="left"><asp:Label ID="lbl_gic_session_timeout" runat="server" Font-Size="8pt"></asp:Label></td>
      </tr>
      <tr style="height:24px">
          <td align="left" width="100px"><asp:Label ID="Label4" runat="server" Font-Size="8pt">Transaction Type:</asp:Label></td>
          <td align="left"><asp:Label ID="lbl_gic_default_transaction_type" runat="server" Font-Size="8pt"></asp:Label></td>
      </tr>
      <tr style="height:24px">
          <td align="left" width="100px"><asp:Label ID="Label5" runat="server" Font-Size="8pt">Label Settings:</asp:Label></td>
          <td align="left"><asp:Label ID="lbl_gic_label_sets" runat="server" Font-Size="8pt"></asp:Label></td>
      </tr>
    </table>
</div>
