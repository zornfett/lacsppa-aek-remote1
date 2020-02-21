
<%@ Page Language="C#" Inherits="Virweb2.FormList.FormLawEnforceList" Codebehind="FormLawEnforceList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self" />
    <title>:::SCLARC Law Enforcement Liaison:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function RefreshMyData()    
        {         
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.ForLawList.submit(); 
          window.focus();   
        }

        function back_click() {
          document.location.replace('../WebList/WebForms.aspx');
        }
    </script>
</head>
<body onload="onloadsizechg(80);" onresize="onloadsizechg(80);">
    <form id="ForLawList" method="post" runat="server">
        <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
        <div align="center" style="WIDTH:100%;">
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                       src="../img/add.ico" title="New" />
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print" visible="false"
                       onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Law Enforcement Liaison:</asp:label>
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
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
               <tr style="height: 30px;" valign="middle"> 
                    <td align="left" >
		               &nbsp;&nbsp;&nbsp;&nbsp;<b>
		               <asp:label ID="SearchTitle" runat="server">Search By Name:</asp:label>
		               </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                   Last Name:&nbsp;&nbsp;&nbsp; 		            
                          <asp:TextBox ID="s_lastname" runat="server" Style="width: 150px" Width="150px" MaxLength="25"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="s_firstname" runat="server" Style="width: 150px" Width="150px" MaxLength="25"></asp:TextBox> 
                    </td>
                    <td>
				       <asp:Button ID="btnSearch" Runat="server" Text="Search" CssClass="buttonbluestyle"  Width="90px"  OnClick="btnSearch_Click" ></asp:Button>                    
                    </td>
                </tr>	
		    </table>
        </div>
		<div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
            <asp:DataGrid ID="dg_Form" runat="server" AllowPaging="False" CssClass="grd_body"
                    Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                </HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn DataField="id" HeaderText="id" Visible="False" ></asp:BoundColumn>    
                    <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" SortExpression="CreateDate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="uci" HeaderText="UCI" SortExpression="uci">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="uciname" HeaderText="Consumer Name" SortExpression="uciname">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>                   
                    <asp:BoundColumn DataField="rc_name" HeaderText="RC" SortExpression="rc_name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Booking" HeaderText="Booking #" SortExpression="Booking">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="RcServiceFrom" HeaderText="Referral from" SortExpression="RcServiceFrom">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="RcServiceVia" HeaderText="Referral Via" SortExpression="RcServiceVia">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>                                                        
                    <asp:TemplateColumn HeaderText="View/Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="DELETE">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>                    
                </Columns>
                <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>


