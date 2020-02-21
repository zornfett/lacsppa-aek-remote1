<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConsumerComments.aspx.cs" Inherits="Virweb2.WebList.WebConsumerComments" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base target="_self" /> 
    <title>:::Dates/Comments:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">   
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script language="javascript">
    <!--
        function Refresh_Data() {
            alert("Update successful!");
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshMyData();
            }
            else {
                window.opener.RefreshMyData();
            }
            window.focus();
        }
        function print_click() {
            NoConfirmExit();
            var flag = "3";
            var consumer_key = document.form1.consumer_key.value.toString();
            var UserAct = document.form1.UserAct.value.toString();
            winhref("PrintConsumerInfo.aspx?c_key=" + consumer_key + "&flag=" + flag + "&UserAct=" + UserAct, "PrintConsumerInfo");
        }
    //-->
    </script>
</head>
<body  id="body"  runat="server" > 
    <script type="text/JavaScript" src="../js/calendar.js"></script> 
    <form id="form1" runat="server">
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
         <input id="NoConfirm" type="hidden" value="0" />
         <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />          
         <div align="center" style="width: 100%;  height:40px">
            <table class="table_common" border="0" cellpadding="0" style="border-collapse: collapse" >                
                <tr style="height: 30px" valign="top">
                    <td align="left" valign="middle" >
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CONSUMER INFO</asp:Label>
                    </td>
                    <td align="left" valign="middle" width="150px">                        
                        <asp:Button ID="btnEdit" runat="server" Text="Save"  Style="width: 60px"
                            CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" 
                            onclick="btnEdit_Click"  ></asp:Button>
                        <input type="button" id="btnPrint" name="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();" runat="server" />
                    </td>
                </tr>
                <tr valign="top">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" style="position:relative;WIDTH:100%; height:590px; overflow: auto ">
             <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" style="width:90%">
                 <tr class="tr_common">
                      <td colspan="7"></td>
                 </tr>
                <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_case_level" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_case_level" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="210px" OnClick="DataChanged()" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd19" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Frequency of Contact&QueryField=LEVL&CheckField=c_case_level')"  tabindex="-1"/>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_base_month" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                          <asp:DropDownList ID="c_base_month" runat="server" Width="210px" OnClick="DataChanged()" tabindex="1">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="1">January</asp:ListItem>
                                    <asp:ListItem Value="2">February</asp:ListItem>
                                    <asp:ListItem Value="3">March</asp:ListItem>
                                    <asp:ListItem Value="4">April</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">June</asp:ListItem>
                                    <asp:ListItem Value="7">July</asp:ListItem>
                                    <asp:ListItem Value="8">August</asp:ListItem>
                                    <asp:ListItem Value="9">September</asp:ListItem>
                                    <asp:ListItem Value="10">October</asp:ListItem>
                                    <asp:ListItem Value="11">November</asp:ListItem>
                                    <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_report_agency" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                         <asp:DropDownList ID="c_report_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                Width="210px" OnClick="DataChanged()" tabindex="1">
                         </asp:DropDownList>
                         <input type="button" id="btnAdd20" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Report Agency&QueryField=RPT AGENCY&CheckField=c_report_agency')" tabindex="-1" />
                      </td>
                      <td></td>
                      <td  colspan="3" >
                      </td>                     
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_cm_agency" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                         <asp:DropDownList ID="c_cm_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="210px" OnClick="DataChanged()" tabindex="1">
                         </asp:DropDownList>
                         <input type="button" id="btnAdd21" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Case Manager Agency&QueryField=REGC&CheckField=c_cm_agency')" tabindex="-1"/>
                      </td>
                      <td></td>
                      <td  colspan="3" align="center" ><font color="#3366ff"><b>REPORTS</b></font></td>                     
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_cm_type" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                           <asp:DropDownList ID="c_cm_type" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                 Width="210px" OnClick="DataChanged();" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd22" value="Add" Class="buttonbluestyle"  runat="server"  style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Case Manager Type&QueryField=CMTY&CheckField=c_cm_type')"  tabindex="-1"/>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_review_pcp_ifsp_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_review_pcp_ifsp_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td  colspan="3" >
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_review_cder_esr_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_review_cder_esr_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td  colspan="3"  align="center"><font color="#3366ff"><b>INTAKE/ELIGIBILITY</b></font>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_review_quarterly1_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_review_quarterly1_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_initial_inquiry_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_initial_inquiry_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1" ></asp:TextBox>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_review_sar_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_review_sar_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_initial_interview_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_initial_interview_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1" ></asp:TextBox>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_review_quarterly3_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_review_quarterly3_date" runat="server" CssClass="inface"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" TabIndex="2" ></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_case_assign_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_case_assign_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1"></asp:TextBox>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_review_mw_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_review_mw_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_eligibility_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_eligibility_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="1" ></asp:TextBox>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_date_consent" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_date_consent"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td  colspan="3" >
                      </td>                                
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_date_waiver" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_date_waiver"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td  colspan="3" ><font color="#3366ff"><b>MEDICAL</b></font>
                      </td>                                
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_qol" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_qol" runat="server" CssClass="inface" MaxLength=15  TabIndex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_medical_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_medical_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" TabIndex="3"></asp:TextBox>
                      </td>
                      <td></td>
                      <td  colspan="3" ></td>    
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_psychological_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_psychological_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" TabIndex="3"></asp:TextBox>
                      </td>
                      <td></td>
                      <td  colspan="3" ></td>    
                  </tr>
                  <tr style="height:5px;">
                      <td colspan="7"></td>
                  </tr>
                  <tr>
                      <td colspan="7" class="td_thicksepline"></td>
                  </tr>
                  <tr style="height:5px;">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_comment_1" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="390px" colspan="3">
                          <asp:TextBox ID="c_comment_1" runat="server" CssClass="inface" MaxLength=60 TabIndex="4"></asp:TextBox>
                      </td>
                      <td  colspan="2" ></td>    
                  </tr>
                  <tr class="tr_common">
                      <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_comment_2" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="390px" colspan="3">
                          <asp:TextBox ID="c_comment_2" runat="server" CssClass="inface" MaxLength=60 TabIndex="4"></asp:TextBox>
                      </td>
                      <td  colspan="2" ></td>    
                  </tr>
                  <tr class="tr_common">
                      <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_comment_3" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="390px" colspan="3">
                          <asp:TextBox ID="c_comment_3" runat="server" CssClass="inface" MaxLength=60 TabIndex="4"></asp:TextBox>
                      </td>
                      <td  colspan="2" ></td>    
                  </tr>
                  <tr class="tr_common">
                      <td colspan="7"></td>
                  </tr>
             </table>
         </div>
    </form>
</body>
</html>
