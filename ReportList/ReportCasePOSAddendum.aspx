<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportCasePOSAddendum" Codebehind="ReportCasePOSAddendum.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::IDNotes POS Tracking Addendum Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report()
        {
           var stdate, enddate;
           stdate=document.form1.startdate.value;
           enddate=document.form1.enddate.value;
           var auth, vendor_svcc, vendor_subc;
           auth = document.form1.p_auth.value;
           vendor_svcc = document.form1.p_vendor_svcc.value
           vendor_subc = document.form1.p_vendor_subc.value
           winhref("PrintCasePOSAddendumRpt.aspx?startdate=" + stdate + "&enddate=" + enddate + "&auth=" + auth + "&vendor_svcc=" + vendor_svcc + "&vendor_subc=" + vendor_subc, "PrintCasePOSAddendumRpt");           
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
                        IDNotes POS Tracking Addendum Report</h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="3"></td>
             </tr>
             <tr class="tr_common">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Vendor number:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td style="width: 600px" align="left">
                      <asp:dropdownlist id="p_auth" runat="server" OnSelectedIndexChanged="auth_SelectedIndexChanged"
					              DataValueField="auth_number" DataTextField="auth_name" Height="20" Width="360px" AutoPostBack="true" >
			          </asp:dropdownlist>
                 </td>                        
             </tr>  
             <tr>
                 <td colspan="3" height="5px">
                 </td>
             </tr>
             <tr class="tr_common">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Service code:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td style="width: 600px" align="left">
                      <asp:dropdownlist id="p_vendor_svcc" runat="server"  OnSelectedIndexChanged="service_SelectedIndexChanged"
					              DataValueField="tb_entry_name" DataTextField="fullentry" Height="20" Width="360px" AutoPostBack="true">
			          </asp:dropdownlist>
                 </td>                        
             </tr>  
             <tr>
                 <td colspan="3" height="5px">
                 </td>
             </tr>
             <tr class="tr_common">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Sub code:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td style="width: 600px" align="left">
                      <asp:dropdownlist id="p_vendor_subc" runat="server" 
					              DataValueField="tb_entry_name" DataTextField="fullentry" Height="20" Width="360px">
			          </asp:dropdownlist>
                 </td>                        
             </tr>  
             <tr>
                 <td colspan="3" height="5px">
                 </td>
             </tr>
             <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>Start Date:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td class="td_unline" align="left" width="600px">
                      <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" 
                                onfocus="showcalendar(event, this);" width="150px"></asp:TextBox>
                 </td>
             </tr>   
             <tr style="height:25px">
                 <td style="width: 120px; height: 20px;" align="right" class="td_label">
                    <b>End Date:</b>
                 </td>
                 <td style="height: 20px; width: 5px"></td> 
                 <td class="td_unline" align="left" width="600px">
                      <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" 
                                onfocus="showcalendar(event, this);" Width="150px"></asp:TextBox>
                 </td>
             </tr> 
             <tr style="height:25px">
                 <td colspan="3"></td>
             </tr> 
             <tr style="height:25px">
                 <td colspan="2" align="center" >
                     <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   
                           runat="server"  onclick="javascript:print_report();" />
                 </td>
                 <td width="600px"></td>
             </tr>
        </table>
        </center>        
    </form>
</body>
</html>

