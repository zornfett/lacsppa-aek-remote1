<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.FormFinancialSituation" Codebehind="FormFinancialSituation.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Financial Situation:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">   
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    <!--
       function save_click()
       {
          
          document.form1.NoConfirm.value="1"; 
          var str=JTrim(document.getElementById("benefit").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("benefit").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("amount").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("amount").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("payment").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("payment").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("insurance").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("insurance").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("ssi").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("ssi").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("ssai").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("ssai").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("others").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("others").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("balance").value)
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("balance").focus();
                return false;
             }
          }
          
          return true;
       }
       
       function adult_click()
       {
           if (document.getElementById("adult").checked)
           {
              document.getElementById("adult").checked=true;
              document.getElementById("minor").checked=false;
           }
           else
           {
              document.getElementById("adult").checked=false;
              document.getElementById("minor").checked=true;
           }
           
       }
       
         
       function minor_click()
       {
           if (document.getElementById("minor").checked)
           {
              document.getElementById("adult").checked=false;
              document.getElementById("minor").checked=true;
           }
           else
           {
              document.getElementById("adult").checked=true;
              document.getElementById("minor").checked=false;
           }
           
       }
       
       function right1_click()
       {
           if (document.getElementById("right_yes").checked)
           {
              document.getElementById("right_yes").checked=true;
              document.getElementById("right_no").checked=false;
              document.getElementById("right_explain").disabled=false;
           }
           else
           {
              document.getElementById("right_yes").checked=false;
              document.getElementById("right_no").checked=true;
              document.getElementById("right_explain").disabled=true;
           }
           
       }
       
       function right2_click()
       {
           if (document.getElementById("right_no").checked)
           {
              document.getElementById("right_yes").checked=false;
              document.getElementById("right_no").checked=true;
              document.getElementById("right_explain").disabled=true;
           }
           else
           {
              document.getElementById("right_yes").checked=true;
              document.getElementById("right_no").checked=false;
              document.getElementById("right_explain").disabled=false;
           }
           
       }
       
       function plan1_click()
       {
           
              document.getElementById("plan_yes").checked=true;
              document.getElementById("plan_no").checked=false;
              document.getElementById("plan_yn").checked=false;
                    
       }
       
       function plan2_click()
       {
            document.getElementById("plan_yes").checked=false;
              document.getElementById("plan_no").checked=true;
              document.getElementById("plan_yn").checked=false;  
       }
       
       function plan3_click()
       {
            document.getElementById("plan_yes").checked=false;
              document.getElementById("plan_no").checked=false;
              document.getElementById("plan_yn").checked=true;  
       }
       
       
     
       
    //-->
    </script>

</head>
<body  runat="server" id="body">
   <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="width: 100%; height: 70px">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="92%" height="100%">
                <tr valign="middle" style="height: 30px">
                    <td align="left" valign="top" width="60%">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CLIENT INFO</asp:Label>
                    </td>
                    <td align="left" valign="middle" style="width: 40%">
                        <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle" OnClientClick="return save_click();" OnClick="btnEdit_Click"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle" OnClientClick="return save_click();" OnClick="btnAdd_Click"></asp:Button>
                        <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle" OnClientClick="javascript:window.print();">
                        </asp:Button>
                        <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"  runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 30px;">
                        <hr style=" font-weight: bold;" />
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" style="width: 100%; height: 600px; overflow: auto">
            <table  border="0" cellpadding="0" style="border-collapse: collapse" width="92%" height="100%" >
                <tr style="height: 20px" class="tr_common">
                    <td align="center" valign="top">
                        <asp:Label ID="Label1" runat="server" Font-Size="12pt" Font-Bold="True" ForeColor="black"><b>Financial Situation</b></asp:Label></td>
                </tr>
                
                <tr class="tr_common">
                    <td valign="top">
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                <td>
                                    BENEFIT:</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="benefit" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td>
                                    AMOUNT:</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="amount" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td>
                                    PAYEE:</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="payment" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td>
                                    INSURANCE:</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="insurance" runat="server" CssClass="inface"></asp:TextBox></td>
                            </tr>
                            <tr style="height: 30px" class="tr_common">
                                <td>
                                    SS#:</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="ss" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox></td>
                                <td>
                                    SSI($):</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="ssi" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td colspan="4">
                                </td>
                            </tr>
                            <tr style="height: 30px" class="tr_common">
                                <td>
                                    SSA#:</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="ssa" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox></td>
                                <td>
                                    SSA($):</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="ssai" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td colspan="4">
                                </td>
                            </tr>
                            <tr style="height: 30px" class="tr_common">
                                <td>
                                    CCS#</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="ccs" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox></td>
                                <td colspan="6">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td valign="top">
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                <td style="width: 230px;">
                                    Other(e.g:IHSS,private insurance,trusts):</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="others" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td style="width: 50%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td valign="top">
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                <td style="width: 330px;">
                                    (If the consumer is employed,who reports income?):</td>
                                <td class="td_unline" align="left" width="340" style="width: 340px; height: 30px;" >
                                    <asp:TextBox ID="reportincome" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox></td>
                                <td style="width: 20%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td valign="top">
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px">
                                <td colspan="3" class="tr_common">
                                    The handling of the consumer's Personal and Incidental expense monlse and other
                                    funds entrusted to the facility in accordance with Section </td>
                            </tr>
                            <tr style="height: 30px" class="tr_common">
                                <td >565557(b)(3)(G) is satisfactory.The current balance is :</td>
                                <td class="td_unline" align="left" width="140" style="width: 140px; height: 30px;" >
                                    <asp:TextBox ID="balance" runat="server" CssClass="inface"></asp:TextBox></td>
                                <td style="width: 42%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 20px;">
                    <td >
                    </td>
                </tr>
                <tr style="height: 30px;">
                    <td >
                        <hr style=" font-weight: bold;" />
                    </td>
                </tr>
              
                <tr style="height: 30px" class="tr_common">
                    <td align="center" valign="top">
                        <asp:Label ID="Label2" runat="server" Font-Size="12pt" Font-Bold="True" ForeColor="black"><b>LEGAL STATUS</b></asp:Label></td>
                </tr>
                
                <tr style="height: 30px" class="tr_common">
                   <td>
                      <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                               <td><asp:CheckBox ID="adult" runat="server" Text="Adult"  Width="100" /><asp:CheckBox ID="minor" runat="server" Text="Minor"  Width="100" />
                               </td>
                            </tr>
                       </table>        
                   </td>
                </tr>
                <tr style="height: 30px" class="tr_common">
                   <td>
                       <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                 <td>Guardian/Conservator:</td>
                                 <td class="td_unline" align="left" style="width: 220px; height: 30px;" >
                                    <asp:TextBox ID="guardian" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox></td>
                                <td style="width: 52%">
                                </td>
                                 
                            </tr>
                       </table>     
                   </td>
                </tr>
                <tr style="height: 30px" class="tr_common">
                   <td>
                       <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                 <td>The consumer's right have been read and explained to the consumer on this date:</td>
                                 <td class="td_unline" align="left" style="width: 220px; height: 30px;" >
                                    <asp:TextBox ID="readdate" runat="server" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" ></asp:TextBox></td>
                                <td style="width: 10%">
                                </td>                                 
                            </tr>
                       </table>     
                   </td>
                </tr>
                <tr style="height: 30px" class="tr_common">
                   <td>
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                <td>Has there been an infringement of consumer's rights:</td>
                                <td ><asp:CheckBox ID="right_yes" runat="server" Text="Yes"  Width="60" /> <asp:CheckBox ID="right_no" runat="server" Text="No"  Width="60" /></td>
                                <td style="width: 44%"></td>
                            </tr>
                        </table>    
                   </td>
                </tr>   
                <tr style="height: 30px" class="tr_common">
                   <td>
                       <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                            <tr style="height: 30px" class="tr_common">
                                <td>If yes,explain here:</td>
                            </tr>
                            <tr style="height: 30px" class="tr_common">
                                <td class="td_unline" align="left" style="width:100%; height: 30px;" ><asp:TextBox ID="right_explain" runat="server" CssClass="inface" MaxLength="200"></asp:TextBox></td>
                            </tr>
                       </table>     
                   </td>
                </tr>   
                <tr style="height: 20px;">
                    <td >
                    </td>
                </tr>      
                <tr style="height: 30px">
                    <td align="center" valign="top">
                        <asp:Label ID="Label3" runat="server" Font-Size="12pt" Font-Bold="True" ForeColor="black"><b>LICENSED FACILITY REVIEW</b></asp:Label></td>
                </tr>  
                <tr style="height: 30px" >
                    <td>
                        <table cellspacing="0" cellpadding="0" align="center" border="0"   class="table_common" >
                            <tr style="height: 30px" class="tr_common">
                                <td>The residential facility was asscssed and is providing training,care and services in accordance with the individual Person Plan:<asp:CheckBox ID="plan_yes" runat="server" Text="Yes"  Width="30" /> <asp:CheckBox ID="plan_no" runat="server" Text="No"  Width="30" /><asp:CheckBox ID="plan_yn" runat="server" Text="N/A"  Width="30" /></td>
                            </tr>
                        </table>
                    </td>
                </tr> 
                
                <tr style="height: 30px;">
                    <td >
                       <hr style=" font-weight: bold;" />
                    </td>
                </tr>
                <tr style="height: 40px;">
                    <td >
                    </td>
                </tr> 
                <tr style="height: 30px" class="tr_common">
                    <td>
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%"  class="table_common" >
                             <tr class="tr_common">
                                <td style="width:5%"></td>
                                <td class="td_unline" align="left" style="width:200px; height: 30px;" ><asp:TextBox ID="coordinator" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox></td>
                                <td style="width:40%"></td>
                                <td class="td_unline" align="left" style="width:140px; height: 30px;" ><asp:TextBox ID="sign_date" runat="server" CssClass="inface"   onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" ></asp:TextBox></td>
                                <td style="width:5%"></td>
                             </tr>
                        </table> 
                    </td>
                </tr>
                 <tr style="height: 30px" class="tr_common">
                    <td>
                        <table cellspacing="0" cellpadding="0" align="center" border="0" width="100%" class="table_common">
                             <tr class="tr_common">
                                <td style="width:5%"></td>
                                <td>Service Coordinator's Signature</td>
                                <td style="width:40%"></td>
                                <td >Date</td>
                                <td style="width:5%"></td>
                             </tr>
                        </table> 
                    </td>
                </tr>
                <tr style="height: 40px;">
                    <td >
                    </td>
                </tr> 
            </table>
        </div>
    </form>
</body>
</html>
