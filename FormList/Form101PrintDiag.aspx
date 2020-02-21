<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.Form101PrintDiag" Codebehind="Form101PrintDiag.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head >    
     <base target="_self" />
     <title>::Print Dialog Box::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	 
	 <script type="text/JavaScript" src="../js/common.js"></script>
	 <script type="text/JavaScript">
	 <!--
	   function print_form(printflag)
	   {
	      if (printflag=="2")
	      {	      
	          if (JTrim(document.getElementById("txtStartDate").value)=="")    
	          {
	             alert("Please input start date");
	             document.getElementById("txtStartDate").focus();
	             return;
	          }
	          if (JTrim(document.getElementById("txtEndDate").value)=="")    
	          {
	             alert("Please input end date");
	             document.getElementById("txtEndDate").focus();
	             return;
	          }
	          window.dialogArguments.document.getElementById("PrintStarDate").value = document.getElementById("txtStartDate").value;	          
	          window.dialogArguments.document.getElementById("PrintEndDate").value = document.getElementById("txtEndDate").value;
	          window.returnValue="2";
	          self.close();

	      }
	      else 
	      {	  
	          window.dialogArguments.document.getElementById("PrintStarDate").value = "";
	          window.dialogArguments.document.getElementById("PrintEndDate").value = "";
	          window.returnValue="1";
	          self.close();
	      }
	   }
	 //-->
	 </script>
</head>
<body  style="background-color:whitesmoke;" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
    <div>
        <center>
         <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
         <tr style="height:20px;">
             <td colspan="2"></td>
         </tr>
         <tr style=" height:30px">
            <td ><img src="../img/information.gif" /></td>
            <td align="left"><asp:label id="Info" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black">Please input date range:</asp:label></td>
         </tr>
         <tr style="height:10px;">
            <td colspan="2"></td>
         </tr>
         <tr>
            <td colspan="2">
                <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
                     <tr>
                        <td style="width:10px;"></td>
                        <td>Start Date:</td>
                        <td><asp:TextBox ID="txtStartDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" ></asp:TextBox></td>                        
                     </tr>
                     <tr>
                         <td style="width:10px;"></td>
                        <td>End Date:</td>
                        <td><asp:TextBox ID="txtEndDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" ></asp:TextBox></td>
                     </tr>
                </table>
            </td>
         </tr>         
          <tr style="height:50px;">
            <td colspan="2"></td>
         </tr>
         <tr>
            <td colspan="2" align="center">
                <input type="button" name="btnPrint" id="btnPrint" runat="server" value="Print"  class="buttonbluestyle"  style="width:80px" onclick="javascript:print_form('2');"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" name="btnCancel" id="btnCancel" runat="server" value="Cancel"  class="buttonbluestyle" style="width:80px" onclick="javascript:print_form('1');"/>
            </td>                  
                
         </tr>
         <tr style="height:200px;">
            <td colspan="2"></td>
         </tr>
         </table>
         </center>
         
    </div>
    </form>
</body>
</html>

