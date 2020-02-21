<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIPPPlanFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIPPPlanFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Support Plans</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
         
    <script type="text/JavaScript">     
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshPlanData(document.IPPPlan.TabNo.value);                 
        }
        else
        {
            window.opener.RefreshPlanData(document.IPPPlan.TabNo.value);  
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

        this.style.visibility = 'hidden';
        /*
        if (IsDate(document.getElementById("PeriodStart").value, false) != "true") 
		{
           alert("Please input Start Date!");
           document.IPPPlan.PeriodStart.focus();
           return false;          
        }

        if (IsDate(document.getElementById("PeriodEnd").value, false) != "true") 
		{
           alert("Please input End Date!");
           document.IPPPlan.PeriodEnd.focus();
           return false;          
        }
        */

        return true;
    }

    function SelectPlanItems(IPPPlanGroupID) {
        document.IPPPlan.selplangroupid.value = IPPPlanGroupID;
        
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '1';        
        window.document.IPPPlan.submit();
        window.focus();   
        
        return true;
    }
     
    function AddPlan_Click(PlanID) {
        document.IPPPlan.addplanid.value = PlanID;
        
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '2';        
        window.document.IPPPlan.submit();
        window.focus();   
        
        return true;
    }

    function Reset_Click(Section) {
        document.IPPPlan.resetid.value = Section;
        
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '3';        
        window.document.IPPPlan.submit();
        window.focus();   
        
        return true;
    }

    function RemoveItem_Click(PlanID, SeqNo) {
        var itemtext;
        var index=SeqNo;
        if (index < 10) 
        { 
           itemtext = document.getElementById("dg_plan_"+PlanID+"_ctl0" + index + "_itemtext");
           itemtext.value = "";
        }
        else
        {
           itemtext = document.getElementById("dg_plan_"+PlanID+"_ctl" + index + "_itemtext");
           itemtext.value = "";
        }

       return false;
    }

    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="IPPPlan" runat="server"> 
    <input type="hidden" name="selplangroupid" id="selplangroupid" value="" runat="server" />
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="addplanid" runat="server" value="0" />
    <asp:hiddenfield id="ippoutid" runat="server" value="" />
    <asp:hiddenfield id="resetid" runat="server" value="" />
    <asp:hiddenfield id="TabNo" runat="server" value="0" />
    <asp:hiddenfield id="mwcenable" runat="server" value="0" />
    
    <asp:hiddenfield id="ClientLast" runat="server" value="" />
    <asp:hiddenfield id="ClientFirst" runat="server" value="" />
    <asp:hiddenfield id="ClientTitle" runat="server" value="" />
    <asp:hiddenfield id="ClientTitle2" runat="server" value="" />
    
    <asp:hiddenfield id="Hasreset1" runat="server" value="0" />
    <asp:hiddenfield id="Hasreset2" runat="server" value="0" />
    <asp:hiddenfield id="Hasreset3" runat="server" value="0" />
    <asp:hiddenfield id="Hasreset4" runat="server" value="0" />

    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td style="width:600px">
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Desired Outcome & Plan Details</asp:label> 
	        </td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick=" this.style.visibility = 'hidden';" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick=" this.style.visibility = 'hidden';" onclick="btnAdd_Click"></asp:button>
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:650px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
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
               <input type="button" value="Select" style="width:100px" ID="PlanSel" runat="server" class="buttonbluestyle" />                     
              </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr>
             <td align="left" style="width: 150px" class="td_label" valign="top">
               <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Text="Desired Outcome:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
               <div>
               <asp:Textbox ID="desiredoutcome" runat="server" CssClass="inface" Height="60px" Width="98%"
                   TextMode=MultiLine Style="overflow:auto"></asp:Textbox>
               <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="desiredoutcome" ShowModal="true"
                   runat="server">
               </cc1:UltimateSpell>
               </div>
             </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr>
             <td colspan="3" align="left" class="td_label" valign="top">
               <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="OUTCOME WILL BE MET WHEN:"></asp:Label>
             </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr>
             <td colspan="3" align="left" class="td_unline">
               <asp:Textbox ID="OutcomeMet" runat="server" CssClass="inface" Height="60px" Width="98%"
                   TextMode=MultiLine Style="overflow:auto"></asp:Textbox>
               <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="OutcomeMet" ShowModal="true"
                   runat="server">
               </cc1:UltimateSpell>
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
                      &nbsp;&nbsp;&nbsp;
                      <asp:Image ID="btn_Reset1" runat="server" Height="25px" Width="25px" ImageUrl="../img/refresh.jpg" ToolTip="Reset Plan Item" 
                          onclick="javascript:Reset_Click('1');" />
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
                                 <td style="width: 50px">
                                   <asp:Image ID="delete" runat="server" Height="25px" Width="25px" ImageUrl="../img/delete.gif" ToolTip="Delete Plan Item" 
                                     onclick=<%# "javascript:RemoveItem_Click('1','"+ (Container.ItemIndex+2) +"');" %> />
                                 </td>
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
                      &nbsp;&nbsp;&nbsp;
                      <asp:Image ID="btn_Reset2" runat="server" Height="25px" Width="25px" ImageUrl="../img/refresh.jpg" ToolTip="Reset Plan Item" 
                          onclick="javascript:Reset_Click('2');" />
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
                                 <td style="width: 50px">
                                   <asp:Image ID="delete" runat="server" Height="25px" Width="25px" ImageUrl="../img/delete.gif" ToolTip="Delete Plan Item" 
                                     onclick=<%# "javascript:RemoveItem_Click('2','"+ (Container.ItemIndex+2) +"');" %> />
                                 </td>
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
                      &nbsp;&nbsp;&nbsp;
                      <asp:Image ID="btn_Reset3" runat="server" Height="25px" Width="25px" ImageUrl="../img/refresh.jpg" ToolTip="Reset Plan Item" 
                          onclick="javascript:Reset_Click('3');" />
                   </td>
                   <td align="left" style="width: 600px" class="td_label">
                      <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for Lanterman Support:"></asp:Label>
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
                                 <td style="width: 50px">
                                   <asp:Image ID="delete" runat="server" Height="25px" Width="25px" ImageUrl="../img/delete.gif" ToolTip="Delete Plan Item" 
                                     onclick=<%# "javascript:RemoveItem_Click('3','" + (Container.ItemIndex+2) +"');" %> />
                                 </td>
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
                      <asp:Image ID="btn_Addplan4" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Plan Item" 
                          onclick="javascript:AddPlan_Click('4');" />
                      &nbsp;&nbsp;&nbsp;
                      <asp:Image ID="btn_Reset4" runat="server" Height="25px" Width="25px" ImageUrl="../img/refresh.jpg" ToolTip="Reset Plan Item" 
                          onclick="javascript:Reset_Click('4');" />
                   </td>
                   <td align="left" style="width: 600px" class="td_label">
                      <asp:Label ID="l_plan4" runat="server" Font-Bold="True" Text="Plan for Medicaid Waiver Deficits:"></asp:Label>
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
                <asp:datagrid id="dg_plan_4" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
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
                                 <td style="width: 50px">
                                   <asp:Image ID="delete" runat="server" Height="25px" Width="25px" ImageUrl="../img/delete.gif" ToolTip="Delete Plan Item" 
                                     onclick=<%# "javascript:RemoveItem_Click('4','"+ (Container.ItemIndex+2) +"');" %> />
                                 </td>
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
        </table>
    </div>
    </form>
</body>
</html>
