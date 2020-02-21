<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormTimecardInfo.aspx.cs" Inherits="Virweb2.FormList.FormTimecard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self"></base>
	<title>:::Non-exempt Timecard info:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script language="javascript">
    <!--
	  function print_click() 
      {
	        var keyID=document.TimecardInfo.keyID.value.toString();
	        var UserAct=document.TimecardInfo.UserAct.value.toString();
	        winhref("PrintTimeCardInfo.aspx?id=" + keyID + "&UserAct=" + UserAct, "PrintTimeCardInfo");
	  }

      function submit_check() {
          if (document.TimecardInfo.ManagerAccess.value == "1") return true;

           if ((document.getElementById("Lunch3").checked==false) || 
               (document.getElementById("Lunch4").checked==false) ||
               (document.getElementById("Lunch5").checked==false) ||
               (document.getElementById("Lunch6").checked==false) ||
               (document.getElementById("Lunch7").checked==false) ||
               (document.getElementById("Lunch10").checked==false) ||
               (document.getElementById("Lunch11").checked==false) ||
               (document.getElementById("Lunch12").checked==false) ||
               (document.getElementById("Lunch13").checked==false) ||
               (document.getElementById("Lunch14").checked==false))
           {
               var DspStr = "You did not enter time for lunch for all of the dates.  Would you like to go back and input your lunch time?";
               //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
               var saveflag = PromptSaveChange(1, DspStr);
               if (saveflag == "1")
                  return false;
           }	  
           
           if (document.getElementById("agree").checked==false)
           {
               PopupMessage(67);
               return false;
           }
           
           return true;
	  }

	  function back_click() {
	      if (Confirm_Page())
	          document.location.replace('FormTimecardList.aspx');
	  }
    //-->
    </script>      
</head>
<body id="body"  runat="server" >
    <form id="TimecardInfo" method="post" runat="server">
        <input id="NoConfirm" type=hidden Value="0" />      
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="keyID" id="keyID" value="" runat="server" />  
        <input type="hidden" name="ManagerAccess" id="ManagerAccess" value="" runat="server" />  
        <div align="cener" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      OnClick="btnEdit_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Non-exempt Timecard For</asp:Label>
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
            <tr>
		        <td colspan="10" style="height: 5px;"></td>
		    </tr>
            <tr class="tr_common">
                <td style="width:150px" class="td_label" align="right">
                    <asp:Label ID="l_Status" runat="server" Text="Status:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:200px" class="td_label">
                    <asp:Label ID="StatusStr" runat="server">
                    </asp:Label>
                </td>
                <td width="5px">
                </td>
                <td width="350px">
                    <asp:button id="btnSubmit" Runat="server" Text="Submit" Visible="False" style="width:100px" CssClass="buttonbluestyle" 
                        OnClientClick="javascript:return submit_check();" OnClick="btnSubmit_Click" ></asp:button>	
                </td>
                <td width="5px">
                </td>
                <td colspan="3" style="width:185px">
                </td>
                <td width="auto"></td>
            </tr>
            <tr>
		        <td colspan="10" style="height: 5px;"></td>
		    </tr>
            <tr class="tr_common">
                <td style="width:150px" class="td_label" align="right">
                    <asp:Label ID="l_ActionPM" runat="server" Text="Verify By PM/Manager:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:200px" class="td_label">
                    <asp:Radiobutton ID="ActionPM_approve" groupname="ActionPM" runat="server" Text="Approve" Enabled=false></asp:Radiobutton>
                        &nbsp;&nbsp;&nbsp;
                    <asp:Radiobutton ID="ActionPM_return" groupname="ActionPM" runat="server" Text="Return" Enabled=false></asp:Radiobutton>
                </td>
                <td width="5px">
                </td>
                <td style="width:350px" class="td_unline">
                    <asp:Label ID="ActionPMName" runat="server" CssClass="infaceText">
                    </asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:60px" class="td_label">
                    <asp:Label ID="l_ActionPMDate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:120px">
                    <asp:Label ID="ActionPMDate" runat="server" CssClass="infaceText">
                    </asp:Label>
                </td>
                <td width="auto">
                </td>
            </tr>
            <tr>
		        <td colspan="10" style="height: 5px;"></td>
		    </tr>
            <tr class="tr_common">
                <td style="width:150px" class="td_label" align="right">
                    <asp:Label ID="l_ActionPay" runat="server" Text="Verify By Payroll:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:200px" class="td_label">
                    <asp:Radiobutton ID="ActionPay_approve" groupname="ActionPay" runat="server" Text="Approve" Enabled=false></asp:Radiobutton>
                        &nbsp;&nbsp;&nbsp;
                    <asp:Radiobutton ID="ActionPay_return" groupname="ActionPay" runat="server" Text="Return" Enabled=false></asp:Radiobutton>
                </td>
                <td width="5px">
                </td>
                <td style="width:350px" class="td_unline">
                    <asp:Label ID="ActionPayName" runat="server" CssClass="infaceText">
                    </asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:60px" class="td_label">
                    <asp:Label ID="l_ActionPayDate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:120px">
                    <asp:Label ID="ActionPayDate" runat="server" CssClass="infaceText">
                    </asp:Label>
                </td>
                <td width="auto">
                </td>
            </tr>
            <tr>
		        <td colspan="10" style="height: 5px;"></td>
		    </tr>
            <tr class="tr_common">
                <td style="width:150px" class="td_label" align="right">
                    <asp:Label ID="l_CMSubmit" runat="server" Text="CM:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td colspan="3" style="width:555px" class="td_label">
		            <asp:CheckBox ID="agree" runat="server" Text="I approve and certify the hours and days worked documented on the timecard"></asp:CheckBox>
                </td>
                <td width="5px">
                </td>
                <td style="width:60px" class="td_label">
                    <asp:Label ID="l_SubmitDate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                </td>
                <td width="5px">
                </td>
                <td style="width:120px">
                    <asp:Label ID="SubmitDate" runat="server" CssClass="infaceText">
                    </asp:Label>
                </td>
                <td width="auto">
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="10">
                </td>
            </tr>
            <tr>
                <td colspan="10" class="td_thicksepline">
                </td>
            </tr>
            <tr style="height:5px;">
                <td colspan="10">
                </td>
            </tr>        
        </table>
		</div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
		     	  <tr class="tr_common">	
		             <td style="WIDTH: 60px;" class="td_label">
		                <b>Date</b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
                     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 80px;" class="td_label">
						<b>Morning In</b>
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 80px;" class="td_label">
						<b>Lunch Out</b>
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
                     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 80px;" class="td_label">
						<b>Lunch In</b>
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 80px;" class="td_label">
						<b>Night Out</b>
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
                     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 80px;" class="td_label">
						<b></b>
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 80px;" class="td_label">
						<b></b>
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 40px;" class="td_label">
				        <b>Lunch</b>		
				     </td>
				     <td style="width:5px;"></td>		     
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>Regular-Hrs</b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>S-Hrs</b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>V-Hrs</b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>P-Hrs</b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>KS-Hrs</b>
		             </td>
		             <td style="width:5px;"></td>	
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>OT-Hrs</b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" class="td_label">
		                <b>Total-Hrs</b>
		             </td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 5px;"></td>
		         </tr>
		         <tr>
		             <td colspan="35" class="td_thicksepline"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 5px;"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td  rowspan="2" style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#C0FFFF">
		                <b><asp:Label ID="Date1" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code11" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn1" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                     
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut1" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                     
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code21" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						<asp:DropDownList ID="NoonIn1" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>      
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						<asp:DropDownList ID="NightOut1" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>     
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code31" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn1" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut1" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch1" runat="server" Visible= "false" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>	
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour1" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code41" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn21" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut21" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#C0FFFF">
		                <b><asp:Label ID="Date2" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code12" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn2" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                         
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut2" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code22" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn2" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut2" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code32" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn2" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut2" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center">
				         <asp:CheckBox ID="Lunch2" runat="server" Visible= "false" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour2" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code42" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn22" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut22" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date3" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code13" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn3" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                        
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut3" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code23" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn3" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut3" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code33" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn3" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut3" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch3" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour3" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code43" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn23" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut23" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date4" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code14" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn4" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                       
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut4" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code24" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn4" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut4" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code34" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td >
						 <asp:DropDownList ID="ExtraIn4" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut4" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch4" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour4" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code44" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn24" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut24" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common" valign="top" style="height:20px">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date5" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code15" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
			         <td>
						 <asp:DropDownList ID="MorningIn5" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                      
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut5" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code25" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn5" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut5" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code35" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn5" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut5" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch5" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour5" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code45" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn25" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut25" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date6" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code16" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn6" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                        
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut6" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code26" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn6" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut6" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code36" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn6" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut6" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch6" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour6" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code46" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn26" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut26" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date7" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code17" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
					 <td>
						 <asp:DropDownList ID="MorningIn7" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                     
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut7" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code27" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn7" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    						
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut7" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code37" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn7" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut7" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch7" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour7" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code47" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn27" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut27" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#C0FFFF">
		                <b><asp:Label ID="Date8" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code18" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
					 <td>
						 <asp:DropDownList ID="MorningIn8" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                        
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut8" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code28" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn8" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  					
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut8" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code38" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn8" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut8" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch8" runat="server" Visible= "false" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour8" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code48" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn28" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut28" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#C0FFFF">
		                <b><asp:Label ID="Date9" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code19" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
					 <td>
						 <asp:DropDownList ID="MorningIn9" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                       
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut9" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code29" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn9" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>     						
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut9" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code39" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn9" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut9" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch9" runat="server" Visible= "false" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour9" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code49" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn29" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut29" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date10" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code110" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn10" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                       
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut10" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code210" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn10" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>     
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut10" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>     
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code310" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn10" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut10" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch10" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour10" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code410" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn210" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut210" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date11" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code111" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn11" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                    
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut11" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code211" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn11" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut11" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>     
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code311" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn11" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut11" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch11" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour11" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code411" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn211" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut211" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date12" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code112" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn12" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                        
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut12" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code212" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn12" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut12" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>     
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code312" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn12" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut12" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch12" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour12" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code412" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn212" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut212" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date13" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code113" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn13" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                        
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut13" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code213" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn13" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut13" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code313" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn13" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut13" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch13" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>					     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour13" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code413" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn213" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut213" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 2px;" bgcolor="#9fb0f4"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height:5px"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td rowspan=2 style="WIDTH: 60px;font-family: arial; font-size: 12px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="Date14" runat="server" Text="Date:"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code114" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="MorningIn14" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>                      
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonOut14" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code214" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NoonIn14" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>    
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="NightOut14" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code314" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn14" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>   
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut14" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td align="center" >
				         <asp:CheckBox ID="Lunch14" runat="server" OnClick="DataChanged();" />
				     </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="payhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="sickhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="vacationhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
				     <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="personalhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="otherhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>	
		             <td style="WIDTH: 40px;" align="right" bgColor="#9fb0f4">
		                <b><asp:Label ID="overhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>				     
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="totalhour14" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
		         <tr class="tr_common">
		             <td colspan="13"></td>
		             <td style="width: 90px;">
				        <asp:DropDownList ID="TC_code414" runat="server" CssClass="infaceDrop" Width="85" OnClick="DataChanged();" >
                          <asp:ListItem Value="0">Regular</asp:ListItem>
                          <asp:ListItem Value="1">Holiday</asp:ListItem>                          
                          <asp:ListItem Value="2">Vacation</asp:ListItem>
                          <asp:ListItem Value="3">Sick</asp:ListItem>
                          <asp:ListItem Value="4">Personal</asp:ListItem>
                          <asp:ListItem Value="5">Bereavement</asp:ListItem>
                          <asp:ListItem Value="6">KinCare Sick</asp:ListItem>
                          <asp:ListItem Value="7">Jury Duty</asp:ListItem>
                          <asp:ListItem Value="8">RDO/Dock</asp:ListItem>
                          <asp:ListItem Value="9">Overtime</asp:ListItem>
                          <asp:ListItem Value="10">Without Pay</asp:ListItem>
                        </asp:DropDownList>
                     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraIn214" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList>  
				     </td>
				     <td style="width:5px;"></td>
				     <td>
						 <asp:DropDownList ID="ExtraOut214" runat="server" CssClass="infaceDrop" 
						          DataValueField="TimeInt" DataTextField="TimeInt" Width="75px" OnClick="DataChanged();">            
                        </asp:DropDownList> 
				     </td>
				     <td colspan="16"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 5px;"></td>
		         </tr>
		         <tr>
		             <td colspan="35" class="td_thicksepline"></td>
		         </tr>
		         <tr>
		             <td colspan="35" style="height: 5px;"></td>
		         </tr>
		         <tr class="tr_common">	
		             <td colspan="21" align="right">
		                <b>Total:</b>
		             </td>
				     <td style="width:5px;"></td>
				     <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TPayhrs" runat="server" Text="0"></asp:Label></b>
		             </td>				     
				     <td style="width:5px;"></td>				     
				     <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TSickhrs" runat="server" Text="0"></asp:Label></b>
		             </td>	
				     <td style="width:5px;"></td>				     
				     <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TVacationhrs" runat="server" Text="0"></asp:Label></b>
		             </td>	
				     <td style="width:5px;"></td>				     
				     <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TPersonalhrs" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TOtherhrs" runat="server" Text="0"></asp:Label></b>
		             </td>
		             <td style="width:5px;"></td>        
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TOverhrs" runat="server" Text="0"></asp:Label></b>
		             </td>
		              <td style="width:5px;"></td>
		             <td style="WIDTH: 40px;" align="right" bgColor="DarkGray">
		                <b><asp:Label ID="TTotalhrs" runat="server" Text="0"></asp:Label></b>
		             </td>
		         </tr>
                 <tr style="height:5px;">
                     <td colspan="35">
                     </td>
                 </tr>
                 <tr>
                     <td colspan="35" class="td_thicksepline">
                     </td>
                 </tr>
                 <tr style="height:5px;">
                     <td colspan="35">
                     </td>
                 </tr> 
		         <tr>
		             <td colspan="2" valign="top">Comments:</td>
		             <td colspan="33" valign="top" height="60">
					    <asp:textbox id="comments" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox>
				     </td>
				 </tr>
			     <tr>
		             <td colspan="35" style="height: 5px;"></td>
		         </tr>
		    </table>
            <p style="text-align:left">
            R=Regular<br />
            S=Sick<br />
            V=Vaction<br />
            P=Personal<br />
            K=KinCare<br />
            </p>
		</div>	      
    </form>
</body>
</html>
