<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.SearchICD9" Codebehind="SearchICD9.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self" />    
		<title>:::ICD9 Search:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script type="text/javascript">
        function PostText(SelectedItem)    
        {          
          var FieldName = document.getElementById(<%= "'" + FieldName.ClientID + "'" %>);        
          var opener = window.dialogArguments;
          var pos=SelectedItem.indexOf(" ---- ");
          var v=SelectedItem.substring(0, pos);
          var d=SelectedItem.substring(pos+8, SelectedItem.length); 
          if (isIE())
          {
              var i=eval("opener.document.CderInfo."+FieldName.value);
              var j=eval("opener.document.CderInfo."+FieldName.value+"_desc");
              i.value=v;
              j.value=d;
              opener.focus();
              window.close();
          }
          else
          {
              var i=eval("window.opener.document.getElementById('"+FieldName.value+"')");
              var j=eval("window.opener.document.getElementById('"+FieldName.value+"_desc')");
              i.value=v;
              j.value=d;
              window.opener.focus();
              window.close();
          }
        }       
        
        </script> 
</head>
<body>
    <form id="SearchICD9Form" runat="server">
      <asp:hiddenfield id="FieldName" runat="server" value="" />
      <br />
	  <br />
	  <div>
	  <table class="table_full" width="100%">
		<tr>
		  <td colspan="7" align="center">
            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="24px">ICD9 Search</asp:label><br />
          </td>
		</tr>
        <tr>
         <td style="WIDTH: 80px" align="right" width="80" bgColor="#9fb0f4" height="20"><b>ICD9 Code:</b>
		 </td>
		 <td width="5" height="20"></td>
		 <td width="80" height="20" style="width: 100px">
			<asp:textbox id="icd9_code" runat="server" Width="80"></asp:textbox>
		 </td>
         <td style="WIDTH: 80px" align="right" width="80" bgColor="#9fb0f4" height="20"><b>ICD9 Desc:</b>
		 </td>
		 <td width="5" height="20"></td>
		 <td height="20" style="width: 200px">
			<asp:textbox id="icd9_desc" runat="server" Width="180"></asp:textbox>
		 </td>
		 <td width="200" align="left">
			<asp:button id="btnSearch" Runat="server" Text="Search" onclick="btnSearch_Click"></asp:button>
			<asp:button id="btnPaste" Runat="server" Text="Paste" OnClick="btnPaste_Click"></asp:button>
		 </td>
        </tr>
        <tr>
         <td></td>
         <td colspan="6" align="left">
            <asp:ListBox ID="ICD9List" runat="server" Width="600" Height="400">
			</asp:ListBox>
         </td>         
        </tr>
      </table>
      </div>
    </form>
</body>
</html>
