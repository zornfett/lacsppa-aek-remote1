<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.SearchConsumer" Codebehind="SearchConsumer.aspx.cs" %>

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
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
        <tr align=center><td colspan="2" valign="top">
		    <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">CLIENT LIST</asp:label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="btnView" Font-Bold="true" Height="24px" RepeatDirection="Horizontal" runat="server" RepeatLayout="Flow" 
                     OnSelectedIndexChanged="btnView_SelectedIndexChanged" AutoPostBack=true>
                <asp:ListItem Value="1" Selected >Own</asp:ListItem>
                <asp:ListItem Value="2">All</asp:ListItem>
            </asp:RadioButtonList> 
            <br /><br />
        </td></tr>
        <tr align="center"><td colspan="2" valign="top">
            <asp:Button ID="btnSelect" runat="server" Text="Submit Selection" Style="width: 200px" CssClass="buttonbluestyle" OnClick="btnSelect_Click"></asp:Button>
        </td></tr>
		<tr align=left>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td valign="top">
            <asp:CheckBoxList ID="ClientCheckList" runat="server" DataTextField="ConsumerUCIName">
            </asp:CheckBoxList>
          </td>
        </tr>
		</table> 
		</div>
    </form>
</body>
</html>
