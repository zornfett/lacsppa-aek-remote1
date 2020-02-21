<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportConsumerDiag" Codebehind="ReportConsumerDiag.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Consumer Diagnosis Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
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
           var caseval1;
           caseval1 = document.form1.casetype1.value;
           winhref("PrintConsumerDiagRpt.aspx?startdate="+stdate+"&enddate="+enddate+"&case1="+caseval1, "PrintConsumerDiagRpt");           
        }
    </script>
</head>
<body style="font-size: 9pt">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
             <tr style="height:30px">
                 <td colspan="8" align="center" style="font-family: Arial"><h3>
                        Consumer Diagnosis Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="8"></td>
             </tr>
             <tr class="tr_common" style="height:25px">
                 <td class="td_label" width="100px">DOB Range:</td>
                 <td width="20px"></td>
                 <td class="td_label" width="100px">Start Date:</td>
                 <td class="td_unline" align="left" width="120px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="20px"></td>
                 <td class="td_label" width="100px">End Date:&nbsp;&nbsp;</td>
                 <td class="td_unline" align="left" width="120px">
                     <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
             </tr> 
             <tr style="height:25px">
                 <td colspan="8"></td>
             </tr> 
             <tr style="height:25px" class="tr_common">
                 <td colspan="3" class="td_label">Please Select the Diagnosis:</td>
                 <td colspan="4">
                     <asp:dropdownlist id="casetype1" runat="server" Width="250" >
                         <asp:ListItem Value="1">Intellectual Disability</asp:ListItem>
                         <asp:ListItem Value="2">CEREBRAL PALSY</asp:ListItem>
                         <asp:ListItem Value="3">AUTISM</asp:ListItem>
                         <asp:ListItem Value="4">EPILEPSY</asp:ListItem>
                         <asp:ListItem Value="5">OTHER TYPE</asp:ListItem>
		             </asp:dropdownlist>
		         </td>   
                 <td width="200px"></td>
             </tr>   
             <tr style="height:25px">
                 <td colspan="8"></td>
             </tr> 
             <tr style="height:25px">
                 <td colspan="8" align="center" >
                     <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;" runat="server"  onclick="javascript:print_report();" />
                 </td>
                 <td width="200px"></td>
             </tr>
             <tr style="height:250px">
                 <td colspan="8"></td>
             </tr> 
        </table>
        </center>        
    </form>
</body>
</html>

