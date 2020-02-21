<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerContactSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerContactSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Client Contact Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.ConsumerCo.consumer_key.value.toString();
       var UserAct = document.ConsumerCo.UserAct.value.toString();
       var s_number = document.ConsumerCo.s_number.value.toString();
       var s_group = document.ConsumerCo.hgroup.value.toString();
       var url = "PrintConsumerContactSCLARC.aspx?consumer_key=" + consumer_key + "&s_number=" + s_number + "&s_group=" + s_group + "&UserAct=" + UserAct;
       window.open(url);     
                  
    }
    
    function Refresh_Data(flag)
    {         
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
       
    function save_click()
    {
        NoConfirmExit();
        var str=document.ConsumerCo.s_deceased_date.value.toString();
        
        if (isNaN(str)==true)
        {
           alert("Invalid Year. Please re-enter the year.");
           return false;
        }  

        intYear=parseInt(str,10);
        if (intYear > 9999 || intYear < 1753)
        {
           alert("Invalid Year. Please re-enter the year.");
           return false;
        }


        if (((document.ConsumerCo.s_ssn_1.value != "") && ((!IsInteger(document.ConsumerCo.s_ssn_1.value)) ||
             (document.ConsumerCo.s_ssn_1.value.length != 3))) ||
            ((document.ConsumerCo.s_ssn_2.value != "") && ((!IsInteger(document.ConsumerCo.s_ssn_2.value)) ||
             (document.ConsumerCo.s_ssn_2.value.length != 2))) ||
            ((document.ConsumerCo.s_ssn_3.value != "") && ((!IsInteger(document.ConsumerCo.s_ssn_3.value)) ||
             (document.ConsumerCo.s_ssn_3.value.length != 4)))) {
           alert("Invalid SSN!");
           return false;
        }

        if (document.getElementById("s_language").value == "") {
           alert("Language cannot be empty! Update failed.");
           document.getElementById("s_language").focus();
           return false;
        }

        if (document.getElementById("s_relationship").value == "") {
           alert("Relationship cannot be empty! Update failed.");
           document.getElementById("s_relationship").focus();
           return false;
        }

        return true;
    }
        
    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ConsumerCo" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="s_number" id="s_number" value="" runat="server" />
    <input type="hidden" name="hgroup" id="hgroup" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">CONTACT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Contact For</asp:label>
			</td>
			<td>
              <asp:ImageButton ID="btnAdd" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:ImageButton>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="image" id="btnPrint" src="../img/print.ico" alt="Print" style="width: 25px;height:25px" 
                  onclick="javascript:print_click();" runat="server" /> 
			  &nbsp;&nbsp;&nbsp;&nbsp;
              <input type="image" id="btnHelp" src="../img/help.ico" alt="Help" style="width: 25px;height:25px" visible="false" 
                  onclick="winhref('./HelpFile/.html','help')" runat="server" />
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
              <asp:DropDownList ID="s_group" runat="server" style="display:none" DataValueField="tb_code" DataTextField="tb_entry_text" 
                        Height="20" Width="100" onchange="NoConfirmExit();" AutoPostBack="true">
                    </asp:DropDownList>
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr class="tr_common">
 
              
                
                  
               
         
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_relationship" runat="server" Text="Relationship:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="150">
                    <asp:DropDownList ID="s_relationship" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                        Height="20" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_uci_relative" runat="server" Text="Relative's UCI:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="195" height="20">
                    <asp:TextBox ID="s_uci_relative" runat="server" CssClass="inface" Width="100" MaxLength="7"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
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
                          <asp:TextBox ID="s_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                      </td>
                      <td width="5" style="height: 20px"></td> 
                      <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_name_mi" runat="server" CssClass="inface" Width="20" MaxLength="1"></asp:TextBox>
                      </td>
                      <td width="5" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="120" style="height: 20px">
                        <asp:TextBox ID="s_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                     </td>
                    </tr>
                    </table>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_access" runat="server" Text="Access Status:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="195">
                    <asp:DropDownList ID="s_access" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                        Height="20" Width="100" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_supportcircle" runat="server" Text="Circle of Support:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="120">
                    <asp:DropDownList ID="s_supportcircle" runat="server" CssClass="inface" Width="80" OnClick="DataChanged()">
                        <asp:ListItem Value=""></asp:ListItem>
                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                        <asp:ListItem Value="N">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_emergencycontact" runat="server" Text="Emergency Contact:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="150">
                    <asp:DropDownList ID="s_emergencycontact" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                        Height="20" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_conservator" runat="server" Text="Conservator:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="195">
                    <asp:DropDownList ID="s_conservator" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="100" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" align="left" class="td_label">
                    <b>Legal Guardian</b><asp:Checkbox ID="s_guardian" runat="server" Text=""></asp:Checkbox>
                </td>
                <td colspan="3" align="left" class="td_label">
                    <b>No Longer A Provider</b><asp:Checkbox ID="s_previousprovider" runat="server" Text=""></asp:Checkbox>
                </td>
                <td colspan="3" class="td_label"></td>
            </tr>
            <tr style="height:5px;">
                <td colspan="9">
                </td>
            </tr>
            <tr>
                <td colspan="9" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="9">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_name_maiden" runat="server" Text="Maiden Name:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td colspan="2" class="td_unline" align="left" style="height: 20px">
                    <asp:TextBox ID="s_name_maiden" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                </td>
                <td width="5" height="20">
                </td>
                <td colspan=4>
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td style="width: 80px" align="right" width="80" class="td_label" height="20">
                            <b><asp:Label ID="l_s_ssn" runat="server" Text="SSN:"></asp:Label></b>
                         </td>
                         <td width="5" height="20">
                         </td>
                         <td width="150">
                            <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr>
                                 <td align="left" class="td_unline" width="35px">
                                     <asp:TextBox ID="s_ssn_1" runat="server" CssClass="inface" MaxLength="3" Width="35" 
                                         onKeyup="autotab(this, document.ConsumerCo.s_ssn_2);"></asp:TextBox>
                                 </td>
                                 <td align="center" width="5px">-</td>
                                 <td class="td_unline" width="30px">
                                     <asp:TextBox ID="s_ssn_2" runat="server" CssClass="inface" MaxLength="2" Width="30"
                                         onKeyup="autotab(this, document.ConsumerCo.s_ssn_3);"></asp:TextBox>
                                 </td>
                                 <td align="center" width="5px">-</td>
                                 <td class="td_unline" width="45px">
                                     <asp:TextBox ID="s_ssn_3" runat="server" CssClass="inface" MaxLength="4" Width="45"></asp:TextBox>
                                  </td>
                               </tr>
                            </table>  
                         </td>
                         <td width="5" height="20">
                         </td>
                         <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                            <b><asp:Label ID="l_s_custody" runat="server" Text="Custody:"></asp:Label></b>
                         </td>
                         <td width="5" height="20">
                         </td>
                         <td width="100" height="20">
                            <asp:DropDownList ID="s_custody" runat="server" CssClass="infaceDrop" Width="80" OnClick="DataChanged()">
                              <asp:ListItem Value=""></asp:ListItem>
                              <asp:ListItem Value="Y">Yes</asp:ListItem>
                              <asp:ListItem Value="N">No</asp:ListItem>
                            </asp:DropDownList>
                         </td>
                       </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_dob" runat="server" Text="Date of Birth:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="120">
                    <asp:TextBox ID="s_dob" runat="server" CssClass="inface" 
                        onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_birthplace" runat="server" Text="Place of Birth:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="150">
                    <asp:TextBox ID="s_birthplace" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_disabled" runat="server" Text="Disabled:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="195">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td width="65" style="height: 20px">
                                <asp:DropDownList ID="s_disabled" runat="server" CssClass="infaceDrop" Width="60" OnClick="DataChanged()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="60" class="td_label" style="height: 20px">
                                <b><asp:Label ID="l_s_retired" runat="server" Text="Retired:"></asp:Label></b>
                            </td>
                            <td width="5" height="20"></td>
                            <td width="65" style="height: 20px">
                                <asp:DropDownList ID="s_retired" runat="server" CssClass="infaceDrop" Width="60" OnClick="DataChanged()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="9">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_language" runat="server" Text="Language:"></asp:Label></b>
                </td>
                <td height="20" style="width: 5px">
                </td>
                <td class="td_unline" align="left" style="height: 20px">
                    <asp:DropDownList ID="s_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_marital_status" runat="server" Text="Marital Status:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="150">
                    <asp:DropDownList ID="s_marital_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                        CssClass="infaceDrop" OnChange="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                    <b><asp:Label ID="l_s_deceased" runat="server" Text="Deceased:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="195" height="20">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td width="65" style="height: 20px">
                                <asp:DropDownList ID="s_deceased" runat="server" CssClass="infaceDrop" Width="60" OnClick="DataChanged()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                    <asp:ListItem Value="N">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="60" class="td_label" style="height: 20px">
                                <b><asp:Label ID="l_s_deceased_date" runat="server" Text="Year:"></asp:Label></b>
                            </td>
                            <td width="5" height="20"></td>
                            <td width="65" style="height: 20px">
                                <asp:TextBox ID="s_deceased_date" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="9">
                </td>
            </tr>
            <tr>
                <td colspan="9" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="9">
                </td>
            </tr>
        </table>
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_phone_1" runat="server" Text="Home Phone:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td width="340">
                    <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                       <tr>
                         <td align="center" width="10px">(</td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_1_1" runat="server" CssClass="inface" MaxLength="3"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_1_2);" ></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_1_2" runat="server" CssClass="inface" MaxLength="3" 
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_1_3);" ></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="40px">
                            <asp:TextBox ID="s_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
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
                                    Height="20" Width="80" OnClick="DataChanged()">
                                </asp:DropDownList>
                          </td>
                          <td width="5" height="20">
                          </td>
                          <td align="center" width="10px">(</td>
                          <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_3_1" runat="server" CssClass="inface" MaxLength="3"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_3_2);"></asp:TextBox>
                          </td>
                          <td align="center" width="15px">) </td>
                          <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_3_2" runat="server" CssClass="inface" MaxLength="3"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_3_3);"></asp:TextBox>
                          </td>
                          <td align="center" width="10px">-</td>
                          <td class="td_unline" align="left" width="40px">
                            <asp:TextBox ID="s_phone_3_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                          </td>
                       </tr>  
                    </table>    
                </td>
            </tr>   
            <tr style="height:5px">
                <td colspan="6">
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
                            <asp:TextBox ID="s_phone_2_1" runat="server" CssClass="inface" MaxLength="3"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_2_2);"></asp:TextBox>
                         </td>
                         <td align="center" width="15px">) </td>
                         <td class="td_unline" align="left" width="30px">
                            <asp:TextBox ID="s_phone_2_2" runat="server" CssClass="inface" MaxLength="3"
                            onKeyup="autotab(this, document.ConsumerCo.s_phone_2_3);"></asp:TextBox>
                         </td>
                         <td align="center" width="10px">-</td>
                         <td class="td_unline" align="left" width="40px">
                            <asp:TextBox ID="s_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                         </td>
                       </tr>  
                    </table>   
                </td>
                <td align="right" width="100" class="td_label" height="20">
                    <b><asp:Label ID="l_s_email" runat="server" Text="Email:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="300">
                    <asp:TextBox ID="s_email" runat="server" CssClass="inface" MaxLength="40"></asp:TextBox>
                </td>   
            </tr>
        </table>
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%; display:none">
            <tr style="height:5px;">
                <td colspan="6">
                </td>
            </tr>
            <tr>
                <td colspan="6" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px;">
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
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_name" runat="server" Text="C/O Name:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="340">
                    <asp:TextBox ID="s_address_name" runat="server" CssClass="inface" MaxLength="30" tabindex="1"></asp:TextBox>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_employer" runat="server" CssClass="inface" MaxLength="40" tabindex="2"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
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
                    <asp:TextBox ID="s_address_line_2" runat="server" CssClass="inface" MaxLength="30" tabindex="1"></asp:TextBox>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_work_address_line_2" runat="server" CssClass="inface" MaxLength=30 tabindex="2"></asp:TextBox>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
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
                       <asp:TextBox ID="s_address_city" runat="server" CssClass="inface" Width="290" MaxLength="15" tabindex="1"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_address_state" runat="server" CssClass="inface" Width="20" MaxLength="2" tabindex="1"></asp:TextBox>
                     </td>
                   </tr>
                 </table> 
                </td>
                <td colspan="3">
                 <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                     <td class="td_unline" align="left" width="290" style="height: 20px">
                        <asp:TextBox ID="s_work_address_city" runat="server" CssClass="inface" Width="290" MaxLength=15 tabindex="2"></asp:TextBox>
                     </td>
                     <td width="10" style="height: 20px"></td> 
                     <td class="td_unline" align="left" width="30" style="height: 20px"> 
                        <asp:TextBox ID="s_work_address_state" runat="server" CssClass="inface" Width="20" MaxLength=2 tabindex="2"></asp:TextBox>
                     </td>
                   </tr>
                 </table> 
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 150px" align="right" width="150" class="td_label" height="20">
                    <b><asp:Label ID="l_s_address_zip" runat="server" Text="Zip/Mail Codes:"></asp:Label></b>
                </td>
                <td width="5" height="20">
                </td>
                <td class="td_unline" align="left" width="345">
                    <asp:TextBox ID="s_address_zip" runat="server" CssClass="inface" Width="130" MaxLength="10" tabindex="1"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="s_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="150" OnClick="DataChanged()" tabindex="1">
                    </asp:DropDownList>
                </td>
                <td colspan="3" class="td_unline" align="left">
                    <asp:TextBox ID="s_work_address_zip" runat="server" CssClass="inface" Width="130" MaxLength="10" tabindex="2"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="s_work_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                        Height="20" Width="150" OnClick="DataChanged()" tabindex="2">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height:5px">
                <td colspan="6">
                </td>
            </tr>
            <tr>
                <td colspan="6" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px;">
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
                    <asp:TextBox ID="s_comment_1" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
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
                <td colspan="4" class="td_unline" align="left">
                    <asp:TextBox ID="s_comment_2" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
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
                <td colspan="4" class="td_unline" align="left">
                    <asp:TextBox ID="s_comment_3" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
