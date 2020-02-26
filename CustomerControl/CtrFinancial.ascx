<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrFinancial.ascx.cs" Inherits="Virweb2.CustomerControl.CtrFinancial" %>
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
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_sanction_date_end" runat="server" Font-Size="8pt">DDS Rate Letter:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_sanction_date_end" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_sanction_date_start" runat="server" Font-Size="8pt">Payment Agreement:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_sanction_date_start" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>   
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_monitor_date" runat="server" Font-Size="8pt">Contract:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_monitor_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>                
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_corrective_action_date" runat="server" Font-Size="8pt">Negotiated Rate Doc.:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_corrective_action_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>  
         </table>
       </div>
    </div>