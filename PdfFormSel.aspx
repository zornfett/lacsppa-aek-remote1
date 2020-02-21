<%@ Page Language="C#" Inherits="Virweb2.PdfFormSel" Codebehind="PdfFormSel.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head id="Head1" runat="server">
    <title>PDF Forms Library</title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript">
      function search_click() 
      { 
	     str=JTrim(document.getElementById(<%= "'" + uci.ClientID + "'" %>).value);
	     if (str == "") 
	     {
	         alert("The UCI was not entered.");
	         document.form1.uci.focus();
	         return false;
	     }
      }
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div algin="left" style="WIDTH:100%;height:auto">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" height="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Form List:</asp:label>
	     </td>
         <td align="left" width="15%">
            <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                src="./img/supportdesk.ico" title="Support"
                onclick="javascript:window.top.outsidelinks(1);return false;" />             
            &nbsp;
            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                src="./img/help.ico" title="Help"
                onclick="javascript:window.top.outsidelinks(2);return false;" />             
            &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                src="./img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('webLogout.aspx');return false;" />             
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
			<table border='0'>
				<tr> 
                    <td style="width:20px"></td>
					<td style="width: 100px" align="right" width="100px" bgColor="#9fb0f4" height="20"><b>Form Type:</b></td>
					<td style="width: 120px" width="120px" align="left">
					    <asp:DropDownList ID="v_formtype" runat="server" DataValueField="formTypeID" DataTextField="formtype"
                              Height="20" Width="115"  OnSelectedIndexChanged="formtypeIDChange" AutoPostBack="true">
                        </asp:DropDownList>
					</td>
					<td style="width: 100px" align="right" width="100px" bgColor="#9fb0f4" height="20"><b>Consumer:</b></td>
					<td width="5" height="20"></td>
					<td style="width: 100px" width="100px">
					 <asp:TextBox ID="uci" runat="server" Width="90" MaxLength="10" CssClass="LabelText"></asp:TextBox>
                    </td>
                    <td width="5" height="20"></td>
					<td style="width: 350px" width="350px">
					 <asp:label ID="name" runat="server" CssClass="infaceLabel"></asp:label>
                    </td>
					<td style="width: 80px" width="80px" align="right"> 
					 <asp:Button ID="btnSearch" runat="server" Text="OpenForm" Style="width: 80px" CssClass="buttonbluestyle"
                            OnClientClick="javascript:return search_click();" OnClick="btnSearch_Click"></asp:Button>
                    </td>
				</tr>
                <tr style="height:5px">
                    <td colspan="9"></td>
                </tr>
				<tr>
                    <td style="width:20px"></td>
					<td style="width: 100px" align="right" width="100px" bgColor="#9fb0f4" height="20"><b>Form:</b></td>
					<td align="left" colspan="7">
		                <asp:DropDownList ID="v_form" runat="server" DataValueField="number" DataTextField="list_number"
                              Height="20" Width="560px">
                        </asp:DropDownList>
					</td>
				</tr>
			</table>
		</form>
</body>
</html>
