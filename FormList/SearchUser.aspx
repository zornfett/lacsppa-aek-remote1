<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchUser" Codebehind="SearchUser.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self"></base>    
		<title>:::Select Client:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script language="javascript">
		<!--
		  function SaveUser(SelCon, SelID)
		  {		      
		      var opener=window.dialogArguments;
              if (isIE())
              {
                  opener.AddMultiUsers(SelCon, SelID);                
              }
              else
              {
                  window.opener.AddMultiUsers(SelCon, SelID);  
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
		      <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Text="USER LIST"></asp:label>
	        </td>
	      </tr>		
		  <tr style="height:15px">
		    <td colspan="2">
		      <hr />
		    </td>
		  </tr>   
          <tr style="height: 30px;" align="center" valign="middle">
			<td colspan="2">
              <asp:Button ID="btnSelect" runat="server" Text="Select" Style="width: 120px" CssClass="buttonbluestyle" OnClick="btnSelect_Click"></asp:Button>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnReset" runat="server" Text="Clear" Style="width: 120px" CssClass="buttonbluestyle" OnClick="btnReset_Click"></asp:Button>		    
            </td>
		  </tr>	
          <tr style="height:15px">
		    <td colspan="2">
		      <hr />
		    </td>
		  </tr> 
          <tr align="left">
            <td style="width:10px"></td>
            <td>
             <asp:CheckBoxList ID="UserCheckList" runat="server" DataTextField="employeeName" DataValueField="employeeID">
             </asp:CheckBoxList>
            </td>
          </tr>
          </table>
        </div>
    </form>
</body>
</html>
