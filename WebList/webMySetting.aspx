<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webMySetting.aspx.cs" Inherits="Virweb2.WebList.webMySetting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::Setting & Option:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function CheckPassword()    
        {
          var pwd = document.getElementById(<%= "'" + UserPassword.ClientID + "'" %>);   
          var pwdConfirm = document.getElementById(<%= "'" + UserPasswordConfirm.ClientID + "'" %>);       
          if ((pwd.value != "") && (pwdConfirm.value!=pwd.value))
          {
               alert("Passwords do not match! Please try again.");       
               return false;
          }
          return true;   
        }
        
        function save_click()
        {
            var str="";
            var int_num=0;
            if (document.getElementById("gic_uncompled_ticklers").checked)
            {
                 str=JTrim(document.getElementById("gic_uncompled_ticklers_days").value)
                 if (str=="")
                 {
                    alert("Please input Incompleted Ticklers days!");
                    document.SetOptions.gic_uncompled_ticklers_days.focus();
                    return false;
                 }
                 else
                 {
                    if (IsInteger(JTrim(document.getElementById("gic_uncompled_ticklers_days").value)))
                    {
                       int_num=parseInt(document.getElementById("gic_uncompled_ticklers_days").value,10);                      
                       if (int_num<=0)
                       {
                          alert("Please input Incompleted Ticklers days!");
                          document.getElementById("gic_uncompled_ticklers_days").focus();
                          return false;
                       }
                    }  
                    else
                    {
                         alert("Please input Incompleted Ticklers days!");
                         document.getElementById("gic_uncompled_ticklers_days").focus();
                         return false;
                    }
                 }
            }
            if (document.getElementById("gic_unread_messages").checked)
            {
                 str=JTrim(document.getElementById("gic_unread_messages_days").value)
                 if (str=="")
                 {
                    alert("Please input Unread Messages days!");
                    document.SetOptions.gic_unread_messages_days.focus();
                    return false;
                 }
                 else
                 {
                    if (IsInteger(JTrim(document.getElementById("gic_unread_messages_days").value)))
                    {
                       int_num=parseInt(document.getElementById("gic_unread_messages_days").value,10);                      
                       if (int_num<=0)
                       {
                          alert("Please input Unread Message days!");
                          document.getElementById("gic_unread_messages_days").focus();
                          return false;
                       }
                    }  
                    else
                    {
                         alert("Please input Unread Message days!");
                         document.getElementById("gic_unread_messages_days").focus();
                         return false;
                    }
                 }
            }
           
            return true;
        }
    </script>
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="SetOptions" method="post" runat="server">
       <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" 
                  OnClientClick="javascript:return save_click();" OnClick="btnEdit_Click" >
            </asp:ImageButton>
            &nbsp;
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">My Settings:</asp:label>
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
       <tr style="height:8px">
         <td colspan="3"></td> 
	   </tr>
	   </table>
	</div>	
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;overflow: auto ">
        <table class="table_maindiv">
           <tr class="tr_common">
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>User ID:</b></td>
               <td width="5" height="20">
               </td>
               <td class="td_unline" align="left" width="300" style="width: 300px">
                   <asp:Label ID="gic_case_manager" runat="server" CssClass="infaceText" Width="260"></asp:Label>
               </td>
               <td style="width: 400px">
               </td>
           </tr>
           <tr style="height:5px">
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common">
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>Login Name:</b></td>
               <td width="5" height="20">
               </td>
               <td class="td_unline" align="left" width="300" style="width: 300px">
                   <asp:Label ID="LoginName" runat="server" CssClass="infaceText" Width="260"></asp:Label>
               </td>
               <td style="width: 400px">
               </td>
           </tr>
           <tr style="height:5px">
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common">
               <td style="width: 180px;" align="right" class="td_label">
                   <b>New Password:</b></td>
               <td style="width: 5px;">
               </td>
               <td class="td_unline" align="left" style="width: 300px">
                   <asp:TextBox ID="UserPassword" runat="server" CssClass="inface" Style="Width: 260px" TextMode="Password"
                       MaxLength="32"></asp:TextBox>
                   <asp:RegularExpressionValidator ControlToValidate="UserPassword" Display="dynamic"
                       ErrorMessage="Password must be 6 to 32 non-blank characters" ValidationExpression="[^\s]{6,32}"
                       runat="server" ID="vUserPassword" />
               </td>
               <td style="width: 400px">
               </td>
           </tr>
           <tr style="height:5px">
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common">
               <td style="width: 180px;" align="right" class="td_label">
                   <b>Confirm Password:</b></td>
               <td style="width: 5px;">
               </td>
               <td class="td_unline" align="left" style="width: 300px;">
                   <asp:TextBox ID="UserPasswordConfirm" runat="server" CssClass="inface" Width="260"
                       TextMode="Password" MaxLength="32"></asp:TextBox>
                   <asp:CompareValidator ControlToValidate="UserPasswordConfirm" ControlToCompare="UserPassword"
                       Type="String" Operator="Equal" Display="dynamic" ErrorMessage="Password and Confirm Password must match"
                       runat="server" ID="ConfirmPwd" />
               </td>
               <td style="width: 400px;">
               </td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common">
               <td style="width: 180px" align="right" class="td_label">
                   <b>Session Timeout:</b></td>
               <td style="width: 5px;">
               </td>
               <td align="left" style="width: 300px">
                   <table class="table_inside" cellspacing="0" cellpadding="0">
                       <tr>
                           <td class="td_unline" width="110">
                               <asp:TextBox ID="gic_session_timeout" runat="server" CssClass="inface" Width="100"
                                   MaxLength="32"></asp:TextBox>
                           </td>
                           <td>
                               &nbsp;&nbsp;&nbsp;Minutes
                           </td>
                       </tr>
                   </table>
                   <asp:RangeValidator ID="rangeValInteger" Type="Integer" ControlToValidate="gic_session_timeout"
                       Display="dynamic" ErrorMessage="Timeout must be set between 5 to 60 minutes"
                       MaximumValue="60" MinimumValue="5" runat="server" />
               </td>
               <td style="width: 400px" class="td_label">
                   <asp:CheckBox ID="gic_display_mode" runat="server" text="Display Client WebParts" visible=false/>
                   <asp:CheckBox ID="gic_display_rmode" runat="server" text="Display Vendor WebParts" visible=false/>
               </td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common">
               <td style="width: 180px" align="right" class="td_label">
                   <b>Last Access Consumer(WebParts):</b></td>
               <td style="width: 5px;">
               </td>
               <td align="left" style="width: 300px">
                   <table class="table_inside" cellspacing="0" cellpadding="0">
                       <tr>
                           <td class="td_unline" width="110">
                               <asp:TextBox ID="gic_webpart_AccessConsumer" runat="server" CssClass="inface" Width="100"
                                   MaxLength="32"></asp:TextBox>
                           </td>
                           <td></td>
                       </tr>
                   </table>
                   <asp:RangeValidator ID="rangeValInteger2" Type="Integer" ControlToValidate="gic_webpart_AccessConsumer"
                       Display="dynamic" ErrorMessage="The number must be set between 0 to 200 Clients"
                       MaximumValue="200" MinimumValue="0" runat="server" />
               </td>
               <td style="width: 400px" class="td_label">
               </td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common">
               <td style="width: 180px" align="right" class="td_label">
                   <b>Last Access IDNotes(WebParts):</b></td>
               <td style="width: 5px;">
               </td>
               <td align="left" style="width: 300px">
                   <table class="table_inside" cellspacing="0" cellpadding="0">
                   <table class="table_inside" cellspacing="0" cellpadding="0">
                       <tr>
                           <td class="td_unline" width="110">
                               <asp:TextBox ID="gic_webpart_AccessIDNotes" runat="server" CssClass="inface" Width="100"
                                   MaxLength="32"></asp:TextBox>
                           </td>
                           <td></td>
                       </tr>
                   </table>
                   <asp:RangeValidator ID="rangeValInteger3" Type="Integer" ControlToValidate="gic_webpart_AccessIDNotes"
                       Display="dynamic" ErrorMessage="The number must be set between 0 to 200 IDNotes"
                       MaximumValue="200" MinimumValue="0" runat="server" />
               </td>
               <td style="width: 400px" class="td_label">
               </td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr >
               <td colspan="4" class="td_thicksepline">
               </td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td align="left" colspan="3" style="width: 485px" width="485" height="20">
                   <font color="#3366ff"><b>Client Transaction Default Data</b></font></td>
               <td></td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>Transaction Type:</b></td>
               <td width="5" height="20">
               </td>
               <td align="left" width="300" style="width: 300px">
                   <asp:DropDownList ID="gic_default_transaction_type" runat="server" DataValueField="txty_code"
                       DataTextField="txty_text" Height="25" Width="250">
                   </asp:DropDownList>
               </td>
               <td></td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>TRX Window Month Range:</b></td>
               <td width="5" height="20">
               </td>
               <td align="left" width="300" style="width: 300px">
                   <asp:TextBox ID="gic_default_month_range" runat="server" CssClass="inface" Width="100"
                                   MaxLength="16"></asp:TextBox>
               </td>
               <td></td>
           </tr>
           <tr class="tr_common" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td align="left" colspan="3" style="width: 485px" width="485" height="20">
                   <font color="#3366ff"><b>Client Default Description Templates</b></font></td>
               <td></td>
           </tr>
           <tr class="tr_common" >
               <td colspan="4" height="5">
               </td>
           </tr>
        </table>
        <asp:DataGrid ID="dg_usertxty" runat="server" CssClass="grd_body" HorizontalAlign="center"
            Width="98%" OnEditCommand="DataEdit" OnCancelCommand="DataCancel" OnUpdateCommand="DataUpdate"
            AutoGenerateColumns="False" AllowSorting="false" ShowFooter="false">
            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
            </HeaderStyle>
            <ItemStyle CssClass="grd_item"></ItemStyle>
            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
            <Columns>
                <asp:BoundColumn DataField="txty_code" HeaderText="Type Code" SortExpression="txty_code"
                    ReadOnly="true"></asp:BoundColumn>
                <asp:BoundColumn DataField="txty_text" HeaderText="Type Name" SortExpression="txty_text"
                    ReadOnly="true"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Default Template">
                    <ItemTemplate>
                        <asp:Label ID="lblLabelName" runat="server" Text='<%# (string)DataBinder.Eval(Container.DataItem, "default_t_name") %>'>
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="cmbTemp" runat="server" DataSource="<%#  GetTemplateList() %>"
                            DataTextField="t_name" DataValueField="t_name" SelectedIndex='<%# GetTemplateIndex((string)DataBinder.Eval(Container.DataItem, "default_t_name")) %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateColumn>
                <asp:EditCommandColumn ButtonType="PushButton" UpdateText="Update" CancelText="Cancel"
                    EditText="Edit">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:EditCommandColumn>
            </Columns>
        </asp:DataGrid>
        <table class="table_maindiv">
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr >
               <td colspan="4" class="td_thicksepline">
               </td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td align="left" colspan="3" style="width: 485px" width="485" height="20">
                   <font color="#3366ff"><b>Vendor Transaction Default Data</b></font></td>
               <td></td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>Transaction Type:</b></td>
               <td width="5" height="20">
               </td>
               <td align="left" width="300" style="width: 300px">
                   <asp:DropDownList ID="gic_default_rtransaction_type" runat="server" DataValueField="txty_code"
                       DataTextField="txty_text" Height="25" Width="250">
                   </asp:DropDownList>
               </td>
               <td></td>
           </tr>
           <tr style="height:5px" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>TRX Window Month Range:</b></td>
               <td width="5" height="20">
               </td>
               <td align="left" width="300" style="width: 300px">
                   <asp:TextBox ID="gic_default_rmonth_range" runat="server" CssClass="inface" Width="100"
                                   MaxLength="16"></asp:TextBox>
               </td>
               <td></td>
           </tr>
           <tr class="tr_common" >
               <td colspan="4">
               </td>
           </tr>
           <tr class="tr_common" >
               <td align="left" colspan="3" style="width: 485px" width="485" height="20">
                   <font color="#3366ff"><b>Vendor Default Description Templates</b></font></td>
               <td></td>
           </tr>
           <tr class="tr_common" >
               <td colspan="4" height="5">
               </td>
           </tr>
        </table>
        <asp:DataGrid ID="dg_userrtxty" runat="server" CssClass="grd_body" HorizontalAlign="center"
            Width="98%" OnEditCommand="RDataEdit" OnCancelCommand="RDataCancel" OnUpdateCommand="RDataUpdate"
            AutoGenerateColumns="False" AllowSorting="false" ShowFooter="false">
            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
            </HeaderStyle>
            <ItemStyle CssClass="grd_item"></ItemStyle>
            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
            <Columns>
                <asp:BoundColumn DataField="txty_code" HeaderText="Type Code" SortExpression="txty_code"
                    ReadOnly="true"></asp:BoundColumn>
                <asp:BoundColumn DataField="txty_text" HeaderText="Type Name" SortExpression="txty_text"
                    ReadOnly="true"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Default Template">
                    <ItemTemplate>
                        <asp:Label ID="lblLabelName" runat="server" Text='<%# (string)DataBinder.Eval(Container.DataItem, "default_t_name") %>'>
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="cmbTemp" runat="server" DataSource="<%#  GetRTemplateList() %>"
                            DataTextField="t_name" DataValueField="t_name" SelectedIndex='<%# GetRTemplateIndex((string)DataBinder.Eval(Container.DataItem, "default_t_name")) %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateColumn>
                <asp:EditCommandColumn ButtonType="PushButton" UpdateText="Update" CancelText="Cancel"
                    EditText="Edit">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:EditCommandColumn>
            </Columns>
        </asp:DataGrid>
        <table class="table_maindiv">
            <tr style="height:5px" >
                <td>
                </td>
            </tr>
            <tr >
                <td class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px" >
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td align="Left" style="width: 485px;">
                    <font color="#3366ff"><b>To Do Tasks:</b></font>
                </td>   
            </tr>
            <tr class="tr_common">
                <td  align="left">
                    Please check the items you want to appear on the To Do Tasks:</td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px;">
                                <asp:CheckBox ID="gic_agency_message" runat="server" /></td>
                            <td align="left">
                                Agency Message</td>
                            <td style="width: 40%;">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_uncompled_ticklers" runat="server" /></td>
                            <td style="width: 200px" align="left">
                                Ticklers past-due or within
                            </td>
                            <td class="td_unline" align="left" style="width: 120px">
                                <asp:TextBox ID="gic_uncompled_ticklers_days" runat="server" CssClass="inface"></asp:TextBox></td>
                            <td>
                                days of the due date.</td>
                            <td style="width: 20%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_unfinished_notes" runat="server" /></td>
                            <td align="left">
                                Un-Validated
                                <asp:Label ID="lbl_ID_Notes1" runat="server" Text="ID Notes"></asp:Label>
                            </td>
                            <td style="width: 40%;">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_unread_messages" runat="server" /></td>
                            <td align="left">
                                Unread messages received within the past</td>
                            <td class="td_unline" align="left" style="width: 120px">
                                <asp:TextBox ID="gic_unread_messages_days" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: 40px">
                                days.</td>
                            <td style="width: 50%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_unfinished_notes_all" runat="server" /></td>
                            <td align="left">
                                Un-Validated
                                <asp:Label ID="lbl_ID_Notes2" runat="server" Text="ID Notes"></asp:Label>
                                for all
                                <asp:Label ID="lbl_case_manager" runat="server" Text="Case Managers"></asp:Label>
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_pos_terminated" runat="server" /></td>
                            <td align="left">
                                POS terminating in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_pos_termmonth" runat="server" /></td>
                            <td align="left">
                                POS terminating in the next month
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_sir_followup" runat="server" /></td>
                            <td align="left">
                                SIR follow ups due in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_sir_overdue" runat="server" /></td>
                            <td align="left">
                                SIR follow ups overdue
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_sir_outcomp" runat="server" /></td>
                            <td align="left">
                                IPPs/ACs out of compliance (over 45 days) in the last 12 months
                            </td>
                            <td style="width: 30%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_cder_exp" runat="server" /></td>
                            <td align="left">
                                CDER expiring in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_tickler_due" runat="server" /></td>
                            <td align="left">
                                Tickler Due in the current month
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_tickler_face" runat="server" /></td>
                            <td align="left">
                                Tickler Face-To-Face meetings needed in the last 12 months
                            </td>
                            <td style="width: 20%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_ipp_notification" runat="server" /></td>
                            <td align="left">
                                IPP Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_annual_notification" runat="server" /></td>
                            <td align="left">
                                IPP Annual Contact Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_quarterly_notification" runat="server" /></td>
                            <td align="left">
                                IPP Quarterly Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_addendum_notification" runat="server" /></td>
                            <td align="left">
                                IPP Addendum Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_nvra_due" runat="server" /></td>
                            <td align="left">
                                NVRA voter registration due in the next 90 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_afpf_due" runat="server" /></td>
                            <td align="left">
                                AFPF due in the next 90 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_fcpp_due" runat="server" /></td>
                            <td align="left">
                                FCPP due in the next 90 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_notapproved_time" runat="server" /></td>
                            <td align="left">
                                Not Approved Time Cards
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_new_intake" runat="server" /></td>
                            <td align="left">
                                New case for Intake Workers
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_casetransfer_pm" runat="server" /></td>
                            <td align="left">
                                New Transfer Cases for Program Manager
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_casetransfer_sc" runat="server" /></td>
                            <td align="left">
                                New Transfer Cases for SC
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_nextelig_due" runat="server" /></td>
                            <td align="left">
                                Next Eligibility Due in the one year
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_eligibility_review" runat="server" /></td>
                            <td align="left">
                                Lanterman Eligibility Review
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_esreligibility_review" runat="server" /></td>
                            <td align="left">
                                ES Eligibility Review
                            </td>
                            <td style="width: 20%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_psycho_review" runat="server" /></td>
                            <td align="left">
                                Lanterman Psycho-Social Review 
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_esrpsycho_review" runat="server" /></td>
                            <td align="left">
                                ES Psycho-Social Review
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_turn3_review" runat="server" /></td>
                            <td align="left">
                                ES Turning 3 Review
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_referred_cust" runat="server" /></td>
                            <td align="left">
                                Referred Consumers
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_ifsp_notification" runat="server" /></td>
                            <td align="left">
                                IFSP Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_ifsp_addendum" runat="server" /></td>
                            <td align="left">
                                IFSP Addendum Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_ifsp_review" runat="server" /></td>
                            <td align="left">
                                IFSP Review Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_ifsp_transition" runat="server" /></td>
                            <td align="left">
                                IFSP Transition Notification
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_ifsp_rmreview" runat="server" /></td>
                            <td align="left">
                                IFSP RM Review
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_monitor_due" runat="server" /></td>
                            <td align="left">
                                Monitoring Due in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_followup_due" runat="server" /></td>
                            <td align="left">
                                Following-up Due within the next </td>
                            <td class="td_unline" align="left" style="width: 120px">
                                <asp:TextBox ID="gic_followup_due_days" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: 40px">
                                days.</td>
                            <td style="width: 50%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_payment_expire" runat="server" /></td>
                            <td align="left">
                                Payment Agreements expiring within the next </td>
                            <td class="td_unline" align="left" style="width: 120px">
                                <asp:TextBox ID="gic_payment_expire_days" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: 40px">
                                days.</td>
                            <td style="width: 50%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_contacts_expire" runat="server" /></td>
                            <td align="left">
                                Contacts expiring within the next </td>
                            <td class="td_unline" align="left" style="width: 120px">
                                <asp:TextBox ID="gic_contacts_expire_days" runat="server" CssClass="inface"></asp:TextBox>
                            </td>
                            <td style="width: 40px">
                                days.</td>
                            <td style="width: 50%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_insurance_expire" runat="server" /></td>
                            <td align="left">
                                Liability Insurance expiring in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
                        <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_compensation_expire" runat="server" /></td>
                            <td align="left">
                                Worker's Compensation expiring in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
                        <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 40px">
                                <asp:CheckBox ID="gic_licenses_expire" runat="server" /></td>
                            <td align="left">
                                Business licenses expiring in the next 30 days
                            </td>
                            <td style="width: 40%">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5px">
                <td></td>
            </tr>
            <tr>
                <td class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 5px">
                <td></td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside" cellspacing="0" cellpadding="0" style="width: 60%">
                        <tr class="tr_common">
                            <td align="Left">
                                <font color="#3366ff"><b>Label Settings</b></font>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                Please select the label setting you want to use:
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" style="width:400px">
                                <asp:DropDownList ID="gic_label_sets" runat="server" DataValueField="ls_id" DataTextField="ls_name"
                                    CssClass="infaceDrop">
                                </asp:DropDownList>
                            </td>
                        </tr>                            
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
        </div>
    </form>
</body>
</html>