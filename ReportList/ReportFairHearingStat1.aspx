<%@ page language="C#" inherits="Virweb2.ReportList.ReportFairHearingStat1" Codebehind="ReportFairHearingStat1.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::Fair Hearing Statistic Report 1:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	
	  <script type="text/JavaScript">
	  <!--
        function print_report()
        {
           var StartDate,EndDate;
           StartDate=document.form1.startdate.value;
           EndDate=document.form1.enddate.value;
           SrvrType = document.form1.srvrtype.value;
           winhref("PrintFairHearingStat1.aspx?startdate="+StartDate+"&EndDate="+EndDate+"&SrvrType="+SrvrType,"PrintFairHearingStat1");           
        }
      //-->  
    </script> 
</head>
<body >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
         <center>
          <br />
         <asp:label id="InfoTitle" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Fair Hearing Statistical Report 1</asp:label>
          <br />
          <br />
          <table cellspacing="0" cellpadding="0"  border="0"  class="table_common" width="80%">
              <tr style="height:25px">
                 <td>Please Enter Start Date for Fair Hearing:</td>
                 <td class="td_unline" align="left" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr>   
              <tr style="height:25px">
                 <td>Please Enter End Date for Fair Hearing:</td>
                 <td class="td_unline" align="left" width="200px">
                     <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr> 
             <tr style="height:25px" class="tr_common">
                 <td>Please Select Service Type:</td>
                 <td><asp:dropdownlist id="srvrtype" runat="server" Width="300" >
                           <asp:ListItem Value="Eligibility/Autism">Intake -- Eligibility/Autism</asp:ListItem>
                           <asp:ListItem Value="Eligibility/MR">Intake -- Eligibility/MR</asp:ListItem>
                           <asp:ListItem Value="Eligibility/CP">Intake -- Eligibility/CP</asp:ListItem>
                           <asp:ListItem Value="Eligibility/5th Category">Intake -- Eligibility/5th Category</asp:ListItem>
                           <asp:ListItem Value="Eligibility/Epilepsy">Intake -- Eligibility/Epilepsy</asp:ListItem>
                           <asp:ListItem Value="Prevention">Early Start -- Prevention</asp:ListItem>
                           <asp:ListItem Value="Eligibility">Early Start -- Eligibility</asp:ListItem>
                           <asp:ListItem Value="TB-Swimming">DCAS -- TB-Swimming</asp:ListItem>
                           <asp:ListItem Value="TB-After School">DCAS -- TB-After School</asp:ListItem>
                           <asp:ListItem Value="TB-Transportation">DCAS -- TB-Transportation</asp:ListItem>
                           <asp:ListItem Value="TB-Therapies">DCAS -- TB-Therapies</asp:ListItem>
                           <asp:ListItem Value="TB-Social Recreation">DCAS -- TB-Social Recreation</asp:ListItem>
                           <asp:ListItem Value="DTT">DCAS -- DTT</asp:ListItem>
                           <asp:ListItem Value="Behavior Modification">DCAS -- Behavior Modification</asp:ListItem>
                           <asp:ListItem Value="Respite">DCAS -- Respite</asp:ListItem>
                           <asp:ListItem Value="Socialization Skills">DCAS -- Socialization Skills</asp:ListItem>
                           <asp:ListItem Value="Social Recreation">DCAS -- Social Recreation</asp:ListItem>
                           <asp:ListItem Value="After School">DCAS -- After School</asp:ListItem>
                           <asp:ListItem Value="Transportation">DCAS -- Transportation</asp:ListItem>
                           <asp:ListItem Value="Therapies">DCAS -- Therapies</asp:ListItem>
                           <asp:ListItem Value="Others">DCAS -- Others</asp:ListItem>
          
		              </asp:dropdownlist></td>
		          <td></td>    
              </tr>   
              <tr style="height:25px">
                 <td colspan="3"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="2"><input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   runat="server"   onclick="javascript:print_report();" /></td>
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
