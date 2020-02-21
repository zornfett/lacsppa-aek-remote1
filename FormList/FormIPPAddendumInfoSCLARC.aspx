<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIPPAddendumInfoSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIPPAddendumInfoSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base TARGET="_self" /> 
    <title>Addendum</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript">     
    <!--
        function RefreshMyData()    
        {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.IPPAddendum.submit(); 
            window.focus();   
        }
        function print_click() {
            //PopupMessage(10); 
            var entrykey = document.IPPAddendum.entrykey.value.toString();
            var UserAct = document.IPPAddendum.UserAct.value.toString();
            var url = "PrintFormIPPAddendumInfoSCLARC.aspx?entrykey=" + entrykey + "&UserAct=" + UserAct;
            winhref(url, 'FormIPPAddendumInfoSCLARC');          
        }
        
        function verify_click() {
            return true;
        }
        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.IPPAddendum.submit();
            window.focus();
        }

        function Verify() {
            var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
            mySignVerify.value = "1";  
            window.document.IPPAddendum.submit();
            window.focus();
       }

       function UnLock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "3";  
          window.document.IPPAddendum.submit();
          window.focus();
       }

       function Lock() {
          var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
          mySignVerify.value = "4";  
          window.document.IPPAddendum.submit();
          window.focus();
       }

       function CheckPwd() {
          if ((!document.getElementById("<%=approved_yes.ClientID %>").checked) && 
              (!document.getElementById("<%=approved_no.ClientID %>").checked))
          {
             alert("Please select either 'Approval' or 'Return' first");
             return;
          }

          if (document.getElementById("<%=approved_yes.ClientID %>").checked)  
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          else 
          {
             var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
             mySignVerify.value = "2";  
             window.document.IPPAddendum.submit();
             window.focus();
          }
       }

        function back_click() {
            if (Confirm_Page())
                document.location.replace(document.IPPAddendum.gobackPage.value);
        }

        function save_click()
        {
            if (document.getElementById("IPPSection").value == "")
            {
               alert("Please select IPP Section first!");
               document.IPPAddendum.IPPSection.focus();
               return false;   
            }

            if (IsDate(document.getElementById("PeriodStart").value, false) != "true") 
		    {
               alert("Please input Start Date!");
               document.IPPAddendum.PeriodStart.focus();
               return false;          
            }

            if (IsDate(document.getElementById("PeriodEnd").value, false) != "true") 
		    {
               alert("Please input End Date!");
               document.IPPAddendum.PeriodEnd.focus();
               return false;          
            }

            return true;
        }
     
        function SelectPlanItems(IPPPlanGroupID) {
            document.IPPAddendum.selplangroupid.value = IPPPlanGroupID;
        
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '2';        
            window.document.IPPAddendum.submit();
            window.focus();   
        
            return true;
        }

        function AddPlan_Click(PlanID) {
            document.IPPAddendum.addplanid.value = PlanID;
        
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '3';        
            window.document.IPPAddendum.submit();
            window.focus();   
        
            return true;
        }

    //-->
    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="IPPAddendum" runat="server"> 
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" /> 
    <input type="hidden" name="ipp_key" id="ipp_key" value="" runat="server" />
    <input type="hidden" name="selplangroupid" id="selplangroupid" value="" runat="server" />
    <asp:hiddenfield id="ippoutid" runat="server" value="" />
    <asp:hiddenfield id="addplanid" runat="server" value="0" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="FormIPPAddendumListSCLARC.aspx" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false" onclientclick="return save_click();"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false" onclientclick="return save_click();"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnAdd_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">&nbsp;</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px" 
                        src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
            <tr class="tr_common">
                <td valign="top" colspan="3" align="center" width="100%" height="100%">
                    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%;height:100%">
                        <tr>
                            <td>
                                <table class="table_inside">
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="middle" align="center">
                                            <asp:Label ID="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                                Height="24px">Addendum</asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height: 5px;">
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3">
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 120px">
                                <asp:Label ID="Label2" runat="server" Text="Consumer Name:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td  class="td_label" style="width: 120px">
                                <asp:Label ID="Label8" runat="server" Text="D.O.B:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 100px">
                                <asp:TextBox ID="ClientDOB" runat="server" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                     CssClass="inface" ></asp:TextBox>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td  class="td_label" style="width: 160px">
                                <asp:Label ID="Label5" runat="server" Text="UCI#:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:Label ID="ClientID" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width: auto"></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td colspan="13">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 120px">
                                <asp:Label ID="l_uci" runat="server" Text="Date of Review:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  style="width: 200px" class="td_unline" >
                                <asp:TextBox ID="Reviewdate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                    onfocus="DataChanged();showcalendar(event, this);" Width="150px"></asp:TextBox>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td colspan="9">
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td  class="td_label" style="width: 120px">
                                            <asp:Label ID="Label1" runat="server" Text="Purpose of Review:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 250px" class="td_label"  >
                                            <asp:Radiobutton ID="ReviewPurpose_1" groupname="ReviewPurpose" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>30 Days</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="ReviewPurpose_2" groupname="ReviewPurpose" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Addendum</b>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="ReviewPurpose_3" groupname="ReviewPurpose" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Other</b>
                                        </td>
                                        <td class="td_unline">
                                            <asp:TextBox ID="PurposeOtherDesc" runat="server" CssClass="inface" Width="200px" MaxLength="100"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td colspan="13">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 120px">
                                <asp:Label ID="Label3" runat="server" Text="IPP Section:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td style="width: 200px" class="td_unline">
                                <asp:DropDownList ID="IPPSection" Width="200px" OnClick="DataChanged()" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        CssClass="infaceDrop">
                                </asp:DropDownList>
                            </td>
                            <td colspan="10"></td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="13"  class="td_label">
                                <b><asp:Label ID="Label13" runat="server" Text="CURRENT STATUS:" ></asp:Label></b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="13" style="height: 60px" valign="top">
                                <asp:TextBox ID="CurrentStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="60"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="CurrentStatus" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td> 
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="left" style="width: 150px" class="td_label" valign="top">
                    <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Text="Desired Outcome:"></asp:Label>
                </td>
                <td width="10">
                </td>
                <td style="width: 900px;" align="left" class="td_unline">
                    <div>
                        <asp:Textbox ID="desiredoutcome" runat="server" CssClass="inface" Height="60px" Width="98%"
                        TextMode="MultiLine" Style="overflow:auto"></asp:Textbox>
                    </div>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="left" style="width: 150px" class="td_label" >
                    <asp:Label ID="l_periodstart" runat="server" Font-Bold="True" Text="Period of Service:"></asp:Label>
                </td>
                <td width="10">
                </td>
                <td style="width: 900px" align="left" class="td_unline">
                    <asp:Textbox ID="PeriodStart" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
                    <asp:CompareValidator ControlToValidate="PeriodStart" Operator="DataTypeCheck" Type="Date" 
                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="PeriodStart_dt"></asp:CompareValidator>
                    <asp:Label ID="To" runat="server" CssClass="infaceText" Font-Bold="True" Text='   To   ' Width="100px" ></asp:Label>
                    <asp:Textbox ID="PeriodEnd" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
                    <asp:CompareValidator ControlToValidate="PeriodEnd" Operator="DataTypeCheck" Type="Date" 
                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="PeriodEnd_dt"></asp:CompareValidator>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td align="left" style="width: 150px" class="td_label" >
                    <asp:Label ID="l_supportplans" runat="server" Font-Bold="True" Text="Support Plans:"></asp:Label>
                </td>
                <td width="10">
                </td>
                <td align="left" style="width: 900px" >
                    <input type="button" value="Select" style="width:100px" ID="PlanSel" runat="server" class="buttonbluestyle" 
                        OnClick="javascript:popupDialogSmallWide('SearchIPPPlan.aspx');" />                     
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="td_label">
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td valign="top" align="left" style="width:100px">
                                <asp:Image ID="btn_Addplan1" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Plan Item" 
                                    onclick="javascript:AddPlan_Click('1');" />
                            </td>
                            <td align="left" style="width: 600px" class="td_label">
                                <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
                            </td>
                            <td align="left" style="width: 300px" >
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:datagrid id="dg_plan_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
			             AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			           <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			           <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
			           <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
			           <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			           <Columns>
			           <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
			           <asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
			           <asp:BoundColumn DataField="planid" HeaderText="planid" Visible="false"></asp:BoundColumn>
			           <asp:TemplateColumn HeaderText="" ItemStyle-BorderStyle="None">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			           	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			           	<ItemTemplate>
                           <table class="table_inside" cellspacing="0" cellpadding="0">
                              <tr style="height:5px">
                                 <td colspan="4">
                                 </td>
                              </tr>
                              <tr class="tr_common">
                                 <td style="width: 25px"></td>
                                 <td align="right" style="width: 25px" class="td_label" valign="top">
                                   <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                 </td>
                                 <td width="10px">
                                 </td>
                                 <td style="width: auto" align="left" class="td_unline">
                                   <asp:Textbox ID="itemtext" runat="server" CssClass="inface" Height="40px" Width="98%"
                                       TextMode="MultiLine" Style="overflow:auto" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:TextBox>
                                 </td>
                              </tr>
                           </table>
                        </ItemTemplate>
			   		   </asp:TemplateColumn>
                   </Columns>
			        </asp:datagrid>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" class="td_label">
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td valign="top" align="left" style="width:100px">
                                <asp:Image ID="btn_Addplan2" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Plan Item" 
                                    onclick="javascript:AddPlan_Click('2');" />
                            </td>
                            <td align="left" style="width: 600px" class="td_label">
                                <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                            </td>
                            <td align="left" style="width: 300px" >
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:datagrid id="dg_plan_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
			             AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			           <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			           <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
			           <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
			           <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			           <Columns>
			           <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
                       <asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
			           <asp:BoundColumn DataField="planid" HeaderText="planid" Visible="false"></asp:BoundColumn>
			           <asp:TemplateColumn HeaderText="" ItemStyle-BorderStyle="None">
			           	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			           	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			           	<ItemTemplate>
                           <table class="table_inside" cellspacing="0" cellpadding="0">
                              <tr style="height:5px">
                                 <td colspan="3">
                                 </td>
                              </tr>
                              <tr class="tr_common">
                                 <td style="width: 25px"></td>
                                 <td align="right" style="width: 25px" class="td_label" valign="top" >
                                   <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                 </td>
                                 <td width="10">
                                 </td>
                                 <td style="width: 1000px" align="left" class="td_unline">
                                   <asp:Textbox ID="itemtext" runat="server" CssClass="inface" Height="40px" Width="98%"
                                      TextMode=MultiLine Style="overflow:auto" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                 </td>
                              </tr>
                           </table>
                       </ItemTemplate>
			   		</asp:TemplateColumn>
                   </Columns>
			        </asp:datagrid>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" class="td_label">
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td valign="top" align="left" style="width:100px">
                                <asp:Image ID="btn_Addplan3" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Plan Item" 
                                    onclick="javascript:AddPlan_Click('3');" />
                            </td>
                            <td align="left" style="width: 600px" class="td_label">
                                <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>
                            </td>
                            <td align="left" style="width: 300px" >
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:datagrid id="dg_plan_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
			             AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			           <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			           <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
			           <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
			           <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			           <Columns>
			           <asp:BoundColumn DataField="ippoutplanid" HeaderText="ippoutplanid" Visible="false"></asp:BoundColumn>
                       <asp:BoundColumn DataField="ippoutid" HeaderText="ippoutid" Visible="false"></asp:BoundColumn>
			           <asp:BoundColumn DataField="planid" HeaderText="planid" Visible="false"></asp:BoundColumn>
			           <asp:TemplateColumn HeaderText="" ItemStyle-BorderStyle="None">
			           	<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			           	<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			           	<ItemTemplate>
                           <table class="table_inside" cellspacing="0" cellpadding="0">
                              <tr style="height:5px">
                                 <td colspan="4">
                                 </td>
                              </tr>
                              <tr class="tr_common">
                                 <td style="width: 25px"></td>
                                 <td align="right" style="width: 25px" class="td_label" valign="top" >
                                   <asp:Label ID="itemseqno" runat="server" Font-Bold="True" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                 </td>
                                 <td width="10">
                                 </td>
                                 <td style="width: 1000px" align="left" class="td_unline">
                                   <asp:Textbox ID="itemtext" runat="server" CssClass="inface" Height="40px" Width="98%"
                                       TextMode=MultiLine Style="overflow:auto" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemtext") %>'></asp:Textbox>
                                 </td>
                              </tr>
                           </table>
                       </ItemTemplate>
			   		</asp:TemplateColumn>
                   </Columns>
			        </asp:datagrid>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3">
                    <table>
                        <tr class="tr_common">
                            <td  class="td_label">
                                <b><asp:Label ID="Label65" runat="server" Text="Purpose and Expected Date of Next Contact: The next expected date of contact would be on" ></asp:Label></b>
                            </td>
                            <td  style="width: 120px" class="td_unline"colspan="3" >
                                <asp:TextBox ID="NextContactDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                    onfocus="DataChanged();showcalendar(event, this);" Width="120px"></asp:TextBox>
                            </td> 
                            <td  class="td_label">
                                <b><asp:Label ID="Label4" runat="server" Text="in order to complete:" ></asp:Label></b>
                            </td>
                            <td>&nbsp;</td>
                            <td style="width:auto"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" >
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td style="width: 400px" class="td_label"  >
                                <asp:Radiobutton ID="Frequency_1" groupname="Frequency" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Annual</b>
                                &nbsp;&nbsp;&nbsp;
                                <asp:Radiobutton ID="Frequency_2" groupname="Frequency" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Quarterly</b>
                                &nbsp;&nbsp;&nbsp;
                                <asp:Radiobutton ID="Frequency_3" groupname="Frequency" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Monthly</b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                        <tr>
                            <td width="50%" style="border: medium solid #CC99CC;">
                                <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                    <tr class="tr_common">
                                        <td colspan="5" align=center>
                                            <input type="button" id="btnVerify" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                                onclick="javascript:Verify();return false;" /> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" height="5px">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td colspan="5"></td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td width=10px"></td>
                                            <td width="120px" class="td_label">
                                                <asp:Label ID="l_ipp_verify" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                            </td>
                                        <td width="5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                        <asp:Label ID="VerifyBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">
                                    </td>
                                    <td class="td_label">
                                        <asp:Label ID="l_ippverifytitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width="10px">
                                    </td>
                                    <td class="td_label" style="width: 120px">
                                        <asp:Label ID="l_ipp_verify_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td class="td_unline">
                                        <asp:Label ID="VerifyByDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="50%">
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                    <td colspan="5" align=center>
                                        <input type="button" id="btnSign" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                            onclick="javascript:CheckPwd();return false;" /> 
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="button" id="btnUnLock" runat="server" value="UnLock" style="width: 80px; height: 25px"  
                                            onclick="javascript:UnLock();return false;" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="button" id="btnLock" runat="server" value="Lock" style="width: 80px; height: 25px"  
                                            onclick="javascript:Lock();return false;" /> 
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width=10px"></td>
                                    <td colspan=3 class="td_label">
                                        <asp:Radiobutton ID="approved_yes" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Approve</b>
                                        &nbsp;&nbsp;
                                        <asp:Radiobutton ID="approved_no" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Return</b>
                                    </td>	
                                    <td width="auto"></td>
                                </tr> 
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width=10px"></td>
                                    <td width="120px" class="td_label">
                                        <asp:Label ID="l_ipp_signature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                        <asp:Label ID="SignatureBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto">
                                        <asp:hiddenfield id="SignatureBy_ID" runat="server" value="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td colspan="3">
                                    </td> 
                                    <td class="td_label">
                                        <asp:Label ID="l_ippsigntitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width="10px">
                                    </td>
                                    <td class="td_label" style="width: 120px">
                                        <asp:Label ID="l_ipp_view_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td class="td_unline">
                                        <asp:Label ID="SignatureByDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                        </asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                </tr>
                                <tr>
                                    <td colspan="5" height="5px">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td width="10px">
                                    </td>
                                    <td valign="top" class="td_label">
                                    <b><asp:Label ID="l_comments" runat="server" Text="Comments:" ></asp:Label></b>
                                    </td>
                                    <td width="5px">
                                    </td>
                                    <td colspan=2 class="td_unline" >
                                       <asp:TextBox ID="Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                           runat="server" Width="99%" Height="60" CssClass="inface"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr><td colspan="5" height="5px">
                                </td></tr>
                            </table>
                        </td>
                    </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="3">
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" class="td_label">
                     <b><asp:Label ID="l_logs" runat="server" Text="Logs:" ></asp:Label></b>
                </td>
            </tr>
            <tr class="tr_common">
                <td colspan="3" style="height: 80px" valign="top">
                    <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                        runat="server" Width="99%" Height="80" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
