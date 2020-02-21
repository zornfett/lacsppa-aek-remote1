<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.SearchDrug" Codebehind="SearchDrug.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self" />    
		<title>:::Search Drug:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script type="text/javascript">
        function PostText(SelectedItem)    
        {
          var FieldName = document.getElementById(<%= "'" + FieldName.ClientID + "'" %>);        
          var opener = window.dialogArguments;
          var pos=SelectedItem.indexOf("     ");
          var SubItem=SelectedItem.substring(pos+5, SelectedItem.length);
          var pos1=SubItem.indexOf("     ");
          var v=SubItem.substring(0, pos1);
          var d=SubItem.substring(pos1+5, SubItem.length);
          v=v.substring(0,30);
          d=d.substring(0,30);
          if (isIE())
          {
             var i=eval("opener.document.MedicalInfo."+FieldName.value);
             var j=eval("opener.document.MedicalInfo.dosage"+FieldName.value.substring(3, FieldName.value.length));
             i.value=v;
             j.value=d;
             opener.focus();
             window.close();
          }
          else
          {
              var i=eval("window.opener.document.getElementById('"+FieldName.value+"')");
              var j=eval("window.opener.document.getElementById('dosage"+FieldName.value.substring(3, FieldName.value.length)+"')");
              i.value=v;
              j.value=d;
              window.opener.focus();
              window.close();
          }
        }       
        
        </script> 
</head>
<body>
    <form id="SearchDrugForm" runat="server">
      <asp:hiddenfield id="FieldName" runat="server" value="" />
      <br>
	  <br>
	  <div align="center">
	  <table class="table_full" width="100%">
		<tr>
		  <td colspan=7 align=center>
            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="24px">Medication Search</asp:label><br>
          </td>
		</tr>
        <tr>
         <td style="WIDTH: 80px" align="right" width="80" bgColor="#9fb0f4" height="20"><b>Drug Code:</b>
		 </td>
		 <td width="5" height="20"></td>
		 <td width="80" height="20" style="width: 100px">
			<asp:textbox id="ProductNo" runat="server" Width="80"></asp:textbox>
		 </td>
         <td style="WIDTH: 80px" align="right" width="80" bgColor="#9fb0f4" height="20"><b>Drug Name:</b>
		 </td>
		 <td width="5" height="20"></td>
		 <td width="200" height="20" style="width: 200px">
			<asp:textbox id="DrugName" runat="server" Width="180"></asp:textbox>
		 </td>
		 <td width=200 align=left>
			<asp:button id="btnSearch" Runat="server" Text="Search" onclick="btnSearch_Click"></asp:button>
			<asp:button id="btnPaste" Runat="server" Text="Paste" onclick="btnPaste_Click"></asp:button>
		 </td>
        </tr>
        <tr>
         <td></td>
         <td colspan=6 align=left>
            <asp:ListBox ID="DrugList" runat="server" Width="600" Height="400">
			</asp:ListBox>
         </td>
        </tr>
      </table>
      </div> 
    </form>
</body>
</html>
