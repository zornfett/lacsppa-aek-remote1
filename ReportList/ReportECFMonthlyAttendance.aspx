<%@ Page Language="c#" Inherits="Virweb2.ReportList.ReportECFMonthlyAttendance" Codebehind="ReportECFMonthlyAttendance.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::ECF Monthly Attendance Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
    <!--
        function print_report()
        {
           NoConfirmExit();
           var stragency,strprogram,strtjrq,strenroll,strdrop;
           stragency=document.form1.txt_agency.value;
           if (JTrim(stragency)=="")
           {
              alert("Please select Agency");
              document.getElementById("txt_agency").focus();
              return;
           }
           strprogram=document.form1.txt_program.value;
           if (JTrim(strprogram)=="")
           {
              alert("Please select Class");
              document.getElementById("txt_program").focus();
              return;
           }
           strtjrq=document.form1.txt_tjrq_month.value+"/01/"+document.form1.txt_tjrq_year.value;          
           strenroll=document.form1.txt_enroll.value;
           strdrop=document.form1.txt_drop.value;               
           winhref("PrintEcfMonlyAttendanceRpt.aspx?agency=" + stragency+"&program="+strprogram+"&tjrq="+strtjrq+"&enroll="+strenroll+"&drop="+strdrop,
                       "PrintEcfMonlyAttendanceRpt");           
        }
     //-->   
    </script>
</head>
<body>
   <script type="text/javascript" src="../js/calendar.js"></script>
   <form id="form1" runat="server">
         <input id="NoConfirm" type="hidden" value="0" />
         <center>
         <br /><br />
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
            <tr style="height:30px">
                <td colspan="3" align="center"><h3>Monthly Attendance</h3></td>
            </tr>            
            <tr style="height:10px">
                <td colspan="3"></td>
            </tr>
            <tr style="height:30px">
                <td>Please Select Regional Center:</td>    
                <td colspan=2 ><asp:DropDownList ID="txt_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Height="20" Width="300px" >
                    </asp:DropDownList></td>              
            </tr>
            <tr style="height:30px">
                <td>Please Select Class:</td>    
                <td colspan=2 ><asp:dropdownlist id="txt_program" runat="server" DataValueField="display_value" DataTextField="display_name" 
                                    Height="20" Width="300px">
				    </asp:dropdownlist>
                </td>              
            </tr>
            <tr style="height:30px">
                <td>Please Select Date:</td>    
                <td colspan=2 ><asp:dropdownlist id="txt_tjrq_month" runat="server" Width="100" >
                           <asp:ListItem Value="01">January</asp:ListItem>
                           <asp:ListItem Value="02">February</asp:ListItem>
                           <asp:ListItem Value="03">March</asp:ListItem>
                           <asp:ListItem Value="04">April</asp:ListItem>
                           <asp:ListItem Value="05">May</asp:ListItem>
                           <asp:ListItem Value="06">June</asp:ListItem>
                           <asp:ListItem Value="07">July</asp:ListItem>
                           <asp:ListItem Value="08">August</asp:ListItem>
                           <asp:ListItem Value="09">September</asp:ListItem>
                           <asp:ListItem Value="10">October</asp:ListItem>
                           <asp:ListItem Value="11">November</asp:ListItem>
                           <asp:ListItem Value="12">December</asp:ListItem>
		              </asp:dropdownlist>Month&nbsp;&nbsp;&nbsp;&nbsp;
		              <asp:dropdownlist id="txt_tjrq_year" runat="server" Width="80" >
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
		              </asp:dropdownlist>Year
		              </td>              
            </tr>
            <tr style="height:30px">
                <td width="200" style="width: 200px">Input the number of New Enrolled:</td>    
                <td class="td_unline" align="left" width="80" style="width: 80px">
					<asp:textbox id="txt_enroll" runat="server" CssClass="inface" MaxLength=5></asp:textbox>
				</td>              
				<td width="400" style="width: 400px"></td>
            </tr>
            <tr style="height:30px">
                <td>Input the number of Dropped Students:</td>    
                <td class="td_unline" align="left" width="80" style="width: 80px">
					<asp:textbox id="txt_drop" runat="server" CssClass="inface" MaxLength=5></asp:textbox>
				</td>              
				<td></td>             
            </tr>
            <tr style="height:30px">
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="5" align="center">
                    <input type="button" name="btn_ok" id="btn_ok" value="OK" class="buttonbluestyle" style="width:80px;"  onclick="javascript:print_report();" />
                    <input type="button" name="btn_cancel" id="btn_cancel" value="Cancel" class="buttonbluestyle" style="width:80px;"  onclick="javascript:self.close();"/> 
                </td>    
            </tr>            
        </table>
        </center>
        
    </form>
</body>
</html>
