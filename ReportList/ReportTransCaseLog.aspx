<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.ReportList.ReportTransCaseLog" Codebehind="ReportTransCaseLog.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Transportation Service Case Log Report:::...</title>
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
           var caseval1, caseval2;
           caseval1 = document.form1.casetype1.value;
           caseval2 = document.form1.casetype2.value
           winhref("PrintTransCaseLogRpt.aspx?startdate="+stdate+"&enddate="+enddate+"&case1="+caseval1+"&case2="+caseval2, "PrintTransCaseLogRpt");           
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
                        Transfer Service Case Log Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="3"></td>
             </tr>
             <tr style="height:25px" class="tr_common">
                 <td width="200px">Case Type:&nbsp;&nbsp;&nbsp;</td>
                 <td width="200px">
                      <asp:dropdownlist id="casetype1" runat="server" Width="180" >
                           <asp:ListItem Value="1">Sent</asp:ListItem>
                           <asp:ListItem Value="2">Received</asp:ListItem>
		              </asp:dropdownlist>
		         </td>
		         <td width="200px">
		              <asp:dropdownlist id="casetype2" runat="server" Width="190" DataValueField="rc_id" DataTextField="rc_name">
		              </asp:dropdownlist>
		         </td>    
             </tr>   
             <tr style="height:25px">
                 <td>Start Date:&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" align="left" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr>   
              <tr style="height:25px">
                 <td>End Date:&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" align="left" width="200px">
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

