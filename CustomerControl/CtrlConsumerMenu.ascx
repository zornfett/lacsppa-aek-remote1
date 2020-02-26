<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlConsumerMenu.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlConsumerMenu" %>
<script type="text/javascript">
<!--
/*
    function MaximumMyData8() {
        //window.top.bg_change(8);
        window.top.Menu_Click(8);
        return false;
    }
*/

    function Menu_Click(MenuID) {
        switch (MenuID) {
            case 2: //Client profile
             window.top.document.getElementById("mainlist").src="./weblist/webConsumerInfo.aspx";
             break;
            case 301: // for xixsrv
	         window.top.document.getElementById("mainlist").src="./weblist/webIDNotesInfo.aspx?type=add";
	         break;
            case 22: //Medical Page
	         window.top.document.getElementById("mainlist").src="./weblist/webMedicalInfo.aspx";
	         break;
            case 32: //  MWE (DS 3700)  
	         window.top.document.getElementById("mainlist").src="./FormList/FormMWEList.aspx";
	         break;
            case 29: // POS List 
	         window.top.document.getElementById("mainlist").src="./FormList/FormPosList.aspx";
	         break;
            case 30: // SIR List 
	         window.top.document.getElementById("mainlist").src="./FormList/FormSirList.aspx";
	         break;
            case 191: // for xixsrv
	         window.top.document.getElementById("mainlist").src="./FormList/FormIPPListSCLARC.aspx";
	         break;
            case 21: //Event List
	         window.top.document.getElementById("mainlist").src="./weblist/webEventList.aspx";
	         break;
        }
    }
//-->
</script>		
<div align="center" style="width: 100%; overflow: auto">
    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/profile.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu1" runat="server" Font-Bold="True" Text="Profile"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(2);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu2" runat="server" Font-Bold="True" Text="Case Notes"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(301);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/medical.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu3" runat="server" Font-Bold="True" Text="Medical"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(22);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu4" runat="server" Font-Bold="True" Text="Medicaid Waiver"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(32);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu5" runat="server" Font-Bold="True" Text="POS List"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(29);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu6" runat="server" Font-Bold="True" Text="SIR List"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(30);">
            </asp:HyperLink>
         </td>
      </tr> 
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/Documents.png" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu7" runat="server" Font-Bold="True" Text="IPP List"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(191);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu8" runat="server" Font-Bold="True" Text="Event List"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Menu_Click(21);">
            </asp:HyperLink>
         </td>
      </tr> 
    </table>
</div>