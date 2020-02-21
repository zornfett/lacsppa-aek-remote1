<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webPosInfo.aspx.cs" Inherits="Virweb2.FormList.webPosInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
    <head>
        <base target="_self"></base>
		<title>:::Consumer POS info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
		<script language="javascript">
		<!--
		function Refresh_Data(flag)
        {         
           alert("Update successful!");
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.RefreshMyData();                 
           }
           else
           {
               window.opener.RefreshMyData();  
           }
           if (flag==1)
           {
               window.close();
           }
           else
           {
              window.focus();
           }
       }
		
		//-->
		</script>		
    </head>
	<body scroll="auto" runat="server" id="body">
	   <script type="text/javascript" src="../js/calendar.js"></script>
		<form id="PosInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
		<div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align=center valign=bottom>
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Red">PURCHASE OF SERVICE REQUEST</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align=left valign=middle>
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">POS For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle"  onclick="javascript:window.print();"  runat="server" /> 
			  <input type="button" id="btnHelp" value="Help" style="width:60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" runat="server" />
			  <asp:Label ID="lbl_err" Runat="server" ForeColor="red"></asp:Label>
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
		<div align=center valign=top style="position:relative;WIDTH:100%; height:650px; overflow: auto " >
			<table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%; height:100%">
			    <tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				    <tr class="tr_common">
						<td style="WIDTH: 95px; height: 20px;" align="left" width="95"  >
						<b><asp:Label ID="l_p_cancel_date" runat="server" Text="Cancel Date:" width=95 BackColor="#9fb0f4"></asp:Label></b>						   
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;">
							<asp:textbox id="p_cancel_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server"></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="400" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b>Date:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:label id="p_date" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					</tr>
					<tr class="tr_common">
						<td colspan=3 style="WIDTH: 200px" align="left" width="200" height="20">
						    <b><asp:Label ID="l_p_cancel_desc" runat="server" Text="Reason for Cancellation:" width=200 BackColor="#9fb0f4"></asp:Label></b>						   						    
						</td>
						<td width="5" height="20"></td>
						<td colspan=4 width="595" height="20" style="width: 595px">
							<asp:textbox id="p_cancel_desc" runat="server" Width=550 MaxLength = 120></asp:textbox>
						</td>
					</tr>
				  </table>
				</td></tr>
				<tr><td height="5">
				</td></tr> 
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				    <tr class="tr_common">
						<td style="WIDTH: 90px" align="right" width="90" bgColor="#9fb0f4" height="20"><b><asp:Label ID="l_p_funding_level" runat="server" Text="Funding Level:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" width="65" height="20" style="width: 65px">
							<asp:textbox id="p_funding_level" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
						</td>
						<td width="5" height="20"></td>
						<td style="WIDTH: 75px" align="right" width="75" bgColor="#9fb0f4" height="20"><b><asp:Label ID="l_p_case_type" runat="server" Text="Case Type:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" width="75" height="20" style="width: 75px">
							<asp:dropdownlist id="p_case_type" runat="server" 
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="70">
				            </asp:dropdownlist>
						</td>
						<td width="5" height="20"></td>
						<td style="WIDTH: 45px" align="right" width="45" bgColor="#9fb0f4" height="20"><b><asp:Label ID="l_p_assessment_date_yn" runat="server" Text="FCPP:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" width="45" height="20" style="width: 45px">
							<asp:dropdownlist id="p_assessment_date_yn" runat="server" CssClass="inface" Enabled=false>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td style="WIDTH: 120px" align="right" width="120" bgColor="#9fb0f4" height="20"><b><asp:Label ID="l_p_assessment_date" runat="server" Text="Assessment Date:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" width="95" height="20" style="width: 95px">
							<asp:label id="p_assessment_date" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" height="20"></td>
						<td style="WIDTH: 80px" align="right" width="80" bgColor="#9fb0f4" height="20"><b><asp:Label ID="l_p_auth" runat="server" Text="Authorization:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" width="75" height="20" style="width: 75px">
							<asp:textbox id="p_auth" runat="server" CssClass="inface"></asp:textbox>
						</td>
					</tr>  
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600">
				</td></tr> 
				<tr><td height="5">
				</td></tr>  
				<tr><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b>UCI#:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="75" style="width: 75px; height: 20px;">
							<asp:label id="p_uci" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b>Consumer:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="135" style="width: 135px; height: 20px;">
							<asp:label id="p_name_first" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=3 class="td_unline" width="130" style="width: 130px; height: 20px;">
							<asp:label id="p_name_last" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px" ></td>
						<td style="WIDTH: 45px; height: 20px;" align="right" width="45" bgColor="#9fb0f4"><b>CM:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="50" style="width: 50px; height: 20px;">
							<asp:label id="cm_id" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="150" style="width: 150px; height: 20px;">
							<asp:label id="cm_name" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					 </tr>	
					 <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b>DOB:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="75" style="width: 75px; height: 20px;">
							<asp:label id="p_dob" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b>Age:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="135" style="width: 135px; height: 20px;">
							<asp:label id="p_dob_age" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="right" width="100" bgColor="#9fb0f4"><b><asp:Label ID="l_p_med_waiv" runat="server" Text="Med.Waiver:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="65" style="width: 65px; height: 20px;">
						    <asp:label id="p_med_waiv" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px" bgColor="#9fb0f4">&nbsp;/</td>
						<td colspan=3 style="WIDTH: 100px; height: 20px;" align="right" width="100" bgColor="#9fb0f4"><b><asp:Label ID="l_p_inst_deeming" runat="server" Text="Inst. Deeming:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="150" style="width: 150px; height: 20px;">
							<asp:dropdownlist id="p_inst_deeming" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="140">
				            </asp:dropdownlist>
						</td>
					 </tr>				     			     
				   </table>
				</td></tr>
				<tr><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_diag" runat="server" Text="Diagnosis:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td rowspan=2 width="530" style="width: 530px; height: 20px;">
							<asp:textbox id="p_diag" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="520" height="40" MaxLength=175></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 130px; height: 20px;" align="right" width="130" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ff" runat="server" Text="Frankland Factor:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="60" style="width: 60px; height: 20px;">
							<asp:label id="p_ff" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"></td>
						<td width="5" style="height: 20px"></td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 130px; height: 20px;" align="right" width="130" bgColor="#9fb0f4"><b><asp:Label ID="l_p_dev_level_per" runat="server" Text="Developmental Level:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="60" style="width: 60px; height: 20px;">
							<asp:label id="p_dev_level_per" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					 </tr>	
				   </table>
				</td></tr>
				<tr><td height="3" bgcolor="#006600">
				</td></tr> 
				<tr><td height="5">
				</td></tr> 
				<tr><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_vendor_number" runat="server" Text="Vendor#:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="115" style="width: 115px; height: 20px;">
							<asp:label id="p_vendor_number" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="60" style="height: 20px">
							<asp:button id="btnReset" Runat="server" Text="Reset" onclientclick="NoConfirmExit();" onclick="btnReset_Click"></asp:button>
						</td>
						<td width="60" style="height: 20px"></td>
						<td width="5" style="height: 20px"></td>
						<td width="115" style="height: 20px"></td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b><asp:Label ID="l_p_date_start" runat="server" Text="Start Date:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="p_date_start" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_date_end" runat="server" Text="Term Date:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:textbox id="p_date_end" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_vendor_name" runat="server" Text="Vendor:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="355" style="width: 355px; height: 20px;">
						    <asp:dropdownlist id="p_resource_number" runat="server"  onchange="NoConfirmExit();" OnSelectedIndexChanged="vendorname_SelectedIndexChanged"
							   DataValueField="r_resource_id" DataTextField="r_resource_name" Height="20" Width="180" AutoPostBack=true >
				            </asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b><asp:Label ID="l_p_vendor_svcc" runat="server" Text="Service:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="310" style="width: 310px; height: 20px;">
							<asp:dropdownlist id="p_vendor_svcc" runat="server" onchange="NoConfirmExit();" OnSelectedIndexChanged="service_SelectedIndexChanged"
							   DataValueField="fullID" DataTextField="fullentry" Height="20" Width="235" AutoPostBack=true>
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_resource_addr1" runat="server" Text="Address:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 width="355" style="width: 355px; height: 20px;">
							<asp:label id="p_resource_addr1" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b><asp:Label ID="l_p_vendor_subc" runat="server" Text="Sub Code:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="310" style="width: 310px; height: 20px;">
							<asp:dropdownlist id="p_vendor_subc" runat="server" 
							    DataValueField="fullID" DataTextField="fullentry" Height="20" Width="235">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"></td>
						<td width="5" style="height: 20px"></td>
						<td colspan=2 width="175" style="width: 175px; height: 20px;">
							<asp:label id="p_resource_addr2" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_resource_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="115" style="height: 20px">
							<asp:label id="p_resource_phone" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b><asp:Label ID="l_p_unit" runat="server" Text="# of Units:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="p_unit" runat="server" CssClass="inface" MaxLength = 9></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_unit_type" runat="server" Text="Type:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:dropdownlist id="p_unit_type" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="115">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ipp" runat="server" Text="IPP#:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="115" style="width: 115px; height: 20px;">
							<asp:textbox id="p_ipp" runat="server" CssClass="inface" MaxLength=5></asp:textbox>
						</td>
						<td colspan=3 width="125" style="height: 20px"></td>
						<td colspan=3 style="WIDTH: 200px; height: 20px;" align="right" width="200" bgColor="#9fb0f4"><b><asp:Label ID="l_p_cost" runat="server" Text="Approx. Monthly Cost:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="p_cost" runat="server" CssClass="inface" MaxLength = 15></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_rate" runat="server" Text="Rate:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:textbox id="p_rate" runat="server" CssClass="inface" MaxLength = 9></asp:textbox>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 60px;" align="right" bgColor="#9fb0f4"><b><asp:Label ID="l_p_limit" runat="server" Text="Limit($)"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td class="td_unline" style="width: 115px; height: 20px;">
							<asp:textbox id="p_limits" runat="server" CssClass="inface"  MaxLength = 9></asp:textbox>
					    </td>		
						<td align="right" bgColor="#9fb0f4"><b><asp:Label ID="l_p_balance" runat="server" Text="Balance($)"></asp:Label></b>
						</td>
						<td style="WIDTH: 60px;" class="td_unline" ><asp:textbox id="p_balance" runat="server" CssClass="inface" MaxLength = 9></asp:textbox>
						</td>		
						<td width="5" style="height: 20px"></td>				       					                
						<td style="WIDTH: 115px; height: 20px;" align="right" width="115" bgColor="#9fb0f4">
						     <asp:CheckBox ID="p_noamb" runat="server" Text="NO AMB"  Font-Bold=true OnClick="DataChanged()"/>
						</td>
						<td colspan=2 align="right" bgColor="#9fb0f4"><b><asp:Label ID="l_p_cost_old" runat="server" Text="Old Monthly Cost:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="p_cost_old" runat="server" CssClass="inface" ReadOnly=true MaxLength = 15></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_cost_diff" runat="server" Text="Diff:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:label id="p_cost_diff" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					 </tr>
				   </table>
				</td></tr> 
				<tr><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td style="WIDTH: 802px; height: 20px" align="left" bgColor="#9fb0f4"><b><asp:Label ID="l_p_desc" runat="server" Text="Description of Service:"></asp:Label></b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 802px; height: 150px"  valign="top" height="150">
						    <asp:textbox id="p_desc" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="150"></asp:textbox>
				             <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="p_desc" ShowModal=true  runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				     <tr><td height="5" ></td></tr>
				     <tr>
				        <td style="WIDTH: 802px; height: 20px" align="left" bgColor="#9fb0f4"><b><asp:Label ID="l_p_just" runat="server" Text="Justification of Service:"></asp:Label></b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 802px; height: 150px"  valign="top" height="150">
						    <asp:textbox id="p_just" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="150"></asp:textbox>
				            <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="p_just" ShowModal=true runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				   </table>
				</td></tr>
				<tr><td height="3" bgcolor="#006600">
				</td></tr> 
				<tr><td height="5">
				</td></tr> 
				<tr><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 70px; height: 20px;" align="right" width="70" bgColor="#9fb0f4"><b><asp:Label ID="l_p_medical" runat="server" Text="Medi-Cal:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_medical" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_medicare" runat="server" Text="Medicare:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_medicare" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ccs" runat="server" Text="CCS:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_ccs" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ihss" runat="server" Text="IHSS:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_ihss" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 80px; height: 20px;" align="right" width="80" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ihss_hrs" runat="server" Text="# of hours:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 72px; height: 20px;">
							<asp:textbox id="p_ihss_hrs" runat="server" CssClass="inface" MaxLength=6></asp:textbox>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 70px; height: 20px;" align="right" width="70" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ssa" runat="server" Text="SSA:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_ssa" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_ssi" runat="server" Text="SSI:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_ssi" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_va" runat="server" Text="VA:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_va" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_payee" runat="server" Text="Payee:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="240" style="width: 240px; height: 20px;">
							<asp:textbox id="p_payee" runat="server" CssClass="inface" MaxLength = 50></asp:textbox>
						</td>
					 </tr>	
					 <tr class="tr_common">
						<td style="WIDTH: 70px; height: 20px;" align="right" width="70" bgColor="#9fb0f4"><b><asp:Label ID="l_p_priv_ins" runat="server" Text="Priv.Ins:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="85" style="width: 85px; height: 20px;">
							<asp:dropdownlist id="p_priv_ins" runat="server" CssClass="inface" width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_priv_ins_co" runat="server" Text="Carrier:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="245" style="width: 245px; height: 20px;">
							<asp:textbox id="p_priv_ins_co" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 65px; height: 20px;" align="right" width="65" bgColor="#9fb0f4"><b><asp:Label ID="l_p_priv_ins_num" runat="server" Text="#:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="240" style="width: 240px; height: 20px;">
							<asp:textbox id="p_priv_ins_num" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 70px; height: 20px;" align="right" width="70" bgColor="#9fb0f4"><b><asp:Label ID="l_p_other_fund" runat="server" Text="Other:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=17 class="td_unline" width="725" style="width: 85px; height: 20px;">
							<asp:textbox id="p_other_fund" runat="server" CssClass="inface" MaxLength =175></asp:textbox>
						</td>
					 </tr>
				   </table>
				</td></tr>
				<tr><td height="3" bgcolor="#006600">
				</td></tr> 
				<tr><td height="5">
				</td></tr>
				<tr><td >
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 60px; height: 20px;" align="right" width="60" bgColor="#9fb0f4"><b><asp:Label ID="l_p_cm_name" runat="server" Text="Entered By:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="185" style="width: 185px; height: 20px;">
							<asp:label id="p_cm_name" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 45px; height: 20px;" align="right" width="45" bgColor="#9fb0f4"><b><asp:Label ID="l_p_cm_id" runat="server" Text="ID:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="55" style="width: 55px; height: 20px;">
							<asp:label id="p_cm_id" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="80" style="height: 20px"></td>
						<td class="td_unline" width="360" style="width: 360px; height: 20px;">
						</td>
					 </tr>
				     <tr class="tr_common">
						<td colspan=8 width="440" style="height: 20px"></td>				     
				        <td style="WIDTH: 360px; height: 20px;" align="right" width="360" bgColor="#9fb0f4"><b>Date</b>
				        </td>
                     </tr>	
				     <tr class="tr_common">
						<td colspan=7 class="td_unline" width="360" style="width: 360px; height: 20px;">
						</td>
                     	<td width="80" style="height: 20px"></td>
						<td class="td_unline" width="360" style="width: 360px; height: 20px;">
						</td>
					 </tr>
					  <tr class="tr_common">
					    <td colspan=7 style="WIDTH: 360px; height: 20px;" align="right" width="360" bgColor="#9fb0f4"><b>Date</b>
				        </td>
						<td width="80" style="height: 20px"></td>				     
				        <td style="WIDTH: 360px; height: 20px;" align="right" width="360" bgColor="#9fb0f4"><b>Date</b>
				        </td>
                     </tr>
                     <tr class="tr_common">
						<td colspan=7 class="td_unline" width="360" style="width: 360px; height: 20px;">
						</td>
                     	<td width="80" style="height: 20px"></td>
						<td class="td_unline" width="360" style="width: 360px; height: 20px;">
						</td>
					 </tr>
					  <tr class="tr_common">
					    <td colspan=7 style="WIDTH: 360px; height: 20px;" align="right" width="360" bgColor="#9fb0f4"><b>Date</b>
				        </td>
						<td width="80" style="height: 20px"></td>				     
				        <td style="WIDTH: 360px; height: 20px;" align="right" width="360" bgColor="#9fb0f4"><b>Date</b>
				        </td>
                     </tr>
                     <tr class="tr_common">
						<td colspan=7 width="360" style="width: 360px; height: 20px;" align="center" bgColor="#9fb0f4"><b>
						    <asp:RadioButton  Text="Approved" ID="p_approval_1" GroupName="p_approval" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="Denied"   ID="p_approval_2" GroupName="p_approval" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="Deferred" ID="p_approval_3" GroupName="p_approval" runat="server" /></b>
						</td>
                     	<td width="80" style="height: 20px"></td>
						<td width="360" style="width: 360px; height: 20px;" align="center" bgColor="#9fb0f4"><b>
                            <asp:CheckBox ID="p_exception" runat="server" Text="Exception" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="p_planning_team" runat="server" Text="Planning Team Decision" /></b>
						</td>
					 </tr>
				   </table>
				   <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
					 <tr>
				        <td colspan=9 style="WIDTH: 790px; height: 20px" align="left" bgColor="#9fb0f4"><b><asp:Label ID="l_p_comments" runat="server" Text="Comments:"></asp:Label></b></td>
				     </tr>
				     <tr>
				        <td colspan=9 style="WIDTH: 790px; height: 150px"  valign="top" height="150">
						    <asp:textbox id="p_comments" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="150"></asp:textbox>
				            <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="p_comments" ShowModal=true runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>					 
				   </table>
				</td></tr>
			</table>		
		</div>													  
		</form>
	</body>
</html>


