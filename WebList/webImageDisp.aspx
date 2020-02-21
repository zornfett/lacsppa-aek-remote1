<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webImageDisp.aspx.cs" Inherits="Virweb2.WebList.webImageDisp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head id="Head1" runat="server">
    <title>View Image</title>
    <script language="javascript">
    <!--
        function img_zoom(e, o) {
            var zoom = parseInt(o.style.zoom, 10) || 100;
            zoom += event.wheelDelta / 12;
            if (zoom > 0) o.style.zoom = zoom + '%';
            return false;
        }
        
      
    //-->
    </script>
</head>
<body style="background-color:Black" >
    <form id="form1" runat="server">
    <div> 
        <table align="center" height="100%" width="100%" border="0" cellpadding="0">
        <tr>
           <td align="center">        
        <asp:image id="ViewImage" runat="server" bordercolor="#8080ff" borderwidth="1" borderstyle="Solid" height=400px></asp:image>
        </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>

