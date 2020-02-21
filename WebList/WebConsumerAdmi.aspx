<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebConsumerAdmi.aspx.cs" Inherits="Virweb2.WebList.WebConsumerAdmi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base target="_self" /> 
    <title>:::Administration:::...</title>
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
            var flag = "4";
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
                           <b><asp:Label ID="l_c_unit_area" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_unit_area" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   Width="210px" OnClick="DataChanged()">
                          </asp:DropDownList>
                          <input type="button" id="btnAdd23" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Area/Group&QueryField=AREA&CheckField=c_unit_area')" tabindex="-1" />
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                            <b><asp:Label ID="l_c_mis" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                           <asp:TextBox ID="c_mis" runat="server" CssClass="inface" MaxLength=8></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_case_assign_manager" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_case_assign_manager" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                  Width="210px" OnClick="DataChanged()">
                          </asp:DropDownList>
                      </td>
                      <td></td>
                      <td  colspan="3">
                      </td>                     
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
                           <b><asp:Label ID="l_c_status" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   Width="210px" OnClick="DataChanged()">
                          </asp:DropDownList>
                          <input type="button" id="btnAdd24" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Current Status&QueryField=STATUS&CheckField=c_status')"  tabindex="-1"/>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                             <b><asp:Label ID="l_c_status_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                           <asp:TextBox ID="c_status_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                            <b><asp:Label ID="l_c_previous_status" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                         <asp:DropDownList ID="c_previous_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Width="210px" OnClick="DataChanged()">
                         </asp:DropDownList>
                         <input type="button" id="btnAdd25" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Previous Status&QueryField=STATUS&CheckField=c_previous_status')"  tabindex="-1"/>
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                             <b><asp:Label ID="l_c_previous_status_date" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                           <asp:TextBox ID="c_previous_status_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                    CssClass="inface"></asp:TextBox>
                      </td>
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
                            <b><asp:Label ID="l_c_offsite_location" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                         <asp:DropDownList ID="c_offsite_location" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                             Width="210px" OnClick="DataChanged()">
                         </asp:DropDownList>
                         <input type="button" id="btnAdd26" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_offsite_location')" tabindex="-1" />
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                            <b><asp:Label ID="l_c_box_number" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                           <asp:TextBox ID="c_box_number" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_chart_2" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_chart_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                 Width="210px" OnClick="DataChanged()">
                          </asp:DropDownList>
                          <input type="button" id="btnAdd27" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_chart_2')" tabindex="-1" />
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_box_2" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                           <asp:TextBox ID="c_box_2" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_chart_3" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_chart_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                               Width="210px" OnClick="DataChanged()">
                          </asp:DropDownList>
                          <input type="button" id="btnAdd28" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_chart_3')" tabindex="-1" />
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_box_3" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                          <asp:TextBox ID="c_box_3" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                      </td>
                  </tr>
                  <tr class="tr_common">
                     <td colspan="7"></td>
                  </tr>
                  <tr class="tr_common">
                     <td style="width:120px;" align="right" class="td_label" >
                          <b><asp:Label ID="l_c_chart_4" runat="server" ></asp:Label></b>
                     </td>
                     <td width="5px"></td>
                     <td   width="270px" >
                          <asp:DropDownList ID="c_chart_4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                               Width="210px" OnClick="DataChanged()">
                          </asp:DropDownList>
                          <input type="button" id="btnAdd29" value="Add" Class="buttonbluestyle"  runat="server" style="height:20px;"
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Chart Storage Location&QueryField=OFF SITE LOCATION&CheckField=c_chart_4')"  tabindex="-1"/> 
                      </td>
                      <td></td>
                      <td style="width:120px;" align="right" class="td_label" >
                           <b><asp:Label ID="l_c_box_4" runat="server" ></asp:Label></b>
                      </td>
                      <td width="5px"></td>
                      <td class="td_unline" align="left"  width="270px" >
                          <asp:TextBox ID="c_box_4" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
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
