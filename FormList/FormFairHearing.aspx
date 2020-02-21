<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Virweb2.FormList.FormFairHearing" Codebehind="FormFairHearing.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
        
       function showduedate()
       {          
          var HearingDate=JTrim(document.getElementById("FairHearingDate").value);
          if (HearingDate!="")
          {                       
              if (IsDate(HearingDate,false)=="true")
              {      
                 var dt = new Date(HearingDate);
	             dt.setDate(dt.getDate()-5);
	             month = dt.getMonth() + 1;
	             if (month.toString().length==1)
	             {
	                 month = "0" + month;
	             }
	             day = dt.getDate();
	             if (day.toString().length==1)
	             {
	                 day = "0" + day;
	             }
	             document.getElementById("EvidenceDueDate").value = month+"/"+day+"/"+dt.getFullYear();    
                  
              }
          }
       }
       
       function showaiddate()
       {          
          var ReceiveDate=JTrim(document.getElementById("ReceiveDate").value);
          if (ReceiveDate!="")
          {                       
              if (IsDate(ReceiveDate,false)=="true")
              {      
                 var dt = new Date(ReceiveDate);
	             dt.setDate(dt.getDate()+10);
	             month = dt.getMonth() + 1;
	             if (month.toString().length==1)
	             {
	                 month = "0" + month;
	             }
	             day = dt.getDate();
	             if (day.toString().length==1)
	             {
	                 day = "0" + day;
	             }
	             document.getElementById("AidPendingDate").value = month+"/"+day+"/"+dt.getFullYear();    
                  
              }
          }
       }
        
       function save_click()
        {
             NoConfirmExit();
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
          
       //-->
    </script>
</head>
<body   runat="server" id="body" >
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="FormFairHearingList" runat="server">
        <input type="submit" value="test" style="display:none;" />
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" runat="server"  value=""/>      
        <input type="hidden" name="CreateDate" id="CreateDate" runat="server"  value=""/>
        <div align="left" style="width: 100%; height: 70px;vertical-align:top;">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">  
                <tr valign="top" style="height: 30px">
                    <td colspan="2" align="center">
                        <asp:Label ID="Label6" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SCLARC Fair Hearing Progress</asp:Label>
                    </td>
                </tr>                 
                <tr valign="middle" style="height: 30px">                   
                    <td align="left" valign="top"  style="width:470px">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CONSUMER INFO</asp:Label>
                    </td>
                    <td align="left" valign="middle" style="width:330px">
                        <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle"  OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click" >
                        </asp:Button>
                        <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle"  OnClientClick="NoConfirmExit();" OnClick="btnAdd_Click" ></asp:Button>
                        <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle">
                        </asp:Button>
                        <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"  runat="server"/>                       
                    </td>
                </tr>  
                 <tr valign="top">
                    <td colspan="2" class="td_thicksepline">                                           
                    </td>
                </tr>                
            </table>           
        </div>
        <div align="center"  style="position:relative;WIDTH:100%; height:610px; overflow: auto; vertical-align:top;">                       
              <table cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%;"> 
                    <tr style="height:20px">
                         <td align="center"><b><U>Fair Hearing Process</U></b></td>
                    </tr>
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;">    
                                  <tr  class="tr_common">
                                      <td style="width:10px"></td>	
                                      <td style="width:100px">UCI#:</td>
                                      <td style="width:200px"><asp:label id="lbl_uci" runat="server" CssClass="infaceText" Width="200px"></asp:label></td>
                                      <td style="width:5px"></td>
                                      <td style="width:145px">Parents/Caregiver Name:</td>
                                      <td class="td_unline" align="left" style="width:340px;">
	                                      <asp:label id="CaregiverName" runat="server" CssClass="infaceText" Width="340px"></asp:label>                                    
	                                  </td>	
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:10px"></td>	
                                      <td style="width:100px">Consumer Name:</td>
                                      <td style="width:200px;"><asp:label id="lbl_uciname" runat="server" CssClass="infaceText" Width="200px"></asp:label></td>
                                      <td style="width:5px"></td>
                                      <td style="width:145px">Street Address:</td>
                                      <td style="width:340px;"><asp:label id="lbl_street" runat="server" CssClass="infaceText" Width="340px"></asp:label></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:10px"></td>	
                                      <td>DOB:</td>
                                      <td style="width:200px;"><asp:label id="lbl_dob" runat="server" CssClass="infaceText" Width="200px"></asp:label></td>
                                      <td style="width:5px"></td>
                                      <td>City,State Zip Code:</td>
                                      <td style="width:340px;"><asp:label id="lbl_zipcode" runat="server" CssClass="infaceText" Width="340px"></asp:label></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:10px"></td>	
                                      <td>SC:</td>
                                      <td style="width:200px;"><asp:label id="lbl_scname" runat="server" CssClass="infaceText" Width="200px"></asp:label></td>
                                      <td style="width:5px"></td>
                                      <td>PM:</td>
                                      <td style="width:340px;"><asp:label id="lbl_pmname" runat="server" CssClass="infaceText" Width="340px"></asp:label></td>
                                  </tr>
                                  <tr  class="tr_common">
                                      <td style="width:10px"></td>	
                                      <td>Attorney/Advocate:</td>
                                      <td class="td_unline" align="left" colspan=4>
                                          <asp:TextBox ID="Attorney" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox> 
                                      </td>
                                  </tr>
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:20px">
                         <td align="center"></td>
                    </tr>
                    <tr style="height:20px">
                         <td align="center"><b><U>Notification</U></b></td>
                    </tr>
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>NOA Notification Mailed:</td>
                                    <td class="td_unline" align="left" style="width:160px;">
	                                     <asp:TextBox ID="MailDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:55%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>    
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>NOA Notification Received by Family:</td>
                                    <td class="td_unline" align="left" style="width:160px;">
	                                     <asp:TextBox ID="ReceiveDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" onpropertychange="showaiddate();"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:50%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>      
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Service(s):</td>
                                    <td class="td_unline" align="left" style="width:660px;">
	                                      <asp:TextBox ID="Service" runat="server" CssClass="inface" Style="width: 660px" MaxLength="150"></asp:TextBox>                                    
	                                </td>	
	                                <td style="width:20px"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Department:</td>
                                    <td style="width:200px;" >
                                       <asp:DropDownList ID="department" runat="server" Width="180" onchange="NoConfirmExit();" OnSelectedIndexChanged="department_SelectedIndexChanged"
                                              AutoPostBack="true">
                                         <asp:ListItem Value=""></asp:ListItem>
                                         <asp:ListItem Value="Intake">Intake</asp:ListItem>
                                         <asp:ListItem Value="Early Start">Early Start</asp:ListItem>
                                         <asp:ListItem Value="DCAS">DCAS</asp:ListItem>
                                       </asp:DropDownList>                                 
	                                </td>	
	                                <td style="width:20px"></td>
	                                <td>Type of Service:</td>
                                    <td style="width:400px;" >
	                                   <asp:DropDownList ID="TypeService" runat="server" CssClass="inface" Width="380" >
                                       </asp:DropDownList>                                                          
	                                </td>	
                                </tr>  
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Fair Hearing Request Received:</td>
                                    <td class="td_unline" align="left" style="width:160px;">
	                                     <asp:TextBox ID="FairReceiveDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:50%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>         
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Fair Hearing Notification to OAH:</td>
                                    <td class="td_unline" align="left" style="width:160px;">
	                                     <asp:TextBox ID="FairQAHDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:50%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>        
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Aid Paid Pending Date:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="AidPendingDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:60%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>            
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Services Terminated:</td>
                                    <td>Yes<asp:CheckBox ID="ServiceTerminated_Yes" runat="server" Text=""  Width="40" /></td>
                                    <td>Date:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
                                      <asp:TextBox ID="ServiceTerminated_date" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
                                    </td>   
                                    <td style="width:40px"></td>                                   
                                    <td>No<asp:CheckBox ID="ServiceTerminated_No" runat="server" Text=""  Width="40" /></td>
	                                <td style="width:300px"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:20px">
                         <td align="center"></td>
                    </tr>
                    <tr style="height:20px">
                         <td align="center"><b><U>State Level Hearing</U></b></td>
                    </tr>  
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>OAH#:</td>
                                    <td class="td_unline" align="left" style="width:200px;" >
	                                      <asp:TextBox ID="OAH" runat="server" CssClass="inface" Style="width: 200px" MaxLength="20"></asp:TextBox>                                    
	                                </td>	
	                                <td style="width:65%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>   
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>State Level Fair Hearing Date:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="FairHearingDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" onpropertychange="showduedate();"></asp:TextBox>                                    
	                                </td>
	                                 <td>Time:</td>
	                                <td  class="td_unline" align="left" style="width:120px;" >
	                                     <asp:TextBox ID="FairHearingTime" runat="server" CssClass="inface" Style="width: 120px" MaxLength=5></asp:TextBox> 
	                                </td> 
	                                <td style="width:40%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>           
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Informal Meeting Date:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="InfoMeetDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td>Time:</td>
	                                <td  class="td_unline" align="left" style="width:120px;" >
	                                     <asp:TextBox ID="InfoMeetTime" runat="server" CssClass="inface" Style="width: 120px" MaxLength=5></asp:TextBox> 
	                                </td> 
	                                <td style="width:40%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>            
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Evidence Packet Due:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="EvidenceDueDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:60%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>      
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Evidence Packet Sent:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="EvidenceSentDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:60%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>   
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Continuance Requested:</td>
                                    <td>Yes<asp:CheckBox ID="ConRequest_Yes" runat="server" Text=""  Width="40" /></td>
                                    <td>No<asp:CheckBox ID="ConRequest_No" runat="server" Text=""  Width="40" /></td>
	                                <td style="width:60%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>   
                     <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Continuance Granted:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="ConGrantDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:60%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Decision:</td>
                                    <td>Won<asp:CheckBox ID="Decision_U" runat="server" Text=""  Width="40" /></td>
                                    <td>Lost<asp:CheckBox ID="Decision_D" runat="server" Text=""  Width="40" /></td>
	                                <td style="width:65%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>    
                    <tr style="height:20px">
                         <td >
                              <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;">  
                                     <tr  class="tr_common">
                                           <td style="width:20px"></td> 
                                           <td><asp:textbox id="DecisionMemo" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server"  Width="99%"  Height="80px"></asp:textbox></td>	                                     
	                                       <td style="width:20px"></td>
                                     </tr>
                              </table>
                         </td>
                      </tr> 
                    <tr style="height:20px">
                         <td align="center"></td>
                    </tr>
                    <tr style="height:20px">
                         <td align="center"><b><U>Resolution</U></b></td>
                    </tr>      
                    <tr style="height:20px">
                        <td>
                            <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;"> 
                                <tr  class="tr_common">
                                    <td style="width:20px"></td>	
                                    <td>Notice of Resolution Signed:</td>
                                    <td class="td_unline" align="left" style="width:160px;" >
	                                     <asp:TextBox ID="SignDate" runat="server" CssClass="inface" Style="width: 160px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>                                    
	                                </td> 
	                                <td style="width:50%"></td>
                                </tr>  
                            </table>
                        </td>
                    </tr>  
                    <tr style="height:20px">
                         <td >
                              <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%;">  
                                     <tr  class="tr_common">
                                           <td style="width:20px"></td> 
                                           <td><asp:textbox id="Resolution" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server"  Width="99%"  Height="80px"></asp:textbox></td>	                                     
	                                       <td style="width:20px"></td>
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
