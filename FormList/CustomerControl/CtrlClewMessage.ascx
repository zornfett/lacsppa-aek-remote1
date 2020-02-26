<%@ Control Language="C#" AutoEventWireup="True" Inherits="Virweb2.CustomerControl.CtrlClewMessage" Codebehind="CtrlClewMessage.ascx.cs" %>
<script type="text/javascript">
<!--
    function MaximumMyData4() {
        //window.top.bg_change(4);
        window.top.Menu_Click(4);
        return false;
    }
//-->
</script>

<div align="center" style="WIDTH:100%; overflow: auto ">
    <table class="table_maindiv">
        <asp:Panel ID="Panel_agency" runat="server" Visible="false">
        <tr>
           <td></td>
        </tr>
        <tr style="height: 22px;">
            <td>
                <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                    <tr>
                        <td id="message0" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                        <td align="left">
                                <asp:Label ID="statusmessage" runat="server" Font-Size="Larger" Font-Bold="True"
                                    ForeColor="navy">Announcement</asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_tickler" runat="server" Visible="false">
        <tr>
           <td></td>
        </tr>
        <tr style="height: 22px;">
            <td>
                <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                    <tr>
                        <td id="message1" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                        <td align="left">
                                <asp:Label ID="lbl_ticklers" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Your Ticklers</asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </asp:Panel>   
        <asp:Panel ID="Panel_IDNotes" runat="server" Visible="false">
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message2" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_IDNotes" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>          
        <asp:Panel ID="Panel_All_IDNotes" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message3" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_All_IDNotes" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>      
        <asp:Panel ID="Panel_Message" runat="server" Visible="false">
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message4" class="td_expendmark" align="center">&nbsp&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_message" runat="server" Font-Size="Larger" Font-Bold="True" 
                                       ForeColor="navy">Unread Messages</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_PosTerm" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message5" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_posterm" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">POS terminating in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_PosTermMonth" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message15" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_postermmonth" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">POS terminating in the next month</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_Sirfollow" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message6" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_sirfollow" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">SIR follow ups due in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_Siroverdue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message7" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_siroverdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">SIR follow ups overdue</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>

        <asp:Panel ID="Panel_IPPNotification" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message14" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ippnotification" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_AnnualNotification" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message24" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_annualnotification" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Annual Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_QuarterlyNotification" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message25" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_quarterlynotification" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Quarterly Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_AddendumNotification" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message26" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_addendumnotification" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Addendum Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
                                
        <asp:Panel ID="Panel_Siroutcomp" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message8" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_siroutcomp" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPPs/ACs out of compliance (over 45 days) in the last 12 months</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>    
        <asp:Panel ID="Panel_Cderexp" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message9" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_cderexp" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">CDER expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_ticklerdue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message10" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ticklerdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Tickler Due in the current month</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_ticklerface" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message11" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ticklerface" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Tickler Face-To-Face meetings needed in the last 12 month</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 

        <asp:Panel ID="Panel_NvraDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message16" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_nvradue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">NVRA due in the next 90 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>        
        <asp:Panel ID="Panel_AfpfDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message17" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_afpfdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">AFPF due in the next 90 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_FcppDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message18" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_fcppdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">FCPP due in the next 90 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_NotApprovedTime" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message19" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_notapprovedtime" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Not Approved Time Cards</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_NewIntake" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message20" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_newintake" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">New Case for Intake Workers</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>   
        <asp:Panel ID="Panel_CaseTransferPM" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message21" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_casetransferpm" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">New Transfer Cases for PM</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>     
        <asp:Panel ID="Panel_CaseTransferSC" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message22" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_casetransfersc" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">New Transfer Cases for SC</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_EligDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message23" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_eligdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Next Eligibility Due in the one year</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>   
        <asp:Panel ID="Panel_eligibilityreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message12" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_eligibilityreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Lanterman Eligibility Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_EsrEligibilityReview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message13" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_esreligibilityreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">ES Eligibility Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_PsychoReview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message27" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_psychoreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Lanterman Psycho-Social Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_EsrPsychoReview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message28" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_esrpsychoreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">ES Psycho-Social Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_turnreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message41" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_turnreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">ES Turning 3 Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_Referred" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message29" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_referred" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Referred Consumers</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_IFSPNotification" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message30" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ifspnotification" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_IFSPAddendum" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message31" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ifspaddendum" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Addendum Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_IFSPReview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message32" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ifspreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Periodic Review Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_IFSPTransition" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message33" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ifsptransition" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Transition Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_IFSPRmReview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message42" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_ifsprmreview" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP RM Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>
        <asp:Panel ID="Panel_monitordue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message34" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_monitordue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Monitoring Due in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel> 
        <asp:Panel ID="Panel_followupdue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message35" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_followupdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Following-up Due within the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>     
        <asp:Panel ID="Panel_paymentexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message36" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_paymentexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Payment Agreements expiring within the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_contactsexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message37" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_contactsexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Contacts expiring within the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>    
        <asp:Panel ID="Panel_insuranceexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message38" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_insuranceexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Liability Insurance expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_compensationexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message39" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_compensationexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Worker's Compensation expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>  
        <asp:Panel ID="Panel_licensesexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message40" class="td_expendmark" align="center">&nbsp;&nbsp;</td>
                            <td align="left"><asp:Label ID="lbl_licensesexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Business licenses expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </asp:Panel>   
      </table>
    </div>
