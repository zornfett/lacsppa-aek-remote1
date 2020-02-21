<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportUnitTransCaseLogDetail" Codebehind="ReportUnitTransCaseLogDetail.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Case Unit Transfer Report:::...</title>
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
           var TransferTo;
           TransferTo = document.form1.CaseTransferTo.value;
           var TransferFrom;
           TransferFrom = document.form1.CaseTransferFrom.value;
           winhref("PrintUnitTransCaseLogRptDetail.aspx?startdate=" + stdate + "&enddate=" + enddate + "&TransTo=" + TransferTo + 
                       "&TransFrom=" + TransferFrom, "PrintTransCaseLogUnitRptDetail");           
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
                        Unit Transfer Case Detail Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="3"></td>
             </tr>             
             <tr style="height:25px" class="tr_common">
                 <td class="td_label" style="width: 200px;">
                     <asp:Label ID="Label6" runat="server" Text="Case Transferred to:" Font-Bold="true" />
                 </td>
                 <td style="width:5px"></td>	
                 <td style="width: 200px;">
                     <asp:DropDownList ID="CaseTransferTo" runat="server" CssClass="infaceDrop">
                         <asp:ListItem Value="">All</asp:ListItem>
                         <asp:ListItem Value="Unit 1">Unit 1</asp:ListItem>
                         <asp:ListItem Value="Unit 2">Unit 2</asp:ListItem>
                         <asp:ListItem Value="Unit 3">Unit 3</asp:ListItem>
                         <asp:ListItem Value="Unit 4">Unit 4</asp:ListItem>
                         <asp:ListItem Value="Unit 5">Unit 5</asp:ListItem>
                         <asp:ListItem Value="Unit 6">Unit 6</asp:ListItem>
                         <asp:ListItem Value="Unit 7">Unit 7</asp:ListItem>
                         <asp:ListItem Value="Unit 8">Unit 8</asp:ListItem>
                         <asp:ListItem Value="Unit 9">Unit 9</asp:ListItem>
                         <asp:ListItem Value="Unit 10">Unit 10</asp:ListItem>
                         <asp:ListItem Value="Unit 11">Unit 11</asp:ListItem>
                         <asp:ListItem Value="Unit 70">Unit 70</asp:ListItem>
                         <asp:ListItem Value="Unit 90">Unit 90</asp:ListItem>
                         <asp:ListItem Value="Unit 95">Unit 95</asp:ListItem>
                         <asp:ListItem Value="SSU">SSU</asp:ListItem>
                         <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                         <asp:ListItem Value="Intake">Lanterman Intake</asp:ListItem>
                         <asp:ListItem Value="Early Start Intake">Early Start Intake</asp:ListItem>
                         <asp:ListItem Value="Transfer Unit">Transfer Unit</asp:ListItem>
                         <asp:ListItem Value="Storage">Storage</asp:ListItem>
                         <asp:ListItem Value="Prevention">Prevention</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
             <tr style="height: 5px">
                 <td colspan="3">
                 </td>
             </tr>
             <tr style="height:25px" class="tr_common">                        
                 <td class="td_label" style="width: 350px;">
                     <asp:Label ID="Label7" runat="server" Text="Case Transferred from:" Font-Bold="true" />
                 </td>
                 <td style="width:5px"></td>	
                 <td style="width:200px">
                     <asp:DropDownList ID="CaseTransferFrom" runat="server" CssClass="infaceDrop">
                         <asp:ListItem Value="">All</asp:ListItem>
                         <asp:ListItem Value="Unit 1">Unit 1</asp:ListItem>
                         <asp:ListItem Value="Unit 2">Unit 2</asp:ListItem>
                         <asp:ListItem Value="Unit 3">Unit 3</asp:ListItem>
                         <asp:ListItem Value="Unit 4">Unit 4</asp:ListItem>
                         <asp:ListItem Value="Unit 5">Unit 5</asp:ListItem>
                         <asp:ListItem Value="Unit 6">Unit 6</asp:ListItem>
                         <asp:ListItem Value="Unit 7">Unit 7</asp:ListItem>
                         <asp:ListItem Value="Unit 8">Unit 8</asp:ListItem>
                         <asp:ListItem Value="Unit 9">Unit 9</asp:ListItem>
                         <asp:ListItem Value="Unit 10">Unit 10</asp:ListItem>
                         <asp:ListItem Value="Unit 11">Unit 11</asp:ListItem>
                         <asp:ListItem Value="Unit 70">Unit 70</asp:ListItem>
                         <asp:ListItem Value="Unit 90">Unit 90</asp:ListItem>
                         <asp:ListItem Value="Unit 95">Unit 95</asp:ListItem>
                         <asp:ListItem Value="SSU">SSU</asp:ListItem>
                         <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                         <asp:ListItem Value="Lanterman Intake">Lanterman Intake</asp:ListItem>
                         <asp:ListItem Value="Early Start Intake">Early Start Intake</asp:ListItem>
                         <asp:ListItem Value="Transfer Unit">Transfer Unit</asp:ListItem>
                         <asp:ListItem Value="Storage">Storage</asp:ListItem>
                         <asp:ListItem Value="Prevention">Prevention</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>    
             <tr style="height: 5px">
                 <td colspan="3">
                 </td>
             </tr>         
             <tr style="height:25px">
                 <td>Report Start Date:&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
             </tr>   
             <tr style="height: 5px">
                 <td colspan="3">
                 </td>
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

