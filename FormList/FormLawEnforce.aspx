<%@ Page Language="C#" AutoEventWireup="True"  Inherits="Virweb2.FormList.FormLawEnforce" Codebehind="FormLawEnforce.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>SCLARC Law Enforcement Liaison</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
      function FunctiontoCallSaveData()
      {
         document.getElementById("<%=hdtoSaveData.ClientID %>").value="PageClosed";
         document.ForLaw.submit();
      }
       
      function judge_numeric(field1,field2)
      {
           var str="";
           str=JTrim(document.getElementById(field2).value)
           if (document.getElementById(field1).checked)
           {              
              if (str!="")
              {
                 if (isNaN(str)==true)
                 {
                    alert("Please input number!");
                    document.getElementById(field2).focus();
                    return false;
                 }
                 else
                 {
                    if (parseFloat(str)==0)
                    {
                       alert("Minutes >0 ,please input again!");
                       document.getElementById(field2).focus();
                       return false;
                    }
                 }
              }
              else
              {
                 alert("Please input Minutes!");
                 document.getElementById(field2).focus();
                 return false;
              }
           }
           else
           {             
              document.getElementById(field2).value="";
              return true;
           }
      }

      function print_click() {
          var ID = document.ForLaw.ID.value.toString();
          var url = "PrintFormLawEnforce.aspx?ID=" + ID;
          winhref(url, 'PrintFormLawEnforce');
      }

      function save_click()
      {
           NoConfirmExit();
           if (judge_numeric("INTAKE1","INTAKEMinute1")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE2","INTAKEMinute2")==false)
           {
              return false;
           }   
           if (judge_numeric("INTAKE3","INTAKEMinute3")==false)
           {
              return false;
           }   
           if (judge_numeric("INTAKE4","INTAKEMinute4")==false)
           {
              return false;
           }
           if (judge_numeric("INTAKE5","INTAKEMinute5")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE5A","INTAKEMinute5A")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE5B","INTAKEMinute5B")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE5C","INTAKEMinute5C")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE5D","INTAKEMinute5D")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE5E","INTAKEMinute5E")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE5F","INTAKEMinute5F")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE6","INTAKEMinute6")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE6A","INTAKEMinute6A")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE7","INTAKEMinute7")==false)
           {
              return false;
           }  
           if (judge_numeric("INTAKE8","INTAKEMinute8")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE1","DUTIEMinute1")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE2","DUTIEMinute2")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE3","DUTIEMinute3")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE4","DUTIEMinute4")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE5","DUTIEMinute5")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE6","DUTIEMinute6")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE7","DUTIEMinute7")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE8","DUTIEMinute8")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE9","DUTIEMinute9")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE10","DUTIEMinute10")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE11","DUTIEMinute11")==false)
           {
              return false;
           }  
           if (judge_numeric("DUTIE12","DUTIEMinute12")==false)
           {
              return false;
           }           
           return true;
       }

       function back_click() {
           if (Confirm_Page())
               document.location.replace('FormLawEnforceList.aspx');
       }
    //-->
    </script>
</head>
<body runat="server" id="body" >
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="ForLaw" runat="server">
        <input type="submit" value="test" style="display:none;" />
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" runat="server"  value=""/>      
        <input type="hidden" name="ID" id="ID" runat="server"  value=""/>
        <div align="center" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      onclientclick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>
        
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save"
                      onclientclick="return save_click();" OnClick="btnAdd_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Law Enforce</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                        src="../img/supportdesk.ico" title="Support"
                        onclick="javascript:window.top.outsidelinks(1);return false;" />             
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                        src="../img/help.ico" title="Help"
                        onclick="javascript:window.top.outsidelinks(2);return false;" />             
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                        src="../img/logout.jpg" title="Logout"
                        onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                    &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                 <td colspan="3" style="background-color:#137AC5"></td> 
            </tr>
            <tr>
		         <td colspan="3" height="8px"></td>
		    </tr>
        </table> 
        </div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 450px;">
            <table class="table_maindiv">
                  <tr>
                      <td>
                           <table class="table_inside"> 
                                <tr  class="tr_common">
                                      <td style="width:80px" class="td_label"><b>UCI #:</b></td>
                                      <td style="width:5px"></td>
                                      <td class="td_unline"  style="width:120px" >
                                         <asp:TextBox ID="uci" runat="server" CssClass="inface"  MaxLength="8"></asp:TextBox>
                                      </td>
                                      <td style="width:5px"></td>
                                      <td style="width:100px" class="td_label"><b>Last Name:</b></td>
                                      <td style="width:5px"></td>
                                      <td class="td_unline" style="width:150px">
                                         <asp:TextBox id="name_last" runat="server" CssClass="inface" Width="140px"></asp:TextBox>
                                      </td>
                                      <td style="width:5px"></td>
                                      <td style="width:100px" class="td_label"><b>First Name:</b></td>
                                      <td style="width:5px"></td>
                                      <td class="td_unline" style="width:150px">
                                         <asp:TextBox id="name_first" runat="server" CssClass="inface" Width="140px"></asp:TextBox>
                                      </td>
                                      <td style="width:5px"></td>
                                      <td style="width:80px" class="td_label"><b>D.O.B:</b></td>
                                      <td class="td_unline" style="width:100px">
                                         <asp:TextBox id="dob"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                                          runat="server" CssClass="inface" Width="100px"></asp:TextBox>
                                      </td>
                                </tr>
                           </table>
                      </td>
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <table class="table_inside"> 
                               <tr class="tr_common">
                                     <td style="width:80px" class="td_label"><asp:CheckBox ID="NON_RC" runat="server" Text=""  Width="30" /><b>NON-RC</b></td>
                                     <td style="width:30px"></td>
                                     <td style="width:120px" class="td_label"><b>Regional Center:</b></td>
                                     <td style="width:160px" class="td_unline" > 
                                         <asp:dropdownlist id="RegionalCenter" runat="server" 
						                       DataValueField="rc_id" DataTextField="rc_name"  CssClass="infaceDrop">
		                                 </asp:dropdownlist>
		                             </td>
		                             <td style="width:30px"></td>
		                             <td style="width:120px" class="td_label"><b>Booking #:</b></td>
		                             <td class="td_unline" style="width:300px;">
	                                     <asp:TextBox ID="Booking" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>  
	                                </td> 
                               </tr>
                          </table>
                      </td>                      
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <table class="table_inside"> 
                              <tr  class="tr_common">
                                  <td style="width:200px" class="td_label"><b>Referral for Possible RC Services:</b></td>
                                  <td style="width:300px" class="td_unline" >  
                                         <asp:DropDownList ID="RcServiceFrom" runat="server" CssClass="infaceDrop">
                                             <asp:ListItem Value=""></asp:ListItem>  
                                             <asp:ListItem Value="referral from public defender">referral from public defender</asp:ListItem>  
                                             <asp:ListItem Value="referral from district attorney">referral from district attorney</asp:ListItem>   
                                             <asp:ListItem Value="referral from court">referral from court</asp:ListItem>   
                                             <asp:ListItem Value="referral from other">referral from other</asp:ListItem>                                        
                                         </asp:DropDownList>
                                  </td>
                                  <td style="width:20px"></td>
                                  <td style="width:200px" class="td_unline">  
                                         <asp:DropDownList ID="RcServiceVia" runat="server" CssClass="infaceDrop">
                                             <asp:ListItem Value=""></asp:ListItem>  
                                             <asp:ListItem Value="via minute order">via minute order</asp:ListItem>  
                                             <asp:ListItem Value="via email">via email</asp:ListItem>   
                                             <asp:ListItem Value="via mail">via mail</asp:ListItem>   
                                             <asp:ListItem Value="via phone">via phone</asp:ListItem>                                        
                                        </asp:DropDownList>
                                  </td>
                                  <td style="width:10%"></td>
                              </tr>
                          </table>
                      </td>
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td class="td_thicksepline">
                      </td>
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr style="height:30px">
                      <td align="center" style="text-decoration: underline">
                         <asp:label id="l_title2" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   SCREENING/ INTAKE</asp:label>
                      </td>
                  </tr>
                  <tr>
                     <td>
                        <table class="table_inside">
                           <tr  class="tr_common">                              
                               <td class="td_label"><asp:CheckBox ID="INTAKE1" runat="server" Text=""  Width="30" />1. locate inmate's location</td>
                               <td class="td_unline" style="width:80px;">
	                               <asp:TextBox ID="INTAKEMinute1" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate1" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                       </tr>
	                     </table>
	                  </td>
                  </tr> 
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                     <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                              
                               <td class="td_label"><asp:CheckBox ID="INTAKE2" runat="server" Text=""  Width="30" />2. complete statewide search</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute2" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate2" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr> 
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                              
                               <td class="td_label"><asp:CheckBox ID="INTAKE3" runat="server" Text=""  Width="30" />3. prepare documents for screening i.e. screening packet, evaluations received from referral source</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute3" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate3" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label"><asp:CheckBox ID="INTAKE4" runat="server" Text=""  Width="30" />4. face to face at jail</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute4" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate4" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label"><asp:CheckBox ID="INTAKE5" runat="server" Text=""  Width="30" />5. report to referral source if appropriate referral</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE5A" runat="server" Text=""  Width="30" />A. register applicant with appropriate regional center</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5A" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5A" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE5B" runat="server" Text=""  Width="30" />B. request court order for face to face psychological</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5B" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5B" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE5C" runat="server" Text=""  Width="30" />C. prepare referral packet and submit to psychologist</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5C" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5C" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE5D" runat="server" Text=""  Width="30" />D. request school records</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5D" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5D" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE5E" runat="server" Text=""  Width="30" />E. request medical records</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5E" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5E" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE5F" runat="server" Text=""  Width="30" />F. request miscellaneous documents</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute5F" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate5F" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="INTAKE6" runat="server" Text=""  Width="30" />6. report to referral source if not appropriate referral</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute6" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate6" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">       
                               <td style="width:30px"></td>                        
                               <td class="td_label" ><asp:CheckBox ID="INTAKE6A" runat="server" Text=""  Width="30" />A. type letter to referral source and mail certified/ fax</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute6A" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate6A" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="INTAKE7" runat="server" Text=""  Width="30" />7. face to face at jail and complete psycho-social assessment</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute7" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate7" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="INTAKE8" runat="server" Text=""  Width="30" />8. forward psycho-social, psychological and other docs to regional center intake department</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute8" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate8" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
	                         <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="INTAKE9" runat="server" Text=""  Width="30" />9. others</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="INTAKEMinute9" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="INTAKEDate9" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:5%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr  style="height:20px" >
                     <td></td>
                  </tr> 
                  <tr>
                      <td>
                         <table class="table_inside">	                        
	                        <tr>
	                           <td valign="top" width="100px" class="td_label">Comments:</td>
	                           <td  colspan="6" style="height: 80px" valign="top" height="80" width="auto">
                                   <asp:TextBox ID="comments1" TextMode="MultiLine" Wrap="true"
                                          runat="server" Width="98%" Height="80"></asp:TextBox>
                               </td>
                            </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr  style="height:20px" >
                     <td></td>
                  </tr> 
                  <tr style="height:30px">
                      <td align="center" style="text-decoration: underline">
                         <asp:label id="l_title1" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">
                                   OTHER JOB DUTIES</asp:label>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE1" runat="server" Text=""  Width="30" />1. request and coordinate "professional visit" clearance/ visits</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute1" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate1" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE2" runat="server" Text=""  Width="30" />2. request physicals and medical records</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute2" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate2" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE3" runat="server" Text=""  Width="30" />3. submit diagnosis/ medications to appropriate jail personnel</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute3" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate3" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE4" runat="server" Text=""  Width="30" />4. attend JMET meetings</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute4" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate4" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE5" runat="server" Text=""  Width="30" />5. face to face with inmate for case management issues</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute5" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate5" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE6" runat="server" Text=""  Width="30" />6. notify regional center/ SC of upcoming court appearances</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute6" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate6" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE7" runat="server" Text=""  Width="30" />7. inform regional center/ SC of charges</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute7" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate7" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE8" runat="server" Text=""  Width="30" />8. coordinate "conditional releases"</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute8" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate8" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE9" runat="server" Text=""  Width="30" />9. request transfer into the dd pod (regional center housing area)</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute9" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate9" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE10" runat="server" Text=""  Width="30" />10. notify "inmate reception center" of incoming regional center client</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute10" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate10" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE11" runat="server" Text=""  Width="30" />11. refer inmate/ consumer to mental health</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute11" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate11" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
                               <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE12" runat="server" Text=""  Width="30" />12. attend court</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute12" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate12" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
	                           <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>   
                  </tr>
                  <tr style="height:5px">
                      <td>
                      </td>
                  </tr>
                  <tr>
                      <td>
                         <table class="table_inside">
                            <tr  class="tr_common">                               
                               <td class="td_label" ><asp:CheckBox ID="DUTIE13" runat="server" Text=""  Width="30" />13. Others</td>
                               <td class="td_unline" style="width:80px;" align="left">
	                               <asp:TextBox ID="DUTIEMinute13" runat="server" CssClass="inface" Style="width: 80px" ></asp:TextBox>  
	                           </td> 
	                           <td class="td_label" width="80px">&nbsp;&nbsp;Minutes</td>
	                           <td width="10px"></td>
	                           <td class="td_label" width="60px">Date:</td>
	                           <td class="td_unline" width="80">
                                <asp:TextBox ID="DUTIEDate13" runat="server" CssClass="inface" 
                                  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                               </td>
	                           <td style="width:10%"></td>
	                        </tr>
	                     </table>
	                  </td>
	              </tr>
	              <tr  style="height:20px" >
                     <td></td>
                  </tr> 
                  <tr>
                      <td>
                         <table class="table_inside">	                        
	                        <tr>
	                           <td valign="top" width="100px" class="td_label">Comments:</td>
	                           <td style="height: 80px" valign="top" height="80" width="auto">
                                   <asp:TextBox ID="comments2" TextMode="MultiLine" Wrap="true"
                                          runat="server" Width="98%" Height="80"></asp:TextBox>
                               </td>
                            </tr>
	                     </table>
	                  </td>   
                  </tr>
             </table>
             <br /> <br /> <br />
        </div>     
    </form>
</body>
</html>
