<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.WebList.WebForms" Codebehind="WebForms.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
	<title>:::Forms:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
    <script type="text/javascript">
        function LinkClick(fileurl, fname) {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';
            var Linkfile = document.getElementById(<%= "'" + Linkfile.ClientID + "'" %>);        
            Linkfile.value = fileurl;  
            var Linkname = document.getElementById(<%= "'" + Linkname.ClientID + "'" %>);      
            Linkname.value = fname;
            window.document.FormList.submit();   
            
            document.location.replace(fileurl);
        }

    </script>
</head>
<body>
<form id="FormList" method="post" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="Linkfile" runat="server" value="0" />
	<asp:hiddenfield id="Linkname" runat="server" value="0" />
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Form List:</asp:label>
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
    <div align="left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <b>Select Category:</b>&nbsp;&nbsp;&nbsp;
	    <asp:DropDownList ID="f_Category" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  
				      Width="250px" AutoPostBack="True" OnSelectedIndexChanged="btnSearch_Click">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div> 
    <div align="center" style="position:relative;WIDTH:98%; height:180px; overflow: auto " >
		<asp:datagrid id="dg_cr" runat="server" AllowPaging="False" CssClass="grd_body" Width="96%"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True"
					BorderStyle="None" Font-Bold="True">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
			    <asp:TemplateColumn HeaderText="Form Name" SortExpression="f_name">
			        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" width="250px" />
				    <ItemTemplate>
					   <asp:HyperLink id=hymoreinfo runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.f_name") %>' NavigateUrl="#herf_md">
					   </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="f_desc" HeaderText="Form Description" SortExpression="f_desc" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="f_path" HeaderText="f_path" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="f_date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="f_date" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
			    <asp:BoundColumn DataField="f_agency" HeaderText="Agency" SortExpression="f_agency" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="tb_entry_text" HeaderText="Category" SortExpression="tb_entry_text" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
                <asp:BoundColumn DataField="f_name" HeaderText="f_name" Visible="False"></asp:BoundColumn>
			</Columns>
		</asp:datagrid>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:label id="TitleAdm" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px" Visible="false">Administrative Forms</asp:label>
    <br />
    <div align="center" style="position:relative;WIDTH:98%; height:180px; overflow: auto " >
		<asp:datagrid id="dg_adcr" runat="server" AllowPaging="false" CssClass="grd_body" Width="96%"
					Visible="False" AutoGenerateColumns="False" AllowSorting="True"
					BorderStyle="None" Font-Bold="True">
					<HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
			    <asp:TemplateColumn HeaderText="Form Name" SortExpression="f_name" >
			        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" width="250px" />
				    <ItemTemplate>
					   <asp:HyperLink id=hymoreinfo runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.f_name") %>' NavigateUrl="#herf_md">
					   </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="f_desc" HeaderText="Form Description" SortExpression="f_desc" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="f_path" HeaderText="f_path" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="f_date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="f_date" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
			    <asp:BoundColumn DataField="f_agency" HeaderText="Agency" SortExpression="f_agency" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
				<asp:BoundColumn DataField="tb_entry_text" HeaderText="Category" SortExpression="tb_entry_text" >
				    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
				</asp:BoundColumn>
			</Columns>
		</asp:datagrid>
    </div>
</form>
</body>
</html>

