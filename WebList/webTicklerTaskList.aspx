<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webTicklerTaskList.aspx.cs" Inherits="Virweb2.WebList.webTicklerTaskList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
		<title>:::Tickler List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/javaScript" src="../js/common.js"></script>
        <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.Ticklerlist.submit(); 
          window.focus();   
        }
        function SetMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';    
        }
        function Add_click()
        {
          if (document.Ticklerlist.tickler_flag == "2")
            popupDialog("webTicklerInfoNew.aspx?tickler_flag=2");
          else 
            popupDialog("webTicklerInfoNew.aspx");            
        }
        </script>      
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);"> 
    <script type="text/JavaScript" src="../js/calendar.js"></script>
	<form id="Ticklerlist" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield  id="txt_flag" value="0" runat="server" />
    <asp:hiddenfield  id="tickler_flag" value="0" runat="server" />
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <input type="image" id="btnAddNew" runat="server" alt="New" style="width: 25px;height:25px" 
                src="../img/add.ico" title="New"
                onclick="javascript:Add_click();return false;" />
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Tickler List:</asp:label>
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
       </table>
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
               <tr>
		         <td colspan="2" height="5px" ></td>
		       </tr>
               <tr style="height: 22px;">
                 <td></td>
                 <td align="left" style="width:20%">
                    <asp:Button ID="btn_search" Runat="server" Text="See All" Style="width: 100px;" CssClass="buttonbluestyle" OnClick="btn_search_Click"></asp:Button>                     
                 </td>
		       </tr>	
		       <tr>
		         <td colspan="2" height="2px" ></td>
		       </tr>			
	   </table>
	</div>	
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
				<asp:datagrid id="dg_tickler" runat="server" AllowPaging="False" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<EditItemStyle ForeColor="#004040" BackColor="Lime"></EditItemStyle>
					<Columns>
					    <asp:BoundColumn DataField="TK_KEY" HeaderText="TK_KEY" Visible="False" ></asp:BoundColumn>
					    <asp:BoundColumn DataField="TASKXH" HeaderText="TASKXH" Visible="False" ></asp:BoundColumn>
					    <asp:BoundColumn DataField="clientname" HeaderText="Client Name" SortExpression="clientname">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="tasktype" HeaderText="Tickler Type" SortExpression="tasktype">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="startdate" HeaderText="Start Date" SortExpression="startdate">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>
					    <asp:BoundColumn DataField="duedate" HeaderText="Due Date"  SortExpression="duedate">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="COMPLETEDATE" HeaderText="COMPLETEDATE" Visible="False" ></asp:BoundColumn>	
                        <asp:BoundColumn DataField="COMPLETEDATE" HeaderText="Complete Date"  SortExpression="COMPLETEDATE" 
                             DataFormatString="{0:MM/dd/yyyy}"  HeaderStyle-HorizontalAlign="Center"></asp:BoundColumn>	
					    <asp:TemplateColumn HeaderText="">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_complete" Runat="server" ImageUrl="~/img/calendar.ico" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
					    <asp:BoundColumn DataField="dueflag" HeaderText="dueflag" Visible="false" ></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="View/Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="~/img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="imgDel" Runat="server" ImageUrl="~/img/deletesmall.gif" BorderWidth="0" ></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="frequency" HeaderText="frequency" Visible="false" ></asp:BoundColumn>  
					</Columns>
				</asp:datagrid>
			</div>
		</form>
</body>
</html>

