<%@ Page Language="c#" Inherits="Virweb2.ReportList.ReportAttendance" Codebehind="ReportAttendance.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Monthly Attendance:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report()
        {
           var tj_year,tj_month,UserAct;
           tj_year=document.form1.txt_year.value;
           tj_month=document.form1.txt_month.value;
           UserAct=document.form1.txt_UserAct.value;
           UserUnitArea=document.form1.txt_UserUnitArea.value;
           winhref("PrintAttendance.aspx?tj_year=" + tj_year+"&tj_month="+tj_month+"&UserUnitArea="+UserUnitArea+"&UserAct="+UserAct ,"PrintAttendanceInfo");           
        }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 85%">
            <tr style="height:30px">
                <td colspan="4"></td>
            </tr>
            <tr>
                <td>Select Year:</td>    
                <td><asp:DropDownList ID="txt_year" runat="server">
                </asp:DropDownList></td>
                <td>Month:</td>
                <td><asp:DropDownList ID="txt_month" runat="server">
                           <asp:ListItem Value="1">January</asp:ListItem>
                           <asp:ListItem Value="2">February</asp:ListItem>
                           <asp:ListItem Value="3">March</asp:ListItem>
                           <asp:ListItem Value="4">April</asp:ListItem>
                           <asp:ListItem Value="5">May</asp:ListItem>
                           <asp:ListItem Value="6">June</asp:ListItem>
                           <asp:ListItem Value="7">July</asp:ListItem>
                           <asp:ListItem Value="8">August</asp:ListItem>
                           <asp:ListItem Value="9">September</asp:ListItem>
                           <asp:ListItem Value="10">October</asp:ListItem>
                           <asp:ListItem Value="11">November</asp:ListItem>
                           <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
             <tr style="height:30px">
                <td colspan="4"></td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <input type="button" name="btn_ok" id="btn_ok" value="OK" class="buttonbluestyle" style="width:80px;"  onclick="javascript:print_report();" />
                    <input type="button" name="btn_cancel" id="btn_cancel" value="Cancel" class="buttonbluestyle" style="width:80px;"  onclick="javascript:self.close();"/> 
                </td>    
            </tr>            
        </table>
        <input type="hidden" name="txt_UserAct"  id="txt_UserAct" value="" runat="server" /> 
        <input type="hidden" name="txt_UserUnitArea"  id="txt_UserUnitArea" value="" runat="server" />                     
    </form>
</body>
</html>
