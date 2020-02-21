<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConsumerRefer.aspx.cs" Inherits="Virweb2.WebList.WebConsumerRefer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base target="_self" /> 
    <title>:::Referrals:::...</title>
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

        function FunctiontoCallSaveData() {
            document.getElementById("<%=hdtoSaveData.ClientID %>").value = "PageClosed";
            document.ConsumerInfo.submit();
        }

        function print_click() {
            NoConfirmExit();
            var flag = "5";
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
         <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />         
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
                           <b><asp:Label ID="l_c_ref_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_ref_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" tabindex="1"></asp:TextBox>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_name_last" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_ref_name_last" runat="server" CssClass="inface" MaxLength=14 tabindex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_screener" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_ref_screener" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                  Width="210px" OnClick="DataChanged()" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd30" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Screener&QueryField=SCREENER&CheckField=c_ref_screener')" tabindex="-1"/> 
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_name_first" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_ref_name_first" runat="server" CssClass="inface" MaxLength=11 tabindex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_source" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_ref_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                 Width="210px" OnClick="DataChanged()" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd31" value="Add" Class="buttonbluestyle"  runat="server"  style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Referral Source&QueryField=REF SOURCE CODE&CheckField=c_ref_source')"  tabindex="-1"/> 
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_phone_1" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_ref_phone_1" runat="server" CssClass="inface" MaxLength=12 tabindex="2"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_ref_relationship" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_ref_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                 Width="210px" OnClick="DataChanged()" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd32" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Relationship&QueryField=RELATIONSHIP&CheckField=c_ref_relationship')"  tabindex="-1"/> 
                      </td>                    
                      <td></td>
                      <td  colspan="3" >
                      </td>                      
                  </tr>
                  <tr style="height:5px">
                     <td colspan="7"></td>
                  </tr>
                   <tr>
                      <td colspan="7"  class="td_thicksepline"></td>
                  </tr>
                  <tr style="height:5px">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_ref_2_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" tabindex="3"></asp:TextBox>
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_name_last" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_ref_2_name_last" runat="server" CssClass="inface" MaxLength=14 tabindex="4"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_screener" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                          <asp:DropDownList ID="c_ref_2_screener" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                   Width="210px" OnClick="DataChanged()" tabindex="3">
                          </asp:DropDownList>
                          <input type="button" id="btnAdd33" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Screener&QueryField=SCREENER&CheckField=c_ref_2_screener')" tabindex="-1"/> 
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_name_first" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_ref_2_name_first" runat="server" CssClass="inface" MaxLength=11 tabindex="4"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_source" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_ref_2_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                              Width="210px" OnClick="DataChanged()" tabindex="3">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd34" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Other Referral Source&QueryField=REF SOURCE CODE&CheckField=c_ref_2_source')" tabindex="-1"/> 
                      </td>                    
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_phone_1" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_ref_2_phone_1" runat="server" CssClass="inface" MaxLength=12 tabindex="4"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_ref_2_relationship" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_ref_2_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                               Width="210px" OnClick="DataChanged()" tabindex="3">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd35" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Relationship&QueryField=RELATIONSHIP&CheckField=c_ref_2_relationship')" tabindex="-1" /> 
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
                           <b><asp:Label ID="l_c_ref_2_agency_line_1" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  colspan="5">
                           <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" style="width:100%">
                               <tr class="tr_common">
                                    <td class="td_unline" align="left" width="325px" >
                                       <asp:TextBox ID="c_ref_2_agency_line_1" runat="server" CssClass="inface" MaxLength=30 tabindex="5"></asp:TextBox>
                                    </td>
                                    <td style="width:5px"></td>
                                    <td class="td_unline" align="left" width="325px" >
                                       <asp:TextBox ID="c_ref_2_agency_line_2" runat="server" CssClass="inface" MaxLength=30 tabindex="5"></asp:TextBox>
                                    </td>
                                    <td></td>
                               </tr>
                           </table>
                      </td>                    
                                        
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
             </table>
        </div>
    </form>
</body>
</html>
