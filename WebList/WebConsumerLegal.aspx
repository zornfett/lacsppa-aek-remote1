<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConsumerLegal.aspx.cs" Inherits="Virweb2.WebList.WebConsumerLegal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <base target="_self" /> 
    <title>:::Legal/Financial:::...</title>
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
            var flag = "2";
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
                            onclick="btnEdit_Click" ></asp:Button>
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
                           <b><asp:Label ID="l_c_confidentiality" runat="server" Text="Confidentiality:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  width="660px" colspan="5" >
                         <asp:DropDownList ID="c_confidentiality" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                               Width="600px" OnClick="DataChanged()" tabindex="1">
                         </asp:DropDownList>
                         <input type="button" id="btnAdd13" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                 onclick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Confidentiality&QueryField=CONFIDENTIALITY&CheckField=c_confidentiality')"  tabindex="-1"/>
                     </td>                    
                </tr>
                <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_legal_status_1" runat="server" Text="Legal Status 1:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                           <asp:DropDownList ID="c_legal_status_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="210px" OnClick="DataChanged();" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd14" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=LEGAL STATUS&QueryField=LEGAL STATUS&CheckField=c_legal_status_1')"  tabindex="-1"/>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                            <b><asp:Label ID="l_c_legal_status_date_1" runat="server" Text="Legal Staus Date 1:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px">
                          <asp:TextBox ID="c_legal_status_date_1"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                 CssClass="inface" tabindex="1"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_legal_status_2" runat="server" Text="Legal Status 2:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                           <asp:DropDownList ID="c_legal_status_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="210px" OnClick="DataChanged()" tabindex="1">
                           </asp:DropDownList>
                           <input type="button" id="btnAdd15" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=LEGAL STATUS&QueryField=LEGAL STATUS&CheckField=c_legal_status_2')"  tabindex="-1"/>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_legal_status_date_2" runat="server" Text="Legal Staus Date 2:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                          <asp:TextBox ID="c_legal_status_date_2"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface" tabindex="1"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_conservator" runat="server" Text="Conservator:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="660px" align="left" colspan="5" class="td_unline" >
                          <asp:TextBox ID="c_conservator" runat="server" CssClass="inface" MaxLength=24 tabindex="1"></asp:TextBox>
                      </td>
                     
                  </tr>                 
                  <tr style="height:5px">
                      <td colspan="7"></td>
                  </tr>
                  <tr>
                      <td colspan="7"  class="td_thicksepline"></td>
                  </tr>
                  <tr>
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_ssn" runat="server" Text="Social Security Number:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td class="td_unline" align="left"  width="270px" >
                           <asp:TextBox ID="c_ssn" runat="server" CssClass="inface" MaxLength=14 tabindex="2"></asp:TextBox>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_generic_agency_1" runat="server" Text="Generic Agency 1:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_generic_agency_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Width="210px" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                                 <input type="button" id="btnAdd16" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Generic Agency 1&QueryField=G&CheckField=c_generic_agency_1')"  tabindex="-1"/>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_ssa" runat="server" Text="SSA Number/Suffix:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                           <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0"  style="width:100%">
                                 <tr class="tr_common">
                                      <td class="td_unline" align="left" width="200px" >
                                           <asp:TextBox ID="c_ssa" runat="server" CssClass="inface"  MaxLength=14 tabindex="2"></asp:TextBox>
                                      </td>
                                      <td></td>
                                      <td class="td_unline" align="left" width="50px" >
                                          <asp:TextBox ID="c_ssa_suffix" runat="server" CssClass="inface"  MaxLength=3 tabindex="2"></asp:TextBox>
                                      </td>
                                 </tr>
                           </table>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                            <b><asp:Label ID="l_c_residence_number" runat="server" Text="Vendor Number:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:dropdownlist id="c_residence_number" runat="server" DataValueField="r_resource_id" DataTextField="r_resource_name" 
                                   Width="210px" OnClick="DataChanged()" tabindex="3">
				                </asp:dropdownlist>	
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_inst_deeming" runat="server" Text="Institutional Deeming:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_inst_deeming" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="210px" OnClick="DataChanged()" tabindex="2">
                           </asp:DropDownList>
                          <input type="button" id="btnAdd17" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Institutional Deeming&QueryField=HLTH DIST&CheckField=c_inst_deeming')" tabindex="-1" />
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_generic_agency_2" runat="server" Text="Generic Agency 2:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_generic_agency_2" runat="server" DataValueField="TrustID" DataTextField="TrustName" 
                                    Width="210px" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                 <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >                          
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_epsdt" runat="server" Text="EPSDT:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td  width="270px" >
                           <asp:DropDownList ID="c_epsdt" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                 Width="210px" OnClick="DataChanged()" tabindex="3">
                                </asp:DropDownList>
                            <input type="button" id="btnAdd18" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=EPSDT&QueryField=EPSDT/NF&CheckField=c_epsdt')" tabindex="-1" />
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_medi_cal" runat="server" Text="MediCal Number:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  class="td_unline" align="left" width="270px" > 
                          <asp:TextBox ID="c_medi_cal" runat="server" CssClass="inface" MaxLength=17 tabindex="2"></asp:TextBox>                        
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_nf" runat="server" Text="NF:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left" width="270px" >
                           <asp:TextBox ID="c_nf" runat="server" CssClass="inface" MaxLength=1 tabindex="3"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_medicaid_waiver" runat="server" Text="MediCaid Waiver:"></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  width="270px" > 
                          <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0"  style="width:100%">
                               <tr class="tr_common">
                                      <td  width="70px" >
                                           <asp:DropDownList ID="c_medicaid_waiver" runat="server"  OnClick="DataChanged()" tabindex="2">
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                <asp:ListItem Value="N">No</asp:ListItem>
                                            </asp:DropDownList>
                                      </td>                                      
                                      <td style="width:100px;" align="right" class="td_label" >
                                           <b><asp:Label ID="l_c_waiver_excludability" runat="server" Text="Excludability:" ></asp:Label></b>
                                      </td>
                                      <td width="5px"></td>
                                      <td class="td_unline" align="left" width="90px" >
                                          <asp:TextBox ID="c_waiver_excludability" runat="server" CssClass="inface" MaxLength=1 tabindex="2"></asp:TextBox>
                                      </td>
                               </tr>
                          </table>                            
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_ihss" runat="server" Text="IHSS:"></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td width="270px" >
                           <asp:DropDownList ID="c_ihss" runat="server"  Width="210px" OnClick="DataChanged()" tabindex="3">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                           </asp:DropDownList>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_payee_indicator" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  class="td_unline" align="left" width="660px" align="left" colspan="5"> 
                          <asp:TextBox ID="c_payee_indicator" runat="server" CssClass="inface" MaxLength=50 tabindex="2"></asp:TextBox>                        
                      </td>                    
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:300px;" align="left" class="td_label" colspan="3" >
                          <b>Family Cost Participation</b>
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
                          <b><asp:Label ID="l_c_family_income" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  class="td_unline" align="left" width="660px" align="left" colspan="5"> 
                          <asp:TextBox ID="c_family_income" runat="server" CssClass="inface" MaxLength=10 tabindex="4"></asp:TextBox>                      
                      </td>                    
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_minors_in_home" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  class="td_unline" align="left" width="660px" align="left" colspan="5"> 
                           <asp:TextBox ID="c_minors_in_home" runat="server" CssClass="inface" MaxLength=3 tabindex="4"></asp:TextBox>                 
                      </td>                    
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                         <b><asp:Label ID="l_c_family_percentage" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td  class="td_unline" align="left" width="660px" align="left" colspan="5"> 
                           <asp:TextBox ID="c_family_percentage" runat="server" CssClass="inface" MaxLength=3 tabindex="4"></asp:TextBox>            
                      </td>                    
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td  colspan="3" align="left" class="td_label" >
                         <asp:CheckBox ID="c_income_check" runat="server" Text="Failure to Comply:" OnClick="DataChanged()" tabindex="4"/>
                     </td>
                     <td ></td>
                     <td  colspan="3"> 
                                     
                      </td>                    
                  </tr>                 
                  <tr style="height:5px">
                      <td colspan="7"></td>
                  </tr>
                  <tr>
                      <td colspan="7"  class="td_thicksepline"></td>
                  </tr>
                  <tr style="height:10px;">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                      <td colspan="7" align="center"><asp:label id="TitlePosUfs" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">AUTHORIZED PURCHASE OF SERVICE</asp:label></td>
                  </tr>
                  <tr class="tr_common" >
                      <td colspan="7" align="center">
                          <asp:datagrid id="dg_posufs" runat="server" PageSize="10" AllowPaging="True" CssClass="grd_body"
					            AutoGenerateColumns="False" AllowSorting="True">
					         <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>
					         <ItemStyle CssClass="grd_item"></ItemStyle>
					         <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					         <FooterStyle CssClass="grd_fsitem"></FooterStyle>
				 	         <Columns>
						        <asp:BoundColumn DataField="rap_auth" HeaderText="Auth#" SortExpression="rap_auth">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="rap_vid_name" HeaderText="Vendor Name" SortExpression="rap_vendor_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="rap_vid" HeaderText="Vendor#" SortExpression="rap_vid">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="rap_svc_code" HeaderText="Code" SortExpression="rap_svc_code">
                                     <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" SortExpression="rap_start_dt">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
					   	       <asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" SortExpression="rap_term_dt">
                                   <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                              </asp:BoundColumn>						
					        </Columns>
					        <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				          </asp:datagrid>
                      </td>
                  </tr>
             </table>
        </div>
    </form>
</body>
</html>
