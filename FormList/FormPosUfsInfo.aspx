<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormPosUfsInfo.aspx.cs" Inherits="Virweb2.FormList.FormPosUfsInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
<head>
    <base target="_self"></base>
    <title>:::POS----Purchase Of Service Detail:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script language="javascript">
	<!--
	    function doseltd(obj) {
	        /*if (isIE())
	        {            
	        for(var i=0;i<tr_info.childNodes.length;i++)
	        {
	        var e=tr_info.childNodes[i];		        	   
	        e.style.color="#000000";
	        e.style.cursor="hand";		        	        
	        }
	        obj.style.color="#990066";
	        obj.style.cursor="auto";
	        }
	        else */
	        {
	            POS_PS.style.color = "";
	            //POS_PS.style.cursor="pointer";
	            POS_IP.style.color = "";
	            //POS_IP.style.cursor="pointer";

	            obj.style.color = "#990066";
	            //obj.style.cursor="auto"; 	         
	        }
	        Pos_PS.style.display = "none";
	        Pos_IP.style.display = "none";
	        switch (obj.id) {
	            case "POS_PS":
	                Pos_PS.style.display = "";
	                document.PosUfsInfo.now_div_flag.value = "1";
	                break;
	            case "POS_IP":
	                Pos_IP.style.display = "";
	                document.PosUfsInfo.now_div_flag.value = "2";
	                break;
	        }
	    }

	    function doseltdbyid(obj_id) {
	        /*
	        if (isIE())
	        {  
	        for(var i=0;i<tr_info.childNodes.length;i++)
	        {
	        var e=tr_info.childNodes[i];

	        e.style.color="#000000";
	        e.style.cursor="hand";
	        }
	        }
	        else
	        */
	        {
	            POS_PS.style.color = "";
	            //POS_PS.style.cursor="pointer";
	            POS_IP.style.color = "";
	            //POS_IP.style.cursor="pointer";
	        }
	        Pos_PS.style.display = "none";
	        Pos_IP.style.display = "none";

	        switch (obj_id) {
	            case "POS_PS":
	                Pos_PS.style.display = "";
	                POS_PS.style.color = "#990066";
	                //POS_PS.style.cursor="auto";
	                document.PosUfsInfo.now_div_flag.value = "1";
	                break;
	            case "POS_IP":
	                Pos_IP.style.display = "";
	                POS_IP.style.color = "#990066";
	                //POS_IP.style.cursor="auto";
	                document.PosUfsInfo.now_div_flag.value = "2";
	                break;
	        }
	    }

	    function doseltdbyflag(flag) {
	        /*
	        if (isIE())
	        {  
	        for(var i=0;i<tr_info.childNodes.length;i++)
	        {
	        var e=tr_info.childNodes[i];

	        e.style.color="#000000";
	        e.style.cursor="hand";
	        }
	        }
	        else
	        */
	        {
	            POS_PS.style.color = "";
	            //POS_PS.style.cursor="pointer";
	            POS_IP.style.color = "";
	            //POS_IP.style.cursor="pointer";
	        }
	        Pos_PS.style.display = "none";
	        Pos_IP.style.display = "none";

	        switch (flag) {
	            case 1:
	                Pos_PS.style.display = "";
	                POS_PS.style.color = "#990066";
	                //POS_PS.style.cursor="auto";
	                document.PosUfsInfo.now_div_flag.value = "1";
	                break;
	            case 2:
	                Pos_IP.style.display = "";
	                POS_IP.style.color = "#990066";
	                //POS_IP.style.cursor="auto";
	                document.PosUfsInfo.now_div_flag.value = "2";
	                break;
	        }
	    }

	   function print_click() {
	        var uci = document.PosUfsInfo.consumer_key.value.toString();
	        var auth = document.PosUfsInfo.Authkey.value.toString();
	        var svc = document.PosUfsInfo.Svckey.value.toString();
	        var sub = document.PosUfsInfo.Subkey.value.toString();
	        var flag = document.PosUfsInfo.now_div_flag.value.toString();
	        var url = "PrintFormPosUfsInfo.aspx?uci="+uci+"&auth="+auth+"&svc="+svc+"&sub="+sub+"&flag=" + flag;
	        winhref(url, 'PrintFormPosUfsInfo');
	   }
	//-->
	</script>		
</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="PosUfsInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
        <input type="hidden" name="Authkey" id="Authkey" value="" runat="server" />
        <input type="hidden" name="Svckey" id="Svckey" value="" runat="server" />
        <input type="hidden" name="Subkey" id="Subkey" value="" runat="server" />
		<div align="left" style="WIDTH:100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('FormPosList.aspx');return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Auth Pos</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                        src="../img/supportdesk.ico" title="Support"
                        onclick="javascript:window.top.outsidelinks(1);return false;" />             
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                        src="../img/help.ico" title="Help"
                        onclick="javascript:window.top.outsidelinks(2);return false;" />             
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                        src="../img/logout.jpg" title="Logout"
                        onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                    &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                 <td colspan="3" style="background-color:#137AC5"></td> 
            </tr>
        </table> 
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="POS_PS" style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>POS Request</u></b>
                            </td>
                            <td id="POS_IP" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>IPP Information</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>              
        </table>
		</div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
          <tr>
          <td valign="top" align="center" width="100%" height="100%">
             <div id="Pos_PS">
             <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" width="100%">
                <tr><td>
                    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
                       <tr style="height:30px;">
                         <td width="30%" align="left">
                           <asp:Label ID="Title11" runat="server" Font-Size="Smaller">IF YOU DO NOT RECEIVE A PURCHASE</asp:Label>
                         </td>
                         <td width="40%" align="center">
                           <asp:Label ID="Title12" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">NEW REQUEST</asp:Label>
                         </td>
                         <td width="30%" align="right">
                           <asp:Label ID="Title13" runat="server" Font-Size="Smaller">PENDING ACCOUNTING AUDIT</asp:Label>
                         </td>
                       </tr>
                       <tr style="height:20px;">
                         <td width="30%" align="left">
                           <asp:Label ID="Title21" runat="server" Font-Size="Smaller">ORDER WITHIN 14 DAYS CONTACT</asp:Label>
                         </td>
                         <td width="40%" align="center">
                           <asp:Label ID="Title22" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">SCLARC PURCHASE OF SERVICE</asp:Label>
                         </td>
                         <td width="30%" align="right">
                           <asp:Label ID="Title23" runat="server" Font-Size="Smaller"></asp:Label>
                         </td>
                       </tr>
                       <tr style="height:20px;">
                         <td width="30%" align="left">
                           <asp:Label ID="Title31" runat="server" Font-Size="Smaller">THE SERVICE COORDINATOR</asp:Label>
                         </td>
                         <td width="40%" align="center">
                           <asp:Label ID="Title32" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue"></asp:Label>
                         </td>
                         <td width="30%" align="right">
                           <asp:Label ID="Title33" runat="server" Font-Size="Smaller"></asp:Label>
                         </td>
                       </tr>
                    </table>
                </td></tr>
			    <tr align="left"><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				    <tr class="tr_common">
						<td  class="td_label" align="right" style="width: 120px;" >
						    <b><asp:Label ID="l_p_cancel_date" runat="server" Text="Cancel Date:"></asp:Label></b>						   
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_unline" style="width:120px">
							<asp:textbox id="p_cancel_date" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_label" align="right" style="width:200px">
						    <b><asp:Label ID="l_p_cancel_desc" runat="server" Text="Reason for Cancellation:"></asp:Label></b>						   						    
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_unline" style="width: 445px">
							<asp:textbox id="p_cancel_desc" runat="server" CssClass="inface" Width="440px" MaxLength="120"></asp:textbox>
						</td>
					</tr>
				  </table>
				</td></tr>
				<tr><td height="5"></td></tr> 
				<tr align="left"><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				    <tr class="tr_common">
                    	<td class="td_label" align="left" style="width: 100px">
                            <b><asp:Label ID="l_rap_auth" runat="server" Text="Authorization:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" style="width: 120px">
							<asp:textbox id="rap_auth" runat="server" CssClass="inface" MaxLength="25"></asp:textbox>
						</td>
                        <td width="55" height="20"></td>
						<td class="td_label" align="right" style="width: 60px">
                            <b><asp:Label ID="l_p_assessment_date_yn" runat="server" Text="FCPP:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td style="width: 50px">
							<asp:dropdownlist id="p_assessment_date_yn" runat="server" Enabled=false OnClick="DataChanged()">
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td class="td_label" align="right" style:"width:150">
                            <b><asp:Label ID="l_p_assessment_date" runat="server" Text="Assessment Date:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" style="width: 100px">
							<b><asp:label id="p_assessment_date" runat="server" width="100px" CssClass="infaceText"></asp:label></b>
						</td>
						<td width="55" height="20"></td>
                        <td class="td_label" align="right" style="WIDTH: 65px;"><b>Date:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 125px;">
							<asp:label id="p_date" runat="server" Width="125px" CssClass="infaceText"></asp:label>
						</td>
                    </tr>
                  </table>
				</td></tr> 
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
				<tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px"><b>UCI#:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="rap_uci" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 100px"><b>Consumer:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 135px;">
							<asp:label id="p_name_first" runat="server" width="135px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 130px; height: 20px;">
							<asp:label id="p_name_last" runat="server" width="130px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" style="height: 20px"></td>
						<td class="td_label" align="right" style="width:50px"><b>CM:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="65" style="width: 65px; height: 20px;">
							<asp:label id="cm_id" runat="server" width="65px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" style="height: 20px"></td>
						<td colspan="3" class="td_unline" style="width: 200px; height: 20px;">
							<asp:label id="cm_name" runat="server" width="200px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>	
                     <tr><td colspan="17" style="height:5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px"><b>DOB:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 100px; height: 20px;">
							<asp:label id="p_dob" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 100px"><b>Age:</b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 135px; height: 20px;">
							<asp:label id="p_dob_age" runat="server" width="135px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
                        <td></td>
						<td width="10" style="height: 20px"></td>
                        <td></td>
						<td width="5" style="height: 20px"></td>
                        <td></td>
						<td width="10" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 120px; height: 20px;">
                            <b><asp:Label ID="l_p_med_waiv" runat="server" Text="Med.Waiver:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 75px; height: 20px;">
						    <asp:label id="p_med_waiv" runat="server" width="75px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
				     <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px">
                            <b><asp:Label ID="l_p_diag" runat="server" Text="Diagnosis:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan="15">
							<asp:textbox id="p_diag" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="40">
                            </asp:textbox>
						</td>
                     </tr>
				   </table>
				</td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
				<tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_vendor_number" runat="server" Text="Vendor#:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 120px; height: 20px;">
							<asp:label id="p_vendor_number" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
						<td width="60" style="height: 20px">
							<asp:button id="btnReset" Runat="server" Text="Reset"></asp:button>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 110px; height: 20px;">
                            <b><asp:Label ID="l_rap_start_dt" runat="server" Text="Start Date:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:textbox id="rap_start_dt" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                            </asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" width="150" style="width: 150px; height: 20px;">
							<b><asp:CheckBox id="p_until_revoked" runat="server" Text="Do Not Rollover">
                            </asp:CheckBox></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 110px; height: 20px;">
                            <b><asp:Label ID="l_rap_term_dt" runat="server" Text="Term Date:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="125" style="width: 125px; height: 20px;">
							<asp:textbox id="rap_term_dt" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                            </asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px; height: 20px;">
                            <b><asp:Label ID="l_rap_vid" runat="server" Text="Vendor:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan="5" width="330" style="width: 330px; height: 20px;">
                            <asp:label id="p_resource_name" runat="server" width="280" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="width:180px; height: 20px;">
                            <b><asp:Label ID="l_rap_svc_code" runat="server" Text="Service:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan="5" width="305" style="width: 305px; height: 20px;">
                            <asp:label id="rap_svcname" runat="server" width="280" CssClass="infaceText"></asp:label>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_resource_addr1" runat="server" Text="Address:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan="5" class="td_unline" width="330" style="width: 330px; height: 20px;">
							<asp:label id="p_resource_addr1" runat="server" width="330px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="width:180px; height:20px;">
                            <b><asp:Label ID="l_rap_sub_code" runat="server" Text="Sub Code:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan="5" width="305" style="width: 305px; height: 20px;">
                            <asp:label id="rap_subname" runat="server" width="280" CssClass="infaceText"></asp:label>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px; height: 20px;"></td>
						<td width="5" style="height: 20px"></td>
						<td colspan="5" class="td_unline" width="330" style="width: 330px; height: 20px;">
							<asp:label id="p_resource_addr2" runat="server" width="330px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 180px; height: 20px;">
                            <b><asp:Label ID="l_rap_unit_freq" runat="server" Text="# of Units:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="rap_unit_freq" runat="server" CssClass="inface" MaxLength="9"></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 65px; height: 20px;">
                            <b><asp:Label ID="l_rap_unit_type" runat="server" Text="Type:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td width="120" style="width: 120px; height: 20px;">
                            <asp:label id="rap_unittypename" runat="server" width="280" CssClass="infaceText"></asp:label>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_resource_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="120" style="height: 20px">
							<asp:label id="p_resource_phone" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
                        <td class="td_label" align="right" style="width: 80px; height: 20px">
                            <b><asp:Label ID="l_p_resource_fax" runat="server" Text="Fax:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="120" style="height: 20px">
							<asp:label id="p_resource_fax" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="width:180px; height:20px;">
                            <b><asp:Label ID="l_p_cost" runat="server" Text="Approx. Monthly Cost:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="p_cost" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 65px; height: 20px;">
                            <b><asp:Label ID="l_rap_rate" runat="server" Text="Rate:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="120" style="width: 120px; height: 20px;">
							<asp:textbox id="rap_rate" runat="server" CssClass="inface" MaxLength="9"></asp:textbox>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
                        <td colspan="8" class="td_label" align="left">
                            <b><asp:Label ID="l_rap_desc" runat="server" Text="Description of Service:"></asp:Label></b>
                        </td>
						<td class="td_label" align="right" style="width:180px; height:20px">
                            <b><asp:Label ID="l_p_cost_old" runat="server" Text="Old Monthly Cost:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="110" style="width: 110px; height: 20px;">
							<asp:textbox id="p_cost_old" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 65px; height: 20px;">
                            <b><asp:Label ID="l_p_cost_diff" runat="server" Text="Diff:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 120px; height: 20px;">
							<asp:label id="p_cost_diff" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>
				   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr class="tr_common">
				   <td style="height:150px" valign="top" height="150">
				      <asp:textbox id="rap_desc" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="150"></asp:textbox>
                      <br />
				          <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="rap_desc" ShowModal=true  runat="server">
                          </cc1:UltimateSpell>
				   </td>
				</tr>
				<tr><td height="5"></td></tr>
				<tr class="tr_common">
				   <td class="td_label" align="left" style="height: 20px">
                       <b><asp:Label ID="l_p_just" runat="server" Text="Justification of Service:"></asp:Label></b>
                   </td>
				</tr>
				<tr><td height="5"></td></tr>
				<tr class="tr_common">
				   <td style="height: 150px" height="150">
				      <asp:textbox id="p_just" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="150"></asp:textbox>
                      <br />
				          <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="p_just" ShowModal=true runat="server">
                          </cc1:UltimateSpell>
				   </td>
				</tr>
				<tr><td height="5"></td></tr>
                <tr class="tr_common">
                   <td class="td_label" align="left" style="height: 20px">
				        <b><asp:Label ID="l_p_comments" runat="server" Text="Comments:"></asp:Label></b>
                   </td>
				</tr>
				<tr><td height="5"></td></tr>
				<tr>
				   <td style="height: 150px" height="150">
					  <asp:textbox id="p_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="150"></asp:textbox>
                      <br />
				          <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="p_comments" ShowModal=true runat="server">
                          </cc1:UltimateSpell>
				   </td>
				</tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
                <tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_medical" runat="server" Text="Medi-Cal:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_medical" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;" >
                            <b><asp:Label ID="l_p_medicare" runat="server" Text="Medicare:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_medicare" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_ccs" runat="server" Text="CCS:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_ccs" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_ihss" runat="server" Text="IHSS:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_ihss" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 80px; height: 20px;">
                            <b><asp:Label ID="l_p_ihss_hrs" runat="server" Text="# of hours:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 75px; height: 20px;">
							<asp:textbox id="p_ihss_hrs" runat="server" CssClass="inface" MaxLength="6"></asp:textbox>
						</td>
					 </tr>
                     <tr><td colspan="19" height="5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_ssa" runat="server" Text="SSA:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_ssa" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_ssi" runat="server" Text="SSI:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_ssi" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_va" runat="server" Text="VA:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_va" runat="server" CssClass="inface" Width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="width: 70px; height: 20px;" >
                            <b><asp:Label ID="l_p_payee" runat="server" Text="Payee:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" style="width: 270px; height: 20px;">
							<asp:textbox id="p_payee" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
					 </tr>	
                     <tr><td colspan="19" height="5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_priv_ins" runat="server" Text="Priv.Ins:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" style="width: 90px; height: 20px;">
							<asp:dropdownlist id="p_priv_ins" runat="server" CssClass="inface" width=55>
								<asp:ListItem Value=""></asp:ListItem>
								<asp:ListItem Value="Y">Yes</asp:ListItem>
								<asp:ListItem Value="N">No</asp:ListItem>
							</asp:dropdownlist>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_priv_ins_co" runat="server" Text="Carrier:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" width="275" style="width: 275px; height: 20px;">
							<asp:textbox id="p_priv_ins_co" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
						<td width="20" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_priv_ins_num" runat="server" Text="#:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=5 class="td_unline" style="width: 270px; height: 20px;">
							<asp:textbox id="p_priv_ins_num" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
					 </tr>
                     <tr><td colspan="19" height="5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_other_fund" runat="server" Text="Other:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td colspan=17 class="td_unline" width="825" style="width: 825px; height: 20px;">
							<asp:textbox id="p_other_fund" runat="server" CssClass="inface" MaxLength="175"></asp:textbox>
						</td>
					 </tr>
				   </table>
				</td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td class="td_label" align="left" style="width: 70px; height: 20px;">
                            <b><asp:Label ID="l_p_cm_name" runat="server" Text="Entered By:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="195" style="width: 195px; height: 20px;">
							<asp:label id="p_cm_name" runat="server" width="195" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_label" align="right" style="WIDTH: 45px; height: 20px;">
                            <b><asp:Label ID="l_p_cm_id" runat="server" Text="ID:"></asp:Label></b>
						</td>
						<td width="5" style="height: 20px"></td>
						<td class="td_unline" width="65" style="width: 65px; height: 20px;">
							<asp:label id="p_cm_id" runat="server" width="65" CssClass="infaceText"></asp:label>
						</td>
						<td width="120" style="height: 20px"></td>
						<td class="td_unline" width="390" style="width: 390px; height: 20px; ">
						</td>
					 </tr>
				     <tr class="tr_common">
						<td colspan=8 width="510" style="height: 20px"></td>				     
				        <td align="right" style="WIDTH: 390px; height: 20px;"><b>Date</b>
				        </td>
                     </tr>	
				     <tr class="tr_common">
						<td colspan=7 class="td_unline" width="390" style="width: 390px; height: 20px;">
						</td>
                     	<td width="120" style="height: 20px"></td>
						<td class="td_unline" width="390" style="width: 390px; height: 20px;">
						</td>
					 </tr>
					  <tr class="tr_common">
					    <td colspan=7 align="right" style="WIDTH: 390px; height: 20px;"><b>Date</b>
				        </td>
						<td width="120" style="height: 20px"></td>				     
				        <td align="right" style="WIDTH: 390px; height: 20px;"><b>Date</b>
				        </td>
                     </tr>
                     <tr class="tr_common">
						<td colspan=7 class="td_unline" width="390" style="width: 390px; height: 20px;">
						</td>
                     	<td width="120" style="height: 20px"></td>
						<td class="td_unline" width="390" style="width: 390px; height: 20px;">
						</td>
					 </tr>
					  <tr class="tr_common">
					    <td colspan=7 align="right" style="WIDTH: 390px; height: 20px;"><b>Date</b>
				        </td>
						<td width="120" style="height: 20px"></td>				     
				        <td align="right" style="WIDTH: 390px; height: 20px;"><b>Date</b>
				        </td>
                     </tr>
                     <tr><td colspan="9" height="5px"></td></tr>
                     <tr class="tr_common">
						<td colspan=7 class="td_label" align="center" style="width: 390px; height: 20px;"><b>
						    <asp:RadioButton  Text="Approved" ID="p_approval_1" GroupName="p_approval" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="Denied"   ID="p_approval_2" GroupName="p_approval" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton  Text="Deferred" ID="p_approval_3" GroupName="p_approval" runat="server" /></b>
						</td>
                     	<td width="120" style="height: 20px"></td>
						<td class="td_label" align="center" width="360" style="width: 390px; height: 20px;"><b>
                            <asp:CheckBox ID="p_exception" runat="server" Text="Exception" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="p_planning_team" runat="server" Text="Planning Team Decision" /></b>
						</td>
					 </tr>
				   </table>
                </td></tr> 					 
			 </table>
             </div>
             <div id="Pos_IP"  style="display:none;">
             <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:95%">
				 <tr><td colspan="5">
                   <table class="table_common" cellspacing="0" cellpadding="0"  border="0">
                     <tr class="tr_common">
                       <td class="td_label" align="right" style="WIDTH: 150px; height: 20px;">
                          <b><asp:Label ID="l_p_ipp" runat="server" Text="Primary IPP Section:"></asp:Label></b>
					   </td>
					   <td width="10" style="height: 20px"></td>
					   <td width="300" style="width: 300px; height: 20px;">
                          <asp:dropdownlist id="p_ipp" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="280">
				          </asp:dropdownlist>
					   </td>
                       <td width="440px"></td>
                     </tr>
                   </table>
                 </td></tr>
				 <tr style="height:5px"><td colspan="5"></td></tr>
				 <tr><td colspan="5">
                   <table class="table_common" cellspacing="0" cellpadding="0"  border="0">
                     <tr class="tr_common">
                       <td class="td_label" align="right" style="WIDTH: 150px; height: 20px;">
                          <b><asp:Label ID="l_p_ipp2" runat="server" Text="Secondary IPP Section:"></asp:Label></b>
					   </td>
					   <td width="10" style="height: 20px"></td>
					   <td width="300" style="width: 300px; height: 20px;">
                          <asp:dropdownlist id="p_ipp2" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="280">
				          </asp:dropdownlist>
					   </td>
                       <td width="440px"></td>
                     </tr>
                   </table>
                 </td></tr>
				 <tr style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td class="td_label" style="width: 250px; height: 20px;">
                        <b>CDER Deficits Addressed With This POS</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_none" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_none" runat="server" Text="" Enabled="false" Checked="true">
                        </asp:CheckBox>No Deficits Addressed</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td style="width: 250px; height: 20px;">
                    </td>
                 </tr>
				 <tr style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_walkng" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_walkng" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Walking</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_bbctrl" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_bbctrl" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Bladder and Bowel Control</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_aggrsn" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_aggrsn" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Aggressive Social Behavior</b>
                    </td>
                 </tr>
                 <tr  style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_whluse" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_whluse" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Using a Wheelchair</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_prshyg" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_prshyg" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Personal Care</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_sevsi" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_sevsi" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Self-Injurious Behavior</b>
                    </td>
                 </tr>
                 <tr  style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_takmed" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_takmed" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Taking Prescription Meds.</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_drssng" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_drssng" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Dressing</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_dstrpr" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_dstrpr" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Destruction of Property</b>
                    </td>
                 </tr>
                 <tr  style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_eating" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_eating" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Eating</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_safety" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_safety" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Safety Awareness</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_rnwnd" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_rnwnd" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Running or Wandering Away</b>
                    </td>
                 </tr>
                 <tr style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_tltng" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_tltng" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Toileting</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_disbhv" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_disbhv" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Disruptive Social Behavior</b>
					</td>
					<td width="75" style="height: 20px"></td>
                    <td id="row_emoout" align="left" class="infaceTextNoPad" style="width: 250px; height: 20px;" runat="server">
                        <b><asp:CheckBox id="p_cder_emoout" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Emotional Outbursts</b>
                    </td>
                 </tr>
             </table>
             </div>
           </td>
          </tr>
        </table>   		
		</div>													  
		</form>
	</body>
</html>


