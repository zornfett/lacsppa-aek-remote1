<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormPosInfo.aspx.cs" Inherits="Virweb2.FormList.FormPosInfo" %>

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
	                document.PosInfo.now_div_flag.value = "1";
	                break;
	            case "POS_IP":
	                Pos_IP.style.display = "";
	                document.PosInfo.now_div_flag.value = "2";
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
	                document.PosInfo.now_div_flag.value = "1";
	                break;
	            case "POS_IP":
	                Pos_IP.style.display = "";
	                POS_IP.style.color = "#990066";
	                //POS_IP.style.cursor="auto";
	                document.PosInfo.now_div_flag.value = "2";
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
	                document.PosInfo.now_div_flag.value = "1";
	                break;
	            case 2:
	                Pos_IP.style.display = "";
	                POS_IP.style.color = "#990066";
	                //POS_IP.style.cursor="auto";
	                document.PosInfo.now_div_flag.value = "2";
	                break;
	        }
	    }

	   function print_click() {
	        //PopupMessage(10);
            var addcopy=0;
            //var DspStr = "Do you want to print one copy of this POS ?";
            //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
            //if (saveflag == "1")
               addcopy=1;
	        var p_key=document.PosInfo.p_key.value.toString();
            var flag = document.PosInfo.now_div_flag.value.toString();
	        //var UserAct=document.PosInfo.UserAct.value.toString();        
	        var url = "PrintFormPosInfo.aspx?p_key=" + p_key + "&flag=" + flag + "&AddCopy=" + addcopy;
            winhref(url, 'PrintFormPosInfo');
	   }

       function save_click() 
       {
           if (document.PosInfo.p_action.value == "9")
           {            
               NoCreateIDNotes(); 
               return true;
           }
           
           var SelValue1 = document.getElementById("p_vendor_number").value;
           if (SelValue1 == "")
           {
               alert("The 'Vendor' field is required.");
               return false;
           }

           /*
           var pIpp = document.getElementById("p_ipp");
           var myindex2 = pIpp.selectedIndex;
           var SelValue2 = pIpp.options[myindex2].value;
           if (SelValue2 == "") {
               alert("The 'IPP/IFSP #' field is required.");
               return false;
           }
           */

           if (document.getElementById("p_desc").value == "") {
               alert("The 'Description Of Service' field is required.");
               return false;
           }
 
           if ((document.getElementById("p_unit").value != "") && 
               (IsNumber( JTrim(document.getElementById("p_unit").value), 0 )=="false") )
           {
               alert("Please input a number for '# of unit' field!");
               document.getElementById("p_unit").focus();
               return false;
           }
           
           if (IsDate(document.getElementById("p_date_start").value, false) != "true")
           {
               alert("Please input Start Date!");
               document.getElementById("p_date_start").focus();
               return false;
           }   

           if (IsDate(document.getElementById("p_date_end").value, false) != "true")
           {
               alert("Please input End Date!");
               document.getElementById("p_date_end").focus();
               return false;
           }   

           if (!isMaxLength(document.getElementById("p_diag"), 500))
           {
              document.getElementById("p_diag").focus();
              return false;
           }
           if (!isMaxLength(document.getElementById("p_desc"), 750))
           {
              document.getElementById("p_desc").focus();
              return false;
           }
           if (!isMaxLength(document.getElementById("p_just"), 750))
           {
              document.getElementById("p_desc").focus();
              return false;
           }
           if (!isMaxLength(document.getElementById("p_comments"), 750))
           {
              document.getElementById("p_comments").focus();
              return false;
           }

           NoCreateIDNotes();

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

       function viewnotes_click() {
	        var str_key=document.PosInfo.consumer_key.value.toString();
	        var url = "../WebList/webIDNotesInfo.aspx?c_key=" + str_key + "&popupw=1";
            popupDialog(url);
            //winhref(url);
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

            window.document.PosInfo.submit(); 
            window.focus();   
       }

       function ResetResource() 
       {
           if (!confirm("Do you want to reset the vendor information ?"))
               return false;

           document.getElementById('<%= this.p_vendor_number.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.p_resource_name.ClientID %>').innerHTML = "";
           //document.getElementById('<%= this.p_resource_number.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.p_resource_addr1.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.p_resource_addr2.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.p_resource_phone.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.p_resource_fax.ClientID %>').innerHTML = "";
           document.PosInfo.p_vendor_svcc.selectedIndex = 0;
           document.PosInfo.p_vendor_svcc.options.length = 0;
           document.PosInfo.p_vendor_subc.selectedIndex = 0;
           document.PosInfo.p_vendor_subc.options.length = 0;
           document.PosInfo.p_unit_type.selectedIndex = 0;
           document.PosInfo.p_unit_type.options.length = 0;
           document.getElementById('<%= this.p_rate.ClientID %>').innerHTML = "";

           document.PosInfo.hdn_p_vendor_number.value = "";
           document.PosInfo.hdn_p_resource_name.value = "";
           document.PosInfo.hdn_p_resource_addr1.value = "";
           document.PosInfo.hdn_p_resource_addr2.value = "";
           document.PosInfo.hdn_p_resource_phone.value = "";
           document.PosInfo.hdn_p_resource_fax.value = "";
           document.PosInfo.hdn_p_rate.value = "";

           return true;
       }
		
       function RemoveSign() {
           document.PosInfo.signature.value = "";
           document.PosInfo.signdate.value = "";
       }

       function RemoveAuth() {
           document.PosInfo.authorizedby.value = "";
           document.PosInfo.authorizedate.value = "";
       }

	//-->
	</script>		
</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="PosInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="hdnclientData" id="hdnclientData" value="" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="hdnVendorNumber" id="hdnVendorNumber" value="" runat="server" />
        <input type="hidden" name="hdnSvcCode" id="hdnSvcCode" value="" runat="server" />
        <input type="hidden" name="hdnSubCode" id="hdnSubCode" value="" runat="server" />
        <input type="hidden" name="hdnRate" id="hdnRate" value="" runat="server" />
        <input type="hidden" name="hdn_p_vendor_number" id="hdn_p_vendor_number" value="" runat="server" />
        <input type="hidden" name="hdn_p_resource_name" id="hdn_p_resource_name" value="" runat="server" />
        <input type="hidden" name="hdn_p_resource_addr1" id="hdn_p_resource_addr1" value="" runat="server" />
        <input type="hidden" name="hdn_p_resource_addr2" id="hdn_p_resource_addr2" value="" runat="server" />
        <input type="hidden" name="hdn_p_resource_phone" id="hdn_p_resource_phone" value="" runat="server" />
        <input type="hidden" name="hdn_p_resource_fax" id="hdn_p_resource_fax" value="" runat="server" />
        <input type="hidden" name="hdn_p_rate" id="hdn_p_rate" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="p_key" id="p_key" value="" runat="server" />
        <input type="hidden" name="p_action" id="p_action" value="" runat="server" />
        <input type="hidden" name="IDNotespopup" id="IDNotespopup" runat="server" />
        <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
        <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
        <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
		<div align="left" style="WIDTH:100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      onclientclick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>
        
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save"
                      onclientclick="return save_click();" OnClick="btnAdd_Click" >
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
                    <input type="image" id="btnPrint" runat="server" alt="Print" Visible="False" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Pos For</asp:Label>
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
                       <tr style="height:20px;">
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
                        <td height="20" style="width: 5px">
                        </td>
						<td class="td_unline" style="width:120px">
							<asp:textbox id="p_cancel_date" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						</td>
                        <td height="20" style="width: 5px">
                        </td>
						<td class="td_label" align="right" style="width:200px">
						    <b><asp:Label ID="l_p_cancel_desc" runat="server" Text="Reason for Cancellation:"></asp:Label></b>						   						    
						</td>
                        <td height="20" style="width: 5px">
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
                            <b><asp:Label ID="l_p_auth" runat="server" Text="Authorization:"></asp:Label></b>
						</td>
						<td style="width: 5px" height="20"></td>
						<td class="td_unline" style="width: 120px">
							<asp:textbox id="p_auth" runat="server" CssClass="inface" MaxLength="25"></asp:textbox>
						</td>
                        <td width="55" height="20"></td>
						<td class="td_label" align="right" style="width: 60px">
                            <b><asp:Label ID="l_p_assessment_date_yn" runat="server" Text="FCPP:"></asp:Label></b>
						</td>
						<td style="width: 5px" height="20"></td>
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
						<td style="width: 5px" height="20"></td>
						<td class="td_unline" style="width: 100px">
							<b><asp:label id="p_assessment_date" runat="server" width="100px" CssClass="infaceText"></asp:label></b>
						</td>
						<td width="55" height="20"></td>
                        <td class="td_label" align="right" style="WIDTH: 65px;"><b>Date:</b>
						</td>
						<td style="width: 5px" ></td>
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
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="p_uci" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width: 100px"><b>Consumer:</b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 135px;">
							<asp:label id="p_name_first" runat="server" width="135px" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 130px;">
							<asp:label id="p_name_last" runat="server" width="130px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width:50px"><b>CM:</b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="65" style="width: 65px;">
							<asp:label id="cm_id" runat="server" width="65px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
						<td colspan="3" class="td_unline" style="width: 200px;">
							<asp:label id="cm_name" runat="server" width="200px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>	
                     <tr><td colspan="17" style="height:5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px"><b>DOB:</b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 100px;">
							<asp:label id="p_dob" runat="server" width="100px" CssClass="infaceText"></asp:label>
						</td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width: 100px"><b>Age:</b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 135px;">
							<asp:label id="p_dob_age" runat="server" width="135px" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
                        <td></td>
						<td width="10" ></td>
                        <td></td>
						<td style="width: 5px" ></td>
                        <td></td>
						<td width="10" ></td>
						<td class="td_label" align="right" style="width: 120px;">
                            <b><asp:Label ID="l_p_med_waiv" runat="server" Text="Med.Waiver:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 75px;">
						    <asp:label id="p_med_waiv" runat="server" width="75px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>				     			     
                     <tr><td colspan="17" style="height:5px"></td></tr>
				     <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px">
                            <b><asp:Label ID="l_p_diag" runat="server" Text="Diagnosis:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan="15">
							<asp:textbox id="p_diag" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="40">
                            </asp:textbox><br />
                            <asp:RegularExpressionValidator ID="regTxtdiag" runat="server" ControlToValidate="p_diag" 
                               ValidationExpression="^[\s\S]{0,500}$" ErrorMessage="Maximum of 500 characters allowed" Text="" ></asp:RegularExpressionValidator>
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
						<td class="td_label" align="right" style="width: 70px;">
                            <b><asp:Label ID="l_p_vendor_number" runat="server" Text="Vendor#:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 120px;">
							<asp:label id="p_vendor_number" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
						<td width="150" >
                             <input type="button" value="Select" style="width:60px" ID="btnResource" runat="server" 
                                    OnClick="javascript:popupDialogWide('SearchResource.aspx?page=POS');" /> 
                             &nbsp;&nbsp;
							 <input type="button" ID="btnReset" style="width:60px;" value="Reset" runat="server"
									onclick="javascript:ResetResource();DataChanged();" /> 
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="WIDTH: 100px;">
                            <b><asp:Label ID="l_p_date_start" runat="server" Text="Start Date:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="90" style="width: 90px;">
							<asp:textbox id="p_date_start" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                            </asp:textbox>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" width="150" style="width: 150px;">
							<b><asp:CheckBox id="p_until_revoked" runat="server" Text="Do Not Rollover">
                            </asp:CheckBox></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="WIDTH: 100px;">
                            <b><asp:Label ID="l_p_date_end" runat="server" Text="Term Date:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="90" style="width: 90px;">
							<asp:textbox id="p_date_end" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                            </asp:textbox>
						</td>
					 </tr>
                   </table>
				</td></tr>
                <tr style="height:5px">
                    <td></td>
                </tr> 
                <tr align="left"><td>
                   <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
					 <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px;">
                            <b><asp:Label ID="l_p_vendor_name" runat="server" Text="Name:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan="5" width="330" style="width: 330px;">
                            <asp:label id="p_resource_number" runat="server" CssClass="infaceText" Visible="false"></asp:label>
							<asp:label id="p_resource_name" runat="server" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="width:180px;">
                            <b><asp:Label ID="l_p_vendor_svcc" runat="server" Text="Service:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan="5" width="305" style="width: 305px;">
							<asp:dropdownlist id="p_vendor_svcc" runat="server" onchange="NoCreateIDNotes();" OnSelectedIndexChanged="service_SelectedIndexChanged"
							   DataValueField="fullID" DataTextField="fullentry" Height="20" Width="280" AutoPostBack=true>
				            </asp:dropdownlist>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_resource_addr1" runat="server" Text="Address:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan="5" class="td_unline" width="330" style="width: 330px;">
							<asp:label id="p_resource_addr1" runat="server" width="330px" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="width:180px;">
                            <b><asp:Label ID="l_p_vendor_subc" runat="server" Text="Sub Code:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan="5" width="305" style="width: 305px;">
							<asp:dropdownlist id="p_vendor_subc" runat="server"  onchange="NoCreateIDNotes();" OnSelectedIndexChanged="subc_SelectedIndexChanged"
							    DataValueField="fullID" DataTextField="fullentry" Height="20" Width="280" AutoPostBack=true>
				            </asp:dropdownlist>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="width: 70px;"></td>
						<td style="width: 5px" ></td>
						<td colspan="5" class="td_unline" width="330" style="width: 330px;">
							<asp:label id="p_resource_addr2" runat="server" width="330px" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="WIDTH: 180px;">
                            <b><asp:Label ID="l_p_unit" runat="server" Text="# of Units:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="p_unit" runat="server" CssClass="inface" MaxLength="9"></asp:textbox>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="width: 65px;">
                            <b><asp:Label ID="l_p_unit_type" runat="server" Text="Type:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td width="120" style="width: 120px;">
							<asp:dropdownlist id="p_unit_type" runat="server" Enabled="false" CssClass="infaceDropRead"
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="115">
				            </asp:dropdownlist>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_resource_phone" runat="server" Text="Phone:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="120" >
							<asp:label id="p_resource_phone" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
                        <td class="td_label" align="right" style="width: 80px; height: 20px">
                            <b><asp:Label ID="l_p_resource_fax" runat="server" Text="Fax:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="120" >
							<asp:label id="p_resource_fax" runat="server" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="width:180px;">
                            <b><asp:Label ID="l_p_cost" runat="server" Text="Approx. Monthly Cost:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="p_cost" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="width: 65px;">
                            <b><asp:Label ID="l_p_rate" runat="server" Text="Rate:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 120px;">
							<asp:label id="p_rate" runat="server" CssClass="infaceText"></asp:label>
						</td>
					 </tr>
				     <tr><td colspan="15" height="5"></td></tr>
					 <tr class="tr_common">
                        <td colspan="8" class="td_label" align="left">
                            <b><asp:Label ID="l_p_desc" runat="server" Text="Description of Service:"></asp:Label></b>
                        </td>
						<td class="td_label" align="right" style="width:180px;">
                            <b><asp:Label ID="l_p_cost_old" runat="server" Text="Old Monthly Cost:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" width="110" style="width: 110px;">
							<asp:textbox id="p_cost_old" runat="server" CssClass="inface" MaxLength="15"></asp:textbox>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="width: 65px;">
                            <b><asp:Label ID="l_p_cost_diff" runat="server" Text="Diff:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 120px;">
							<asp:label id="p_cost_diff" runat="server" width="120px" CssClass="infaceText"></asp:label>
						</td>
					 </tr>
				   </table>
				</td></tr>
				<tr><td height="5"></td></tr>
                <tr class="tr_common">
				   <td style="height:150px" valign="top" height="150">
				      <asp:textbox id="p_desc" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="150">
                      </asp:textbox><br />
                      <asp:RegularExpressionValidator ID="regTxtdesc" runat="server" ControlToValidate="p_desc" 
                         ValidationExpression="^[\s\S]{0,750}$" ErrorMessage="Maximum of 750 characters allowed" Text="" ></asp:RegularExpressionValidator>
				       <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="p_desc" ShowModal=true  runat="server">
                       </cc1:UltimateSpell>
				   </td>
				</tr>
				<tr><td height="5"></td></tr>
				<tr class="tr_common">
				   <td class="td_label" align="left" >
                       <b><asp:Label ID="l_p_just" runat="server" Text="Justification of Service:"></asp:Label></b>
                   </td>
				</tr>
				<tr><td height="5"></td></tr>
				<tr class="tr_common">
				   <td style="height: 150px" height="150">
				      <asp:textbox id="p_just" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="150">
                      </asp:textbox><br />
                      <asp:RegularExpressionValidator ID="regTxtjust" runat="server" ControlToValidate="p_just" 
                         ValidationExpression="^[\s\S]{0,750}$" ErrorMessage="Maximum of 750 characters allowed" Text="" ></asp:RegularExpressionValidator>
				      <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="p_just" ShowModal=true runat="server">
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
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_medical" runat="server" Text="Medi-Cal:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_medical" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="WIDTH: 70px;" >
                            <b><asp:Label ID="l_p_medicare" runat="server" Text="Medicare:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_medicare" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_ccs" runat="server" Text="CCS:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
						    <asp:dropdownlist id="p_ccs" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_ihss" runat="server" Text="IHSS:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_ihss" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="WIDTH: 80px;">
                            <b><asp:Label ID="l_p_ihss_hrs" runat="server" Text="# of hours:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 75px;">
							<asp:textbox id="p_ihss_hrs" runat="server" CssClass="inface" MaxLength="6"></asp:textbox>
						</td>
					 </tr>
                     <tr><td colspan="19" height="5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_ssa" runat="server" Text="SSA:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_ssa" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="width: 70px;">
                            <b><asp:Label ID="l_p_ssi" runat="server" Text="SSI:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_ssi" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_va" runat="server" Text="VA:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_va" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="width: 70px;" >
                            <b><asp:Label ID="l_p_payee" runat="server" Text="Payee:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan=5 class="td_unline" style="width: 270px;">
							<asp:textbox id="p_payee" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
					 </tr>	
                     <tr><td colspan="19" height="5px"></td></tr>
					 <tr class="tr_common">
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_priv_ins" runat="server" Text="Other Ins:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td class="td_unline" style="width: 90px;">
                            <asp:dropdownlist id="p_priv_ins" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
				            </asp:dropdownlist>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="WIDTH: 70px;">
                            <b><asp:Label ID="l_p_priv_ins_co" runat="server" Text="Carrier:"></asp:Label></b>
						</td>
						<td style="width: 5px" ></td>
						<td colspan=5 class="td_unline" width="275" style="width: 275px;">
							<asp:textbox id="p_priv_ins_co" runat="server" CssClass="inface" MaxLength="50"></asp:textbox>
						</td>
						<td width="20" ></td>
						<td class="td_label" align="right" style="WIDTH: 70px;">
						</td>
						<td style="width: 5px" ></td>
						<td colspan=5 class="td_unline" style="width: 270px;">
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
				   <table class="table_common" cellSpacing="0" cellPadding="0">
                    <tr><td>
                      <table class="tabel_inside">
				       <tr class="tr_common">
						<td class="td_label" align="left" style="width: 100px;">
                            <b><asp:Label ID="l_p_cm_name" runat="server" Text="Entered By:"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td class="td_unline" style="width: 195px;">
							<asp:label id="p_cm_name" runat="server" CssClass="infaceText"></asp:label>
						</td>
						<td style="width: 5px"></td>
						<td class="td_label" align="right" style="WIDTH: 45px;">
                            <b><asp:Label ID="l_p_cm_id" runat="server" Text="ID:"></asp:Label></b>
						</td>
						<td style="width: 5px"></td>
						<td class="td_unline" style="width: 65px;">
							<asp:label id="p_cm_id" runat="server" CssClass="infaceText"></asp:label>
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
                        <td class="td_label" align="right" style="width:200px">
                          <b><asp:Label id="l_memberspresent" runat="server" Text="Members Present:"></asp:Label></b>
                        </td>
						<td style="width: 5px"></td>
                        <td align="left" style="width:690px" rowspan="7">
                          <asp:TextBox ID="membersPresent" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" width="99%" Height="95"></asp:TextBox>
                        </td>
                       </tr>
                       <tr style="height:5px"><td colspan="2"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width:200px">
                            <asp:CheckBox id="p_exception" runat="server" Text=""></asp:CheckBox><b>Exception</b>
                        </td>
						<td style="width: 5px"></td>
                       </tr>
                       <tr style="height:5px"><td colspan="2"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width:200px">
                            <asp:CheckBox id="p_planning_team" runat="server" Text=""></asp:CheckBox><b>Planning Team Decision</b>
                        </td>
						<td style="width: 5px"></td>
                       </tr>
                       <tr style="height:5px"><td colspan="2"></td></tr>
                       <tr class="tr_common">
                        <td class="td_label" align="left" style="width:200px">
                            <asp:CheckBox id="p_attachments" runat="server" Text=""></asp:CheckBox><b>Attachments Required</b>
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
				        <b><asp:Label ID="l_p_comments" runat="server" Text="Comments:"></asp:Label></b>
                      </td>
				    </tr>
				    <tr><td height="5"></td></tr>
				    <tr>
				      <td style="height: 150px" height="150">
					    <asp:textbox id="p_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server" width="99%" height="150">
                        </asp:textbox><br />
                        <asp:RegularExpressionValidator ID="regTxtcomments" runat="server" ControlToValidate="p_comments" 
                          ValidationExpression="^[\s\S]{0,750}$" ErrorMessage="Maximum of 750 characters allowed" Text="" ></asp:RegularExpressionValidator>
				        <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="p_comments" ShowModal=true runat="server">
                        </cc1:UltimateSpell>
				      </td>
				    </tr>
				   </table>
                </td></tr> 					 
			 </table>
             </div>
             <div id="Pos_IP"  style="display:none;">
             <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:95%">
				 <tr style="height:5px"><td colspan="5"></td></tr>
				 <tr><td colspan="5">
                   <table class="table_common" cellspacing="0" cellpadding="0"  border="0">
                     <tr class="tr_common">
                       <td class="td_label" align="right" style="WIDTH: 150px;">
                          <b><asp:Label ID="l_p_ipp" runat="server" Text="Primary IPP Section:"></asp:Label></b>
					   </td>
					   <td width="10" ></td>
					   <td width="300" style="width: 300px;">
                          <asp:dropdownlist id="p_ipp" runat="server" 
							    DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="280">
				          </asp:dropdownlist>
					   </td>
                       <td width="440px"></td>
                     </tr>
                   </table>
                 </td></tr>
				 <tr style="height:5px"><td colspan="5"></td></tr>
				 <tr style="display:none"><td colspan="5">
                   <table class="table_common" cellspacing="0" cellpadding="0"  border="0" >
                     <tr class="tr_common">
                       <td class="td_label" align="right" style="WIDTH: 150px;">
                          <b><asp:Label ID="l_p_ipp2" runat="server" Text="Secondary IPP Section:"></asp:Label></b>
					   </td>
					   <td width="10" ></td>
					   <td width="300" style="width: 300px;">
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
                    <td class="td_label" style="width: 250px;">
                        <b>CDER Deficits Addressed With This POS</b>
					</td>
					<td width="75" ></td>
                    <td id="row_none" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server" >
                        <b><asp:CheckBox id="p_cder_none" runat="server" Text="" Checked="true">
                        </asp:CheckBox>No Deficits Addressed</b>
					</td>
					<td width="75" ></td>
                    <td style="width: 250px;">
                    </td>
                 </tr>
				 <tr style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_walkng" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_walkng" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Walking</b>
					</td>
					<td width="75" ></td>
                    <td id="row_bbctrl" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_bbctrl" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Bladder and Bowel Control</b>
					</td>
					<td width="75" ></td>
                    <td id="row_aggrsn" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_aggrsn" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Aggressive Social Behavior</b>
                    </td>
                 </tr>
                 <tr  style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_whluse" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_whluse" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Using a Wheelchair</b>
					</td>
					<td width="75" ></td>
                    <td id="row_prshyg" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_prshyg" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Personal Care</b>
					</td>
					<td width="75" ></td>
                    <td id="row_sevsi" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_sevsi" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Self-Injurious Behavior</b>
                    </td>
                 </tr>
                 <tr  style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_takmed" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_takmed" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Taking Prescription Meds.</b>
					</td>
					<td width="75" ></td>
                    <td id="row_drssng" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_drssng" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Dressing</b>
					</td>
					<td width="75" ></td>
                    <td id="row_dstrpr" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_dstrpr" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Destruction of Property</b>
                    </td>
                 </tr>
                 <tr  style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_eating" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_eating" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Eating</b>
					</td>
					<td width="75" ></td>
                    <td id="row_safety" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_safety" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Safety Awareness</b>
					</td>
					<td width="75" ></td>
                    <td id="row_rnwnd" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_rnwnd" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Running or Wandering Away</b>
                    </td>
                 </tr>
                 <tr style="height:5px"><td colspan="5"></td></tr>
                 <tr class="tr_common">
                    <td id="row_tltng" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_tltng" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Toileting</b>
					</td>
					<td width="75" ></td>
                    <td id="row_disbhv" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
                        <b><asp:CheckBox id="p_cder_disbhv" runat="server" Text="" Enabled="false">
                        </asp:CheckBox>Disruptive Social Behavior</b>
					</td>
					<td width="75" ></td>
                    <td id="row_emoout" align="left" class="infaceTextNoPad" style="width: 250px;" runat="server">
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


