<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webSirInfo.aspx.cs" Inherits="Virweb2.FormList.webSirInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
    <head>
        <base target="_self"></base>
		<title>:::Consumer SIR info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript" src="../js/common.js"></script>
			
		<script language="javascript">
    <!--
       function print_click()
       {
          var s_key=document.PosInfo.s_key.value.toString(); 
          var UserAct=document.PosInfo.UserAct.value.toString();        
          winhref("PrintSirInfo.aspx?s_key="+s_key+"&UserAct="+UserAct,"PrintSirInfo");          
       }
       
       function window_onload()
       {
          var s_key=document.PosInfo.s_key.value.toString();         
          if (s_key=="")     
          {              
              document.PosInfo.btnPrint.disabled=true;
          }   
          else
          {
             document.PosInfo.btnPrint.disabled=false;
          }   
       }
       
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
 	    <script type="text/JavaScript" src="../js/calendar.js"></script>	
		<form id="PosInfo" method="post" runat="server">
		<input id="NoConfirm" type="hidden" value="0" />
		<input type="hidden" name="s_key" id="s_key" value="" runat="server" />
		<input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />		
		<div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	      <tr style="height: 25px;" align=center valign=bottom>
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Red">SPECIAL INCIDENT REPORT</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align=left valign=middle>
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">SIR For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" ID="btnImage" Runat="server" Value="Image" style="width: 60px;" Class="buttonbluestyle"  />
			  <input type="button" id="btnPrint" value="Print" style="width:60px;" Class="buttonbluestyle"  runat="server" OnClick="NoConfirmExit();javascript:print_click();" />
			  <input type="button" id="btnHelp" value="Help" style="width:60px;" Class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" runat="server" />
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
                <tr><td style="height: 60px">
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 225px; height: 20px;" align="left" width="225" bgColor="#9fb0f4"><b>Client's Name:</b>
						</td>
						<td width="15" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>Sex:</b>
						</td>
						<td width="15" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>Date of Birth:</b>
						</td>
						<td width="15" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>UCI Number:</b>
						</td>
						<td width="15" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>Date Received:</b>
						</td>
						<td width="15" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>Date of Report:</b>
						</td>
                     </tr>
                     <tr class="tr_common">
						<td class="td_unline" width="225" style="width: 225px; height: 20px;">
							<asp:label id="s_name" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="15" style="height: 20px"></td>
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:label id="s_gender" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="15" style="height: 20px"></td>
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:label id="s_dob" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="15" style="height: 20px"></td>
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:label id="s_uci" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="15" style="height: 20px"></td>
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:textbox id="s_recieved_dt"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
						</td>
						<td width="15" style="height: 20px"></td>
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:label id="s_rpt_date" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
                     </tr>
				  </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>Diagnosis:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="690" style="width: 690px; height: 40px;">
							<asp:textbox id="s_diagnosis" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="680" height="40" MaxLength=250></asp:textbox>
						</td>
                     </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr> 
				<tr><td >
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 160px; height: 20px;" align="left" width="160" bgColor="#9fb0f4"><b>Check Applicable:</b>
						</td>
						<td width="320" style="width: 320px; height: 20px;" align="center" bgColor="#9fb0f4">
						    <asp:RadioButton  Text="Verbal" ID="s_verb_yes" GroupName="s_verb" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="Non-Verbal" ID="s_verb_no" GroupName="s_verb" runat="server" />
						</td>
						<td width="320" style="width: 320px; height: 20px;" align="center" bgColor="#9fb0f4">
						    <asp:RadioButton  Text="Ambulatory" ID="s_amb_yes" GroupName="s_amb" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="Non-Ambulatory" ID="s_amb_no" GroupName="s_amb" runat="server" />
						</td>
                     </tr>
				  </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td colspan=7 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Type of Incident Codes:</b></td>
				     </tr>
				     <tr>
				        <td colspan=7 style="WIDTH: 800px; height: 20px" align="left">
				            <asp:dropdownlist id="s_incident_type_sel" runat="server" OnSelectedIndexChanged="incidenttype_SelectedIndexChanged"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="200" AutoPostBack=true >
				            </asp:dropdownlist>&nbsp;&nbsp;&nbsp;
				            <asp:textbox id="s_incident_type" runat="server" CssClass="inface" Width="500" MaxLength=250></asp:textbox>
				        </td>
				     </tr>
				     <tr>
				        <td colspan=7 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Type of Incident Description:</b></td>
				     </tr>
				     <tr>
				        <td colspan=7 style="WIDTH: 800px; height: 60px"  valign="top" height="60">
						    <asp:textbox id="s_incident_type_desc" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="60"></asp:textbox>
				        </td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 120px; height: 20px"  align="left" height="20">
						    <asp:label id="s_death_type_title" runat="server" BackColor="#9fb0f4"><b>Death Type:</b></asp:label> 
				        </td>
						<td width="5" style="height: 20px"></td>				        
				        <td width="210" style="width: 210px; height: 20px;">
						    <asp:dropdownlist id="s_death_type" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="200">
				            </asp:dropdownlist>
						</td>
		                <td style="WIDTH: 120px; height: 20px"  align="left" height="20">
						    <asp:label id="s_death_event_title" runat="server" BackColor="#9fb0f4"><b>Death Event:</b></asp:label> 
				        </td>
						<td width="5" style="height: 20px"></td>				        
				        <td width="210" style="width: 210px; height: 20px;">
						    <asp:dropdownlist id="s_death_event" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="200">
				            </asp:dropdownlist>
						</td>
						<td width="230" style="width: 230px; height: 20px;">
						</td>
				     </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td colspan=2 style="WIDTH: 265px; height: 20px;" align="left" width="265" bgColor="#9fb0f4"><b>Date and Time of Incident:</b>
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 265px; height: 20px;" align="left" width="265" bgColor="#9fb0f4"><b>Site of Incident/Description:</b>
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 250px; height: 20px;" align="left" width="250" bgColor="#9fb0f4"><b>Alleged Perpetrator:</b>
						</td>
                     </tr>
                     <tr class="tr_common">
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:textbox id="s_incident_dt_part"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:textbox>
						</td>
						<td width="165" style="width: 165px; height: 20px;">	
                            <asp:CheckBox ID="s_incident_dt_approx" runat="server" Text="Approximate" />							
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="265" style="width: 265px; height: 20px;">
						    <asp:dropdownlist id="s_incident_site_type" runat="server" OnSelectedIndexChanged="incidentsitetype_SelectedIndexChanged"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_name" Height="20" Width="250" AutoPostBack=true>
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
							<asp:dropdownlist id="s_alleged_perp_rel" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
                     </tr>
                     <tr class="tr_common">
						<td class="td_unline" width="100" style="width: 100px; height: 20px;">
							<asp:textbox id="s_incident_time_part" runat="server" CssClass="inface"></asp:textbox>
						</td>
						<td width="165" style="width: 165px; height: 20px;">	
                            <asp:CheckBox ID="s_incident_time_approx" runat="server" Text="Approximate" />							
						</td>
						<td width="10" style="height: 20px"></td>
						<td colspan=3 class="td_unline" width="265" style="width: 265px; height: 20px;" >
							<asp:label id="s_incident_site" runat="server" CssClass="infaceLabel"></asp:label>						    
						</td>
					 </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Description of Incident: (Title 17 requires a description of the alleged perpetrator, if applicable.)</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 100px"  valign="top" height="100">
						    <asp:textbox id="s_incident_desc" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="100"></asp:textbox>
				        </td>
				     </tr>
				  </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td colspan=9 style="WIDTH: 800px; height: 20px;" align="left" width="800" bgColor="#9fb0f4"><b>Law Enforcement</b>
						</td>
                     </tr>
				     <tr class="tr_common">
						<td colspan=3 style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4"><b>County Sheriff:</b>
						</td>
						<td width="25" style="height: 20px"></td>
						<td colspan=3 style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4"><b>City Police:</b>
						</td>
						<td width="25" style="height: 20px"></td>
						<td style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4"><b>County Coroner:</b>
						</td>
                     </tr>
                     <tr class="tr_common">
						<td colspan=3 class="td_unline" width="250" style="width: 250px; height: 20px;">
							<asp:textbox id="s_sheriff_county" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
						<td width="25" style="height: 20px"></td>
						<td colspan=3 class="td_unline" width="250" style="width: 250px; height: 20px;">	
							<asp:textbox id="s_police_city" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
						<td width="25" style="height: 20px"></td>
						<td class="td_unline" width="250" style="width: 250px; height: 20px;" >
							<asp:textbox id="s_coroner_county" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td colspan=3 style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">(County)
						</td>
						<td width="25" style="height: 20px"></td>
						<td colspan=3 style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">(City)
						</td>
						<td width="25" style="height: 20px"></td>
						<td style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">(County)
						</td>
                     </tr>
                     <tr class="tr_common">
						<td colspan=3 class="td_unline" width="250" style="width: 250px; height: 20px;">
							<asp:textbox id="s_sheriff_officer" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
						<td width="25" style="height: 20px"></td>
						<td colspan=3 class="td_unline" width="250" style="width: 250px; height: 20px;">	
							<asp:textbox id="s_police_officer" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
						<td width="25" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;" align="center" bgColor="#9fb0f4">
						    <asp:label id="s_coroner_autopsy_title" runat="server" BackColor="#9fb0f4" Width="100"><b>Autopsy:</b></asp:label> 
						    <asp:RadioButton  Text="Yes" ID="s_coroner_autopsy_yes" GroupName="s_coroner_autopsy" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="No" ID="s_coroner_autopsy_no" GroupName="s_coroner_autopsy" runat="server" />
						</td>
					 </tr>
					 <tr class="tr_common">
						<td colspan=3 style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">(Officer)
						</td>
						<td width="25" style="height: 20px"></td>
						<td colspan=3 style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">(Officer)
						</td>
						<td width="25" style="height: 20px"></td>
						<td style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">
						</td>
                     </tr>
                     <tr class="tr_common">
						<td class="td_unline" width="120" style="width: 120px; height: 20px;">
							<asp:textbox id="s_sheriff_rpt_num" runat="server" CssClass="inface" MaxLength=25></asp:textbox>
						</td>
						<td width="10" style="height: 20px"></td>
						<td class="td_unline" width="120" style="width: 120px; height: 20px;">
							<asp:textbox id="s_sheriff_phone" runat="server" CssClass="inface" MaxLength=20></asp:textbox>
						</td>
						<td width="25" style="height: 20px"></td>
						<td class="td_unline" width="120" style="width: 120px; height: 20px;">
							<asp:textbox id="s_police_rpt_num" runat="server" CssClass="inface" MaxLength=25></asp:textbox>
						</td>
						<td width="10" style="height: 20px"></td>
						<td class="td_unline" width="120" style="width: 120px; height: 20px;">
							<asp:textbox id="s_police_phone" runat="server" CssClass="inface" MaxLength=20></asp:textbox>
						</td>
						<td width="25" style="height: 20px"></td>
						<td class="td_unline" width="250" style="width: 250px; height: 20px;" >
							<asp:textbox id="s_coroner_phone" runat="server" CssClass="inface" MaxLength=20></asp:textbox>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 120px; height: 20px;" align="center" width="120" bgColor="#9fb0f4">(Report #)
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 120px; height: 20px;" align="center" width="120" bgColor="#9fb0f4">(Telephone #)
						</td>
						<td width="25" style="height: 20px"></td>
						<td style="WIDTH: 120px; height: 20px;" align="center" width="120" bgColor="#9fb0f4">(Report #)
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 120px; height: 20px;" align="center" width="120" bgColor="#9fb0f4">(Telephone #)
						</td>
						<td width="25" style="height: 20px"></td>
						<td style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4">(Telephone #)
						</td>
                     </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
				        <td style="WIDTH: 200px; height: 20px;" align="left" width="200" bgColor="#9fb0f4">Facility/Provider Responsible:
						</td>
						<td width="100" style="height: 20px"></td>
						<td style="WIDTH: 150px; height: 20px;" align="right" width="150" bgColor="#9fb0f4">Vendor Number:
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="150" style="width: 150px; height: 20px;">
						    <asp:dropdownlist id="s_vendor_number" runat="server" OnSelectedIndexChanged="vendornumber_SelectedIndexChanged"
							   DataValueField="r_resource_id" DataTextField="r_vendor_number" Height="20" Width="180" AutoPostBack=true >
				            </asp:dropdownlist>
						</td>
						<td width="195" style="height: 20px" align="right"> 
							<asp:button id="btnReset" Runat="server" Text="Reset" onclick="btnReset_Click"></asp:button>
						</td>
					 </tr>
				 </table>
				</td></tr>	
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">Name:
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="350" style="width: 350px; height: 20px;">
							<asp:label id="s_residence_name" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4">Residence:
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="185" style="width: 185px; height: 20px;">
							<asp:dropdownlist id="s_residence" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="170">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">Address:
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="350" style="width: 350px; height: 20px;">
							<asp:label id="s_residence_address" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4">Res. Level:
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="185" style="width: 185px; height: 20px;">
							<asp:label id="s_residence_level" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">City/State/Zip:
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="350" style="width: 350px; height: 20px;">
							<asp:label id="s_residence_city" runat="server" CssClass="infaceLabel" Width="200"></asp:label>&nbsp;&nbsp;&nbsp;
							<asp:label id="s_residence_state" runat="server" CssClass="infaceLabel" Width="40"></asp:label>&nbsp;&nbsp;&nbsp;
							<asp:label id="s_residence_zip" runat="server" CssClass="infaceLabel" Width="70"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4">Telephone:
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="185" style="width: 185px; height: 20px;">
							<asp:label id="s_residence_phone" runat="server" CssClass="infaceLabel"></asp:label>
						</td>
					 </tr>
				 </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" ></td></tr>
				
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td colspan=7 style="WIDTH: 800px; height: 20px;" align="center" width="800" bgColor="#9fb0f4"><b>Other Agencies/Individuals Notified:</b>
						</td>
                     </tr>
				     <tr class="tr_common">
						<td style="WIDTH: 240px; height: 20px;" align="center" width="240" bgColor="#9fb0f4"><b>Entity</b>
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 250px; height: 20px;" align="center" width="250" bgColor="#9fb0f4"><b>Name:</b>
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 140px; height: 20px;" align="center" width="140" bgColor="#9fb0f4"><b>By</b>
						</td>
						<td width="10" style="height: 20px"></td>
						<td style="WIDTH: 140px; height: 20px;" align="center" width="140" bgColor="#9fb0f4"><b>Telephone</b>
						</td>
                     </tr>
                     <tr class="tr_common">
						<td width="240" style="width: 240px; height: 20px;">
						    <asp:dropdownlist id="s_notify_type1" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="230">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
						    <asp:dropdownlist id="s_notify_name1" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_by1" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_phone1" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td width="240" style="width: 240px; height: 20px;">
						    <asp:dropdownlist id="s_notify_type2" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="230">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
						    <asp:dropdownlist id="s_notify_name2" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_by2" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_phone2" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td width="240" style="width: 240px; height: 20px;">
						    <asp:dropdownlist id="s_notify_type3" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="230">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
						    <asp:dropdownlist id="s_notify_name3" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_by3" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_phone3" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td width="240" style="width: 240px; height: 20px;">
						    <asp:dropdownlist id="s_notify_type4" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="230">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
						    <asp:dropdownlist id="s_notify_name4" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_by4" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_phone4" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td width="240" style="width: 240px; height: 20px;">
						    <asp:dropdownlist id="s_notify_type5" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="230">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
						    <asp:dropdownlist id="s_notify_name5" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_by5" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_notify_phone5" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common">
						<td style="WIDTH: 240px; height: 20px;" align="right" width="240" bgColor="#9fb0f4"><b>Other</b>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="250" style="width: 250px; height: 20px;">
						    <asp:dropdownlist id="s_other_notified_name" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="240">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_other_notified_by" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
						<td width="10" style="height: 20px"></td>
						<td width="140" style="width: 140px; height: 20px;">
						    <asp:dropdownlist id="s_other_notified_phone" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_name" Height="20" Width="130">
				            </asp:dropdownlist>
						</td>
					 </tr>
				  </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="left" width="250" bgColor="#9fb0f4">Medical Treatment Necessary:
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" bgColor="#9fb0f4">
							<asp:RadioButton Text="Yes" ID="s_treatment_2" GroupName="s_treatment" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton Text="No" ID="s_treatment_1" GroupName="s_treatment" runat="server" />
						</td>
						<td width="445" style="height: 20px"></td>
					 </tr>
				 </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>If Yes, Nature of Treatment:</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 160px"  valign="top" height="160">
						    <asp:textbox id="s_treatment_type" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="160"></asp:textbox>
						    <cc1:UltimateSpell ID="UltimateSpell1" runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				  </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
				        <td style="WIDTH: 200px; height: 20px;" align="left" width="200" bgColor="#9fb0f4">Administered At:
						</td>
						<td style="height: 20px; width: 5px;"></td>
						<td class="td_unline" width="300" style="width: 300px; height: 20px;">
							<asp:textbox id="s_treatment_site" runat="server" CssClass="inface" MaxLength=80></asp:textbox>
						</td>
						<td width="295" style="height: 20px"></td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 200px; height: 20px;" align="left" width="200" bgColor="#9fb0f4">Administered By:
						</td>
						<td style="height: 20px; width: 5px;"></td>
						<td class="td_unline" width="300" style="width: 300px; height: 20px;">
							<asp:textbox id="s_treatment_person" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
						</td>
						<td width="295" style="height: 20px"></td>
					 </tr>
				 </table>
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Follow-up Treatment, if Any:</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 100px"  valign="top" height="100">
						    <asp:textbox id="s_treatment_followup" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="100"></asp:textbox>
						    <cc1:UltimateSpell ID="UltimateSpell2" runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				     <tr>
				        <td></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Immediate Action Taken - Planned(by whom) and Anticipated Results</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 100px"  valign="top" height="100">
						    <asp:textbox id="s_action_taken" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="100"></asp:textbox>
						    <cc1:UltimateSpell ID="UltimateSpell3" runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				     <tr>
				        <td></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Action Taken and/or Planned to Prevent Further Occurrences:</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 160px"  valign="top" height="160">
						    <asp:textbox id="s_action_prevent" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="160"></asp:textbox>
						    <cc1:UltimateSpell ID="UltimateSpell4" runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				     <tr>
				        <td></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Comments (include the name/address of any witnesses to the incident)</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 160px"  valign="top" height="160">
						    <asp:textbox id="s_comment" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="160"></asp:textbox>
						    <cc1:UltimateSpell ID="UltimateSpell5" runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td style="WIDTH: 100px; height: 20px;"></td>
						<td width="5" style="height: 20px"></td>
						<td style="WIDTH: 300px; height: 20px;" align="center" width="300" bgColor="#9fb0f4"><b>Report Submitted by</b>
						</td>
						<td width="95" style="height: 20px"></td>
						<td style="WIDTH: 300px; height: 20px;" align="center" width="300" bgColor="#9fb0f4"><b>Report Approved by</b>
						</td>
					</tr>
					<tr class="tr_common">
				        <td style="WIDTH: 100px; height: 20px;" align="left" bgColor="#9fb0f4"><b>Name:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="300" style="width: 300px; height: 20px;">
							<asp:textbox id="s_entered_by" runat="server" CssClass="inface" MaxLength=50></asp:textbox>							
						</td>
						<td width="95" style="height: 20px"></td>
						<td class="td_unline" width="300" style="width: 300px; height: 20px;">
							<asp:textbox id="s_approved_by_name" runat="server" CssClass="inface" MaxLength=50></asp:textbox>							
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 100px; height: 20px;" align="left" bgColor="#9fb0f4"><b>Title:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="300" style="width: 300px; height: 20px;">
							<asp:textbox id="s_entered_by_title" runat="server" CssClass="inface" MaxLength=50></asp:textbox>							
						</td>
						<td width="95" style="height: 20px"></td>
						<td class="td_unline" width="300" style="width: 300px; height: 20px;">
							<asp:textbox id="s_approved_by_title" runat="server" CssClass="inface" MaxLength=50></asp:textbox>							
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 100px; height: 20px;" align="left" bgColor="#9fb0f4"><b>Date:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="300" style="width: 300px; height: 20px;">
						 <table class="table_common" cellspacing="0" cellpadding="0" border="0" width="98%">
                         <tr>
                           <td class="td_unline" width="85" style="height: 20px">
							<asp:textbox id="s_entered_by_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" width="70" CssClass="inface"></asp:textbox>
						   </td>
						   <td width="90" style="height: 20px" align="left" bgColor="#9fb0f4"><b>Telephone:</b></td> 
						   <td width="5" style="height: 20px"></td>
						   <td class="td_unline" width="115" style="height: 20px">
							<asp:textbox id="s_entered_by_phone" runat="server" width="110" CssClass="inface" MaxLength=20></asp:textbox>
						   </td>
						 </tr>
						 </table>									
						</td>
						<td width="95" style="height: 20px"></td>
						<td width="300" style="width: 300px; height: 20px;">
						 <table class="table_common" cellspacing="0" cellpadding="0" border="0" width="98%">
                         <tr>
                           <td class="td_unline" width="85" style="height: 20px">
							<asp:textbox id="s_approved_by_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" width="80" CssClass="inface"></asp:textbox>
						   </td>
						   <td width="90" style="height: 20px" align="left" bgColor="#9fb0f4"><b>Telephone:</b></td> 
						   <td width="5" style="height: 20px"></td> 
						   <td class="td_unline" width="115" style="height: 20px">
							<asp:textbox id="s_approved_by_phone" runat="server" width="110" CssClass="inface" MaxLength=20></asp:textbox>
						   </td>
						 </tr>
						 </table>								
						</td>
					 </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="left" width="250" bgColor="#9fb0f4"><b>CDER Information:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px"></td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>AGGRESSION:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="aggrsn" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>FREQ/SELF-INJUR BEHAVIOR:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="frqsi" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>SEVERITY/SELF-INJUR BEHAVIOR:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="sevsi" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>DESTRUCTION/PROPERTY:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="dstrpr" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>RUNNING/WANDERING AWAY:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="rnwnd" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>REACTION TO FRUSTRATION:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="rctfrs" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>TEMPER TANTRUMS:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="tmptnt" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>RESISTIVENESS:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="rstvns" runat="server" Enabled=false
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 250px; height: 20px;" align="right" width="250" bgColor="#9fb0f4"><b>MENTAL DISORDER:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="545" style="height: 20px">
						    <asp:dropdownlist id="othdd1" runat="server" Enabled=false
							   DataValueField="icd9_code" DataTextField="icd9_desc" Height="20" Width="540">
				            </asp:dropdownlist>
						</td>
					 </tr>
				 </table>
				</td></tr>
		  		<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Text Continuations To SIR</b></td>
				     </tr>
				     <tr>
				        <td style="WIDTH: 800px; height: 100px"  valign="top" height="100">
						    <asp:textbox id="s_addendums" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="100"></asp:textbox>
						    <cc1:UltimateSpell ID="UltimateSpell6" runat="server">
                            </cc1:UltimateSpell>
				        </td>
				     </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 20px" align="center" bgColor="#9fb0f4"><b>SPECIAL INCIDENT REPORT OVERVIEW</b></td>
				     </tr>
				     <tr class="tr_common"><td colspan="6" height="1"></td></tr>
				     <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Regional Center Actions:</b></td>
				     </tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 80px"  valign="top" height="80">
						    <asp:textbox id="s_rc_actions" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="80" MaxLength=254></asp:textbox>
				        </td>
				     </tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">Investigation Finding:
						</td>
						<td width="150" style="width: 150px; height: 20px;">
							<asp:dropdownlist id="s_rc_actions_inv" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="140">
				            </asp:dropdownlist>
						</td>
						<td width="500" style="height: 20px"></td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
				     <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Vendor Actions:</b></td>
				     </tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 80px"  valign="top" height="80">
						    <asp:textbox id="s_vendor_actions" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="80" MaxLength=254></asp:textbox>
				        </td>
				     </tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">Training Provider By:
						</td>
						<td width="150" style="width: 150px; height: 20px;">
							<asp:dropdownlist id="s_vendor_training" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="140">
				            </asp:dropdownlist>
						</td>
						<td width="500" style="height: 20px"></td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
                     <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Licensing Actions:</b></td>
				     </tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 80px"  valign="top" height="80">
						    <asp:textbox id="s_lic_actions" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="80" MaxLength=254></asp:textbox>
				        </td>
				     </tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">Investigation Finding:
						</td>
						<td width="150" style="width: 150px; height: 20px;">
							<asp:dropdownlist id="s_lic_actions_inv" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="140">
				            </asp:dropdownlist>
						</td>
						<td width="500" style="height: 20px"></td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>CPS/APS/LTCO Actions:</b></td>
				     </tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 80px"  valign="top" height="80">
						    <asp:textbox id="s_cps_actions" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="80" MaxLength=254></asp:textbox>
				        </td>
				     </tr>
					 <tr class="tr_common">
				        <td style="WIDTH: 150px; height: 20px;" align="left" width="150" bgColor="#9fb0f4">Investigation Finding:
						</td>
						<td width="150" style="width: 150px; height: 20px;">
							<asp:dropdownlist id="s_cps_actions_inv" runat="server"
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="140">
				            </asp:dropdownlist>
						</td>
						<td width="500" style="height: 20px"></td>
					 </tr>
					 <tr class="tr_common"><td colspan="6" height="1"></td></tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 20px" align="left" bgColor="#9fb0f4"><b>Law Enforcement Actions:</b></td>
				     </tr>
					 <tr>
				        <td colspan=3 style="WIDTH: 800px; height: 80px"  valign="top" height="80">
						    <asp:textbox id="s_law_actions" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="800" height="80" MaxLength=254></asp:textbox>
				        </td>
				     </tr>
				  </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
				     <tr class="tr_common">
				        <td style="WIDTH: 100px; height: 20px;" align="left" width="100" bgColor="#9fb0f4"><b>Distribution:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="695" style="width: 695px; height: 20px;">
                            <asp:CheckBox ID="s_client_file" runat="server" Text="Client's File" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
                            <asp:CheckBox ID="s_vendor_file" runat="server" Text="Vendor File" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
                            <asp:CheckBox ID="s_liasion" runat="server" Text="Facility Liaison" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
                            <asp:CheckBox ID="s_dds" runat="server" Text="DDS" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
                            <asp:CheckBox ID="s_licensing_agency" runat="server" Text="Licensing Agency" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
                            <asp:CheckBox ID="s_client_advocate" runat="server" Text="Client's Rights Advocate" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;							
						</td>
					 </tr>
				 </table>
				</td></tr>
				<tr><td bgcolor="#006600" >
				</td></tr> 
				<tr><td height="5" >
				</td></tr>
				<tr><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 80%">
				     <tr class="tr_common">				     
				        <td style="WIDTH: 540px; height: 20px;" align="left" width="540"><b>Other:</b>
						</td>
						<td width="40" style="height: 40px"></td>
						<td style="WIDTH: 100px; height: 20px;" width="100"></td>
						<td width="20" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" width="100"></td>
					 </tr>
				     <tr class="tr_common">
						<td style="WIDTH: 540px; height: 20px;" align="center" width="540" bgColor="#9fb0f4"><b>NAME and Email Address</b>
						</td>
						<td width="40" style="height: 40px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="center" width="100" bgColor="#9fb0f4"><b>Email Received</b>
						</td>
						<td width="20" style="height: 20px"></td>
						<td style="WIDTH: 100px; height: 20px;" align="center" width="100" bgColor="#9fb0f4"><b>Resend</b>
						</td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user1" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 40px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec1" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend1" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 40px;">
							<asp:dropdownlist id="s_dist_user2" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 40px"></td>
						<td width="100" style="width: 100px; height: 40px;" align="center">
                            <asp:CheckBox ID="s_dist_rec2" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 40px"></td>
						<td width="100" style="width: 100px; height: 40px;" align="center">
                            <asp:CheckBox ID="dist_rsend2" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user3" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec3" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend3" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user4" runat="server"
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec4" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend4" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user5" runat="server"
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec5" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend5" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user6" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec6" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend6" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user7" runat="server"
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec7" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend7" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user8" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec8" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend8" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user9" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec9" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend9" runat="server" Text="" />
                        </td>
				     </tr>
				     <tr class="tr_common">
						<td width="540" style="width: 540px; height: 20px;">
							<asp:dropdownlist id="s_dist_user10" runat="server" 
							   DataValueField="employeeid" DataTextField="employeeNameEmail" Height="20" Width="500">
				            </asp:dropdownlist>
						</td>
						<td width="40" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="s_dist_rec10" runat="server" Text="" />
                        </td>
						<td width="20" style="height: 20px"></td>
						<td width="100" style="width: 100px; height: 20px;" align="center">
                            <asp:CheckBox ID="dist_rsend10" runat="server" Text="" />
                        </td>
				     </tr>
				 </table> 
			    </td></tr>	 
            </table>
        </div>				
        </form>
    </body>
</html>
