<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormTsrInfo.aspx.cs" Inherits="Virweb2.FormList.FormTsrInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
<head>
    <base target="_self"></base>
    <title>:::TSR----Transportation Service Request Detail:::...</title>
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
	            TSR_PS.style.color = "";
	            //TSR_PS.style.cursor="pointer";
	            TSR_IP.style.color = "";
	            //TSR_IP.style.cursor="pointer";

	            obj.style.color = "#990066";
	            //obj.style.cursor="auto"; 	         
	        }
	        Tsr_PS.style.display = "none";
	        Tsr_IP.style.display = "none";
	        switch (obj.id) {
	            case "TSR_PS":
	                Tsr_PS.style.display = "";
	                document.TsrInfo.now_div_flag.value = "1";
	                break;
	            case "TSR_IP":
	                Tsr_IP.style.display = "";
	                document.TsrInfo.now_div_flag.value = "2";
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
	            TSR_PS.style.color = "";
	            //TSR_PS.style.cursor="pointer";
	            TSR_IP.style.color = "";
	            //TSR_IP.style.cursor="pointer";
	        }
	        Tsr_PS.style.display = "none";
	        Tsr_IP.style.display = "none";

	        switch (obj_id) {
	            case "TSR_PS":
	                Tsr_PS.style.display = "";
	                TSR_PS.style.color = "#990066";
	                //TSR_PS.style.cursor="auto";
	                document.TsrInfo.now_div_flag.value = "1";
	                break;
	            case "TSR_IP":
	                Tsr_IP.style.display = "";
	                TSR_IP.style.color = "#990066";
	                //TSR_IP.style.cursor="auto";
	                document.TsrInfo.now_div_flag.value = "2";
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
	            TSR_PS.style.color = "";
	            //TSR_PS.style.cursor="pointer";
	            TSR_IP.style.color = "";
	            //TSR_IP.style.cursor="pointer";
	        }
	        Tsr_PS.style.display = "none";
	        Tsr_IP.style.display = "none";

	        switch (flag) {
	            case 1:
	                Tsr_PS.style.display = "";
	                TSR_PS.style.color = "#990066";
	                //TSR_PS.style.cursor="auto";
	                document.TsrInfo.now_div_flag.value = "1";
	                break;
	            case 2:
	                Tsr_IP.style.display = "";
	                TSR_IP.style.color = "#990066";
	                //TSR_IP.style.cursor="auto";
	                document.TsrInfo.now_div_flag.value = "2";
	                break;
	        }
	    }

       function viewnotes_click() {
	        var str_key=document.TsrInfo.consumer_key.value.toString();
	        var url = "../WebList/webIDNotesInfo.aspx?c_key=" + str_key + "&popupw=1";
            popupDialog(url);
            //winhref(url);
	   }

	   function print_click() {
	       // PopupMessage(10);
	       	var uci = document.TsrInfo.consumer_key.value.toString();
	        var auth = document.TsrInfo.Authkey.value.toString();
	        var svc = document.TsrInfo.Svckey.value.toString();
	        var sub = document.TsrInfo.Subkey.value.toString();

	        var t_key=document.TsrInfo.t_key.value.toString();
            var flag = document.TsrInfo.now_div_flag.value.toString();
	        var UserAct=document.TsrInfo.UserAct.value.toString();   
                  
            var url = "";
            //if (auth == "")
            if (t_key != "")
               url = "PrintFormTsrInfo.aspx?t_key=" + t_key + "&flag=" + flag;
            else
               url = "PrintFormTsrInfo.aspx?uci="+uci+"&auth="+auth+"&svc="+svc+"&sub="+sub+"&flag="+flag;
            winhref(url, 'PrintFormTsrInfo');
	   }

       function save_click() {
           if (document.TsrInfo.t_action.value == "9")
           {            
               NoCreateIDNotes(); 
               return true;
           }

           var SelValue1 = document.getElementById("t_trans_id").value;
           if (SelValue1 == "") {
               alert("The 'Vendor' field is required.");
               return false;
           }

           var TCost = document.getElementById("t_cost").value;
           if (IsNumber(TCost,"")=="false") {
               alert("Please input a number for 'Approx. Monthly Cost'");
               return false;
           }

           var TCostOld = document.getElementById("t_cost_old").value;
           if (IsNumber(TCostOld,"")=="false") {
               alert("Please input a number for 'Old Monthly Cost'");
               return false;
           }

           /*
           var myindex2 = document.TsrInfo.t_ipp.selectedIndex;
           var SelValue2 = document.TsrInfo.t_ipp.options[myindex2].value;
           if (SelValue2 == "") {
               alert("The 'IPP/IFSP #' field is required.");
               return false;
           }
           */

           if ((document.getElementById("t_unit").value != "") && 
              (IsNumber( JTrim(document.getElementById("t_unit").value), 0 )=="false") )
           {
               alert("Please input a number for '# of unit' field!");
               document.getElementById("t_unit").focus();
               return false;
           }
           
           if (!isMaxLength(document.getElementById("t_spcn_other_desc"), 255))
           {
              document.getElementById("t_spcn_other_desc").focus();
              return false;
           }

           if (!isMaxLength(document.getElementById("membersPresent"), 500))
           {
              document.getElementById("membersPresent").focus();
              return false;
           }

           NoCreateIDNotes();
           if(document.getElementById("t_action").value == "3")
           {
                //var saveflag=window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=Are you modifying the date range or the number of scheduled days per week for this TSR?", self,"status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
                var saveflag = PromptSaveChange(1, DspStr);
                if (saveflag == "1")
                {
                    document.TsrInfo.hdtoSaveData.value = "PageClosed";
                    document.TsrInfo.submit();
                    return false;
                }
                else return false;   // Cancel
           }

           return true;
       }

       function multisave_click() {
           if (save_click()) {
               popupDialogSmall('SearchConsumer.aspx');
           }
           else return false;
       }

       function AddMulti(clients)
       {
           var clientList = document.getElementById(<%= "'" + hdnclientData.ClientID + "'" %>);        
           clientList.value = clients;        
           window.focus(); 
       }

       function back_click() {
           if (Confirm_Page())
               document.location.replace('FormPosList.aspx');
       }	

       function SelectResource(VendorNumber,SvcCode,SubCode,Rate)
       {
            var myVendorNumber = document.getElementById(<%= "'" + hdnVendorNumber.ClientID + "'" %>);        
            myVendorNumber.value = VendorNumber;        
            var mySvcCode = document.getElementById(<%= "'" + hdnSvcCode.ClientID + "'" %>);        
            mySvcCode.value = SvcCode;    
            var mySubCode = document.getElementById(<%= "'" + hdnSubCode.ClientID + "'" %>);        
            mySubCode.value = SubCode;    
            var myRate = document.getElementById(<%= "'" + hdnRate.ClientID + "'" %>);        
            myRate.value = Rate; 

            window.document.TsrInfo.submit(); 
            window.focus();   
       }

       function SetResourceType(type)
       {
            document.TsrInfo.hdnResType.value = type;
       }

       function ResetResource() 
       {
           if (!confirm("Do you want to reset the vendor information ?"))
               return false;

           document.getElementById('<%= this.t_trans_id.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.t_trans_name.ClientID %>').innerHTML = "";
           //document.getElementById('<%= this.t_trans_number.ClientID %>').innerHTML = "";
           document.TsrInfo.hdn_t_trans_id.value = "";
           document.TsrInfo.hdn_t_trans_name.value = "";

           document.TsrInfo.t_trans_svcc.selectedIndex = 0;
           document.TsrInfo.t_trans_svcc.options.length = 0;
           document.TsrInfo.t_trans_subc.selectedIndex = 0;
           document.TsrInfo.t_trans_subc.options.length = 0;
           document.TsrInfo.t_unit_type.selectedIndex = 0;
           document.TsrInfo.t_unit_type.options.length = 0;

           // document.getElementById('<%= this.t_rate.ClientID %>').innerHTML = "";
           document.TsrInfo.t_rate.value = "";

           return true;
       }

       function ResetTo1() {
           document.TsrInfo.t_prog_phone.value = "";
           document.TsrInfo.t_prog_number.value = "";
           document.TsrInfo.t_prog_addr1.value = "";
           document.TsrInfo.t_prog_addr2.value = "";
           document.TsrInfo.t_prog_name.value = "";
           document.TsrInfo.t_program_type.selectedIndex = 0;
           //document.TsrInfo.t_prog_reason.value = "";
       }

       function ResetTo2() {
           document.TsrInfo.t_prog2_phone.value = "";
           document.TsrInfo.t_prog2_number.value = "";
           document.TsrInfo.t_prog2_addr1.value = "";
           document.TsrInfo.t_prog2_addr2.value = "";
           document.TsrInfo.t_prog2_name.value = "";
           document.TsrInfo.t_program2_type.selectedIndex = 0;
           //document.TsrInfo.t_prog2_reason.value = "";
       }

       function SelectContact(addr1, addr2, phone, ID) {
           if (ID==1)
           {
              document.TsrInfo.t_pickup_addr1.value = addr1;
              document.TsrInfo.t_pickup_addr2.value = addr2;
              document.TsrInfo.t_pickup_phone.value = phone;
           }
           else if (ID==2) {
              document.TsrInfo.t_dropoff_addr1.value = addr1;
              document.TsrInfo.t_dropoff_addr2.value = addr2;
              document.TsrInfo.t_dropoff_phone.value = phone;
           }
       }

       function RemoveSign() {
           document.TsrInfo.signature.value = "";
           document.TsrInfo.signdate.value = "";
       }

       function RemoveAuth() {
           document.TsrInfo.authorizedby.value = "";
           document.TsrInfo.authorizedate.value = "";
       }

	//-->
	</script>		
</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="TsrInfo" method="post" runat="server">
		<input id="NoConfirm" type=hidden value="0" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="hdnclientData" id="hdnclientData" value="" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="hdnVendorNumber" id="hdnVendorNumber" value="" runat="server" />
        <input type="hidden" name="hdnSvcCode" id="hdnSvcCode" value="" runat="server" />
        <input type="hidden" name="hdnSubCode" id="hdnSubCode" value="" runat="server" />
        <input type="hidden" name="hdnRate" id="hdnRate" value="" runat="server" />
        <input type="hidden" name="hdnResType" id="hdnResType" value="" runat="server" />
        <input type="hidden" name="hdn_t_trans_id" id="hdn_t_trans_id" value="" runat="server" />
        <input type="hidden" name="hdn_t_trans_name" id="hdn_t_trans_name" value="" runat="server" />
        <input type="hidden" name="hdn_t_rate" id="hdn_t_rate" value="" runat="server" />      
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="t_key" id="t_key" value="" runat="server" />
        <input type="hidden" name="IDNotespopup" id="IDNotespopup" runat="server" />
        <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
        <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
        <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
        <input type="hidden" name="Authkey" id="Authkey" value="" runat="server" />
        <input type="hidden" name="Svckey" id="Svckey" value="" runat="server" />
        <input type="hidden" name="Subkey" id="Subkey" value="" runat="server" />
        <input type="hidden" name="t_action" id="t_action" value="" runat="server" />
		<div align="left" style="WIDTH:100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      OnClientClick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>
        
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save"
                      OnClientClick="return save_click();" OnClick="btnAdd_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnMultiAdd" runat="server" AlternateText="MultiSave" Visible="False" Style="width: 25px;height:25px"
                      ImageURL="../img/multi-save.ico" ToolTip="Multiple Save"
                      OnClientClick="javascript:return multisave_click();" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnNotes" runat="server" alt="View Notes" style="width: 25px;height:25px"  
                        src="../img/documents.png" title="View Notes"
                        onclick="javascript:viewnotes_click();return false;" />  
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" visible="false" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Tsr For</asp:Label>
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
                            <td id="TSR_PS" style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>TSR Request</u></b>
                            </td>
                            <td id="TSR_IP" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>IPP Information</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>             
        </table>
		</div>
        <div id="maindiv" align="center" 
            style="position:relative;WIDTH:100%;overflow:auto;height:450px;">
        <table class="table_maindiv">
          <tr>
          <td valign="top" align="center" width="100%" height="100%">
             <div id="Tsr_PS">
             <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0" width="100%">
                <tr><td>
                  <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
                      <tr style="height:30px;">
                         <td width="30%" align="left">
                           <asp:Label ID="Title11" runat="server" Font-Size="Smaller"></asp:Label>
                         </td>
                         <td width="40%" align="center">
                           <asp:Label ID="Title12" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">NEW REQUEST</asp:Label>
                         </td>
                         <td width="30%" align="right">
                           <asp:Label ID="Title13" runat="server" Font-Size="Smaller"></asp:Label>
                         </td>
                      </tr>
                      <tr style="height:20px;">
                         <td width="30%" align="left">
                           <asp:Label ID="Title21" runat="server" Font-Size="Smaller"></asp:Label>
                         </td>
                         <td width="40%" align="center">
                           <asp:Label ID="Title22" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">SCLARC TRANSPORTATION SERVICE REQUEST</asp:Label>
                         </td>
                         <td width="30%" align="right">
                           <asp:Label ID="Title23" runat="server" Font-Size="Smaller"></asp:Label>
                         </td>
                      </tr>
                      <tr style="height:20px;">
                         <td width="30%" align="left">
                           <asp:Label ID="Title31" runat="server" Font-Size="Smaller"></asp:Label>
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
						<td class="td_label" align="left" style="width: 120px;" >
						    <b><asp:Label ID="l_t_cancel_date" runat="server" Text="Cancel Date:"></asp:Label></b>						   
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_unline" style="width:120px">
							<asp:textbox id="t_cancel_date" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						</td>
						<td width="440" ></td>
                        <td class="td_label" align="right" style="WIDTH: 65px;"><b>Date:</b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 125px;">
							<asp:label id="t_date" runat="server" Width="125px" CssClass="infaceText"></asp:label>
						</td>
						<td width="20" ></td>
					</tr>
                  </table>
                </td></tr>
				<tr style="height:5px"><td></td></tr> 
                <tr align="left"><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                    <tr class="tr_common">
						<td  class="td_label" align="left" style="width: 120px;" >
						    <b><asp:Label ID="l_t_resume_date" runat="server" Text="Resume Date:"></asp:Label></b>						   
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_unline" style="width:120px">
							<asp:textbox id="t_resume_date" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_label" align="right" style="width:150px">
						    <b><asp:Label ID="l_t_cancel_reason" runat="server" Text="Reason:"></asp:Label></b>						   						    
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_unline" style="width: 495px">
							<asp:textbox id="t_cancel_reason" runat="server" CssClass="inface" Width="480px" MaxLength="120"></asp:textbox>
						</td>
					</tr>
				  </table>
				</td></tr>
				<tr style="height:5px"><td></td></tr> 
                <tr align="left"><td>
				  <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                    <tr class="tr_common">
						<td  class="td_label" align="left" style="width: 120px;" >
						    <b>Case Manager:</b>						   
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_unline" style="width:205px">
							<asp:label id="cm_id" runat="server" width="50px" CssClass="infaceText"></asp:label>/
							<asp:label id="cm_name" runat="server" width="150px" CssClass="infaceText"></asp:label>
						</td>
                        <td height="20" width="5">
                        </td>
						<td class="td_label" align="center" style="width:230px">
						    <b>Yearly Renewal: 		
                              &nbsp;&nbsp;&nbsp;	      
                              <asp:Radiobutton ID="t_renewal_yes" groupname="t_renewal" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>Yes</b>
                              &nbsp;&nbsp;&nbsp;
                              <asp:Radiobutton ID="t_renewal_no" groupname="t_renewal" runat="server" Font-Bold=true Text="" Checked=false></asp:Radiobutton><b>No</b>
                            </b>						   						    
						</td>
                        <td height="20" width="30"></td>
                    	<td class="td_label" align="right" style="width: 120px">
                            <b><asp:Label ID="l_t_auth" runat="server" Text="Authorization:"></asp:Label></b>
						</td>
						<td width="5" height="20"></td>
						<td class="td_unline" style="width: 180px">
							<asp:textbox id="t_auth" runat="server" CssClass="inface" MaxLength="25"></asp:textbox>
						</td>
					</tr>
				  </table>
				</td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
				<tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td class="td_label" align="left" style="width: 70px"><b>UCI#:</b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="t_uci" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width: 100px"><b>Consumer:</b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="t_cons_name_first" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="t_cons_name_last" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
                        <td class="td_label" align="right" style="width: 70px"><b>DOB:</b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="t_cons_dob" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width: 70px"><b>Age:</b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 135px;">
							<asp:label id="t_dob_age" runat="server" width="135px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>	
                     <tr><td colspan="17" style="height:5px"></td></tr>
					 <tr class="tr_common">
                        <td colspan="3" class="td_label" align="left" style="width:175px">
						    <b><asp:Label ID="l_t_careprov_name" runat="server" Text="Care Provider's name:"></asp:Label></b>						   						    
						</td>
						<td width="10" ></td>
						<td colspan="3" class="td_unline" style="width: 205px">
							<asp:textbox id="t_careprov_name" runat="server" CssClass="inface" Width="200px" MaxLength="50"></asp:textbox>
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_label" align="right" style="width: 180px;">
                            <b><asp:Label ID="l_t_cons_phone1" runat="server" Text="Home Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_unline" style="width: 180px;">
						    <asp:label id="t_cons_phone1" runat="server" width="180px" CssClass="infaceText"></asp:label>
						</td>
						<td colspan="2" width="140" ></td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
				     <tr class="tr_common">
                        <td colspan="3" class="td_label" align="left" style="width:175px">
						    <b>Consumer's Address</b>						   						    
						</td>
						<td width="10" ></td>
						<td colspan="3" style="width: 205px">
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_label" align="right" style="width: 180px;">
                            <b><asp:Label ID="l_t_cons_phone2" runat="server" Text="Alternate Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_unline" style="width: 180px;">
							<asp:textbox id="t_cons_phone2" runat="server" CssClass="inface" Width="170px" MaxLength="15"></asp:textbox>
						</td>
						<td colspan="2" width="140" ></td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
                     <tr class="tr_common">
                        <td colspan="7" class="td_unline" style="width:390px">
						    <asp:Label ID="t_cons_addr1" runat="server" CssClass="infaceText" Width="380"></asp:Label>						   						    
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_label" align="right" style="width: 180px;">
                            <b><asp:Label ID="l_t_emeg_name" runat="server" Text="Emergency Contact:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td colspan="5" class="td_unline" style="width: 320px;">
						    <asp:textbox id="t_emeg_name" runat="server" width="300px" CssClass="inface" MaxLength="30"></asp:textbox>
						</td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
                     <tr class="tr_common">
                        <td colspan="7" class="td_unline" style="width:390px">
						    <asp:Label ID="t_cons_addr2" runat="server" CssClass="infaceText" Width="380"></asp:Label>						   						    
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_label" align="right" style="width: 180px;">
                            <b><asp:Label ID="l_t_emeg_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td colspan="3" class="td_unline" style="width: 180px;">
						    <asp:textbox id="t_emeg_phone" runat="server" width="160px" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td colspan="2" width="140" ></td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
                     <tr class="tr_common">
                        <td colspan="7" class="td_label" style="width:390px">
						    <b><asp:Checkbox ID="t_receivedbyadult" runat="server" Text=""></asp:Checkbox>Consumer Must Be Received By An Adult</b>						   						    
						</td>
						<td colspan="3" width="115" ></td>
                        <td colspan="7" class="td_label" style="width:395px">
						    <b><asp:Checkbox ID="t_mobi_trained" runat="server" Text=""></asp:Checkbox>Consumer Has Been Mobility Trained</b>						   						    
						</td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
                     <tr class="tr_common">
                        <td colspan="7" class="td_label" style="width:390px">
						    <b><asp:Checkbox ID="t_grouppickup" runat="server" Text=""></asp:Checkbox>Consumer Is A Candidate For Group Pick Up</b>						   						    
						</td>
						<td colspan="3" width="115" ></td>
                        <td colspan="7" class="td_label" style="width:395px">
						    <b><asp:Checkbox ID="t_candi_mobi_trained" runat="server" Text=""></asp:Checkbox>Consumer Is A Candidate For Mobility Training</b>						   						    
						</td>
					 </tr>				     			     
				   </table>
				</td></tr>
				<tr><td height="5"></td></tr> 
                <tr class="tr_common">
                    <td class="td_label" align="center" height="20">
                        <b>SPECIAL CLIENT CHARACTERISTICS (CHECK ONE OR MORE)</b>
                    </td>
                </tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn01" runat="server" Text=""></asp:Checkbox>(1) Deaf/Hearing Impaired</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn07" runat="server" Text=""></asp:Checkbox>(7) Can't Use Steps</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn14" runat="server" Text=""></asp:Checkbox>(14) Occasional Behavior Problems in Transit</b>						   						    
						</td>
						<td width="30" ></td>
                     </tr>
                     <tr><td colspan="6" height="5"></td></tr>
                     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn02" runat="server" Text=""></asp:Checkbox>(2) Blind/ Visually Impaired</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn08" runat="server" Text=""></asp:Checkbox>(8) Uses Walker</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn15" runat="server" Text=""></asp:Checkbox>(15) Infant- Parent Travels</b>						   						    
						</td>
						<td width="30" ></td>
                     </tr>
                     <tr><td colspan="6" height="5"></td></tr>
                     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn03" runat="server" Text=""></asp:Checkbox>(3) Manual Wheelchair</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn09" runat="server" Text=""></asp:Checkbox>(9) Does Not Speak</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn16" runat="server" Text=""></asp:Checkbox>(16) None</b>						   						    
						</td>
						<td width="30" ></td>
                     </tr>
                     <tr><td colspan="6" height="5"></td></tr>
                     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn04" runat="server" Text=""></asp:Checkbox>(4) Electric Wheelchair</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn10" runat="server" Text=""></asp:Checkbox>(10) Autism/PDD</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn17" runat="server" Text=""></asp:Checkbox>(17) Other:</b>						   						    
						</td>
						<td width="30" ></td>
                     </tr>
                     <tr><td colspan="6" height="5"></td></tr>
                     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn05" runat="server" Text=""></asp:Checkbox>(5) Seizures</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn11" runat="server" Text=""></asp:Checkbox>(11) Infant Seat</b>						   						    
						</td>
						<td width="30" ></td>
                        <td colspan="2" rowspan="5" class="td_label" style="width:300px">
						    <asp:textbox id="t_spcn_other_desc" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="65"> 
                            </asp:textbox><br />
                            <asp:RegularExpressionValidator ID="regSpcnOtherDesc" runat="server" ControlToValidate="t_spcn_other_desc" 
                               ValidationExpression="^[\s\S]{0,255}$" ErrorMessage="Maximum of 255 characters allowed" Text="" ></asp:RegularExpressionValidator>					   						    
						</td>
                     </tr>
                     <tr><td colspan="6" height="5"></td></tr>
                     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    &nbsp;&nbsp;&nbsp;<b>Frequency:</b>
							<asp:textbox id="t_spcn_seiz_freq" runat="server" CssClass="inface" width="180" MaxLength="50"></asp:textbox>                            						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn12" runat="server" Text=""></asp:Checkbox>(12) Diabetic</b>						   						    
						</td>
						<td width="30" ></td>
                     </tr>
                     <tr><td colspan="6" height="5"></td></tr>
                     <tr class="tr_common">
                         <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn06" runat="server" Text=""></asp:Checkbox>(6) Incontinent</b>						   						    
						</td>
						<td width="30" ></td>
                        <td class="td_label" style="width:270px">
						    <b><asp:Checkbox ID="t_spcn13" runat="server" Text=""></asp:Checkbox>(13) History of Violence to Self/Others</b>						   						    
						</td>
						<td width="30" ></td>
                     </tr>
                   </table>
                </td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
				<tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
				     <tr class="tr_common">
						<td class="td_label" width="180" style="width: 180px;">
                            <b>Transportation Company</b>
                        </td>
						<td width="25" ></td>
						<td class="td_label" align="right" style="WIDTH: 110px;">
                            <b><asp:Label ID="l_t_date_start" runat="server" Text="Start Date:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="125" style="width: 125px;">
							<asp:textbox id="t_date_start" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                            </asp:textbox>
						</td>
						<td width="5" ></td>
						<td class="td_label" width="150" style="width: 150px;">
							<b><asp:CheckBox id="t_until_revoked" runat="server" Text=""></asp:CheckBox>Do Not Rollover</b>
                           
						</td>
						<td width="160" ></td>
						<td class="td_label" align="right" style="WIDTH: 110px;">
                            <b><asp:Label ID="l_t_date_end" runat="server" Text="End Date:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="125" style="width: 125px;">
							<asp:textbox id="t_date_end" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                            </asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 80px;">
                            <b><asp:Label ID="l_t_trans_id" runat="server" Text="Vendor#:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 120px;">
							<asp:label id="t_trans_id" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
                        <td width="235" align="center">
                             <input type="button" value="Select" style="width:60px" ID="btnResource" runat="server" 
                                    OnClick="javascript:SetResourceType('0');javascript:popupDialogWide('SearchResource.aspx?page=TSR');" /> 
                             &nbsp;&nbsp;&nbsp;
							 <input type="button" ID="btnReset" style="width:60px;" value="Reset" runat="server"
									onclick="javascript:ResetResource();DataChanged();" /> 
                        </td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width:120px;">
                            <b><asp:Label ID="l_t_trans_svcc" runat="server" Text="Svc Code:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td width="325" style="width: 325px;">
							<asp:dropdownlist id="t_trans_svcc" runat="server" onchange="NoCreateIDNotes();" OnSelectedIndexChanged="service_SelectedIndexChanged"
							   DataValueField="fullID" DataTextField="fullentry" Height="20" Width="310" AutoPostBack=true>
				            </asp:dropdownlist>
						</td>
					 </tr>
				     <tr><td colspan="8" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="left" style="width: 80px;">
                            <b><asp:Label ID="l_t_trans_number" runat="server" Text="Name:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td colspan="2" width="355" style="width: 355px;">
                            <asp:Label ID="t_trans_number" runat="server" Visible="false"></asp:Label>
                            <asp:Label ID="t_trans_name" runat="server" CssClass="infaceText"></asp:Label>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width:120px;;">
                            <b><asp:Label ID="l_t_trans_subc" runat="server" Text="Sub Code:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td width="325" style="width: 325px;">
                            <asp:dropdownlist id="t_trans_subc" runat="server"  onchange="NoCreateIDNotes();" OnSelectedIndexChanged="subc_SelectedIndexChanged"
							    DataValueField="fullID" DataTextField="fullentry" Height="20" Width="280" AutoPostBack=true>
				            </asp:dropdownlist>
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
						<td class="td_label" align="left" style="width:170px;;">
                            <b><asp:Label ID="l_t_cost" runat="server" Text="Approx. Monthly Cost:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="195" style="width: 105px;">
							<asp:textbox id="t_cost" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td colspan="5" width="170" ></td>
						<td class="td_label" align="right" style="WIDTH: 120px;">
                            <b><asp:Label ID="l_t_unit" runat="server" Text="# of Units:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="t_unit" runat="server" CssClass="inface" MaxLength="9"></asp:textbox>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width: 80px;">
                            <b><asp:Label ID="l_t_unit_type" runat="server" Text="Type:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td width="120" style="width: 120px;">
							<asp:dropdownlist id="t_unit_type" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="115">
				            </asp:dropdownlist>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="left" style="width:170px;">
                            <b><asp:Label ID="l_t_cost_old" runat="server" Text="Old Monthly Cost:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="105" style="width: 105px;">
							<asp:textbox id="t_cost_old" runat="server" CssClass="inface"></asp:textbox>
						</td>
						<td width="5" ></td>
						<td class="td_label" align="right" style="width: 65px;">
                            <b><asp:Label ID="l_t_cost_diff" runat="server" Text="Diff:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 90px;">
							<asp:label id="t_cost_diff" runat="server" CssClass="infaceText" width="90px"></asp:label>
						</td>
						<td width="5" ></td>
						<td class="td_label" align="right" style="width: 120px;">
                            <b><asp:Label ID="l_t_rate" runat="server" Text="Rate:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="t_rate" runat="server" CssClass="inface" MaxLength="9"></asp:textbox>
						</td>
                        <td colspan="4" width="215"></td>
					 </tr>
				   </table>
				</td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 260px;">
                            <b>Pick Up Point if Different From Home Address</b>
						</td>
						<td width="30" ></td>
						<td style="width: 100px;">
                            <input type="button" ID="btnSelContact1" value="Select Contact"
									onclick="DataChanged();javascript:popupDialogSmall('SearchContact.aspx?Id=1');" /> 
						</td>
                        <td width="20" ></td>
                        <td class="td_label" align="left" style="width: 260px;">
                            <b>Drop Off Point If Different From Pick Up Point</b>
						</td>
						<td width="30" ></td>
						<td style="width: 100px;">
                            <input type="button" ID="btnSelContact2" value="Select Contact"
									onclick="DataChanged();javascript:popupDialogSmall('SearchContact.aspx?Id=2');" /> 
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
						<td colspan="5" class="td_unline" width="440" style="width: 440px;">
							<asp:textbox id="t_pickup_addr1" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
						<td width="20" ></td>
                        <td colspan="5" class="td_unline" width="440" style="width: 440px;">
							<asp:textbox id="t_dropoff_addr1" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
					 </tr>
				     <tr><td colspan="11" height="5"></td></tr>
                     <tr class="tr_common">
						<td class="td_unline" width="280" style="width: 280px;">
							<asp:textbox id="t_pickup_addr2" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
						<td width="5" ></td>
                        <td class="td_label" align="right" style="width:60px;">
                            <b><asp:Label id="l_t_pickup_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="90" style="width: 90px;">
							<asp:textbox id="t_pickup_phone" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td width="20" ></td>
						<td class="td_unline" width="280" style="width: 280px;">
							<asp:textbox id="t_dropoff_addr2" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
                        </td>
						<td width="5" ></td>
                        <td class="td_label" align="right" style="width:60px;">
                            <b><asp:Label id="l_t_dropoff_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="90" style="width: 90px;">
							<asp:textbox id="t_dropoff_phone" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
					 </tr>
				   </table>
				</td></tr>  
				<tr><td height="5"></td></tr> 
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 120px;">
						    <b><asp:Checkbox ID="t_pickup_exception" runat="server" Text=""></asp:Checkbox>Exception</b>                            
						</td>
						<td width="10" ></td>
						<td style="width: 310px;">
							<asp:textbox id="t_pickup_reason" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
                        <td width="20" ></td>
                        <td class="td_label" align="right" style="width: 120px;">
						    <b><asp:Checkbox ID="t_dropoff_exception" runat="server" Text=""></asp:Checkbox>Exception</b>                            
						</td>
						<td width="10" ></td>
						<td style="width: 310px;">
							<asp:textbox id="t_dropoff_reason" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 160px;">
                            <b>TRANSPORTATION TO</b>
						</td>
						<td width="30" ></td>
						<td style="width: 200px;">
                             <input type="button" value="Select" style="width:60px" ID="btnResource1"  
                                    OnClick="javascript:SetResourceType('1');javascript:popupDialogWide('SearchResource.aspx?page=POS');" /> 
                             &nbsp;&nbsp;&nbsp;
                            <input type="button" ID="btnResetTo1" style="width:60px" value="Reset"
									onclick="javascript:ResetTo1();DataChanged();" /> 
						</td>
                        <td width="20" ></td>
                        <td class="td_label" align="left" style="width: 150px;">
                            <b>Program Address:</b>
						</td>
						<td width="105" ></td>
                        <td class="td_label" align="right" style="width:70px;">
                            <b><asp:Label id="l_t_prog_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="t_prog_phone" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width:135px;">
                            <b><asp:Label id="l_t_prog_number" runat="server" Text="Program Number:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="300" style="width: 300px;">
							<asp:textbox id="t_prog_number" runat="server" CssClass="inface" MaxLength="16"></asp:textbox>
						</td>
						<td width="20" ></td>
                        <td colspan="3" class="td_unline" width="440" style="width: 440px;">
							<asp:textbox id="t_prog_addr1" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
					 </tr>
				     <tr><td colspan="5" height="5"></td></tr>
                     <tr class="tr_common">
                        <td class="td_label" align="left" style="width:135px;">
                            <b><asp:Label id="l_t_prog_name" runat="server" Text="Program Name:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="300" style="width: 300px;">
							<asp:textbox id="t_prog_name" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
						<td width="20" ></td>
                        <td colspan="3" class="td_unline" width="440" style="width: 440px;">
							<asp:textbox id="t_prog_addr2" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
					 </tr>
                     <tr><td colspan="5" height="5"></td></tr>
                     <tr class="tr_common">
                        <td class="td_label" align="left" style="width:135px;">
                            <b><asp:Label id="l_t_program_type" runat="server" Text="Program Type:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="300" style="width: 300px;">
                            <asp:dropdownlist id="t_program_type" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
                        <td class="td_label" align="right" style="width: 120px;">
						    <b><asp:Checkbox ID="t_prog_exception" runat="server" Text=""></asp:Checkbox>Exception</b>                            
						</td>
						<td width="10" ></td>
						<td style="width: 310px;">
							<asp:textbox id="t_prog_reason" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" style="width:120px;">
                            <b>Schedule--Days:</b>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">M</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_1" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">T</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_2" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">W</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_3" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">T</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_4" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">F</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_5" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:15px;">Sa</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_6" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:15px;">Su</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog_day1_7" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
				        <td width="5"></td>
                        <td class="td_label" align="right" style="WIDTH: 80px;">
                            <b><asp:Label ID="l_t_prog_starttime1" runat="server" Text="Start Time:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 80px;">
							<asp:textbox id="t_prog_starttime1" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
				        <td width="5"></td>
                        <td class="td_label" align="right" style="WIDTH: 80px;">
                            <b><asp:Label ID="l_t_prog_stoptime1" runat="server" Text="Stop Time:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 80px;">
							<asp:textbox id="t_prog_stoptime1" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
                        <td width="5" ></td>
                        <td class="td_label" align="center" style="width: 160px;"><b>
						    <asp:RadioButton  Text="One Way" ID="t_prog_oneway1_1" GroupName="t_prog_oneway1" runat="server" />
                            <asp:RadioButton  Text="Round Trip" ID="t_prog_oneway1_2" GroupName="t_prog_oneway1" runat="server" /></b>
						</td>
                     </tr>
                   </table>
                </td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr>
                <tr>
                    <td class="td_thicksepline"></td>
                </tr>    
                <tr style="height:5px">
                    <td></td>
                </tr> 
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 185px;">
                            <b>Additional Program (if necessary)</b>
						</td>
						<td width="5" ></td>
						<td style="width: 200px;">
                            <input type="button" value="Select" style="width:60px" ID="btnResource2"  
                                    OnClick="javascript:SetResourceType('2');javascript:popupDialogWide('SearchResource.aspx?page=POS');" /> 
                            &nbsp;&nbsp;&nbsp;
                            <input type="button" ID="btnResetTo2" style="width:60px" value="Reset"
									onclick="javascript:ResetTo2();DataChanged();" /> 
						</td>
                        <td width="20" ></td>
                        <td class="td_label" align="left" style="width: 150px;">
                            <b>Program Address:</b>
						</td>
						<td width="105" ></td>
                        <td class="td_label" align="right" style="width:70px;">
                            <b><asp:Label id="l_t_prog2_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="t_prog2_phone" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0">
					 <tr class="tr_common">
                        <td class="td_label" align="left" style="width:135px;">
                            <b><asp:Label id="l_t_prog2_number" runat="server" Text="Program Number:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="300" style="width: 300px;">
							<asp:textbox id="t_prog2_number" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td width="20" ></td>
                        <td colspan="3" class="td_unline" width="440" style="width: 440px;">
							<asp:textbox id="t_prog2_addr1" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
					 </tr>
				     <tr><td colspan="5" height="5"></td></tr>
                     <tr class="tr_common">
                        <td class="td_label" align="left" style="width:135px;">
                            <b><asp:Label id="l_t_prog2_name" runat="server" Text="Program Name:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="300" style="width: 300px;">
							<asp:textbox id="t_prog2_name" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>                             
						</td>
						<td width="20" ></td>
                        <td colspan="3" class="td_unline" width="440" style="width: 440px;">
							<asp:textbox id="t_prog2_addr2" runat="server" CssClass="inface" MaxLength="40"></asp:textbox>
						</td>
					 </tr>
                     <tr><td colspan="5" height="5"></td></tr>
                     <tr class="tr_common">
                        <td class="td_label" align="left" style="width:135px;">
                            <b><asp:Label id="l_t_program2_type" runat="server" Text="Program Type:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" width="300" style="width: 300px;">
                            <asp:dropdownlist id="t_program2_type" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
                        <td class="td_label" align="right" style="width: 120px;">
						    <b><asp:Checkbox ID="t_prog2_exception" runat="server" Text=""></asp:Checkbox>Exception</b>                            
						</td>
						<td width="10" ></td>
						<td style="width: 310px;">
							<asp:textbox id="t_prog2_reason" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0">
					 <tr class="tr_common">
                        <td class="td_label" style="width:120px;">
                            <b>Schedule--Days:</b>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">M</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_1" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">T</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_2" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">W</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_3" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">T</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_4" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:10px;">F</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_5" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:15px;">Sa</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_6" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
                        <td class="td_label" align="right" style="width:15px;">Su</td>
                        <td class="td_label" style="width:15px;">
                            <asp:Checkbox ID="t_prog2_day1_7" runat="server" Text="" Width="10px"></asp:Checkbox>
                        </td>
				        <td width="5"></td>
                        <td class="td_label" align="right" style="WIDTH: 80px;">
                            <b><asp:Label ID="l_t_prog2_starttime1" runat="server" Text="Start Time:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 80px;">
							<asp:textbox id="t_prog2_starttime1" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
				        <td width="5"></td>
                        <td class="td_label" align="right" style="WIDTH: 80px;">
                            <b><asp:Label ID="l_t_prog2_stoptime1" runat="server" Text="Stop Time:"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_unline" style="width: 80px;">
							<asp:textbox id="t_prog2_stoptime1" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
                        <td width="5" ></td>
                        <td class="td_label" align="center" style="width: 160px;"><b>
						    <asp:RadioButton  Text="One Way" ID="t_prog2_oneway1_1" GroupName="t_prog2_oneway1" runat="server" />
                            <asp:RadioButton  Text="Round Trip" ID="t_prog2_oneway1_2" GroupName="t_prog2_oneway1" runat="server" /></b>
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
                <tr class="tr_common">
                	<td class="td_label" align="left">
                       <b><asp:Label ID="l_t_just_idnote" runat="server" Text="Justification ID Note/Comments:"></asp:Label></b>
					</td>
                </tr>
				<tr><td style="height: 5px"></td></tr>
                <tr class="tr_common">
				   <td style="height:150px" valign="top" height="150">
				      <asp:textbox id="t_just_idnote" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="150">
                      </asp:textbox><br />
				      <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="t_just_idnote" ShowModal=true  runat="server">
                      </cc1:UltimateSpell>
				   </td>
				</tr>
				<tr><td style="height: 5px"></td></tr>
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
                        <td class="td_label" style="width:380px;">
                            <b><asp:Label id="l_t_refused_byother" runat="server" Text="Has Consumer been refused funds from all other eligible sources?"></asp:Label></b>
						</td>
						<td width="5" ></td>
						<td class="td_label" width="80" style="width: 80px;">
                        	<asp:RadioButton Text="Yes" ID="t_refused_byother_yes" GroupName="t_refused_byother" runat="server" />&nbsp;&nbsp;
                            <asp:RadioButton Text="No" ID="t_refused_byother_no" GroupName="t_refused_byother" runat="server" /></b>
						</td>
						<td width="10" ></td>
                        <td class="td_label" align="right" style="width:80px;">
                            <b><asp:Label id="l_t_refused_byother_reason" runat="server" Text="Reason:"></asp:Label></b>
						</td>
						<td width="5" ></td>
                        <td class="td_unline" width="340" style="width: 340px;">
							<asp:textbox id="t_refused_byother_reason" runat="server" CssClass="inface" MaxLength="100"></asp:textbox>
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
						<td width="450" ></td>
                        <td class="td_label" style="width:80px;">
                            <b><asp:Label id="l_t_trans_zone1" runat="server" Text="Zone:"></asp:Label></b>
						</td>
						<td width="5" ></td>
                        <td class="td_unline" width="180" style="width: 140px;">
							<asp:textbox id="t_trans_zone1" runat="server" CssClass="inface" MaxLength="30"></asp:textbox>
						</td>
                        <td width="5" ></td>
                        <td class="td_unline" width="180" style="width: 140px;">
							<asp:textbox id="t_trans_zone2" runat="server" CssClass="inface" MaxLength="30"></asp:textbox>
						</td>
					 </tr>
                   </table>
                </td></tr>
				<tr><td style="height: 5px"></td></tr>
                <tr align="left"><td>
				   <table class="table_common" cellSpacing="0" cellPadding="0">
                    <tr><td>
                      <table class="tabel_inside">
				       <tr class="tr_common">
						<td class="td_label" align="left" style="width: 100px;">
                            <b><asp:Label ID="l_t_cm_name" runat="server" Text="Entered By:"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td class="td_unline" style="width: 195px;">
							<asp:label id="t_cm_name" runat="server" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px"></td>
						<td class="td_label" align="right" style="WIDTH: 45px;">
                            <b><asp:Label ID="l_t_cm_id" runat="server" Text="ID:"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td class="td_unline" style="width: 65px;">
							<asp:label id="t_cm_id" runat="server" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 150px"></td>
                        <td class="td_label" align="right" style="width: 120px;">
                            <b><asp:Label ID="l_reviewby" runat="server" Text="Review Group:"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td class="td_unline" style="width: 195px;">
							<asp:dropdownlist id="reviewby" runat="server"  
							   DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop" >
				            </asp:dropdownlist>
						</td>
					   </tr>
                       <tr style="height:5px"><td colspan="11"></td></tr>
				       <tr class="tr_common">
						<td class="td_label" align="left" style="width: 100px;">
                            <b><asp:Label ID="l_specialist" runat="server" Text="Specialist:"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td colspan="5" class="td_unline">
							<asp:textbox id="specialist" runat="server" CssClass="inface"></asp:textbox>
						</td>
						<td style="width: 150px">
                            <table class="table_inside">
                              <tr class="tr_common">
                                 <td class="td_label" align="center" style="width:40px">
                                   <b>at</b>
                                 </td>
                                 <td class="td_unline" style="width:140px">
							       <asp:textbox id="specialistdate" runat="server" CssClass="inface" Width="100px" 
                                          onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
                                 </td>
                              </tr>
                            </table>
						</td>
                        <td colspan="3">
                        </td>
					   </tr>
                      </table>
                    </td></tr>
                    <tr style="height:5px"><td></td></tr>
                    <tr><td>
                      <table class="table_inside">
                       <tr class="tr_common"> 
                        <td class="td_label" align="right" style="width:150px">
                          <b><asp:Label id="l_memberspresent" runat="server" Text="Members Present:"></asp:Label></b>
                        </td>
						<td style="width: 5px"></td>
                        <td align="left" style="width:740px" rowspan="7">
                          <asp:TextBox ID="membersPresent" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" Height="95">
                          </asp:TextBox><br />
                          <asp:RegularExpressionValidator ID="regMembersPresent" runat="server" ControlToValidate="membersPresent" 
                            ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Maximum of 500 characters allowed" Text="" ></asp:RegularExpressionValidator>
                        </td>
                       </tr>
                       <tr style="height:5px"><td colspan="2"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width:150px">
                            <asp:CheckBox id="t_exception" runat="server" Text=""></asp:CheckBox><b>Exception</b>
                        </td>
						<td style="width: 5px"></td>
                       </tr>
                       <tr style="height:5px"><td colspan="2"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width:150px">
                            <asp:CheckBox id="t_ptm" runat="server" Text=""></asp:CheckBox><b>Planning Team Decision</b>
                        </td>
						<td style="width: 5px"></td>
                       </tr>
                       <tr style="height:5px"><td colspan="2"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width:150px">
                            <asp:CheckBox id="t_attachments" runat="server" Text=""></asp:CheckBox><b>Attachments Required</b>
                        </td>
						<td style="width: 5px"></td>
                       </tr>
                      </table>
                    </td></tr>
                    <tr style="height:5px"><td></td></tr>
                    <tr><td>
                      <table class="table_inside">
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 160px;">
                             <b><asp:Label ID="l_signature" runat="server" Text="Digitally Signed By:"></asp:Label></b>
						</td>
                        <td style="width: 5px"></td>
                        <td class="td_unline" style="width: 400px;">
						     <asp:textbox id="signature" runat="server" CssClass="inface"></asp:textbox>
						</td>
                        <td style="width: 5px"></td>
                        <td class="td_label" align="center" style="width: 30px;">
                             <b>at:</b>
						</td>
                        <td class="td_unline" style="width: 100px;">
						     <asp:textbox id="signdate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                             </asp:textbox>
						</td>
                        <td style="width: 5px"></td>
                        <td style="width: 180px">
                             <input type="button" ID="btnRemoveSign" style="width:160px;" value="Remove Signature"
									onclick="javascript:RemoveSign();DataChanged();" /> 
						</td>
                       </tr>
                       <tr><td colspan="8" height="5px"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width: 160px;">
                             <b><asp:Label ID="l_authorizedby" runat="server" Text="Accounting:"></asp:Label></b>
						</td>
                        <td style="width: 5px"></td>
                        <td class="td_unline" style="width: 400px;">
							 <asp:textbox id="authorizedby" runat="server" CssClass="inface"></asp:textbox>
						</td>
                        <td style="width: 5px"></td>
                        <td class="td_label" align="center" style="width: 30px;">
                             <b>at:</b>
						</td>
                        <td class="td_unline" style="width: 100px;">
							 <asp:textbox id="authorizedate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                             </asp:textbox>
						</td>
                        <td style="width: 5px"></td>
                        <td style="width: 180px">
                             <input type="button" ID="btnRemoveAuth" style="width:160px;" value="Remove Signature"
									onclick="javascript:RemoveAuth();DataChanged();" /> 
						</td>
                       </tr>
                      </table>
                    </td></tr>
                    <tr><td height="5"></td></tr>
                    <tr class="tr_common">
                      <td class="td_label" align="left" >
				        <b><asp:Label ID="l_t_comment" runat="server" Text="Comments:"></asp:Label></b>
                      </td>
				    </tr>
				    <tr><td height="5"></td></tr>
				    <tr>
				      <td style="height: 150px" height="150">
					    <asp:textbox id="t_comment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="150">
                        </asp:textbox><br />
				        <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="t_comment" ShowModal=true runat="server">
                        </cc1:UltimateSpell>
				      </td>
				    </tr>
				   </table>
                </td></tr> 					 
			 </table>
             </div>
             <div id="Tsr_IP"  style="display:none;">
             <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:95%">
				 <tr style="height:5px"><td></td></tr>
				 <tr class="tr_common"><td>
                   <table class="table_common" cellspacing="0" cellpadding="0"  border="0">
                     <tr class="tr_common">
                       <td class="td_label" align="right" style="WIDTH: 150px;">
                          <b><asp:Label ID="l_t_ipp" runat="server" Text="Primary IPP Section:"></asp:Label></b>
					   </td>
					   <td width="10" ></td>
					   <td width="300" style="width: 300px;">
                          <asp:dropdownlist id="t_ipp" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="280">
				          </asp:dropdownlist>
					   </td>
                       <td width="440px"></td>
                     </tr>
                   </table>
                 </td></tr>
				 <tr style="height:5px"><td></td></tr>
				 <tr class="tr_common" style="display:none"><td>
                   <table class="table_common" cellspacing="0" cellpadding="0"  border="0">
                     <tr class="tr_common">
                       <td class="td_label" align="right" style="WIDTH: 150px;">
                          <b><asp:Label ID="l_t_ipp2" runat="server" Text="Secondary IPP Section:"></asp:Label></b>
					   </td>
					   <td width="10" ></td>
					   <td width="300" style="width: 300px;">
                          <asp:dropdownlist id="t_ipp2" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="280">
				          </asp:dropdownlist>
					   </td>
                       <td width="440px"></td>
                     </tr>
                   </table>
                 </td></tr>
             </table>
             </div>
           </td>
          </tr>
        </table>   		
		</div>		
		</div>													  
		</form>
	</body>
</html>


