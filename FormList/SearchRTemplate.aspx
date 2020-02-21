<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchRTemplate.aspx.cs" Inherits="Virweb2.FormList.SearchRTemplate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self" />  
		<title>:::Search RTemplate:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script type="text/javascript">
		    function PostText(t_name, t_text) {
		        if (t_name == "&nbsp;") t_name = "";
		        if (t_text == "&nbsp;") t_text = "";

		        var opener = window.dialogArguments;
		        if (isIE()) {
		            opener.document.IDNotesInfo.tx_template.value = t_name;
		            /*
		            if (t_name=="EBilling")
		            {
		            opener.document.IDNotesInfo.tx_id_notes.value="";
		            opener.document.forms[0].NoConfirm.value="1";
		            opener.document.IDNotesInfo.submit();
		            }
		            else
		            */
		            {
		                opener.document.IDNotesInfo.tx_id_notes.value = t_text;
		            }
		            opener.focus();
		            window.close();
		        }
		        else {
		            window.opener.document.getElementById("tx_template").value = t_name;
		            /*
		            if (t_name=="EBilling")
		            {
		            window.opener.document.getElementById("tx_id_notes").value="";
		            window.opener.document.getElementById("NoConfirm").value="1";
		            opener.document.IDNotesInfo.submit();
		            }
		            else
		            */
		            {
		                window.opener.document.getElementById("tx_id_notes").value = t_text;
		            }
		            window.opener.focus();
		            window.close();
		        }
		    }

		    var lastRowSelected;
		    var lastRowSelectedColorUsed;
		    function Click_changeBackColor(row) {
		        var color = lastRowSelectedColorUsed;
		        lastRowSelectedColorUsed = row.style.backgroundColor;
		        row.style.backgroundColor = 'LightGreen';
		        if (lastRowSelected != null) {
		            lastRowSelected.style.backgroundColor = color;
		        }
		        lastRowSelected = row;
		    }
 
        </script> 
</head>
<body>
    <form id="SearchTemplateForm" runat="server">
        <div align="center">
        <br />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%">
        <tr><td valign="top" align="center">
		    <asp:label id="TitleTemplate" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">RTEMPLATES LIST</asp:label>
        </td></tr>
        <tr><td></td></tr>
        <tr align="right"><td valign="top">
            <asp:RadioButton ID="TypeAllID"  Text="Display All Types" GroupName="DisplayType" runat="server" 
              OnCheckedChanged="TypeAllID_CheckedChanged"  AutoPostBack="true" />
            <asp:RadioButton ID="TypeID" Text="Display Current Type Only" GroupName="DisplayType" runat="server" 
              OnCheckedChanged="TypeID_CheckedChanged"  AutoPostBack="true" />
			<br />
		</td></tr>
		</table>
		</div>
		<div align="center" style="position: relative; width: 100%; height: 640px; overflow: auto">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%">
		<tr><td valign="top"  align="center" >
			<asp:datagrid id="dg_templates" runat="server" CssClass="grd_body"
				Visible="True" AutoGenerateColumns="False" AllowSorting="True" onselectedindexchanged="dg_templates_SelectedIndexChanged">
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
                    <asp:BoundColumn DataField="t_name" HeaderText="Name" SortExpression="t_name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
					<asp:BoundColumn DataField="t_text" HeaderText="Text" SortExpression="t_text" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
					<asp:BoundColumn DataField="txty_text" HeaderText="Type" SortExpression="txty_text" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
					<asp:BoundColumn DataField="t_path" HeaderText="TY" SortExpression="t_path" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
				</Columns>
			</asp:datagrid>
		</td></tr>
		</table> 
		</div>
    </form>
</body>
</html>
