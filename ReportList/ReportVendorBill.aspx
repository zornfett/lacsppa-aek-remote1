<%@ Page Language="c#" Inherits="Virweb2.ReportList.ReportVendorBill" Codebehind="ReportVendorBill.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Vendor Monthly Billing Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>  
    <script type="text/JavaScript">
        function print_report()
        {
           var tj_rcid="",tj_year="",tj_month="",tj_vendornum="",tj_progSup="",tj_progSupDate="";
           tj_rcid=document.form1.rcid.value;
           tj_year=document.form1.year.value;
           tj_month=document.form1.month.value;
           tj_vendornum=document.form1.vendornum.value;
           tj_progSup=document.form1.progSup.value;
           tj_progSupDate=document.form1.progSupDate.value;
           var url="PrintVendorBill.aspx?rcid="+tj_rcid+"&year="+tj_year+"&month="+tj_month+"&vendornum="+tj_vendornum+"&progSup="+tj_progSup+"&progSupDate="+tj_progSupDate;
           //alert(url);
           winhref(url,"PrintVendorBill");           
        }
    </script>
    
</head>
<body>
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
             <tr style="height:30px">
                <td colspan="2" align="center"><h3>Vendor Monthly Billing Report</h3></td>
            </tr>
            
            <tr style="height:30px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>Please select a Regional Center to bill:</td>    
                <td><asp:DropDownList ID="rcid" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                    Height="20" Width="235" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>              
            </tr>
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>Please select Billing year/month:</td>    
                <td><asp:dropdownlist id="month" runat="server" Width="100" >
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
		              </asp:dropdownlist>
		              &nbsp;&nbsp;&nbsp;
		              <asp:dropdownlist id="year" runat="server" Width="80" >
						   <asp:ListItem Value="2000">2000</asp:ListItem>
						   <asp:ListItem Value="2001">2001</asp:ListItem>
						   <asp:ListItem Value="2002">2002</asp:ListItem>
						   <asp:ListItem Value="2003">2003</asp:ListItem>
						   <asp:ListItem Value="2004">2004</asp:ListItem>
						   <asp:ListItem Value="2005">2005</asp:ListItem>
						   <asp:ListItem Value="2006">2006</asp:ListItem>
						   <asp:ListItem Value="2007">2007</asp:ListItem>
						   <asp:ListItem Value="2008">2008</asp:ListItem>
						   <asp:ListItem Value="2009">2009</asp:ListItem>
						   <asp:ListItem Value="2010">2010</asp:ListItem>
						   <asp:ListItem Value="2011">2011</asp:ListItem>
						   <asp:ListItem Value="2012">2012</asp:ListItem>
						   <asp:ListItem Value="2013">2013</asp:ListItem>
						   <asp:ListItem Value="2014">2014</asp:ListItem>
		              </asp:dropdownlist>
                </td>              
            </tr> 
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>    
            <tr>
                <td>Please select Program:</td>    
                <td><asp:dropdownlist id="vendornum" runat="server" DataValueField="r_vendor_number" DataTextField="ResourceName" 
                           Height="20" Width="180" AutoPostBack=true >
				    </asp:dropdownlist></td>              
            </tr>
            <tr style="height:5px">
                <td colspan="2"></td>
            </tr>
            <tr>
                <td>Program Support:</td>    
                <td>Amount:&nbsp;&nbsp;$<asp:textbox id="progSup" runat="server" Width=100></asp:textbox>
                Due Date:&nbsp;&nbsp;<asp:TextBox ID="progSupDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" Width=120></asp:TextBox>
				</td>              
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
