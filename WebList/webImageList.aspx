<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webImageList.aspx.cs" Inherits="Virweb2.WebList.webImageList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self"></base>
    <title>:::Document Info:::...</title>
    <link href="~/css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
    <!--
        function add_click() 
        {
          var c_key = document.getElementById(<%= "'" + keyuci.ClientID + "'" %>);     
          var imgkey = document.getElementById(<%= "'" + imgkey.ClientID + "'" %>);
          if (imgkey.value != "")       
            popupDialogSmall("webImageAdd.aspx?c_key="+c_key.value+"&img_key="+imgkey.value);
          else
            popupDialogSmall("webImageAdd.aspx?c_key="+c_key.value);
        }

        function RefreshMyData()    
        {        
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';       
          window.document.form1.submit(); 
          window.focus();   
        }
    //-->
    </script>
</head>
<body id="body" runat="server">
    <form id="form1" runat="server">
        <asp:hiddenfield id="keyuci" runat="server" value="0" />
        <asp:hiddenfield id="imgkey" runat="server" value="0" />
		<asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
            <div align="center" style="WIDTH:100%;">
		       <table id="headericon" runat="server" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" 
                       src="../img/add.ico" title="New" onclick="javascript:add_click();" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('../weblist/webConsumerList.aspx');return false;" />          
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Document List:</asp:label>
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
            <div align="left" style="WIDTH:100%;">
		       <table id="headertitle" runat="server" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" visible=false>
                 <tr>
		           <td height="10px"></td>
		         </tr>
                 <tr style="height: 22px;">
                   <td align="left">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
                     <input type="button" name="btnAdd_2" id="btnAdd_2" value="Add" class="buttonbluestyle" style="width:60px;"   
                          onclick="javascript:add_click();" /> 
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          
		             <asp:Label ID="Title" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="blue"><b>Document List</b></asp:Label>
                   </td>
                 </tr>
               </table>
            </div>
            <br />	
		    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
                <asp:DataGrid ID="dg_img" runat="server" PageSize="20" AllowPaging="True" CssClass="grd_body"
                    Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                    <HeaderStyle CssClass="grd_head"></HeaderStyle>
                    <ItemStyle CssClass="grd_item"></ItemStyle>
                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                    <Columns>
                        <asp:BoundColumn DataField="FileName" HeaderText="FileName" Visible="false" SortExpression="FileName"
                            ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Upload_date" HeaderText="Upload DateTime" SortExpression="Upload_date"
                            ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="FileName" HeaderText="View"  
                            ItemStyle-HorizontalAlign="center" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="img_key" HeaderText="img_key" Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="description" HeaderText="Description" Visible="true" SortExpression="description"
                            ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="DELETE">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            <ItemTemplate>
                                <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                    ImageUrl="~/img/delete.gif" BorderWidth="0"></asp:ImageButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" Visible="True" CssClass="grd_paitem"></PagerStyle>
                </asp:DataGrid>
            <br />
        </div>
    </form>
</body>
</html>
