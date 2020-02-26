<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlCSDMenu.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlCSDMenu" %>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/JavaScript" src="js/common.js"></script>  
<script type="text/javascript">
<!--
/*
    function MaximumMyData8() {
        //window.top.bg_change(8);
        window.top.Menu_Click(8);
        return false;
    }
*/
    function Form_Click(MenuID) {
        switch (MenuID) {
            case 1: //  
                winhref("./HelpFile/VENDOR APPLICATION DS 1890.pdf");
                break;
            case 2: //  
                winhref("./HelpFile/W-9.pdf");
                break;
            case 3: //  
                winhref("./HelpFile/HCBS Provider Agreement Form.pdf");
                break;
            case 4: //  
                winhref("./HelpFile/Working Agreement Between Vendor and Regional Center.pdf");
                break;
            case 5: //  
                winhref("./HelpFile/Applicant-Vendor Disclosure Statement DS1891.pdf");
                break;
            case 6: //  
                winhref("./HelpFile/HIPAA.pdf");
                break;
            case 7: //  
                winhref("./HelpFile/Conflict of Interest Declaration.pdf");
                break;
            case 8: //  
                winhref("./HelpFile/T17 APPEAL REGS.pdf");
                break;
            case 9: //  
                winhref("./HelpFile/Vendor Information Notice.pdf");
                break;
        }
    }
//-->
</script>
                		
<div align="center" style="width: 100%; overflow: auto">
    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu1" runat="server" Font-Bold="True" Text="Vendor Application"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(1);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Text="W-9"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(2);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Text="Home and Community Based-Services"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(3);">
            </asp:HyperLink>
         </td>
      </tr>     
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Text="Provider Agreement"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(4);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Text="Applicant/Vendor Disclosure"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(5);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Text="HIPPA"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(6);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Text="Conflict of Interest"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(7);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" Text="Notice of Appeals (WIC)"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(8);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/reports.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="True" Text="Vendor Information Notice"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(9);">
            </asp:HyperLink>
         </td>
      </tr>
    </table>
</div>