<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerFundProgSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerFundProgSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Client Funded Program Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.ConsumerPgF.consumer_key.value.toString();
       var UserAct=document.ConsumerPgF.UserAct.value.toString();              
    }
                
    </script> 
</head>
<body  id="body"  runat="server" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerPgF" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">FUNDED PROGRAM INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Program For</asp:label>
			</td>
			<td>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" 
                  onclick="javascript:print_click();" runat="server" /> 
			  <input type="button" id="btnHelp" value="Help" style="width:60px;"  class="buttonbluestyle" visible="false"
                  onclick="winhref('./HelpFile/.html','help')" runat="server" />
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:400px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_rap_vid" runat="server" Text="Day Program:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                 <asp:TextBox ID="rap_vid" runat="server" CssClass="inface"></asp:TextBox>
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="3">
                 <asp:TextBox ID="r_resource_name" runat="server" CssClass="inface"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_rap_svc_code" runat="server" Text="Service Code:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                 <asp:TextBox ID="rap_svc_code" runat="server" CssClass="inface"></asp:TextBox>
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="3">
                 <asp:TextBox ID="SvcCodeName" runat="server" CssClass="inface"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_rap_sub_code" runat="server" Text="Sub Code:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                 <asp:TextBox ID="rap_sub_code" runat="server" CssClass="inface"></asp:TextBox>
               </td>
               <td colspan="4">
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_r_site_address_line_1" runat="server" Text="Address/Phone:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="5">
                 <asp:TextBox ID="r_site_address_line_1" runat="server" CssClass="inface"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="5">
                 <asp:TextBox ID="r_site_address_city" runat="server" CssClass="inface" Width="250px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="r_site_address_state" runat="server" CssClass="inface" Width="50px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="r_site_address_zip" runat="server" CssClass="inface" Width="100px"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="5">
                 <asp:TextBox ID="r_site_phone_1" runat="server" CssClass="inface" Width="150px"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_rap_auth" runat="server" Text="Authorization #:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                 <asp:TextBox ID="rap_auth" runat="server" CssClass="inface"></asp:TextBox>
               </td>
               <td colspan="4">
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_rap_start_dt" runat="server" Text="Start Date:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                 <asp:TextBox ID="rap_start_dt" runat="server" CssClass="inface"></asp:TextBox>
               </td>
               <td width="5" height="20">
               </td>
               <td align="left" style="width: 250px" class="td_label" >
                 <asp:Label ID="l_rap_term_dt" runat="server" Text="End Date:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                 <asp:TextBox ID="rap_term_dt" runat="server" CssClass="inface"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="Label2" runat="server" Text="Transportation Provider:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="5">
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="inface"></asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="7">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_rap_desc" runat="server" Text="Comments:"></asp:Label>
               </td>
               <td width="5" height="20">
               </td>
               <td colspan="5">
                 <asp:TextBox ID="rap_desc" runat="server" CssClass="inface"></asp:TextBox>
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
