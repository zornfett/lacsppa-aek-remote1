<%@ Page Language="C#" Inherits="Virweb2.FormList.FormCDERBabyInfo" Codebehind="FormCDERBabyInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Early Start:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);">
    <form id="form1" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <div style="width: 100%; height: 50px">
            <center>
                <table border="0" cellpadding="0" style="border-collapse: collapse; width:100%">
                    <tr style="height: 30px; background-color: #EAF4FF" valign="top"  >
                        <td align="left" valign="top">
                            <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CONSUMER INFO</asp:Label>
                        </td>
                        <td align="center" valign="middle" width="200px">
                            <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle">
                            </asp:Button>
                            <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"  runat="server" />
                        </td>
                    </tr>
                </table>
            </center>
        </div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; height: 450px; overflow: auto;">
            <table class="table_maindiv">
                <tr>
                    <td valign="top">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="center"><h4><b>EARLY START REPORT</b></h4></td>                                    
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td>Client Name:</td>
                                <td><asp:Label ID="CLIENT_NAME" runat="server"></asp:Label></td>
                                <td style="width: 32%"></td>
                                <td>SC:</td>
                                <td><asp:Label ID="CNSLR" runat="server"></asp:Label></td>
                                <td style="width: 42%"></td>
                            </tr>
                            <tr style="height: 20px">
                                <td colspan="6"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr valign="middle" style="height: 1px;">
                    <td bgcolor="#006600"></td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left">1.&nbsp;&nbsp;</td>
                                <td align="left" style="width: 35%">Primary Service Coordinator</td>
                                <td align="left">2.&nbsp;&nbsp;</td>
                                <td align="left" style="width: 30%">Initial Referral Source</td>
                                <td align="left">3.&nbsp;&nbsp;</td>
                                <td align="left" style="width: 29%">Report Reason</td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left">Regional Center</td>
                                            <td class="td_unline" style="width: 80px;" align="left"><asp:Label ID="esrc" runat="server"></asp:Label></td>
                                            <td style="width: 40%"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td></td>
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 120px;" align="left"><asp:Label ID="esirs" runat="server"></asp:Label></td>
                                            <td style="width: 30%"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                </td>
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 120px;" align="left"><asp:Label ID="esrprs" runat="server"></asp:Label></td>
                                            <td style="width: 30%"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td align="left">SELPA Code</td>
                                            <td class="td_unline" style="width: 80px;" align="left"><asp:Label ID="essc" runat="server"></asp:Label></td>
                                            <td style="width: 40%"></td>
                                        </tr>
                                    </table>
                                </td>
                                <td colspan="4"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left">4.&nbsp;&nbsp;</td>
                                <td align="left">Report Date</td>
                                <td class="td_unline" style="width: 140px;" align="left"><asp:Label ID="esrpd" runat="server"></asp:Label></td>
                                <td style="width:5%"></td>
                                <td align="left">5.&nbsp;&nbsp;</td>
                                <td align="left">UCI#</td>
                                <td class="td_unline" style="width: 140px;" align="left"><asp:Label ID="esuci" runat="server"></asp:Label></td>
                                <td style="width:5%"></td>
                                <td align="left">6.&nbsp;&nbsp;</td>
                                <td align="left">IFSP Last Date</td>
                                <td class="td_unline" style="width: 140px;" align="left"><asp:Label ID="esldte" runat="server"></asp:Label></td>
                                <td style="width:5%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr valign="middle" style="height: 1px;">
                    <td bgcolor="#006600"></td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                 <td align="left">7.&nbsp;&nbsp;</td>
                                 <td align="left" style="width:15%">Birthday</td>
                                 <td align="left">8.&nbsp;&nbsp;</td>
                                 <td align="left" style="width:15%">Sex</td>
                                 <td align="left">9.&nbsp;&nbsp;</td>
                                 <td align="left" style="width:40%">Infant delivered at</td>
                                 <td align="left">10.&nbsp;&nbsp;</td>
                                 <td align="left" style="width:25%">Hospital Code</td>
                                 <td style="width:10%"></td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 70px;" align="left"><asp:Label ID="dob" runat="server"></asp:Label></td>
                                            <td style="width: 40%"></td>
                                        </tr>
                                    </table>
                                </td>                                     
                                <td></td>
                                 <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 70px;" align="left"><asp:Label ID="sex" runat="server"></asp:Label></td>
                                            <td style="width: 40%"></td>
                                        </tr>
                                    </table>
                                 </td>        
                                
                                 <td></td>
                                 <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 160px;" align="left"><asp:Label ID="esdel" runat="server"></asp:Label></td>
                                            <td style="width: 30%"></td>
                                        </tr>
                                    </table>
                                 </td>      
                                 <td></td>
                                 <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 100px;" align="left"><asp:Label ID="eshosp" runat="server"></asp:Label></td>
                                            <td style="width: 30%"></td>
                                        </tr>
                                    </table>
                                 </td>                                        
                                 <td style="width:10%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>   
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left">11.&nbsp;&nbsp;</td>
                                <td align="left" style="width: 35%">Birth Weight</td>
                                <td align="left">12.&nbsp;&nbsp;</td>
                                <td align="left" style="width: 30%">Current Weight</td>
                                <td align="left">13.&nbsp;&nbsp;</td>
                                <td align="left" style="width: 29%">Current Length</td>
                            </tr>
                            <tr class="tr_common">
                                <td align="left"></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="esblbs" runat="server"></asp:Label></td>
                                             <td>Lbs</td>                                                 
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="esbozs" runat="server"></asp:Label></td>
                                             <td>Ozs</td>                                                 
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="esbgrm" runat="server"></asp:Label></td>
                                             <td>Grams</td> 
                                             <td style="width:8%"></td>                                                
                                        </tr>
                                    </table>    
                                </td>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="esclbs" runat="server"></asp:Label></td>
                                             <td>Lbs</td>                                                 
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="escozs" runat="server"></asp:Label></td>
                                             <td>Ozs</td>                                                 
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="escgrm" runat="server"></asp:Label></td>
                                             <td>Grams</td>  
                                             <td style="width:4%"></td>                                                
                                        </tr>
                                    </table>    
                                </td>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="Esinch" runat="server"></asp:Label></td>
                                             <td>Inches</td>                                                 
                                             <td class="td_unline" style="width: 50px;" align="left"><asp:Label ID="escent" runat="server"></asp:Label></td>
                                             <td>Cms</td>   
                                             <td style="width:25%"></td>                
                                        </tr>
                                    </table>    
                                </td>
                            </tr>   
                        </table>
                    </td>
                </tr>     
                 <tr valign="middle" style="height: 1px;">
                    <td bgcolor="#006600"></td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left">14.&nbsp;&nbsp;Family Income</td>
                                <td class="td_unline" style="width: 60px;" align="left"><asp:Label ID="esinc" runat="server"></asp:Label></td>
                                <td style="width:80%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>            
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" colspan="2">15.&nbsp;&nbsp;Parents'Education</td>                                   
                            </tr>
                            <tr class="tr_common">
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mother</td>
                                <td class="td_unline" style="width:760px;" align="left"><asp:Label ID="esmedc" runat="server"></asp:Label></td>
                            </tr>
                            <tr class="tr_common">
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Father</td>
                                <td class="td_unline" style="width:760px;" align="left"><asp:Label ID="esfedc" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>  
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                 <td align="left">16.&nbsp;&nbsp;</td>
                                 <td style="width:30%">Mother's Disability</td>
                                 <td style="width:15%"></td>
                                 <td align="left">17.&nbsp;&nbsp;</td>
                                 <td style="width:30%">Father's Disability</td>
                                 <td style="width:20%"></td>                                     
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                
                                              <td class="td_unline" style="width: 160px;" align="left"><asp:Label ID="esmdis" runat="server"></asp:Label></td>
                                              <td style="width:20%"></td>                                    
                                         </tr>
                                      </table>
                                 </td>
                                 <td style="width:15%"></td>
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                
                                              <td class="td_unline" style="width: 160px;" align="left"><asp:Label ID="esfdis" runat="server"></asp:Label></td>
                                              <td style="width:20%"></td>                                    
                                         </tr>
                                      </table>
                                 </td>
                                 <td style="width:20%"></td>                                     
                            </tr>
                        </table>
                    </td>
                </tr>    
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                 <td align="left">18.&nbsp;&nbsp;</td>
                                 <td>Mother's Maiden Name</td>
                                 <td class="td_unline" style="width: 140px;" align="left"><asp:Label ID="esmmn" runat="server"></asp:Label></td>
                                 <td style="width:64%"></td>
                            </tr>
                        </table>
                    </td>
               </tr> 
               <tr valign="middle" style="height: 1px;">
                    <td bgcolor="#006600"></td>
                </tr>    
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" style="width:20px">19.&nbsp;&nbsp;</td>
                                <td align="left" colspan="4">High Risk Factors</td>                                                                       
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td style="width:60px"></td>
                                 <td colspan="3" align="left">(a)Medical</td>
                            </tr>
                             <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf1" runat="server"></asp:Label></td>
                                 <td style="width:40%">Very low birth weight (1500 grams)</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf9" runat="server"></asp:Label></td>
                                 <td style="width:40%">Significantly SGA</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf2" runat="server"></asp:Label></td>
                                 <td style="width:40%">Prematurity (<32 weeks)</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf10" runat="server"></asp:Label></td>
                                 <td style="width:40%">Prolonged hypoxemia</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf3" runat="server"></asp:Label></td>
                                 <td style="width:40%">Metabolic problem,i.e..,Hypoglycemia,Hypocalcemia</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf11" runat="server"></asp:Label></td>
                                 <td style="width:40%">Hyerbilirubinemia</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf4" runat="server"></asp:Label></td>
                                 <td style="width:40%">CNS infection/abnormality</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf12" runat="server"></asp:Label></td>
                                 <td style="width:40%">Prenatal exposure to teratogens</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf5" runat="server"></asp:Label></td>
                                 <td style="width:40%">Seizure activity during first week</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf13" runat="server"></asp:Label></td>
                                 <td style="width:40%">Significant failure to thrive</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf6" runat="server"></asp:Label></td>
                                 <td style="width:40%">Serious biomedical insult,i.e.,CNS bleeds</td>
                                 <td></td>
                                 <td style="width:40%">(b) Clinical/Behavioral Factors</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf7" runat="server"></asp:Label></td>
                                 <td style="width:40%">Multiple congenital anomalies req,spec,srvcs</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esclbf1" runat="server"></asp:Label></td>
                                 <td style="width:40%">Infant bom to DD parent</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esrskf8" runat="server"></asp:Label></td>
                                 <td style="width:40%">Positive neonatal tox screen/drug withdrawal</td>
                                 <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esclbf2" runat="server"></asp:Label></td>
                                 <td style="width:40%">Persistent tonal problems</td>
                            </tr>
                        </table>
                    </td>
                </tr>  
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" style="width:20px">20.</td>
                                <td align="left" style="width:40%">Developmental Delay</td>     
                                <td align="left" style="width:20px">21.</td>
                                <td align="left" style="width:55%">Established Risk or Diagnosed Conditions</td>                                                                                                       
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdvdl1" runat="server"></asp:Label></td>
                                           <td  align="left">Cognitive</td>
                                       </tr>
                                    </table>
                                </td>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="left"><asp:Label ID="Field1" runat="server"></asp:Label></td>
                                           <td style="width:10px"></td>
                                           <td class="td_unline" style="width: 240px;" align="left"><asp:Label ID="esicd91" runat="server"></asp:Label></td>
                                           <td style="width:25%"></td>
                                       </tr>
                                    </table>
                                </td>                                    
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdvdl2" runat="server"></asp:Label></td>
                                           <td  align="left">Physical</td>
                                       </tr>
                                    </table>
                                </td>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="left"><asp:Label ID="Field2" runat="server"></asp:Label></td>
                                           <td style="width:10px"></td>
                                           <td class="td_unline" style="width: 240px;" align="left"><asp:Label ID="esicd92" runat="server"></asp:Label></td>
                                           <td style="width:25%"></td>
                                       </tr>
                                    </table>
                                </td>                                    
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdvdl3" runat="server"></asp:Label></td>
                                           <td  align="left">Communication</td>
                                       </tr>
                                    </table>
                                </td>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="left"><asp:Label ID="Field3" runat="server"></asp:Label></td>
                                           <td style="width:10px"></td>
                                           <td class="td_unline" style="width: 240px;" align="left"><asp:Label ID="esicd93" runat="server"></asp:Label></td>
                                           <td style="width:25%"></td>
                                       </tr>
                                    </table>
                                </td>                                    
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdvdl4" runat="server"></asp:Label></td>
                                           <td  align="left">Social/Emotional</td>
                                       </tr>
                                    </table>
                                </td>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="left"><asp:Label ID="Field4" runat="server"></asp:Label></td>
                                           <td style="width:10px"></td>
                                           <td class="td_unline" style="width: 240px;" align="left"><asp:Label ID="esicd94" runat="server"></asp:Label></td>
                                           <td style="width:25%"></td>
                                       </tr>
                                    </table>
                                </td>                                    
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdvdl5" runat="server"></asp:Label></td>
                                           <td  align="left">Adaptive/Self-Help Skills</td>
                                       </tr>
                                    </table>
                                </td>
                                <td></td>
                                <td></td>                                    
                            </tr>
                        </table>
                    </td>
                </tr>    
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left">22.&nbsp;&nbsp;Type of Developmental Disability</td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                        <tr class="tr_common">
                                             <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdisb1" runat="server"></asp:Label></td>
                                             <td>intellectual disability</td>
                                             <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdisb3" runat="server"></asp:Label></td>
                                             <td>Cerebral Palsy</td>
                                             <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdisb5" runat="server"></asp:Label></td>
                                             <td>Other Developmental Disability</td>
                                        </tr>
                                        <tr class="tr_common">
                                             <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdisb2" runat="server"></asp:Label></td>
                                             <td>Autism</td>
                                             <td class="td_unline" style="width: 60px;" align="center"><asp:Label ID="esdisb4" runat="server"></asp:Label></td>
                                             <td>Epilepsy</td>
                                             <td colspan="2"></td>
                                        </tr>
                                    </table>    
                                </td>
                            </tr>
                        </table>
                    </td>
                 </tr>   
                 <tr valign="middle" style="height: 1px;">
                    <td bgcolor="#006600"></td>
                 </tr> 
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">                                    
                                 <td align="left">23.&nbsp;&nbsp;</td>
                                 <td style="width:30%">Vision Status</td>
                                 <td style="width:15%"></td>
                                 <td align="left">24.&nbsp;&nbsp;</td>
                                 <td style="width:30%">Hearing Status</td>
                                 <td style="width:20%"></td>    
                            </tr>
                            <tr>
                                 <td align="left"></td>
                                 <td style="width:30%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width:120px;" align="left"><asp:Label ID="esvis" runat="server"></asp:Label></td>
                                           <td  align="left" style="width:20%"></td>
                                       </tr>
                                    </table>
                                 </td>
                                 <td style="width:15%"></td>
                                 <td align="left"></td>
                                 <td style="width:30%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                       <tr class="tr_common">                                  
                                           <td class="td_unline" style="width:120px;" align="left"><asp:Label ID="eshear" runat="server"></asp:Label></td>
                                           <td  align="left" style="width:20%"></td>
                                       </tr>
                                    </table>
                                 </td>
                                 <td style="width:20%"></td>    
                            </tr>
                        </table>
                    </td>
                 </tr>   
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common"> 
                                 <td align="left">25.&nbsp;&nbsp;Ambulation</td>
                                 <td class="td_unline" style="width:160px;" align="left"><asp:Label ID="esamb" runat="server"></asp:Label></td>
                                 <td style="width:68%"></td>
                            </tr>
                        </table>
                    </td>
                 </tr>    
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common"> 
                                 <td align="left" style="width:20px">26.&nbsp;</td>
                                 <td align="left" style="width:33%">Special Aids or Equipment</td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip4" runat="server"></asp:Label></td>
                                             <td>Other ostomy equipment</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td>
                                      <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip8" runat="server"></asp:Label></td>
                                             <td>Positioning equipment</td>
                                              <td style="width:30%"></td>
                                         </tr>
                                     </table>
                                 </td>
                            </tr>
                            <tr class="tr_common"> 
                                 <td></td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip1" runat="server"></asp:Label></td>
                                             <td>None</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip5" runat="server"></asp:Label></td>
                                             <td>Apnea monitor</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip9" runat="server"></asp:Label></td>
                                             <td>Splints,casts,braces</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                            </tr>
                            <tr class="tr_common"> 
                                 <td></td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip2" runat="server"></asp:Label></td>
                                             <td>Feeding tube(N.G.)</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip6" runat="server"></asp:Label></td>
                                             <td>Oxygen monitor</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip10" runat="server"></asp:Label></td>
                                             <td>Tracheostomy equipment</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                            </tr>
                            <tr class="tr_common"> 
                                 <td></td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip3" runat="server"></asp:Label></td>
                                             <td>Gastrostomy tube</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td style="width:33%">
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip7" runat="server"></asp:Label></td>
                                             <td>Feeding devices</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">                                                 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esquip11" runat="server"></asp:Label></td>
                                             <td>Other assistive devices</td>
                                              <td style="width:20%"></td>
                                         </tr>
                                     </table>
                                 </td>
                            </tr>
                        </table>
                    </td>
                 </tr>   
                  <tr valign="middle" style="height: 1px;">
                    <td bgcolor="#006600"></td>
                 </tr> 
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                 <td align="left" style="width:20px">27.</td>
                                 <td align="left" style="width:34%">Type of Service</td>
                                 <td align="center" style="width:18%">Purchasers</td>
                                 <td align="left" style="width:30%"></td>
                                 <td align="center">Providers</td>
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Medical Assessment/Consultation</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr1" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla1" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla2" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>                                       
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>00 - Califomia Children Services(CCS)</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla3" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla4" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Nulrition Assessment/Consultation</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr2" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla5" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla6" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>01 - Child Health Disability Prevention</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla7" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla8" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Nursing Assessment/Intervention</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr3" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla9" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla10" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>02 - Dept.Social Services or DCFS</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla11" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla12" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Developmental/Psych. Assessment</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr4" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla13" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla14" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>03 - County Mental Health</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla15" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla16" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Social Work Services</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr5" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla17" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla18" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>04 - Private Contract Agency</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla19" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla20" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Family Training and Counseling</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr6" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla21" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla22" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>05 - Private Physician</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla23" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla24" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Occupational Therapy</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr7" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla25" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla26" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>06 - NICU Follow-Up Clinic</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla27" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla28" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Physical Therapy</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr8" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla29" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla30" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>07 - Local Education Agency</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla31" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla32" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Language/Speech Services</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr9" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla33" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla34" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>08 - Department of Public Health</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla35" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla36" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Audiology</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr10" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla37" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla38" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>09 - Regional Center</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla39" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla40" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Vision Services </td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr11" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla41" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla42" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>10 - Family Resource Center</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla43" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla44" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Assist.Technology Services</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr12" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla45" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla46" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>11 - Medi-Cal</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla47" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla48" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Respite Care</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr13" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla49" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla50" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>12 - Private Insurance</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla51" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla52" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Infant Development Program</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr14" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla53" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla54" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>13 - EPSDT Supplemental</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla55" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla56" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Service Coordination/Case Mgmt</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr15" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla57" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla58" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>14 - Managed Care</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla59" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla60" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Transportation</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr16" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla61" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla62" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>15 - Regional Center Vendor</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla63" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla64" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Health Service/Intervention</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr17" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla65" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla66" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>16 - Other Agency Vendor</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla67" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla68" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td></td>
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td style="width:80%">Behavior Intervention</td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="essrpr18" runat="server"></asp:Label></td>                                                 
                                             <td style="width:10px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td style="width:10%"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla69" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla70" runat="server"></asp:Label></td>                                                 
                                             <td style="width:20px"></td>
                                         </tr>
                                     </table>
                                 </td>  
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>17 - Private Funding</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla71" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla72" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                            <tr class="tr_common">
                                 <td colspan="3"></td>                                     
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr class="tr_common">
                                             <td>18 - Early Head Start</td>                                                
                                         </tr>
                                     </table>
                                 </td>    
                                 <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 96%">
                                         <tr class="tr_common">
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla73" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esspla74" runat="server"></asp:Label></td>                                                
                                         </tr>
                                     </table>
                                 </td>                                  
                            </tr>
                        </table>
                    </td>
                 </tr>  
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" style="width:20px">28.&nbsp;&nbsp;</td>
                                <td align="left">Location of Primary Services or Program</td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                          <tr class="tr_common">
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc1" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Early intervention classroom/program/center</td>
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc5" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Outpatient service facility</td>
                                         </tr>
                                     </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                          <tr class="tr_common">
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc2" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Family child care</td>
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc6" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Regular nursery school/child care center</td>
                                         </tr>
                                     </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                          <tr class="tr_common">
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc3" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Home</td>
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc7" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Residential facility</td>
                                         </tr>
                                     </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td>
                                     <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                          <tr class="tr_common">
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc4" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Hospital,inpatient</td>
                                              <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="esploc8" runat="server"></asp:Label></td>
                                              <td style="width:10px"></td>
                                              <td style="width:40%">Other setting</td>
                                         </tr>
                                     </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                 </tr>   
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" style="width:20px">29.&nbsp;&nbsp;</td>
                                <td align="left">Test Codes</td>
                                <td style="width:10px"></td>
                                <td align="left">Test Scores:</td>
                                <td style="width:10px"></td>
                                <td align="left">Mental</td>
                                <td style="width:10px"></td>
                                <td align="left">Motor</td>
                                <td style="width:10px"></td>
                                <td align="left">BRI</td>
                                <td style="width:10px"></td>
                                <td align="left">Language</td>
                                <td style="width:10px"></td>
                                <td align="left">Test Dates</td>
                                <td style="width:15%"></td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="estst1" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td align="right">Numerical-</td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmtl1" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmtr1" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esbri1" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="eslan1" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esdte1" runat="server"></asp:Label></td>
                                <td style="width:15%"></td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td></td>
                                <td style="width:10px"></td>
                                <td align="right">Age Equivalent-</td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esml1a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmr1a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esbr1a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esla1a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td></td>
                                <td style="width:15%"></td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="estst2" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td align="right">Numerical-</td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmtl2" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmtr2" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esbri2" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="eslan2" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esdte2" runat="server"></asp:Label></td>
                                <td style="width:15%"></td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td></td>
                                <td style="width:10px"></td>
                                <td align="right">Age Equivalent-</td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esml2a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmr2a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esbr2a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esla2a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td></td>
                                <td style="width:15%"></td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="estst3" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td align="right">Numerical-</td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmtl3" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmtr3" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esbri3" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="eslan3" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esdte3" runat="server"></asp:Label></td>
                                <td style="width:15%"></td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td></td>
                                <td style="width:10px"></td>
                                <td align="right">Age Equivalent-</td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esml3a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esmr3a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esbr3a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td class="td_unline" style="width:90px;" align="left"><asp:Label ID="esla3a" runat="server"></asp:Label></td>
                                <td style="width:10px"></td>
                                <td></td>
                                <td style="width:15%"></td>
                            </tr>
                        </table>
                     </td>
                 </tr>    
                 <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" style="width:20px">30.&nbsp;&nbsp;</td>
                                <td align="left">Transition Planning - Referral to</td>
                            </tr>
                            <tr class="tr_common">
                                <td></td>
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                         <tr>
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="estpr1" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td>School</td> 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="estpr2" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td>Priv Agy</td> 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="estpr3" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td>Head Start</td> 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="estpr4" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td>Fam Res Ctr</td> 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="estpr5" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td>Other RC</td> 
                                             <td class="td_unline" style="width:60px;" align="center"><asp:Label ID="estpr6" runat="server"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td>None Req</td>
                                         </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                 </tr>                                                       
                 <tr style="height:60px">                        
                     <td></td>
                 </tr>                                                                                                            
            </table>
        </div>
    </form>
</body>
</html>
