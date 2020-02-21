<%@ Page Language="c#" Inherits="Virweb2.ReportList.ReportTransactions" Codebehind="ReportTransactions.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Transactions Status Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report()
        {
           NoConfirmExit();
           var qsrq,jzrq;
           qsrq=document.form1.txt_qsrq.value;
           jzrq=document.form1.txt_jzrq.value;  
           if (JTrim(qsrq)=="")           
           {
              alert("Please input Start Date");
              document.getElementById("txt_qsrq").focus();
              return;
           }
           if (JTrim(jzrq)=="")           
           {
              alert("Please input End Date");
              document.getElementById("txt_jzrq").focus();
              return;
           }
           winhref("PrintTransactionRpt.aspx?qsrq=" + qsrq+"&jzrq="+jzrq,"PrintTransactionRpt");           
        }
    </script>
    
</head>
<body>
     <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
         <input id="NoConfirm" type="hidden" value="0" />
         <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 60%">
            <tr style="height:100px">
                <td colspan="2"></td>
            </tr>
            <tr style="height:30px">
                <td colspan="2" align="center"><h3>Transaction Summary Report by Group</h3></td>
            </tr>
            
            <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>Please enter Start Date of Transaction:</td>    
                <td> <asp:TextBox ID="txt_qsrq"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:TextBox></td>              
            </tr>
            <tr>
                <td>Please enter End Date of Transaction:</td>    
                <td> <asp:TextBox ID="txt_jzrq"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:TextBox></td>              
            </tr>
            
             <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <input type="button" name="btn_ok" id="btn_ok" value="OK" class="buttonbluestyle" style="width:80px;"  onclick="javascript:print_report();" />
                    <input type="button" name="btn_cancel" id="btn_cancel" value="Cancel" class="buttonbluestyle" style="width:80px;"  onclick="javascript:self.close();"/> 
                </td>    
            </tr>            
        </table>
        </center>
        
    </form>
</body>
</html>
