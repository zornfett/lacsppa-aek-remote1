 <%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportIPPApproval" Codebehind="ReportIPPApproval.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self"></base>
    <title>:::IPP Approval Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
        function print_report()
        {
           var stdate, enddate;
           stdate=document.form1.startdate.value;
           enddate = document.form1.enddate.value;

           var SCList = document.form1.selSC;
           var SCSel = "";
           if (SCList.options.length > 0) {
               for (var i = 0; i < SCList.options.length; i++) {
                   if (SCList.options[i].selected == true) {
                       var SelectedItem = SCList.options[i].value;
                       var pos = SelectedItem.indexOf(" ---- ");
                       var v = SelectedItem.substring(0, pos);
                       // var d = SelectedItem.substring(pos + 6, SelectedItem.length);
                       if (SCSel != "")
                           SCSel = SCSel + ",'" + v + "'";
                       else SCSel = "'" + v + "'";
                   }
               }
           }
           
           if (SCSel == "") {
               alert("Please select one or multiple SC");
               return;
           }

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

          var approvalSel = document.form1.Approval.value;
          var ippSel = document.form1.IPPSel.value;

          winhref("PrintReportIPPApproval.aspx?startdate=" + stdate + "&enddate=" + enddate + "&sclist=" + SCSel + "&approval=" + approvalSel + "&ippsel=" + ippSel, 
           "PrintReportIPPApproval");           
        }
    </script>
</head>
<body style="font-size: 9pt">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <center>
        <table class="table_maindiv">
             <tr style="height:30px">
                 <td colspan="4" align="center" style="font-family: Arial"><h3>
                        IPP Approval Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="4"></td>
             </tr>
             <tr class="tr_common">
                 <td class="td_label" style="width: 150px">Please Select a Group:</td>
                 <td width="5px"></td>
                 <td class="td_unline" width="300px">
                     <asp:DropDownList ID="selgroup" runat="server" DataValueField="GroupID" DataTextField="GroupName"
                         AutoPostBack="true" OnSelectedIndexChanged="group_from_OnSelectedIndexChanged" CssClass="infaceDrop" Height="25" Width="260" >
                     </asp:DropDownList>
                 </td>
                 <td style="auto"></td>
             </tr>
             <tr style="height:5px">
                 <td colspan="4"></td>
             </tr>
             <tr>
                 <td colspan="4">
                     <table class="table_inside" cellspacing="0" cellpadding="0">
                         <tr class="tr_common">
                           <td class="td_label" width="100px">Start Date:</td>
                           <td width="5px"></td>
                           <td class="td_unline" width="100px">
                              <asp:TextBox ID="startdate" runat="server" CssClass="inface" 
                                 onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                           </td>
                           <td width="10px"></td>
                           <td class="td_label" width="100px">End Date:</td>
                           <td width="5px"></td>
                           <td class="td_unline" width="100px">
                              <asp:TextBox ID="enddate" runat="server" CssClass="inface" 
                                 onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                           </td>
                           <td width="10px"></td>
                           <td width="200px">
                              <asp:DropDownList ID="IPPSel" runat="server" CssClass="infaceDrop">
                                  <asp:ListItem Value="IPP">IPP</asp:ListItem>
                                  <asp:ListItem Value="Annual">Annual</asp:ListItem>
                                  <asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
                              </asp:DropDownList>
                           </td>
                           <td width="10px"></td>
                           <td width="200px">
                              <asp:DropDownList ID="Approval" runat="server" CssClass="infaceDrop">
                                  <asp:ListItem Value="Y">Approved</asp:ListItem>
                                  <asp:ListItem Value="N">Not Approved</asp:ListItem>
                                  <asp:ListItem Value="R">Returned</asp:ListItem>
                                  <asp:ListItem Value="S">Re-Submitted</asp:ListItem>
                              </asp:DropDownList>
                           </td>
                         </tr>
                     </table>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="4"></td>
             </tr>
             <tr class="tr_common">
                 <td colspan="4" class="td_label" style="width: 150px">Select Service Coordinator:</td>
             </tr>
             <tr class="tr_common">
                 <td colspan="4">
                     <asp:ListBox ID="selSC" runat="server" Width="500" Height="400" SelectionMode="Multiple">
			         </asp:ListBox>
                 </td>
              </tr>
              <tr style="height:25px">
                 <td colspan="4"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="3" align="center" >
                     <input type="button" name="btnSearch" id="btnSearch" value="Submit" class="buttonbluestyle" style="width:100px;" runat="server"  
                         onclick="javascript:print_report();" />
                 </td>
                 <td width="auto"></td>
              </tr>
        </table>
        </center>        
    </form>
</body>
</html>

