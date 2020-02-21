<%@ page language="C#" inherits="Virweb2.ReportList.ReportCaseManagePlan" Codebehind="ReportCaseManagePlan.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::Case Management Planning Data:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	
	  <script type="text/JavaScript">
	  <!--
        function print_report()
        {
           var tj_year,tj_month,UserAct,GroupID,Unit,Support_number,input_name,input_notes;
           tj_year=document.form1.txt_year.value;
           tj_month=document.form1.txt_month.value;
           UserAct=document.form1.txt_UserAct.value; 
           GroupID=document.form1.txt_group.value;
           Unit= document.form1.txt_unit.value;    
           Support_number= document.form1.txt_number.value;       
           input_name= document.form1.txt_name.value; 
           input_notes= document.form1.txt_notes.value; 
           winhref("PrintCaseManagePlan.aspx?GroupID="+GroupID+"&tj_year=" + tj_year+"&tj_month="+tj_month+"&Unit="+Unit+"&Support_number="+Support_number+"&input_name="+input_name+"&input_notes="+input_notes+"&UserAct="+UserAct ,"PrintCaseManagePlan");           
        }
      //-->  
    </script> 
</head>
<body >
    <form id="form1" runat="server">
         <input type="hidden" name="txt_UserAct"  id="txt_UserAct" value="" runat="server" />
         <center>
          <br />
          <table cellspacing="0" cellpadding="0"  border="0"  class="table_common" width="80%">
              <tr style="height:25px">
                  <td></td>
                  <td colspan="2" align="center">
                     <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">
                        Case Management Planning Data</asp:Label>
                  </td>
                  <td></td>
              </tr>
              <tr style="height:25px"><td colspan="3"></td></tr>
              <tr class="tr_common">
                 <td style="width:5%"></td>
                 <td style="width:25%" class="td_label">Please Select a Group:</td>
                 <td class="td_unline">
                     <asp:DropDownList ID="txt_group" runat="server" DataValueField="GroupID" DataTextField="GroupName"
                                        Height="25" Width="260" >
                     </asp:DropDownList>
                 </td>
                 <td style="width:35%"></td>
              </tr>
              <tr style="height:5px">
                 <td colspan=4></td>
              </tr>
              <tr class="tr_common">
                 <td></td>
                 <td class="td_label">Please Month/Year:</td>
                 <td class="td_unline">Month:<asp:dropdownlist id="txt_month" runat="server" Width="100" >
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
		              </asp:dropdownlist>&nbsp;&nbsp;&nbsp;&nbsp;
		              Year:<asp:dropdownlist id="txt_year" runat="server" Width="80" >
						   <asp:ListItem Value="2009">2009</asp:ListItem>						  
						   <asp:ListItem Value="2010">2010</asp:ListItem>
						   <asp:ListItem Value="2011">2011</asp:ListItem>
						   <asp:ListItem Value="2012">2012</asp:ListItem>
						   <asp:ListItem Value="2013">2013</asp:ListItem>
						   <asp:ListItem Value="2014">2014</asp:ListItem>
						   <asp:ListItem Value="2015">2015</asp:ListItem>
						   <asp:ListItem Value="2016">2016</asp:ListItem>
						   <asp:ListItem Value="2017">2017</asp:ListItem>
						   <asp:ListItem Value="2018">2018</asp:ListItem>
						   <asp:ListItem Value="2019">2019</asp:ListItem>
						   <asp:ListItem Value="2020">2020</asp:ListItem>
		              </asp:dropdownlist>
                 </td>
                 <td></td>
              </tr>   
              <tr style="height:5px">
                 <td colspan=4></td>
              </tr>
              <tr class="tr_common">
                 <td></td>
                 <td class="td_label">Unit Number:</td>
                 <td class="td_unline">
                      <asp:dropdownlist id="txt_unit" runat="server" Width="100">
                           <asp:ListItem Value=""></asp:ListItem>
                           <asp:ListItem Value="1">1</asp:ListItem>
                           <asp:ListItem Value="2">2</asp:ListItem>
                           <asp:ListItem Value="3">3</asp:ListItem>
                           <asp:ListItem Value="4">4</asp:ListItem>
                           <asp:ListItem Value="5">5</asp:ListItem>
                           <asp:ListItem Value="6">6</asp:ListItem>
                           <asp:ListItem Value="7">7</asp:ListItem>
                           <asp:ListItem Value="8">8</asp:ListItem>
                           <asp:ListItem Value="9">9</asp:ListItem>
                           <asp:ListItem Value="10">10</asp:ListItem>
                           <asp:ListItem Value="11">11</asp:ListItem>
                           <asp:ListItem Value="SSU">SSU</asp:ListItem>
		              </asp:dropdownlist>
                      &nbsp;&nbsp&nbsp;&nbsp;&nbsp;
                      <asp:button id="BtnSearch" Runat="server" Text="Search" style="width:60px" CssClass="buttonbluestyle" onclick="BtnSearch_Click"></asp:button>
                  </td>
		          <td></td>    
              </tr>
              <tr style="height:10px">
                 <td colspan=4></td>
              </tr>
              <tr>
                 <td colspan=4 class="td_thicksepline">
                 </td>
              </tr>
              <tr style="height:10px">
                 <td colspan=4></td>
              </tr>   
              <tr class="tr_common" style="height:25px">
                 <td></td>
                 <td class="td_label">Number Of Support postitons:</td>
                 <td class="td_unline" align="left">
					<asp:textbox id="txt_number" runat="server" CssClass="inface" Width="200px" MaxLength="20"></asp:textbox>
				</td>  
				<td></td>
              </tr>
              <tr style="height:5px">
                 <td colspan=4></td>
              </tr>
              <tr class="tr_common" style="height:25px">
                 <td></td>
                 <td class="td_label">Name:</td>
                 <td class="td_unline" align="left">
					<asp:textbox id="txt_name" runat="server" CssClass="inface" Width="200px"  MaxLength="80"></asp:textbox>
				</td>  
				<td></td>
              </tr>
              <tr style="height:5px">
                 <td colspan=4></td>
              </tr>
              <tr class="tr_common">
                <td></td>
                <td class="td_label"valign=top >Notes:</td>
                <td colspan=2 style="width:550px">
					<asp:TextBox ID="txt_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" Width="550" Height="120" >
                    </asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="regTxtnotes" runat="server" ControlToValidate="txt_notes" 
                        ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Maximum of 500 characters allowed" Text="" ></asp:RegularExpressionValidator>
				</td>  
              </tr>
              <tr style="height:25px"><td colspan="3"></td></tr>
              <tr style="height:25px">
                 <td colspan="4">
                 <asp:button id="btn_ok" Runat="server" Text="Submit" style="width:60px" CssClass="buttonbluestyle" onclick="BtnSubmit_Click"></asp:button>
                 </td>
              </tr>
          </table>
          </center>
    </form>
</body>
</html>
