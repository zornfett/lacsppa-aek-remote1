<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlMonitoringToolReports.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlMonitoringToolReports" %>
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
                   <asp:Label ID="l_r_qa_evaluation_date" runat="server" Font-Size="8pt">Annual:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_qa_evaluation_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_qa_eval_exit" runat="server" Font-Size="8pt">Monitoring Follow-up:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_qa_eval_exit" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>   
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_unannounced_visit_2" runat="server" Font-Size="8pt">License-Business:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_unannounced_visit_2" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>                
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_ccl_hcl_lic_date" runat="server" Font-Size="8pt">Facility/ Program License Term:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_ccl_hcl_lic_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>  
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_rate_effective_date" runat="server" Font-Size="8pt">Liability Insurance:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_rate_effective_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>  
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_ad_hoc" runat="server" Font-Size="8pt">CARF Certification:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_ad_hoc" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>  
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_rate_review_date" runat="server" Font-Size="8pt">Follow-Up:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_rate_review_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>  
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_dds_review_date" runat="server" Font-Size="8pt">Administrator Certificate:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_dds_review_date" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>  
            <tr style="height:24px">
               <td align="left" style="width:270px">
                   <asp:Label ID="l_r_ar_follow_up" runat="server" Font-Size="8pt">Disclosure Statement:</asp:Label>
               </td>
               <td style="width:5px"></td>
               <td align="left" style="width:150px" width="150px">
                   <asp:Label ID="r_ar_follow_up" runat="server" Font-Size="8pt"></asp:Label>
               </td>
            </tr>        
         </table>
       </div>
    </div>