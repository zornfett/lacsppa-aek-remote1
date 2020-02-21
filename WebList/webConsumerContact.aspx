<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerContact.aspx.cs" Inherits="Virweb2.WebList.webConsumerContact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Client Contact</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.ConsumerCo.consumer_key.value.toString();
       var UserAct=document.ConsumerCo.UserAct.value.toString();         
      // winhref("PrintConsumerInfoECF.aspx?c_key="+consumer_key+"&flag=6&UserAct="+UserAct,"PrintConsumerInfo");       
    }
    
    function Refresh_Data(flag)
    {         
        alert("Update successful!");
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshContactData();                 
        }
        else
        {
            window.opener.RefreshContactData();  
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
    
    function RefreshMyField(DispField,Code)    
    {
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       var myHdnRefreshCode = document.getElementById(<%= "'" + hdnRefreshCode.ClientID + "'" %>);
       myHdnRefreshData.value = DispField; 
       myHdnRefreshCode.value = Code;             
       window.document.ConsumerInfo.submit(); 
       window.focus();   
    }
            
    function save_click()
    {
        NoConfirmExit();
        var str="";

        return true;
    }
    </script> 
</head>
<body  id="body"  runat="server" >  
    <form id="ConsumerCo" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align=center valign=bottom>
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">CONTACT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align=left valign=middle>
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Contact For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="save_click();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();" runat="server" /> 
			  <input type="button" id="btnHelp" value="Help" style="width:60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" runat="server" />
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align=center valign=top style="position:relative;WIDTH:100%; height:400px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_group" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_group" runat="server" CssClass="inface" MaxLength=5 tabindex="1"></asp:TextBox>
                </td>
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_relationship" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td width="245">
                    <asp:DropDownList ID="s_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="180" OnClick="DataChanged()" tabindex="2">
                    </asp:DropDownList>
                     <input type="button" id="btnAdd36" value="Add" Class="buttonbluestyle"  runat="server" 
                    onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Relationship&QueryField=RELATIONSHIP&CheckField=s_relationship')" tabindex="-1" />
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_name_last" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_name_last" runat="server" CssClass="inface" MaxLength=14 tabindex="1"></asp:TextBox>
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_language" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td width="245">
                    <asp:DropDownList ID="s_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="180" OnClick="DataChanged()" tabindex="2">
                    </asp:DropDownList>
                     <input type="button" id="btnAdd37" value="Add" Class="buttonbluestyle"  runat="server" 
                    onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Language&QueryField=LANG&CheckField=s_language')" tabindex="-1" />
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_name_first" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td width="245">
                 <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td class="td_unline" align="left" width="190" style="height: 20px">
                        <asp:TextBox ID="s_name_first" runat="server" CssClass="inface" Width="200" MaxLength=11 tabindex="1"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_name_mi" runat="server" CssClass="inface" Width="20" MaxLength=1 tabindex="1"></asp:TextBox>
                     </td>
                   </tr>
                 </table>    
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_disabled" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td width="245">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td width="80" style="height: 22px">
                                <asp:DropDownList ID="s_disabled" runat="server" CssClass="inface" Width="80" OnClick="DataChanged()" tabindex="2">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="60" class="td_label" style="height: 22px">
                                <b><asp:Label ID="l_s_retired" runat="server" ></asp:Label></b></td>
                            <td width="5" height="20">
                            <td width="80" style="height: 22px">
                                <asp:DropDownList ID="s_retired" runat="server" CssClass="inface" Width="80" OnClick="DataChanged()" tabindex="2">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan=3 style="height: 26px"></td>
                <td style="width: 200px; height: 26px;" align="right" width="200" class="td_label">
                    <b><asp:Label ID="l_s_deceased" runat="server" ></asp:Label></b></td>
                <td style="width: 5px; height: 26px;">
                </td>
                <td width="245" style="height: 26px">
                    <asp:DropDownList ID="s_deceased" runat="server" CssClass="inface" Width="80" OnClick="DataChanged()" tabindex="2">
                        <asp:ListItem Value=""></asp:ListItem>
                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                        <asp:ListItem Value="N">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="210" class="td_label" height="20">
                    <b><asp:Label ID="l_s_phone_1" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td width="245">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td align="center" width="10px">(</td>
                         <td class="td_unline" align="left" width="25px">
                            <asp:TextBox ID="s_phone_1_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_1_2);"></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="25px">
                            <asp:TextBox ID="s_phone_1_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_1_3);"></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_1_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>    
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_phone_2" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td width="245">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td align="center" width="10px">(</td>
                         <td class="td_unline" align="left" width="25px">
                            <asp:TextBox ID="s_phone_2_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_2_2);"></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="25px">
                            <asp:TextBox ID="s_phone_2_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="2"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_2_3);"></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_2_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="2"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>    
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="210" class="td_label" height="20">
                    <b><asp:Label ID="l_s_phone_3" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td width="245">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td align="center" width="10px">(</td>
                         <td class="td_unline" align="left" width="25px">
                            <asp:TextBox ID="s_phone_3_1" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_3_2);"></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="25px">
                            <asp:TextBox ID="s_phone_3_2" runat="server" CssClass="inface" MaxLength="3" TabIndex="1"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_3_3);"></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_3_3" runat="server" CssClass="inface" MaxLength="4" TabIndex="1"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>    
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_email" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_email" runat="server" CssClass="inface" MaxLength=40 tabindex="2"></asp:TextBox>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_line_1" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_address_line_1" runat="server" CssClass="inface" MaxLength=30 tabindex="1"></asp:TextBox>
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_work_address_line_1" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_work_address_line_1" runat="server" CssClass="inface" MaxLength=30 tabindex="2"></asp:TextBox>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_city" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td width="245">
                 <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td class="td_unline" align="left" width="200" style="height: 20px">
                       <asp:TextBox ID="s_address_city" runat="server" CssClass="inface" Width="200" MaxLength=15 tabindex="1"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_address_state" runat="server" CssClass="inface" Width="20" MaxLength=2 tabindex="1"> </asp:TextBox>
                     </td>
                   </tr>
                 </table> 
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_work_address_city" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td width="245">
                 <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td class="td_unline" align="left" width="200" style="height: 20px">
                        <asp:TextBox ID="s_work_address_city" runat="server" CssClass="inface" Width="200" MaxLength=15 tabindex="2"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_work_address_state" runat="server" CssClass="inface" Width="20" MaxLength=2 tabindex="2"></asp:TextBox>
                     </td>
                   </tr>
                 </table> 
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 200px" align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_zip" runat="server" ></asp:Label></b></td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 tabindex="1"></asp:TextBox>
                    <asp:DropDownList ID="s_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="100" OnClick="DataChanged()" tabindex="1">
                    </asp:DropDownList>
                    <input type="button" id="btnAdd38" value="Add" Class="buttonbluestyle"  runat="server" 
                    onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Zip/Mail Code&QueryField=ADDR CODE&CheckField=s_mail_code')"  tabindex="-1"/>
                </td>
                <td align="right" width="200" class="td_label" height="20">
                    <b><asp:Label ID="l_s_work_address_zip" runat="server" ></asp:Label></b></td>
                <td height="20" style="width: 5px">
                </td>
                <td class="td_unline" align="left" width="245">
                    <asp:TextBox ID="s_work_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 tabindex="2"></asp:TextBox>
                    <asp:DropDownList ID="s_work_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="100" OnClick="DataChanged()" tabindex="2">
                    </asp:DropDownList>
                    <input type="button" id="btnAdd39" value="Add" Class="buttonbluestyle"  runat="server" 
                    onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Zip/Mail Code&QueryField=ADDR CODE&CheckField=s_work_mail_code')" tabindex="-1" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
