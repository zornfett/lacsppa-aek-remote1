<%@ Page Language="C#" Inherits="Virweb2.FormList.FormISP" Codebehind="FormISP.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>Individual Service Plan</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>    
             
    <script type="text/JavaScript">
    <!--
      function FunctiontoCallSaveData()
      {
         document.getElementById("<%=hdtoSaveData.ClientID %>").value="PageClosed";
         document.FormISPList.submit();
      }
      
      function Refresh_Data(flag)
      {         
           alert("Update successful!");
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.RefreshMyData();                 
           }
           else
           {
               window.opener.RefreshMyData();  
           }
           if (flag==1)
           {
               window.close();
           }
           else
           {
              window.focus();
           }
      }
      
      function save_click()
      {
         NoConfirmExit();
        
		 if (IsDate(document.getElementById("BeginsDate").value, true) != "true") 
		 {
		    alert("Please input Begins date!");
            document.FormISPList.BeginsDate.focus();
            return false;          
         }
		     
         if (IsDate(document.getElementById("TargetDate").value, true) != "true") 
		 {
		    alert("Please input Target date!");
            document.FormISPList.TargetDate.focus();
            return false;          
         }
              
         return true;
      }
      
      function isOver(sText,len)
      {
          var intlen=sText.value.length;
          if (intlen>len)
          {
              alert("The content length must less than or equal to " +len);
              sText.focus();
          }
      }

    //-->
    </script>
</head>
<body  runat="server" id="body" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="FormISPList" runat="server">
        <input type="submit" value="test" style="display:none;" />
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" runat="server"  value=""/>   
        <input type="hidden" name="CreateDate" id="CreateDate" value="" runat="server" />
        <div style="width: 100%; height: 80px">
            <center>
                <table border="0" cellpadding="0" style="border-collapse: collapse; width: 98%; height: 100%">
                    <tr valign="top" style="height: 30px">
                        <td align="center" colspan="2">
                            <asp:Label ID="title_lable" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">Individual Service Plan</asp:Label>
                        </td>
                    </tr>
                    <tr  valign="top">     
                         <td align="left" valign="top" width="470px">                            
                        </td>                   
                        <td align="left" valign="middle" width="330px">
                            <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                                CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click" ></asp:Button>
                            <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                                CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnAdd_Click"></asp:Button>
                            <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle"
                                Visible="false"></asp:Button>
                            <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"  runat="server" />
                        </td>
                    </tr>
                    <tr valign="top" style="height: 2px;">
                        <td bgcolor="#990066"  colspan="2">
                        </td>
                    </tr>
                </table>
            </center>
        </div>
        <div style="position: relative; width: 100%; height: 600px; overflow: auto;">
             <center>
             <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 90%">
                    <tr valign="top">
                       <td>
                           <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                   <tr class="tr_common">
                                       <td>Semester:</td>
                                       <td style="width: 120px;">
							                <asp:dropdownlist id="Semester1" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="Fall">Fall</asp:ListItem>
								                <asp:ListItem Value="Spring">Spring</asp:ListItem>
							                </asp:dropdownlist>
						               </td>
                                       <td style="width:2px"></td>
                                       <td  style="width: 120px;">
							                <asp:dropdownlist id="Semester2" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="2010">2010</asp:ListItem>
								                <asp:ListItem Value="2011">2011</asp:ListItem>
								                <asp:ListItem Value="2012">2012</asp:ListItem>
								                <asp:ListItem Value="2013">2013</asp:ListItem>
								                <asp:ListItem Value="2014">2014</asp:ListItem>
							                </asp:dropdownlist>
						               </td>
						               <td style="width:40px"></td>
						               <td>Begins:</td>
                                        <td class="td_unline" align="left" style="width: 120px;">
                                             <asp:TextBox ID="BeginsDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox>
                                        </td>
                                        <td style="width:40px"></td>
                                        <td>Target Date:</td>
                                        <td class="td_unline" align="left" style="width: 120px;">
                                             <asp:TextBox ID="TargetDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox>
                                        </td>
                                        <td style="width:5%"></td>
                                   </tr>
                              </table>
                       </td>                       
                    </tr>
                    <tr valign="top">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                       <td>Client Name:</td>
                                       <td class="td_unline" align="left" style="width: 300px;"><asp:Label ID="UCIName" runat="server" CssClass="infaceText"></asp:Label></td>
                                       <td style="width:80px"></td>
                                       <td>UCI:</td>
                                       <td class="td_unline" align="left" style="width: 120px;"><asp:Label ID="UCI" runat="server" CssClass="infaceText"></asp:Label></td>
                                       <td style="width:20%"></td>
                                </tr>    
                                <tr class="tr_common">
                                       <td>Case Manager:</td>
                                       <td class="td_unline" align="left" style="width: 300px;"><asp:Label ID="CaseManager" runat="server" CssClass="infaceText"></asp:Label></td>
                                       <td style="width:80px"></td>
                                       <td></td>
                                       <td></td>
                                       <td style="width:20%"></td>
                                </tr>     
                                 <tr style="height:10px">
                                    <td colspan="6"></td>
                                 </tr>
                                <tr>
                                    <td colspan="6" class="td_thicksepline"></td>
                                 </tr>  
                                  <tr style="height:10px">
                                    <td colspan="6"></td>
                                 </tr>
                            </table>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td>Target Area 1:</td>
                                    <td  style="width: 120px;">
							                <asp:dropdownlist id="TargetArea1" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="N/A">N/A</asp:ListItem>
								                <asp:ListItem Value="Accomplished">Accomplished</asp:ListItem>
								                <asp:ListItem Value="Needs Work">Needs Work</asp:ListItem>
								                <asp:ListItem Value="Not Accomplished">Not Accomplished</asp:ListItem>
							                </asp:dropdownlist>
						            </td>
						            <td style="width:73%"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="TargetAreaText1" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox>                                                 

                                                  </td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                 <tr class="tr_common">
                                    <td align="left">Objective 1:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Objective1" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Rationale 1:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Rationale1" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Comments 1:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Comments1" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                <tr>
                                    <td colspan="3" class="td_thicksepline"></td>
                                 </tr>  
                                  <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td>Target Area 2:</td>
                                    <td  style="width: 120px;">
							                <asp:dropdownlist id="TargetArea2" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="N/A">N/A</asp:ListItem>
								                <asp:ListItem Value="Accomplished">Accomplished</asp:ListItem>
								                <asp:ListItem Value="Needs Work">Needs Work</asp:ListItem>
								                <asp:ListItem Value="Not Accomplished">Not Accomplished</asp:ListItem>
							                </asp:dropdownlist>
						            </td>
						            <td style="width:73%"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="TargetAreaText2" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                 <tr class="tr_common">
                                    <td align="left">Objective 2:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Objective2" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Rationale 2:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Rationale2" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Comments 2:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Comments2" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                <tr>
                                    <td colspan="3" class="td_thicksepline"></td>
                                 </tr>  
                                  <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td>Target Area 3:</td>
                                    <td  style="width: 120px;">
							                <asp:dropdownlist id="TargetArea3" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="N/A">N/A</asp:ListItem>
								                <asp:ListItem Value="Accomplished">Accomplished</asp:ListItem>
								                <asp:ListItem Value="Needs Work">Needs Work</asp:ListItem>
								                <asp:ListItem Value="Not Accomplished">Not Accomplished</asp:ListItem>
							                </asp:dropdownlist>
						            </td>
						            <td style="width:73%"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="TargetAreaText3" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                 <tr class="tr_common">
                                    <td align="left">Objective 3:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Objective3" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Rationale 3:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Rationale3" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Comments 3:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Comments3" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                <tr>
                                    <td colspan="3" class="td_thicksepline"></td>
                                 </tr>  
                                  <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td>Target Area 4:</td>
                                    <td  style="width: 120px;">
							                <asp:dropdownlist id="TargetArea4" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="N/A">N/A</asp:ListItem>
								                <asp:ListItem Value="Accomplished">Accomplished</asp:ListItem>
								                <asp:ListItem Value="Needs Work">Needs Work</asp:ListItem>
								                <asp:ListItem Value="Not Accomplished">Not Accomplished</asp:ListItem>
							                </asp:dropdownlist>
						            </td>
						            <td style="width:73%"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="TargetAreaText4" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                 <tr class="tr_common">
                                    <td align="left">Objective 4:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Objective4" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Rationale 4:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Rationale4" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Comments 4:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Comments4" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                <tr>
                                    <td colspan="3" class="td_thicksepline"></td>
                                 </tr>  
                                  <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td>Target Area 5:</td>
                                    <td  style="width: 120px;">
							                <asp:dropdownlist id="TargetArea5" runat="server" CssClass="inface" Width="120px">								               
								                <asp:ListItem Value="N/A">N/A</asp:ListItem>
								                <asp:ListItem Value="Accomplished">Accomplished</asp:ListItem>
								                <asp:ListItem Value="Needs Work">Needs Work</asp:ListItem>
								                <asp:ListItem Value="Not Accomplished">Not Accomplished</asp:ListItem>
							                </asp:dropdownlist>
						            </td>
						            <td style="width:73%"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="TargetAreaText5" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                 <tr class="tr_common">
                                    <td align="left">Objective 5:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Objective5" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Rationale 5:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Rationale5" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Comments 5:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Comments5" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                <tr>
                                    <td colspan="3" class="td_thicksepline"></td>
                                 </tr>  
                                  <tr style="height:5px">
                                    <td colspan="3"></td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td align="left">Health Care:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="HealthCare" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td align="left">Barriers Include:</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="Barriers" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px"></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                 <td align="left">Support Skill:(#4) and (#5)</td>
                                              </tr>
                                         </table>                             
                                    </td>      
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td  style="width:20px"></td>
                                                  <td><asp:textbox id="SupportSkill" textmode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server"  Width="99%"  Height="100px" ></asp:textbox></td>                                                 
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">      
                                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                              <tr class="tr_common">
                                                  <td>We&nbsp;&nbsp;
                                                       <asp:dropdownlist id="CanFlag" runat="server" CssClass="inface" Width="80px">								               
								                          <asp:ListItem Value="Can">Can</asp:ListItem>
								                            <asp:ListItem Value="Cannot">Cannot</asp:ListItem>
							                            </asp:dropdownlist>
							                            &nbsp;&nbsp;continue to provide appropriate services for this client.
							                       </td>    
                                              </tr>
                                         </table>                             
                                    </td>                                    
                                </tr>
                            </table>    
                        </td>
                    </tr>                        
             </table>
             </center>
        </div>            
    </form>
</body>
</html>
