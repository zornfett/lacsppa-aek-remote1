<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Virweb2.FormList.FormFairHearingInfo" Codebehind="FormFairHearingInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<html>
<head>
    <base target="_self" />
    <title>:::SCLARC Fair Hearing Progress:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet">
    <script type="text/JavaScript" src="../js/common.js"></script> 
    <script type="text/javascript">
    <!--
      function FunctiontoCallSaveData()
      {
         document.getElementById("<%=hdtoSaveData.ClientID %>").value="PageClosed";
         document.FormFairHearingList.submit();
      }
      
      function Service_Yes_click()
      {
          document.getElementById("ServiceTerminated_Yes").checked=true;
          document.getElementById("ServiceTerminated_No").checked=false;
      }
      
      function Service_No_click()
      {
          document.getElementById("ServiceTerminated_Yes").checked=false;
          document.getElementById("ServiceTerminated_No").checked=true; 
      }
      
      function ConRequest_Yes_click()
      {
          document.getElementById("ConRequest_Yes").checked=true;
          document.getElementById("ConRequest_No").checked=false;                        
      }
      
      function ConRequest_No_click()
      {
          document.getElementById("ConRequest_Yes").checked=false;
          document.getElementById("ConRequest_No").checked=true;                 
      }
      
      function Decision_U_click()
      {
          document.getElementById("Decision_U").checked=true;
          document.getElementById("Decision_D").checked=false;                        
      }
      
      function Decision_D_click()
      {
          document.getElementById("Decision_U").checked=false;
          document.getElementById("Decision_D").checked=true;                 
      }
             
       function showduedate()
       {          
          var HearingDate=JTrim(document.getElementById("FairHearingDate").value);
          var MonStr = "";
          var DayStr = "";
          if (HearingDate!="")
          {                       
              if (IsDate(HearingDate,false)=="true")
              {      
                 var dt = new Date(HearingDate);
	             dt.setDate(dt.getDate()-5);
	             var datestr = padStr(1 + dt.getMonth()) + "/" + padStr(dt.getDate()) + "/" + padStr(dt.getFullYear())
	             document.getElementById("EvidenceDueDate").value = datestr;
              }
          }
       }
       
       function showaiddate()
       {
          var ReceiveDate = JTrim(document.getElementById("ReceiveDate").value);
          var MonStr = "";
          var DayStr = "";
          if (ReceiveDate!="")
          {                       
              if (IsDate(ReceiveDate,false)=="true")
              {      
                 var dt = new Date(ReceiveDate);
	             dt.setDate(dt.getDate()+10);
	             MonStr = (dt.getMonth() + 1).toString();
	             if (MonStr.length == 1) {
	                 MonStr = "0" + MonStr;
	             }
	             DayStr = (dt.getDate()).toString();
	             if (DayStr.length == 1) {
	                 DayStr = "0" + DayStr;
	             }
	             document.getElementById("AidPendingDate").value = MonStr + "/" + DayStr + "/" + dt.getFullYear();
              }
          }
       }

       function print_click() {
           var uci = document.FormFairHInfo.consumer_key.value.toString();
           var createdate = document.FormFairHInfo.CreateDate.value.toString();
           var url = "PrintFormFairHearingInfo.aspx?UCI=" + uci + "&CreateDate=" + createdate ;
           winhref(url, 'PrintFormFairHearingInfo');
       }
        
       function save_click()
        {
             /*
             if (JTrim(document.getElementById("OAH").value)=="")
             {
                alert("Please input OAH#!");
                document.FormFairHearingList.OAH.focus();
                return false;
             }
             if (JTrim(document.getElementById("FairHearingDate").value)=="")
             {
                alert("Please Input State Level Fair Hearing Date!");
                document.FormFairHearingList.FairHearingDate.focus();
                return false;
             }
             if (JTrim(document.getElementById("InfoMeetDate").value)=="")
             {
                alert("Please Input Informal Meeting Date!");
                document.FormFairHearingList.InfoMeetDate.focus();
                return false;
             }
             if ((document.getElementById("ConRequest_Yes").checked==false) && (document.getElementById("ConRequest_No").checked==false))
             {
                alert("Please Select Continuance Requested!");
                document.FormFairHearingList.ConRequest_Yes.focus();
                return false;
             }
             
             if ((document.getElementById("Decision_U").checked==false) && (document.getElementById("Decision_D").checked==false))
             {
                alert("Please Select Decision!");
                document.FormFairHearingList.Decision_U.focus();
                return false;
             }
             */
             return true;
        }

        function back_click() {
             if (Confirm_Page())
                document.location.replace('FormFairHearingList.aspx');
        }
          
       //-->
    </script>
</head>
<body runat="server" id="body" >
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="FormFairHInfo" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" runat="server"  value=""/>      
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />	
        <input type="hidden" name="CreateDate" id="CreateDate" runat="server"  value=""/>
        <div align="center" style="WIDTH:100%;">
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
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                        src="../img/print.ico" title="Print" 
                        onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Fair Hearing</asp:Label>
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
            <tr>
		         <td colspan="3" height="8px"></td>
		    </tr>
        </table> 
        </div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto; height: 450px;">
            <table class="table_maindiv">
                    <tr>
                        <td>
                            <table class="table_inside">    
                                  <tr  class="tr_common">
                                      <td style="width:210px" class="td_label"><b>UCI#:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px" class="td_unline" >
                                          <asp:label id="lbl_uci" runat="server" CssClass="infaceText"></asp:label></td>
                                      <td style="width:210px" class="td_label"><b>Parents/Caregiver Name:</b></td>
                                      <td style="width:5px"></td>
                                      <td class="td_unline" style="width:300px;">
	                                      <asp:label id="CaregiverName" runat="server" CssClass="infaceText"></asp:label>                                    
	                                  </td>	
                                  </tr>
                                  <tr style="height:5px">
                                      <td colspan="6"></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:210px" class="td_label"><b>Consumer Name:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px;" class="td_unline" >
                                          <asp:label id="lbl_uciname" runat="server" CssClass="infaceText"></asp:label>
                                      </td>
                                      <td style="width:210px" class="td_label"><b>Street Address:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px;" class="td_unline" >
                                          <asp:label id="lbl_street" runat="server" CssClass="infaceText"></asp:label>
                                      </td>
                                  </tr>
                                  <tr style="height:5px">
                                      <td colspan="6"></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:210px" class="td_label"><b>DOB:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px;" class="td_unline" >
                                          <asp:label id="lbl_dob" runat="server" CssClass="infaceText"></asp:label>
                                      </td>
                                      <td style="width:210px" class="td_label"><b>City,State Zip Code:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px;" class="td_unline" >
                                          <asp:label id="lbl_zipcode" runat="server" CssClass="infaceText"></asp:label>
                                      </td>
                                  </tr>
                                  <tr style="height:5px">
                                      <td colspan="6"></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:210px" class="td_label"><b>SC:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px;" class="td_unline" >
                                          <asp:label id="lbl_scname" runat="server" CssClass="infaceText"></asp:label>
                                      </td>
                                      <td style="width:210px" class="td_label"><b>PM:</b></td>
                                      <td style="width:5px"></td>
                                      <td style="width:300px;" class="td_unline" >
                                          <asp:label id="lbl_pmname" runat="server" CssClass="infaceText"></asp:label>
                                      </td>
                                  </tr>
                                  <tr style="height:5px">
                                      <td colspan="6"></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:210px" class="td_label"><b>Attorney/Advocate:</b></td>
                                      <td style="width:5px"></td>
                                      <td class="td_unline" colspan=4>
                                          <asp:TextBox ID="Attorney" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox> 
                                      </td>
                                  </tr>
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:5px">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:5px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                         <td align="center"><b>Notification</b></td>
                    </tr>
                    <tr style="height:5px">
                         <td></td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside"> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label1" runat="server" Text="NOA Notification Mailed:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;">
	                                     <asp:TextBox ID="MailDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>	
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="4"></td>
                                </tr>  
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label2" runat="server" Text="NOA Notification Received by Family:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;">
	                                     <asp:TextBox ID="ReceiveDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" onpropertychange="showaiddate();"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="4"  style="width:auto"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside"> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label3" runat="server" Text="Service(s):" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td  class="td_unline" align="left">
	                                      <asp:TextBox ID="Service" runat="server" CssClass="inface" MaxLength="150"></asp:TextBox>                                    
	                                </td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="10"></td>
                                </tr> 
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside"> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label4" runat="server" Text="Department:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td colspan="2">
                                        <table class="table_inside">
                                            <tr class="tr_common">
                                                <td style="width:150px;" >
                                                    <asp:DropDownList ID="department" runat="server" CssClass="infaceDrop" onchange="NoConfirmExit();" OnSelectedIndexChanged="department_SelectedIndexChanged"
                                                        AutoPostBack="true">
                                                        <asp:ListItem Value=""></asp:ListItem>
                                                        <asp:ListItem Value="Intake">Intake</asp:ListItem>
                                                        <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                                                    </asp:DropDownList>                                 
	                                            </td>	
	                                            <td style="width:120px" class="td_label"><asp:Label ID="Label10" runat="server" Text="Type of Service:" Font-Bold="true"/></td>
                                                <td style="width:5px"></td>	
                                                <td style="width:300px;" >
	                                                <asp:DropDownList ID="TypeService" runat="server" CssClass="infaceDrop" >
                                                    </asp:DropDownList>                                                          
	                                            </td>
                                                <td style="width:auto"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="4"></td>
                                </tr> 
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside">
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label5" runat="server" Text="Fair Hearing Request Received:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;">
	                                     <asp:TextBox ID="FairReceiveDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="4"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label6" runat="server" Text="Fair Hearing Notification to OAH:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;">
	                                     <asp:TextBox ID="FairQAHDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="4"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label7" runat="server" Text="Aid Paid Pending Date:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;" >
	                                     <asp:TextBox ID="AidPendingDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="4"></td>
                                </tr> 
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside">
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label8" runat="server" Text="Services Terminated:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>
                                    <td colspan="2">
                                        <table class="table_inside">
                                            <tr class="tr_common">
                                                <td style="width:50px" class="td_label">
                                                    <asp:CheckBox ID="ServiceTerminated_Yes" runat="server" Text=""/><b>Yes</b>
                                                </td>
                                                <td style="width:10px"></td>	
                                                <td style="width:60px" class="td_label"><asp:Label ID="Label9" runat="server" Text="Date:" Font-Bold="true"/></td>
                                                <td style="width:5px"></td>	
                                                <td class="td_unline" style="width:120px;" >
                                                    <asp:TextBox ID="ServiceTerminated_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                                                </td>  
                                                <td style="width:5px"></td>	 
                                                <td style="width:50px" class="td_label">
                                                    <asp:CheckBox ID="ServiceTerminated_No" runat="server" Text=""/><b>No</b>
                                                </td>
                                                <td style="width:auto"></td>
                                            </tr>
                                        </table>
                                    </td>	
                                </tr>  
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:5px">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:5px">
                        <td>
                        </td>
                    </tr>
                    <tr  class="tr_common">
                         <td align="center"><b>State Level Hearing</b></td>
                    </tr>  
                    <tr style="height:5px">
                         <td></td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside"> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label11" runat="server" Text="OAH#:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:600px;" >
	                                      <asp:TextBox ID="OAH" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>                                    
	                                </td>	
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside"> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label12" runat="server" Text="State Level Fair Hearing Date:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td >
                                      <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                                      <tr class="tr_common">
                                         <td class="td_unline" style="width:120px;" >
	                                         <asp:TextBox ID="FairHearingDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" onpropertychange="showduedate();"></asp:TextBox>                                    
	                                     </td>
                                         <td style="width:20px"></td>
	                                     <td style="width:60px" class="td_label"><asp:Label ID="Label13" runat="server" Text="Time:" Font-Bold="true"/></td>
	                                     <td style="width:5px"></td>
                                         <td  class="td_unline" style="width:120px;" >
	                                         <asp:TextBox ID="FairHearingTime" runat="server" CssClass="inface" MaxLength=5></asp:TextBox> 
	                                      </td> 
	                                     <td style="width:auto"></td>
                                      </tr>
                                      </table>
                                    </td>  
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label14" runat="server" Text="Informal Meeting Date:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td>
                                      <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                                      <tr class="tr_common">
                                         <td class="td_unline" style="width:120px;" >
	                                        <asp:TextBox ID="InfoMeetDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                     </td>
                                         <td style="width:20px"></td>
	                                     <td style="width:60px" class="td_label"><asp:Label ID="Label15" runat="server" Text="Time:" Font-Bold="true"/></td>
	                                     <td style="width:5px"></td>
                                         <td  class="td_unline" style="width:120px;" >
	                                        <asp:TextBox ID="InfoMeetTime" runat="server" CssClass="inface" MaxLength=5></asp:TextBox> 
	                                      </td> 
	                                     <td style="width:auto"></td>
                                      </tr>
                                      </table>
                                    </td>  
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_inside"> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label16" runat="server" Text="Evidence Packet Due:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;" >
	                                     <asp:TextBox ID="EvidenceDueDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label17" runat="server" Text="Evidence Packet Sent:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;" >
	                                     <asp:TextBox ID="EvidenceSentDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label18" runat="server" Text="Continuance Requested:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_label" style="width:120px;" >
                                       <asp:CheckBox ID="ConRequest_Yes" runat="server" Text=""/><b>Yes</b>&nbsp;&nbsp;&nbsp;
                                       <asp:CheckBox ID="ConRequest_No" runat="server" Text="" /><b>No</b>
                                    </td>
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label19" runat="server" Text="Continuance Granted:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_label" style="width:120px;" >
	                                     <asp:TextBox ID="ConGrantDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                                <tr style="height:5px">
                                    <td colspan="3"></td>
                                </tr> 
                                <tr  class="tr_common">
                                    <td style="width:250px" class="td_label"><asp:Label ID="Label20" runat="server" Text="Decision:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_label" style="width:120px;" >
                                        <asp:CheckBox ID="Decision_U" runat="server" Text=""  /><b>Won</b>&nbsp;&nbsp;&nbsp;
                                        <asp:CheckBox ID="Decision_D" runat="server" Text=""  /><b>Lost</b>
                                    </td>
                                    <td style="width:auto"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>    
                    <tr style="height:5px">
                         <td></td>
                    </tr>
                    <tr>
                         <td >
                              <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%;">  
                                     <tr  class="tr_common">
                                        <td>
                                            <asp:textbox id="DecisionMemo" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server"  Width="99%"  Height="80px"></asp:textbox>
                                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="DecisionMemo" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td>	 
                                     </tr>
                              </table>
                         </td>
                     </tr> 
                    <tr style="height:5px">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:5px">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                         <td align="center"><b>Resolution</b></td>
                    </tr>      
                    <tr style="height:5px">
                         <td></td>
                    </tr>
                    <tr>
                         <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:210px" class="td_label"><asp:Label ID="Label21" runat="server" Text="Notice of Resolution Signed:" Font-Bold="true"/></td>
                                    <td style="width:5px"></td>	
                                    <td class="td_unline" style="width:120px;" >
	                                     <asp:TextBox ID="SignDate" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
                                    <td style="width:auto"></td>
                                </tr>  
                            </table>
                         </td>
                    </tr>  
                    <tr style="height:5px">
                         <td></td>
                    </tr>
                    <tr>
                         <td >
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%;">  
                                <tr  class="tr_common">
                                    <td>
                                        <asp:textbox id="Resolution" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server"  Width="99%"  Height="80px"></asp:textbox>
                                        <cc1:UltimateSpell ID="UltimateSpell33" ControlIdsToCheck="Resolution" ShowModal="true"
                                        runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                            </table>
                         </td>
                      </tr>  
                      <tr style="height:70px">
                         <td align="center"></td>
                    </tr>      
               </table>
        </div>            
    </form>
</body>
</html>
