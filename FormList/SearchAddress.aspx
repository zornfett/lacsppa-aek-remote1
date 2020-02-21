<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchAddress" Codebehind="SearchAddress.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self" />  
		<title>:::Search Address:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script type="text/javascript">
		function PostText(uci, createdate) {
          var opener = window.dialogArguments;       
          if (isIE())
          {
              opener.SelectAddress(uci, createdate);
              opener.focus();
              window.close();
          }
          else
          {
              window.opener.SelectAddress(uci, createdate);
              window.opener.focus();
              window.close();
          }
        }

        var lastRowSelected;
        var lastRowSelectedColorUsed;
        function Click_changeBackColor(row) 
        {
            var color = lastRowSelectedColorUsed;
            lastRowSelectedColorUsed = row.style.backgroundColor;
            row.style.backgroundColor = 'LightGreen';
            if (lastRowSelected != null) 
            {
                lastRowSelected.style.backgroundColor = color;
            }
            lastRowSelected = row;
        }
 
        </script> 
</head>
<body>
    <form id="SearchAddressForm" runat="server">
        <div align="center">
        <br />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%">
        <tr><td valign="top" align="center">
		    <asp:label id="TitleAddress" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">ADDRESS LIST</asp:label>
        </td></tr>
        <tr><td></td></tr>
		</table>
		</div>
		<div align="center" style="position: relative; width: 100%; height: 100%; overflow: auto">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%">
		<tr><td valign="top"  align="center" >
			<asp:datagrid id="dg_address" runat="server" CssClass="grd_body"
				Visible="True" AutoGenerateColumns="False" AllowSorting="True">
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
				<Columns>
                	<asp:TemplateColumn HeaderText="PASTE">
						<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px"></ItemStyle>
						<ItemTemplate>
							<asp:ImageButton CommandName="Edit" Runat="server" ID="imgPaste" Width="15px" Height="15px" ImageUrl="../img/view.gif"
									BorderWidth="0"></asp:ImageButton>
						</ItemTemplate>
					</asp:TemplateColumn>
                    <asp:BoundColumn DataField="UCI" HeaderText="UCI"  Visible="false">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CreateDate" HeaderText="CreateDate" Visible="false">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="FacilityName" HeaderText="Name/Contact" Visible="false" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="FacilityAddress_desc" HeaderText="Address">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>					
                </Columns>
			</asp:datagrid>
		</td></tr>
		</table> 
		</div>
    </form>
</body>
</html>
