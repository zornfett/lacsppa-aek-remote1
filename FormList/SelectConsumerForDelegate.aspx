<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SelectConsumerForDelegate" Codebehind="SelectConsumerForDelegate.aspx.cs" %>

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
		  function SaveConsumer(SelCon)
		  {		      
		      var opener=window.dialogArguments;
              if (isIE())
              {
                  opener.AddMulti(SelCon);                
              }
              else
              {
                  window.opener.AddMulti(SelCon);  
              }
              self.close();
		  }
		//-->
		</script>
</head>
<body>
    <form id="SearchConsumerForm" runat="server">
        <div align="center">
        <br />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="80%">
            <tr align="center">
                <td valign="top">
		            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">SELECT CLIENTS FOR CASE LOAD REASSIGNMENT</asp:label>                    
                </td>
            </tr>
            <tr>
                <td height="10px"></td>
            </tr>
            <tr align="center">
                <td valign="top">
                    <asp:Button ID="btnSelect" runat="server" Text="Submit Selection" Style="width: 200px" CssClass="buttonbluestyle" OnClick="btnSelect_Click"></asp:Button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSelAll" runat="server" Text="Select All" Style="width: 150px" CssClass="buttonbluestyle" OnClick="btnSelAll_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td height="15px"></td>
            </tr>
		    <tr align="left">
                <td valign="top" align="left" style="width:80%">
                    <asp:CheckBoxList ID="ClientCheckList" runat="server" DataTextField="ConsumerUCIName" DataValueField="Delegated" >
                    </asp:CheckBoxList>
                </td>
            </tr>
		</table> 
		</div>
    </form>
</body>
</html>
