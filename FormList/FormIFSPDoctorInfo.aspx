<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPDoctorInfo.aspx.cs" Inherits="Virweb2.FormList.FormIFSPDoctorInfo" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Medical Doctors Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript">
    function Refresh_Data(flag) {
        var opener = window.dialogArguments;
        if (isIE()) {
            opener.RefreshDoctorList();
        }
        else {
            window.opener.RefreshDoctorList();
        }
        if (flag == 1) {
            window.close();
        }
        else {
            window.focus();
        }
    }

    function save_click() {
        if (!isMaxLength(document.getElementById("s_comment_1"), 250)) {
            document.getElementById("s_comment_1").focus();
            return false;
        }

        NoConfirmExit();
        return true;
    }
    </script> 
</head>
<body  id="body"  runat="server" >  
    <form id="MedicalDT" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="entry_key" id="entry_key" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="s_number" id="s_number" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">MEDICAL DOCTOR INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Contact For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="save_click();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnHelp" value="Help" Visible="False" style="width:60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" runat="server" />
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:550px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_group" runat="server" Text="Group:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="120">
                    <asp:Label ID="s_group" runat="server" CssClass="infaceText"></asp:Label>
                </td>
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_relationship" runat="server" Text="Relationship:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="s_relationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text" tabindex="1"
                        Height="20" Width="180" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr class="tr_common">
                <td colspan="9" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_name_last" runat="server" Text="Name:" ></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td colspan="4" height="20" style="height: 20px">
                    <table cellspacing="0" cellpadding="0" border="0">
                    <tr>
                      <td class="td_unline" align="left" width="120">
                          <asp:TextBox ID="s_name_first" runat="server" CssClass="inface" MaxLength="20" tabindex="1"></asp:TextBox>
                      </td>
                      <td width="5" style="height: 20px"></td> 
                      <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_name_mi" runat="server" CssClass="inface" Width="20" MaxLength="1" tabindex="1"></asp:TextBox>
                      </td>
                      <td width="5" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="120" style="height: 20px">
                        <asp:TextBox ID="s_name_last" runat="server" CssClass="inface" MaxLength="20" tabindex="1"></asp:TextBox>
                     </td>
                    </tr>
                    </table>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                </td>
                <td width="5" height="20">
                </td>
                <td width="195">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="9" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" align="left" class="td_label" height="20">
                    <b>No Longer A Provider</b><asp:Checkbox ID="s_previousprovider" runat="server" Text="" tabindex="1"></asp:Checkbox>
                </td>
                <td colspan="6"></td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
                </td>
            </tr>
            <tr>
                <td colspan="9" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
                </td>
            </tr>
        </table>
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_phone_1" runat="server" Text="Primary Phone:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="340">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td align="center" width="10px">(</td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_1_1" runat="server" CssClass="inface" MaxLength="3" tabindex="1"
                            onKeyup="autotab(this, document.MedicalDT.s_phone_1_2);" ></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_1_2" runat="server" CssClass="inface" MaxLength="3" tabindex="1"
                            onKeyup="autotab(this, document.MedicalDT.s_phone_1_3);" ></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="40px">
                            <asp:TextBox ID="s_phone_1_3" runat="server" CssClass="inface" MaxLength="4" tabindex="1"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>    
                </td>
                <td align="right" width="100" class="td_label" height="20">
                    (optional)
                </td>
                <td width="5" height="20">
                </td>
                <td width="300" height="20">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                          <td style="width: 120px" align="right" width="120" class="td_label">
                                <asp:DropDownList ID="s_phone_3_label" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Height="20" Width="80" OnClick="DataChanged()" tabindex="2">
                                </asp:DropDownList>
                          </td>
                          <td width="5" height="20">
                          </td>
                          <td align="center" width="10px">(</td>
                          <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_3_1" runat="server" CssClass="inface" MaxLength=3 tabindex="2"
                            onKeyup="autotab(this, document.MedicalDT.s_phone_3_2);" ></asp:TextBox>
                          </td>
                          <td align="center" width="15px">) </td>
                          <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_3_2" runat="server" CssClass="inface" MaxLength=3 tabindex="2"
                            onKeyup="autotab(this, document.MedicalDT.s_phone_3_3);" ></asp:TextBox>
                          </td>
                          <td align="center" width="10px">-</td>
                          <td class="td_unline" align="left" width="40px">
                            <asp:TextBox ID="s_phone_3_3" runat="server" CssClass="inface" MaxLength=4 tabindex="2"></asp:TextBox>
                          </td>
                       </tr>  
                    </table>    
                </td>
            </tr>   
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_phone_2" runat="server" Text="Work Phone:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="340">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td align="center" width="10px">(</td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_2_1" runat="server" CssClass="inface" MaxLength="3" tabindex="1"
                            onKeyup="autotab(this, document.MedicalDT.s_phone_2_2);" ></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_2_2" runat="server" CssClass="inface" MaxLength="3" tabindex="1"
                            onKeyup="autotab(this, document.MedicalDT.s_phone_2_3);" ></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="40px">
                            <asp:TextBox ID="s_phone_2_3" runat="server" CssClass="inface" MaxLength="4" tabindex="1"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>   
                </td>
                <td align="right" width="100" class="td_label" height="20">
                    <b><asp:Label ID="l_s_email" runat="server" ></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="300">
                    <asp:TextBox ID="s_email" runat="server" CssClass="inface" MaxLength="40" tabindex="3"></asp:TextBox>
                </td>   
            </tr>    
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr>
                <td colspan="6" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="340">
                    <b>Current Address</b>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <b>Mailing Address</b> (if different)
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_name" runat="server" Text="C/O Name:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="340">
                    <asp:TextBox ID="s_address_name" runat="server" CssClass="inface" MaxLength="50" tabindex="3"></asp:TextBox>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_employer" runat="server" CssClass="inface" MaxLength="40" tabindex="4"></asp:TextBox>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_line_1" runat="server" Text="Address Line 1:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="340">
                    <asp:TextBox ID="s_address_line_1" runat="server" CssClass="inface" MaxLength="30" tabindex="1"></asp:TextBox>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_work_address_line_1" runat="server" CssClass="inface" MaxLength=30 tabindex="2"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_line_2" runat="server" Text="Address Line 2:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="340">
                    <asp:TextBox ID="s_address_line_2" runat="server" CssClass="inface" MaxLength="30" tabindex="3"></asp:TextBox>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_work_address_line_2" runat="server" CssClass="inface" MaxLength=30 tabindex="4"></asp:TextBox>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="6" height="5">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_city" runat="server" Text="City and State:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="340">
                 <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td class="td_unline" align="left" width="290" style="height: 20px">
                       <asp:TextBox ID="s_address_city" runat="server" CssClass="inface" Width="270" MaxLength="50" tabindex="3"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_address_state" runat="server" CssClass="inface" Width="20" MaxLength="2" tabindex="3"></asp:TextBox>
                     </td>
                   </tr>
                 </table> 
                </td>
                <td colspan="3">
                 <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td class="td_unline" align="left" width="290" style="height: 20px">
                        <asp:TextBox ID="s_work_address_city" runat="server" CssClass="inface" Width="270" MaxLength=15 tabindex="4"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_work_address_state" runat="server" CssClass="inface" Width="20" MaxLength=2 tabindex="4"></asp:TextBox>
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
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_zip" runat="server" Text="Zip/Mail Codes:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="345">
                    <asp:TextBox ID="s_address_zip" runat="server" CssClass="inface" Width="140" MaxLength="10" tabindex="3"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="s_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="150" OnClick="DataChanged()" tabindex="3">
                    </asp:DropDownList>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_work_address_zip" runat="server" CssClass="inface" Width="140" MaxLength="10" tabindex="4"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="s_work_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="150" OnClick="DataChanged()" tabindex="4">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr>
                <td colspan="6" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_comment_1" runat="server" Text="Comments:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td colspan="4" class="td_unline" align="left">
                    <asp:TextBox ID="s_comment_1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                          runat="server" Width="99%" Height="60" tabindex="4"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regComment1" runat="server" ControlToValidate="s_comment_1" 
                      ValidationExpression="^[\s\S]{0,250}$" ErrorMessage="Maximum of 250 characters allowed" Text="" ></asp:RegularExpressionValidator>
                    <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="s_comment_1" ShowModal="true" runat="server">
                        </cc1:UltimateSpell>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
