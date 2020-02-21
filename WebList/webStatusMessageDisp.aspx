<%@ Page Language="C#" Inherits="Virweb2.WebList.webStatusMessageDisp" Codebehind="webStatusMessageDisp.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">    
    <base target="_self"></base>
    <title>..:: Display Status Message ::..</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">    
</head>
<body>
    <center>
    <form id="form1" runat="server">
         <input name="content" type="hidden" id="content" runat="server" value="" />
          <table  cellpadding="0" cellspacing="0" width="100%" border="0" >
               <tr style="height:20px">
                   <td align="left">
                       <table  class="table_common" cellpadding="0" cellspacing="0" width="90%" border="0" >
                         <tr class="tr_common" style="height:20px">
                              <td><b>Announced Date:</b></td>
                              <td class="td_unline" style="width: 90px;">
                                     <asp:label id="AnnouncedDate" runat="server" CssClass="infaceLabel"></asp:label>
                              </td>  
                              <td style="width:20px;"></td>
                              <td><b>Description:</b></td>
                               <td class="td_unline" style="width: 210px;">
                                   <asp:label id="Description" runat="server" CssClass="infaceLabel"></asp:label>
                               </td>  
                         </tr>
                       </table>  
                   </td>  
               </tr>              
               <tr style="height:4px"><td></td></tr>
               <tr>
                   <td  style="height:460px;"  align="center"><SCRIPT src="../js/message.js"></SCRIPT></td>
               </tr>
               <tr style="height:20px">
                   <td  align="center"><input type="button" class="buttonbluestyle" Style="width: 60px" name="close" id="close"  value="Close" runat="server" onclick="javascript:window.close();"/></td>
               </tr>
          </table>
          
    </form>
    </center>
</body>
</html>
