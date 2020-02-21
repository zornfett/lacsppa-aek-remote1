<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.ReportList.ReportUnitTransCaseLog" Codebehind="ReportUnitTransCaseLog.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Unit Transfer Case Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
        function print_report()
        {
           var stdate, enddate;
           stdate=document.form1.startdate.value;
           enddate=document.form1.enddate.value;  
           /*
           if (JTrim(stdate)=="")           
           {
              alert("Please input Start Date");
              document.getElementById("startdate").focus();
              return;
           }
           if (JTrim(enddate)=="")           
           {
              alert("Please input End Date");
              document.getElementById("enddate").focus();
              return;
           }
           */
           var TransferFrom;
           TransferFrom = document.form1.TransferFrom.value;
           winhref("PrintUnitTransCaseLogRpt.aspx?startdate="+stdate+"&enddate="+enddate+"&TransFrom="+TransferFrom, "PrintTransCaseLogUnitRpt");           
        }
    </script>
</head>
<body style="font-size: 9pt">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
             <tr style="height:30px">
                 <td colspan="3" align="center" style="font-family: Arial"><h3>
                        Unit Transfer Case Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="3"></td>
             </tr>
             <tr style="height:25px" class="tr_common">
                 <td width="200px">Case Transferred From:&nbsp;&nbsp;&nbsp;</td>
                 <td width="200px">
                    <asp:dropdownlist id="TransferFrom" runat="server" Width="100" >
                        <asp:ListItem Value="">All</asp:ListItem>
                        <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                        <asp:ListItem Value="Intake">Intake</asp:ListItem>
                        <asp:ListItem Value="Unit 1">Unit 1</asp:ListItem>
                        <asp:ListItem Value="Unit 2">Unit 2</asp:ListItem>
                        <asp:ListItem Value="Unit 3">Unit 3</asp:ListItem>
                        <asp:ListItem Value="Unit 4">Unit 4</asp:ListItem>
                        <asp:ListItem Value="Unit 5">Unit 5</asp:ListItem>
                        <asp:ListItem Value="Unit 6">Unit 6</asp:ListItem>
                        <asp:ListItem Value="Unit 7">Unit 7</asp:ListItem>
                        <asp:ListItem Value="Unit 8">Unit 8</asp:ListItem>
		            </asp:dropdownlist>
		         </td>
		         <td width="200px">
		         </td>    
             </tr>    
             <tr style="height:25px">
                 <td>Report Start Date:&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
             </tr>   
             <tr style="height:25px">
                 <td>Report End Date:&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
             </tr>
             <tr style="height:25px">
                 <td colspan="3"></td>
             </tr> 
             <tr style="height:25px">
                 <td colspan="2" align="center" >
                     <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   runat="server"  onclick="javascript:print_report();" />
                 </td>
                 <td width="200px"></td>
             </tr>
             <tr style="height:250px">
                 <td colspan="3"></td>
             </tr>
        </table>
        </center>        
    </form>
</body>
</html>

