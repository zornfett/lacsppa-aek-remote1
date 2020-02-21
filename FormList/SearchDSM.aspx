<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.SearchDSM" Codebehind="SearchDSM.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self" />
		<title>:::DSM Search:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript" src="../js/common.js"></script>
		<script type="text/javascript">
        function PostText(SelectedItem)    
        {
          var FieldName = document.getElementById(<%= "'" + FieldName.ClientID + "'" %>); 
          var FormName =  document.getElementById(<%= "'" + FormName.ClientID + "'" %>);      
          var opener = window.dialogArguments;
          var pos=SelectedItem.indexOf(" ---- ");
          var v=SelectedItem.substring(0, pos);
          var d=SelectedItem.substring(pos+6, SelectedItem.length);
          if (isIE())
          {
             if(FormName.value.toString() == "BULESHEETInfo")
             {
                var i=eval("opener.document.BULESHEETInfo."+FieldName.value);
                var j=eval("opener.document.BULESHEETInfo."+FieldName.value+"_text");
                i.value=v;
                j.value=d;
                opener.focus();
                window.close();
             }
             else if(FormName.value.toString() == "Turning3Info")
             {
                var i=eval("opener.document.Turning3Info."+FieldName.value);
                var j=eval("opener.document.Turning3Info."+FieldName.value+"_text");
                i.value=v;
                j.value=d;
                opener.focus();
                window.close();
             }
             else
             {
                var i=eval("opener.document.CderInfo."+FieldName.value);
                var j=eval("opener.document.CderInfo."+FieldName.value+"_text");
                i.value=v;
                j.value=d;
                opener.focus();
                window.close();
             }
          }
          else
          {
              var i=eval("window.opener.document.getElementById('"+FieldName.value+"')");
              var j=eval("window.opener.document.getElementById('"+FieldName.value+"_text')");
              i.value=v;
              j.value=d;
              window.opener.focus();
              window.close();
          }
        }

        function RemoveText(str)    
        {          
          var FieldName = document.getElementById(<%= "'" + FieldName.ClientID + "'" %>);  
          var FormName =  document.getElementById(<%= "'" + FormName.ClientID + "'" %>);            
          var opener = window.dialogArguments;
          if (isIE())
          {
             if(FormName.value.toString() == "BULESHEETInfo")
             {
                var i=eval("opener.document.BULESHEETInfo."+FieldName.value);
                var j=eval("opener.document.BULESHEETInfo."+FieldName.value+"_text");
                i.value=str.toString();
                j.value=str.toString();
                opener.focus();
                window.close();
             }
             if(FormName.value.toString() == "Turning3Info")
             {
                var i=eval("opener.document.Turning3Info."+FieldName.value);
                var j=eval("opener.document.Turning3Info."+FieldName.value+"_text");
                i.value=str.toString();
                j.value=str.toString();
                opener.focus();
                window.close();
             }
             else
             {
                var i=eval("opener.document.CderInfo."+FieldName.value);
                var j=eval("opener.document.CderInfo."+FieldName.value+"_text");
                i.value=str.toString();
                j.value=str.toString();
                opener.focus();
                window.close();
             }
          }
          else
          {
              var i=eval("window.opener.document.getElementById('"+FieldName.value+"')");
              var j=eval("window.opener.document.getElementById('"+FieldName.value+"_text')");
              i.value=str.toString();
              j.value=str.toString();
              window.opener.focus();
              window.close();
          }
        }    
        </script>
</head>
<body>
    <form id="SearchDSMForm" runat="server">
      <asp:hiddenfield id="FieldName" runat="server" value="" />
      <asp:hiddenfield id="FormName"  runat="server" value="" />
      <br />
	  <br />
	  <div align="center">
	  <table class="table_full" width="100%">
		<tr>
		  <td colspan="7" align="center">
            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="24px">DSM Search</asp:label><br>
          </td>
		</tr>
        <tr>
         <td style="WIDTH: 120px" align="right" width="80" bgColor="#9fb0f4" height="20"><b>DSM Code:</b>
		 </td>
		 <td width="5" height="20"></td>
		 <td width="80" height="20" style="width: 100px">
			<asp:textbox id="dtcode" runat="server" Width="80"></asp:textbox>
		 </td>
         <td style="WIDTH: 120px" align="right" width="80" bgColor="#9fb0f4" height="20"><b>DSM Desc:</b>
		 </td>
		 <td width="5" height="20"></td>
		 <td width="200" height="20" style="width: 200px">
			<asp:textbox id="dtdesc" runat="server" Width="180"></asp:textbox>
		 </td>
		 <td width="200">
			
		 </td>
        </tr>
        <tr>
            <td colspan="7" align="left">
                <asp:button id="btnSearch" Runat="server" Text="Search" onclick="btnSearch_Click"></asp:button>
                <asp:Button ID="btnClear" runat="server" Text="Clear" onclick="btnClear_Click" ></asp:Button>
			    <asp:button id="btnPaste" Runat="server" Text="Paste" onclick="btnPaste_Click"></asp:button>
                <asp:Button ID="btnUnknown" runat="server" Text="Unknown" 
                    onclick="btnUnknown_Click" ></asp:Button>
                <asp:Button ID="btnRemove" runat="server" Text="Remove code from CDER" 
                    onclick="btnRemove_Click" ></asp:Button>
            
            </td>
        
        </tr>
        <tr>
         <td colspan="7" align="center">
            <asp:ListBox ID="DSMList" runat="server" Width="800" Height="400">
			</asp:ListBox>
         </td>
        </tr>
      </table>
      </div> 
    </form>
</body>
</html>
