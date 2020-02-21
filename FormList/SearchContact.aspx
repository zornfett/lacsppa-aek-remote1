<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchContact" Codebehind="SearchContact.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
        <base target="_self"></base>    
		<title>:::Select Client:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script language="javascript">
		<!--
		  function PostContact(Name,Relation,Address1,Address2,Phone,ID) {
		      if (Name == "&nbsp;") Name = "";
		      if (Relation == "&nbsp;") Relation = "";
		      if (Address1 == "&nbsp;") Address1 = "";
		      if (Address2 == "&nbsp;") Address2 = "";
		      if (Phone == "&nbsp;") Phone = "";
		      if (ID == "&nbsp;") ID = "";
		      var opener=window.dialogArguments;
              if (isIE())
              {
                  opener.SelectContact(Address1, Address2, Phone, ID);                
              }
              else
              {
                  window.opener.SelectContact(Address1, Address2, Phone, ID);  
              }
              self.close();
		  }
		//-->
		</script>
</head>
<body>
    <form id="SearchUserForm" runat="server">
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan="2">
		      <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Text="CONTACT LIST"></asp:label>
		    </td>
	      </tr>		
		  <tr style="height:15px">
		    <td colspan="2">
		    </td>
		  </tr>  
          <tr align="left">
            <td style="width:10px"></td>
            <td>
            <asp:datagrid id="dg_contact" runat="server" AllowPaging="False" CssClass="grd_body"
				      AutoGenerateColumns="False" AllowSorting="False" >
				<HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
				<Columns>
				<asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="s_number" HeaderText="s_number" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="Name" HeaderText="Name">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
				<asp:BoundColumn DataField="Relationship" HeaderText="Relationship">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="s_address_line_2" HeaderText="Address">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="CityAddress" HeaderText="City/State/Zip">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
				<asp:BoundColumn DataField="PhoneStr" HeaderText="Phone">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                </Columns>
			</asp:datagrid> 
            </td>
          </tr>	
        </table>
        </div>
    </form>
</body>
</html>
