<%@ Page Language="C#" Inherits="Virweb2.WebList.webLinkList" Codebehind="webLinkList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
	<title>::Web Link List::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
    function RefreshMyData()    
    {        
      var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
      myHdnRefreshData.value = '1';       
      window.document.LinkList.submit(); 
      window.focus();   
    }

    </script> 
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
	<form id="LinkList" method="post" runat="server">
	<asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Link List:</asp:label>
	     </td>
         <td align="left" width="15%">
            <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                src="../img/supportdesk.ico" title="Support"
                onclick="javascript:window.top.outsidelinks(1);return false;" />             
            &nbsp;
            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                src="../img/help.ico" title="Help"
                onclick="javascript:window.top.outsidelinks(2);return false;" />             
            &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                src="../img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
       <asp:table ID="LinkTable" runat="server">
       </asp:table>
	</div>
</form>
</body>
</html>

