<%@ Page Language="C#" Inherits="Virweb2.AdmPage.AdmSetLabelSetsList" Codebehind="AdmSetLabelSetsList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>:::Label Sets:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javascript" src="../js/common.js"></script>
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="form1" method="post" runat="server">
        <div align="center" style="WIDTH:100%;">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px"
                       src="../img/add.ico" title="New" 
                       onclick="javascript:document.location.replace('AdmSetLabelSetsInfo.aspx');return false;" />
                    &nbsp;      
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Label Setting</asp:label>
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
		    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
            <asp:DataGrid ID="dg_label" runat="server" AllowPaging="false" CssClass="grd_body"
                Visible="True" AutoGenerateColumns="False" AllowSorting="false">
                <HeaderStyle CssClass="grd_head"></HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn DataField="ls_id" HeaderText="ls_id" 
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible="false"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ls_name" HeaderText="Setting Name" 
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ls_desc" HeaderText="Description" 
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ls_CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}"
                        ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                  
                    <asp:TemplateColumn HeaderText="Edit/View">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Delete">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
