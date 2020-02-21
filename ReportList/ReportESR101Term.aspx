<%@ page language="C#" inherits="Virweb2.ReportList.ReportESR101Term" Codebehind="ReportESR101Term.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::ESR 101 Terminated List:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	
	  <script language="javascript">
	  <!--
        function print_report(all)
        {
           var StartDate,EndDate;
           StartDate=document.form1.startdate.value;
           EndDate=document.form1.enddate.value;
           winhref("PrintESR101Term.aspx?startdate="+StartDate+"&EndDate="+EndDate+"&All="+all,"PrintESR101Term");           
        }
      //-->  
    </script> 
</head>
<body >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
         <center>
         <div style="WIDTH:98%">
          <br />
          <asp:label id="InfoTitle" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Red">ESR 101 Terminated List</asp:label>
          <br />
          <br />
          <table cellspacing="0" cellpadding="0"  border="0"  class="table_common" width="80%">
              <tr style="height:25px">
                 <td>Please Enter Start Date for ESR 101 Call Date:</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="startdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr>   
              <tr style="height:25px">
                 <td>Please Enter End Date for ESR 101 Call Date:</td>
                 <td class="td_unline" width="200px">
                     <asp:TextBox ID="enddate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                 </td>
                 <td width="200px"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="3"></td>
              </tr> 
              <tr style="height:25px">
                 <td colspan="2">
                     <asp:button id="btnSearch" Runat="server" Text="Search" style="width:120px" CssClass="buttonbluestyle" onClick="btnSearch_Click"></asp:button>
                     <input type="button" name="btn_print" id="print" value="Print" class="buttonbluestyle" style="width:120px;" runat="server" onclick="javascript:print_report(1);" />
                     <input type="button" name="btn_printall" id="printall" value="Print All" class="buttonbluestyle" style="width:120px;" runat="server" onclick="javascript:print_report(0);" />
                 </td>
                 <td width="200px"></td>
              </tr>
          </table>
          </div>
                 
          <div style="position:relative;WIDTH:100%;height:530px; overflow: auto ">
           <asp:datagrid id="dg_esr101term" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
					<HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="client_name" HeaderText="Name" >
					        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
					    </asp:BoundColumn>
					    <asp:BoundColumn DataField="dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="ref_date" HeaderText="Call Date" DataFormatString="{0:MM/dd/yyyy}" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="reopen_date" HeaderText="Last Reopen Date" DataFormatString="{0:MM/dd/yyyy}" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	
                        <asp:BoundColumn DataField="ReferralTimes" HeaderText="Referral Times" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="print_date" HeaderText="Print Date" DataFormatString="{0:MM/dd/yyyy}" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="print_by" HeaderText="Print By" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn> 
					</Columns>
				</asp:datagrid>
          </div>
        
          </center>
    </form>
</body>
</html>
