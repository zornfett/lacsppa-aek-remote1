<%@ Page Language="C#" Inherits="Virweb2.PdfFormFrame" Codebehind="PdfFormFrame.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head runat="server">
</head>
<frameset rows="120,*" cols="*" frameborder=0 border="0"  framespacing="0" border="0">
  <frame runat="server" ID="controlFrame" name="controlFrame" src="PdfFormSel.aspx" scrolling="Auto" frameborder="0">
  </frame>
  <frame ID="formFrame" name="formFrame" src="eforms/Blank.pdf" FRAMEBORDER=0></frame>
</frameset> 
</html>
