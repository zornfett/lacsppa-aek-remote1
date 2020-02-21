<%@ Page Language="C#" Inherits="Virweb2.AdmPage.AdmPermissionList" Codebehind="AdmPermissionList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
		<title>::Permission List::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
        <script type="text/javascript">
          function back_click() {
            document.location.replace('AdmUserList.aspx');
          }
        </script> 
	</head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
	<form id="UserList" method="post" runat="server">
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
       	 <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                src="../img/back.ico" title="Back"
                onclick="javascript:back_click();return false;" />          
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Special Permission List:</asp:label>
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
        <table class="table_maindiv">
           <tr class="tr_common" >
               <td style="width: 180px" align="right" width="180" class="td_label" height="20">
                   <b>Select List:</b></td>
               <td width="5" height="20">
               </td>
               <td align="left" width="300" style="width: 300px">
                   <asp:DropDownList ID="sel_permission" runat="server" DataValueField="tb_entry_name"
                         DataTextField="tb_entry_text" Height="25" Width="250" OnSelectedIndexChanged="selperm_SelectedIndexChanged" AutoPostBack=true>
                   </asp:DropDownList>
               </td>
               <td></td>
           </tr>
        </table>
        <br />
        <br />

        <asp:DataGrid ID="dg_permission" runat="server" CssClass="grd_body" HorizontalAlign="center"
            Width="98%" OnEditCommand="RDataEdit" OnCancelCommand="RDataCancel" OnUpdateCommand="RDataUpdate" 
            OnDeleteCommand="RDataDelete" OnItemCommand="dg_permission_ItemCommand" OnItemDataBound="dg_permission_ItemDataBound"
            AutoGenerateColumns="False" AllowSorting="false" ShowFooter="true">
            <HeaderStyle CssClass="grd_head_fix" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
            </HeaderStyle>
            <ItemStyle CssClass="grd_item"></ItemStyle>
            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
            <Columns>
                <asp:TemplateColumn HeaderText="">
                    <ItemTemplate>
                       <span><%# Container.ItemIndex+1 %></span>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="User ID">
                    <ItemTemplate>
                        <asp:Label ID="lblentryname" runat="server" Text='<%# (string)DataBinder.Eval(Container.DataItem, "tb_entry_name") %>'>
                        </asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="new_entryname" runat="server">
                        </asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lblentrytext" runat="server" Text='<%# (string)DataBinder.Eval(Container.DataItem, "tb_entry_text") %>'>
                        </asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="new_entrytext" runat="server">
                        </asp:TextBox>
                    </FooterTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="entrytext" runat="server" Text='<%# (string)DataBinder.Eval(Container.DataItem, "tb_entry_text") %>'>
                        </asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="DELETE/ADD">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="25px" Height="25px"
                                ImageUrl="../img/delete.gif" BorderWidth="0" OnClientClick="return PromptDel('Do you really want to delete this item?');">
                            </asp:ImageButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton CommandName="Insert" runat="server" ID="imgInsert" Width="25px" Height="25px"
                                ImageUrl="../img/add.ico" BorderWidth="0">
                            </asp:ImageButton>
                        </FooterTemplate>
                </asp:TemplateColumn>
                <asp:EditCommandColumn Visible="false" HeaderText="EDIT" ButtonType="PushButton" UpdateText="Update" CancelText="Cancel"
                    EditText="Edit" >
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:EditCommandColumn>
            </Columns>
        </asp:DataGrid>
	</div>
		</form>
	</body>
</HTML>

