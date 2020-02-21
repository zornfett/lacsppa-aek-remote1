<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormSirAddInfo.aspx.cs" Inherits="Virweb2.FormList.FormSirAddInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
<head>
    <base target="_self"></base>
    <title>:::SIR -- Follow Up:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script language="javascript">
	<!--
	   function print_click() {
	       var sa_key = document.SAInfo.sa_key.value.toString();
	       var sa_rpt = document.SAInfo.SARpt.value.toString();
	       var UserAct = document.SAInfo.UserAct.value.toString();
	       if (sa_rpt.toString() == "") {
	           alert("Please update the record!");
	       }
	       else {
	           var url = "PrintFormSirAddInfo.aspx?sa_key=" + sa_key + "&sa_rpt=" + sa_rpt + "&UserAct=" + UserAct;
	           winhref(url, 'PrintFormSirAddInfo');
	       }
	   }

	   function CheckDistribute() {
	       if (document.SAInfo.dist_userIDs.value != "") {
	           var DspStr = "Do you want to distribute this SIR?";
	           //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
	           var saveflag = PromptSaveChange(1, DspStr);
               if (saveflag == "1")
	               document.SAInfo.distflag.value = "true";
	           else document.SAInfo.distflag.value = "false";
	       }
	   }

	   function save_click() {

	       CheckDistribute();

	       NoConfirmExit();
	       return true;
	   }

	   function NotifyClick()
       {
           DataChanged();
           popupDialogSmall('SearchUser.aspx?ForSir=1&ToNameList='+document.SAInfo.dist_userIDs.value);
       }

	   function AddMultiUsers(selusers, selIDs) {
	       var i, j;
	       var Ids = new Array();
	       var Usrs = new Array();
	       Ids = selIDs.split(";");
	       Usrs = selusers.split(";");

           document.SAInfo.sa_notified.value = '';
           document.SAInfo.dist_userIDs.value = '';

	       for (i = 0; i < Usrs.length; i++) {
	           if (document.SAInfo.sa_notified.value.indexOf(Usrs[i]) < 0) {
	               document.SAInfo.sa_notified.value = document.SAInfo.sa_notified.value + Usrs[i] + " / ";
	           }
	       }

	       for (j = 0; j < Ids.length; j++) {
	           if (document.SAInfo.dist_userIDs.value.indexOf(Ids[j]) < 0) {
	               document.SAInfo.dist_userIDs.value = document.SAInfo.dist_userIDs.value + Ids[j] + " ";
	           }
	       }
	       //document.SAInfo.sa_notified.value = document.SAInfo.sa_notified.value + selusers;
	       //document.SAInfo.dist_userIDs.value = document.SAInfo.dist_userIDs.value + selIDs;

	   }		
	//-->
	</script>		
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="SAInfo" method="post" runat="server">
		<input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="IDNotespopup" id="IDNotespopup" value="Y" runat="server" />
        <input type="hidden" name="IDNotestype" id="IDNotestype" value="D" runat="server" />
        <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="SIR ADDENDUM" runat="server" />
        <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
        <input type="hidden" name="dist_userIDs" id="dist_userIDs" value="" runat="server" />
        <input type="hidden" name="sa_key" id="sa_key" value="" runat="server" />
        <input type="hidden" name="SARpt" id="SARpt" value="" runat="server" />
        <input type="hidden" name="distflag" id="distflag" value="false" runat="server" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SIR - Follow Up</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Follow Up For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();" runat="server" /> 
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:640px; overflow: auto " >
	    <table class="table_maindiv" cellspacing="0" cellpadding="0">
		    <tr><td>
			  <table class="table_inside">
			    <tr class="tr_common">
					<td  class="td_label" align="right" style="width: 120px"><b>Status:</b>
                    </td>
                    <td style="width: 5px">
                    </td>
					<td style="width:120px">
						<asp:label id="SAStatus" runat="server" CssClass="infaceText"></asp:label>
					</td>
                    <td style="width: 5px">
                    </td>
					<td class="td_label" align="right" style="width:180px"><b>To Be Completed By:</b>
                    </td>
                    <td style="width: 5px">
                    </td>
                    <td class="td_unline" style="width: 250px">
                        <asp:DropDownList ID="sa_complete_by" runat="server" DataTextField="employeeName" DataValueField="employeeID"
                            OnClick="DataChanged()"  CssClass="infaceDrop">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 5px">
                    </td>
					<td class="td_label" align="right" style="width:100px"><b>Due Date:</b>						   						    
					</td>
                    <td style="width: 5px">
                    </td>
					<td class="td_unline" style="width: 100px">
						<asp:textbox id="sa_due_dt" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                 runat="server" CssClass="inface"></asp:textbox>
					</td>
				</tr>
              </table>
			</td></tr> 
            <tr style="height:5px"><td></td></tr>
            <tr>
          </tr>
            <tr><td>
			  <table class="table_inside">
			    <tr class="tr_common">
					<td class="td_label" align="right" style="width: 250px;" >
					    <asp:CheckBox ID="Validated" runat="server" Text="Validated (Completed By CM)" />						   
					</td>
                    <td style="width: 400px">
                    </td>
                    <td rowspan="5" style="width: 250px">
                        <table class="table_withborder">
                           <tr class="tr_common">
                               <td class="td_label" align="right" style="width: 150px">Follow-Up #:</td>
                               <td style="width: 5px"></td>
                               <td class="td_unline" style="width: 80px">
                                  <asp:Label id="sa_rpt" runat="server" CssClass="inface"></asp:Label> 
                               </td>
                           </tr>
                           <tr style="height:5px"><td colspan="3"></td></tr>
                           <tr class="tr_common">
                               <td class="td_label" align="right" style="width: 150px">Follow-Up Date:</td>
                               <td style="width: 5px"></td>
                               <td class="td_unline" style="width: 80px">
                                  <asp:textbox id="sa_rpt_dt" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" 
                                           runat="server" CssClass="inface"></asp:textbox>
                               </td>
                           </tr>
                           <tr style="height:5px"><td colspan="3"></td></tr>
                           <tr class="tr_common">
                               <td class="td_label" align="right" style="width: 150px">Initial SIR Date:</td>
                               <td style="width: 5px"></td>
                               <td class="td_unline" style="width: 80px">
                                  <asp:Label id="s_rpt_date" runat="server" CssClass="infaceText"></asp:Label> 
                               </td>
                           </tr>
                        </table>  
                    </td>
                </tr>
                <tr style="height:5px"><td colspan="2"></td></tr>
                <tr class="tr_common">
					<td class="td_label" align="right" style="width: 250px;" >
					    <asp:CheckBox ID="Verified" runat="server" Text="Verified (By Management)" />						   
					</td>
                    <td style="width: 400px">
                    </td>
                </tr>
                <tr style="height:5px"><td colspan="2"></td></tr>
                <tr class="tr_common"><td colspan="2"></td></tr>
              </table>
			</td></tr> 
            <tr style="height:5px"><td></td></tr>
            <tr class="tr_common">
                <td align="center">                           
                   <asp:Label ID="Title1" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">Follow-Up to Special Incident Report</asp:Label>
                </td>
            </tr>    
            <tr style="height:5px"><td></td></tr> 
			<tr><td>
			  <table class="table_inside">
			     <tr class="tr_common">
					<td class="td_label" align="right" style="width: 80px"><b>UCI#:</b>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 100px;">
						<asp:label id="s_uci" runat="server" CssClass="infaceText"></asp:label>
					</td>
					<td style="width: 20px"></td>
					<td class="td_label" align="right" style="width: 100px"><b>SC Name:</b>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 70px;">
						<asp:label id="c_cm_id" runat="server" CssClass="infaceText"></asp:label>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 250px;">
						<asp:label id="CaseMgrName" runat="server" CssClass="infaceText"></asp:label>
					</td>
                    <td></td>
				 </tr>	
              </table>
            </td></tr> 
            <tr style="height:5px"><td></td></tr> 
			<tr><td>
			  <table class="table_inside">
				 <tr class="tr_common">
					<td class="td_label" align="right" style="width: 80px"><b>Name:</b>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 130px;">
						<asp:label id="c_name_first" runat="server" CssClass="infaceText"></asp:label>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 130px;">
						<asp:label id="c_name_last" runat="server" CssClass="infaceText"></asp:label>
					</td>
					<td style="width: 10px"></td>
					<td class="td_label" align="right" style="width: 70px;"><b>DOB:</b>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 80px;">
						<asp:label id="s_dob" runat="server" CssClass="infaceText"></asp:label>
					</td>
					<td style="width: 10px"></td>
                    <td class="td_label" align="right" style="width: 70px;"><b>Sex:</b>
					</td>
					<td style="width: 5px"></td>
                    <td class="td_unline" style="width: 80px;">
					    <asp:label id="s_gender" runat="server" CssClass="infaceText"></asp:label>
					</td>
                    <td style="width: 10px"></td>
                    <td class="td_label" align="right" style="width: 70px;"><b>Status:</b>
					</td>
					<td style="width: 5px"></td>
                    <td class="td_unline" style="width: 140px;">
					    <asp:label id="StatusName" runat="server" CssClass="infaceText"></asp:label>
					</td>
				 </tr>				     			     
              </table>
            </td></tr> 
            <tr style="height:5px"><td></td></tr> 
			<tr><td>
			  <table class="table_inside">
			     <tr class="tr_common">
					<td class="td_label" align="right" valign="top" style="width: 80px"><b>Diag:</b>
					</td>
					<td style="width: 5px"></td>
					<td style="width: 715px">
                        <asp:TextBox ID="s_diagnosis" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="40" ReadOnly="true" CssClass="infaceText">
                        </asp:TextBox>
					</td>
                 </tr>
			  </table>
			</td></tr>
            <tr style="height:5px"><td></td></tr>
            <tr><td  class="td_thicksepline"></td></tr>    
            <tr style="height:5px"><td></td></tr> 
            <tr class="tr_common" align="center"><td>This addendum is being submitted as per Title 17, Section 54327.1, as a follow-up to the initial report</td></tr> 
			<tr style="height:5px"><td></td></tr>
            <tr><td  class="td_thicksepline"></td></tr>    
            <tr style="height:5px"><td></td></tr> 
            <tr><td>
			   <table class="table_inside">
			     <tr class="tr_common">
					<td class="td_label" align="right" style="width: 180px"><b>Date Of Incident:</b>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 100px;">
						<asp:Textbox id="sa_incident_dt" runat="server" CssClass="inface" readonly="true"></asp:Textbox>
					</td>
					<td style="width: 10px"></td>
					<td class="td_label" align="right" style="width: 180px"><b>Time Of Incident:</b>
					</td>
					<td style="width: 5px"></td>
					<td class="td_unline" style="width: 100px;">
						<asp:Textbox id="sa_incident_time" runat="server" CssClass="inface" readonly="true"></asp:Textbox>
					</td>
                    <td style="width: 320px"></td>					
				 </tr>	
                 <tr style="height:5px"><td colspan="8"></td></tr>
				 <tr class="tr_common">
					<td class="td_label" align="right" style="width: 180px"><b>Site Of Incident:</b>
					</td>
					<td style="width: 5px"></td>
					<td colspan="6" class="td_unline" style="width: 715px">
					    <asp:label id="sa_incident_site" runat="server" CssClass="infaceText"></asp:label>
					</td>
				 </tr>				     			     
			   </table>
            </td></tr>
            <tr style="height:5px"><td></td></tr> 
            <tr><td>
			   <table class="table_inside">			
                 <tr class="tr_common">
                    <td class="td_label" align="left" style="width: 450px"><b>Description Of Incident:</b>
                    </td>
                    <td class="td_label" align="right" style="width: 120px"><b>Substantiated:</b>
			        </td>
			        <td class="td_label" style="width: 5px"></td>
                    <td class="td_label" style="width: 50px">
					    <asp:CheckBox id="sa_substantiated" runat="server" CssClass="inface"></asp:CheckBox>
			        </td>
                    <td class="td_label" style="width: 275px"></td>
                 </tr>
               </table>
			</td></tr>
			<tr style="height:5px"><td></td></tr>
			<tr>
			   <td style="height: 150px;width:800px">
				  <asp:textbox id="sa_incident_desc" textmode=MultiLine Wrap=true  BorderStyle=Solid 
                       runat="server" width="99%" height="150px"></asp:textbox>
                  <br />
			          <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="sa_incident_desc" ShowModal=true runat="server">
                      </cc1:UltimateSpell>
			   </td>
			</tr>
            <tr style="height:5px"><td></td></tr> 
            <tr class="tr_common">
               <td class="td_label" align="left"><b>Medical Treatment/Follow-Up Treatment:</b>&nbsp;&nbsp;&nbsp;
               <input type="button" name="btnMedIns" id="btnMedIns"  value="Instructions" class="buttonbluestyle" size="120px" 
                       runat="server" onclick="Javascript:popupDialogSmall('SearchSirInstructions.aspx?flag=1');" />     
               </td>
			</tr>
			<tr style="height:5px"><td></td></tr>
			<tr>
			   <td style="height: 150px">
				  <asp:textbox id="sa_treatment_followup" textmode=MultiLine Wrap=true  BorderStyle=Solid 
                       runat="server" width="99%" height="150px"></asp:textbox>
                  <br />
			          <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="sa_treatment_followup" ShowModal=true runat="server">
                      </cc1:UltimateSpell>
			   </td>
			</tr>
            <tr style="height:5px"><td></td></tr> 
            <tr class="tr_common">
               <td class="td_label" align="left">
			        <b>Action Taken by the Vendor, Consumer, or Other Agency in Response to the Incident:</b>&nbsp;&nbsp;&nbsp;
                    <input type="button" name="btnActTakenIns" id="btnActTakenIns"  value="Instructions" class="buttonbluestyle" size="120px" 
                       runat="server" onclick="Javascript:popupDialogSmall('SearchSirInstructions.aspx?flag=2');" /> 
               </td>
			</tr>
			<tr style="height:5px"><td></td></tr>
			<tr>
			   <td style="height: 150px">
				  <asp:textbox id="sa_action_taken" textmode=MultiLine Wrap=true  BorderStyle=Solid 
                       runat="server" width="99%" height="150px"></asp:textbox>
                  <br />
			          <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="sa_action_taken" ShowModal=true runat="server">
                      </cc1:UltimateSpell>
			   </td>
			</tr>	
            <tr style="height:5px"><td></td></tr> 
            <tr class="tr_common">
               <td class="td_label" align="left">
			        <b>Prevention Action Taken and/or Planned:</b>&nbsp;&nbsp;&nbsp;
                    <input type="button" name="btnPrevActIns" id="btnPrevActIns"  value="Instructions" class="buttonbluestyle" size="120px" 
                       runat="server" onclick="Javascript:popupDialogSmall('SearchSirInstructions.aspx?flag=3');" /> 
               </td>
			</tr>
			<tr style="height:5px"><td></td></tr>
			<tr>
			   <td style="height: 150px">
				  <asp:textbox id="sa_action_prevent" textmode=MultiLine Wrap=true  BorderStyle=Solid 
                       runat="server" width="99%" height="150px"></asp:textbox>
                  <br />
			          <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="sa_action_prevent" ShowModal=true runat="server">
                      </cc1:UltimateSpell>
			   </td>
			</tr>
            <tr style="height:5px"><td></td></tr> 
            <tr class="tr_common">
               <td class="td_label" align="left">
			        <b>Comments:</b>
               </td>
			</tr>
            <tr style="height:5px"><td></td></tr> 
			<tr>
			   <td style="height: 150px">
				  <asp:textbox id="sa_comment" textmode=MultiLine Wrap=true  BorderStyle=Solid 
                       runat="server" width="99%" height="150px"></asp:textbox>
                  <br />
			          <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="sa_comment" ShowModal=true runat="server">
                      </cc1:UltimateSpell>
			   </td>
			</tr>
		    <tr style="height:5px"><td></td></tr> 
            <tr class="tr_common">
               <td class="td_label" align="left">
			        <b>Others Notified:</b>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" value="Select" style="width:100px" ID="selUser"  runat="server"  
                         Onclick="javascript:NotifyClick();" />
               </td>
			</tr>
            <tr style="height:5px"><td></td></tr> 
			<tr>
			   <td style="height: 60px">
				  <asp:textbox id="sa_notified" textmode=MultiLine Wrap=true  BorderStyle=Solid 
                       runat="server" width="99%" height="60px"></asp:textbox>
			   </td>
			</tr> 
		</table>		
		</div>													  
		</form>
	</body>
</html>


