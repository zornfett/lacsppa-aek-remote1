<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlConsultants.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlConsultants" %>
<script type="text/javascript">
    <!--
    function MaximumMyData47() {
        //window.top.bg_change(47);
        window.top.Menu_Click(47);
        return false;
    }        
   //-->      
    </script>
    <div align="center" style="WIDTH:100%; overflow: auto ">
       <div id="GeneAll" runat="server" visible=true >
         <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">
            <tr style="height:24px">
               <td align="left" style="width:150px">
                   <asp:Label ID="l_r_delete_date" runat="server" Font-Size="8pt">Consultant License:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:270px" width="150px">
                   <asp:Label ID="r_delete_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>
            <tr style="height:24px">
               <td align="left" style="width:150px">
                   <asp:Label ID="l_r_consultant_name" runat="server" Font-Size="8pt">Consultant Name:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:270px" width="150px">
                   <asp:Label ID="r_consultant_name" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>   
         </table>
       </div>
    </div>