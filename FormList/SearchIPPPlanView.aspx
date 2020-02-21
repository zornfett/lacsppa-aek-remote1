<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchIPPPlanView" CodeBehind="SearchIPPPlanView.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::IPP Plan Group Items:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
</head>
<body>
    <form id="SearchIPPPlanView" runat="server">
    <br />
    <br />
    <div>
        <table class="table_full" width="100%">
            <tr>
                <td align="center">
                    <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                        Height="24px">IPP Plan Group Details</asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
          <tr>
             <td class="td_label">
               <table class="table_inside" cellspacing="0" cellpadding="0">
                 <tr class="tr_common">
                   <td align="left" style="width: 600px" class="td_label">
                      <asp:Label ID="l_plan1" runat="server" Font-Bold="True" Text="Plan for Consumer/Family:"></asp:Label>
                   </td>
                   <td align="left" style="width: 400px" >
                   </td>
                 </tr>
               </table>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>
          <tr>
             <td>
                <asp:datagrid id="dg_plan_1" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
			             AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			           <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			           <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
			           <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
			           <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			           <Columns>
			           <asp:TemplateColumn HeaderText="">
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
                                 <td align="right" style="width: 25px" class="td_label" valign="top">
                                   <asp:Label ID="itemseqno" runat="server" Font-Bold="True"
                                      Text='<%# DataBinder.Eval(Container.DataItem, "itemseqno") %>'></asp:Label>.
                                 </td>
                                 <td width="10px">
                                 </td>
                                 <td style="width: auto" align="left" class="td_unline">
                                   <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                       TextMode="MultiLine" Style="overflow:auto" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "planitemdesc") %>'></asp:TextBox>
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
             <td>
             </td>
          </tr>
          <tr class="tr_common">
             <td class="td_label">
               <table class="table_inside" cellspacing="0" cellpadding="0">
                 <tr class="tr_common">
                   <td align="left" style="width: 600px" class="td_label">
                      <asp:Label ID="l_plan2" runat="server" Font-Bold="True" Text="Plan for Generic Supports:"></asp:Label>
                   </td>
                   <td align="left" style="width: 400px" >
                   </td>
                 </tr>
               </table>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>
          <tr>
             <td>
                <asp:datagrid id="dg_plan_2" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
			             AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			           <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			           <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
			           <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
			           <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			           <Columns>
			           <asp:TemplateColumn HeaderText="">
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
                                   <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                      TextMode=MultiLine Style="overflow:auto" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "planitemdesc") %>'></asp:Textbox>
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
             <td>
             </td>
          </tr>
          <tr class="tr_common">
             <td class="td_label">
               <table class="table_inside" cellspacing="0" cellpadding="0">
                 <tr class="tr_common">
                   <td align="left" style="width: 600px" class="td_label">
                      <asp:Label ID="l_plan3" runat="server" Font-Bold="True" Text="Plan for SCLARC Supports:"></asp:Label>
                   </td>
                   <td align="left" style="width: 400px" >
                   </td>
                 </tr>
               </table>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>
          <tr>
             <td>
                <asp:datagrid id="dg_plan_3" runat="server" AllowPaging="false" CssClass="grd_bodynoborder"
			             AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			           <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			           <ItemStyle CssClass="grd_itemnoborder"></ItemStyle>
			           <AlternatingItemStyle CssClass="grd_itemnoborder"></AlternatingItemStyle>
			           <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			           <Columns>
			           <asp:TemplateColumn HeaderText="">
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
                                   <asp:Textbox ID="itemtext" runat="server" CssClass="infaceText" Height="40px" Width="98%" ReadOnly="true"
                                       TextMode=MultiLine Style="overflow:auto" 
                                      Text='<%# DataBinder.Eval(Container.DataItem, "planitemdesc") %>'></asp:Textbox>
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
