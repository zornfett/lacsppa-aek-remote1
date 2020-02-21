<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportTransCaseLogDetail" Codebehind="ReportTransCaseLogDetail.aspx.cs" %>

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
           var caseto, casefrom;
           caseto = document.form1.Case_To.value;
           casefrom = document.form1.Case_From.value;
           winhref("PrintTransCaseLogRptDetail.aspx?startdate="+stdate+"&enddate="+enddate+"&caseto="+caseto+"&casefrom="+casefrom, "PrintTransCaseLogRptDetail");           
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
                        Transfer Service Case Log Detail Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="3"></td>
             </tr> 
             <tr style="height:25px" class="tr_common">
                 <td  class="td_label" style="width: 200px;"><b>Start Date:</b>&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" align="left" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr>   
              <tr style="height:5px">
                 <td colspan="3"></td>
              </tr> 
              <tr style="height:25px" class="tr_common">
                 <td  class="td_label" style="width: 200px;"><b>End Date:</b>&nbsp;&nbsp;&nbsp;</td>
                 <td class="td_unline" align="left" width="200px">
                     <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr> 
              <tr style="height:5px">
                 <td colspan="3"></td>
              </tr> 
              <tr class="tr_common" >
                 <td class="td_label" style="width: 200px;">
                     <asp:Label ID="Label13" runat="server" Text="Case Sent to:" Font-Bold="true" />
                 </td>
                 <td  class="td_unline" align="left" style="width: 200px;">
                     <asp:DropDownList ID="Case_To" runat="server" DataValueField="rc_id" DataTextField="rc_name"
                            CssClass="infaceDrop" OnClick="DataChanged()">
                     </asp:DropDownList>
                 </td>
                 <td width="200px"></td>
              </tr>
              <tr style="height:5px">
                 <td colspan="3"></td>
              </tr> 
              <tr class="tr_common" >
                 <td class="td_label" style="width: 200px;">
                     <asp:Label ID="Label14" runat="server" Text="Case Received From:" Font-Bold="true" />
                 </td>
                 <td class="td_unline" align="left" style="width: 200px;">
                    <asp:DropDownList ID="Case_From" runat="server" DataValueField="rc_id" DataTextField="rc_name"
                           CssClass="infaceDrop" OnClick="DataChanged()">
                    </asp:DropDownList>
                 </td>
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

