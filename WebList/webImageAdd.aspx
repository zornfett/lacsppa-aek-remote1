<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webImageAdd.aspx.cs" Inherits="Virweb2.WebList.webImageAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self"></base>
    <title>:::Document Info:::...</title>
    <link href="~/css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/JavaScript" src="../js/common.js"></script>
    	<script type="text/javascript">
		<!--
    		    function Refresh_Data(flag) {
		        // alert("Update successful!");
		        var opener = window.dialogArguments;
		        if (isIE()) {
		            opener.RefreshMyData();
		        }
		        else {
		            window.opener.RefreshMyData();
		        }
		        if (flag == 1) {
		            self.close();
		        }
		        else {
		            self.focus();
		        }
		    }
        //-->		
		</script>
</head>
<body>
    <form id="form1" runat="server">
        <div align="left" style="width: 98%">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 30px;" valign="middle">
                    <td align="center">
                        <asp:Label ID="Info" runat="server" Font-Size="Medium" Font-Bold="True" ForeColor="blue">Click the 'Browse' button to select the file then click 'Upload Selected Document'</asp:Label>
                    </td>
                    <td align="left" style="width: 200px">
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 30px;" valign="middle" >
                    <td>
                        <asp:Label ID="lbl_imagepath" runat="server" Text="Document Path:" ForeColor="Navy"></asp:Label>
                    </td>
                    <td>
                        <input class="text" id="Image" type="file" name="Image" runat="server" style="width: 560px" />
                    </td>
                </tr>
                <tr style="height: 20px;" valign="middle" >
                    <td>
                        <asp:Label ID="lbl_desc" runat="server" Text="Description:" ForeColor="Navy"></asp:Label>
                    </td>
                    <td>
					    <asp:textbox id="description" runat="server" Width="550" MaxLength="100"></asp:textbox>
                    </td>
                </tr>
            </table> 
            <asp:Button ID="btnAdd" runat="server" Text="Upload Selected Document" CssClass="buttonbluestyle" OnClick="btnAdd_Click">
            </asp:Button>
        </div>
    </form>
</body>
</html>
