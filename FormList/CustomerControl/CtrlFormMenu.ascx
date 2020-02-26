<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlFormMenu.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlFormMenu" %>
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
            case 34: //  Intake/ESR  
                window.top.document.getElementById("mainlist").src="./FormList/Form101ListER.aspx";
                break;
            case 35: //  Intake/Lanterman  
                window.top.document.getElementById("mainlist").src="./FormList/Form101List.aspx";
                break;
            case 36: //  Case Transfers 
                window.top.document.getElementById("mainlist").src="./FormList/FormTransCaseLogList.aspx";
                break;
            case 37: //  Statistics  
                window.top.document.getElementById("mainlist").src="./FormList/FormSCMonthly.aspx";
                break;
            case 38: //  Exempt Time Card  
                window.top.document.getElementById("mainlist").src="./FormList/FormTimecardListExempt.aspx";
                break;
            case 39: //  ESR Eligibility  
                window.top.document.getElementById("mainlist").src="./FormList/FormESREligibilityList.aspx";
                break;
            case 40: //  ESR Psycho Social   
                window.top.document.getElementById("mainlist").src="./FormList/FormESRPsychoSocialList.aspx";
                break;
            case 41: //  Lanterman Eligibility  (BlueSheet)
                window.top.document.getElementById("mainlist").src="./FormList/FormBLUESHEETList.aspx";
                break;
            case 42: //  Lanterman Psycho Social 
                window.top.document.getElementById("mainlist").src="./FormList/FormPsychoSocialList.aspx";
                break;
            case 43: //  Unit Case Transfers  
                window.top.document.getElementById("mainlist").src="./FormList/FormTransCaseLogListUnit.aspx";
                break;
            case 44: //  Non-Exempt Time Card  
                window.top.document.getElementById("mainlist").src="./FormList/FormTimecardList.aspx";
                break;
        }
    }
//-->
</script>
                		
<div align="center" style="width: 100%; overflow: auto">
    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
      <tr Height="25px" >
        <td colspan=2 align="left">
        &nbsp;&nbsp;&nbsp;<b>ES</b>
        </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu1" runat="server" Font-Bold="True" Text="Intake"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(34);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu2" runat="server" Font-Bold="True" Text="Eligibility"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(39);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu3" runat="server" Font-Bold="True" Text="Psycho Social"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(40);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr Height="25px">
        <td colspan=2 align="left">
        &nbsp;&nbsp;&nbsp;<b>Lanterman</b>
        </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu4" runat="server" Font-Bold="True" Text="Intake"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(35);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu5" runat="server" Font-Bold="True" Text="Eligibility"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(41);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu6" runat="server" Font-Bold="True" Text="Psycho Social"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(42);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr Height="25px">
        <td colspan=2 align="left">
        &nbsp;&nbsp;&nbsp;<b>Transfer</b>
        </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu7" runat="server" Font-Bold="True" Text="Case Transfer"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(36);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu8" runat="server" Font-Bold="True" Text="Unit Case Transfer"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(43);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td colspan=2 align="left">
            &nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="menu9" runat="server" Font-Bold="True" Text="Statistics"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(37);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr Height="25px">
        <td colspan=2 align="left">
        &nbsp;&nbsp;&nbsp;<b>Time Card</b>
        </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu10" runat="server" Font-Bold="True" Text="Exempt Time Card"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(38);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu11" runat="server" Font-Bold="True" Text="Non-Exempt Time Card"
                 style="cursor:hand;text-decoration:underline;" onclick="javascript:Form_Click(44);">
            </asp:HyperLink>
         </td>
      </tr>
      <tr height="25px">
         <td style="width:100px" align="center">
            <img height="16px" width="16px" src="./img/IDNotes.ico" />
         </td> 
         <td style="width:200px;" align="left">
            <asp:HyperLink ID="menu12" runat="server" Font-Bold="True" Text="Mileage"
                 style="cursor:hand;text-decoration:underline;">
            </asp:HyperLink>
         </td>
      </tr>
    </table>
</div>