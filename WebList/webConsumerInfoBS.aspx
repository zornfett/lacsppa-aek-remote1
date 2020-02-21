<%@ Page Language="c#" Inherits="Virweb2.WebList.webConsumerInfoBS" Codebehind="webConsumerInfoBS.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::General Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>         
    <script type="text/JavaScript">
    <!--    
    function print_click()
    {
       //PopupMessage(10);
   
       var entrykey=document.ConsumerInfo.entrykey.value.toString();
       var UserAct=document.ConsumerInfo.UserAct.value.toString();         
       winhref("PrintConsumerInfoBS.aspx?entrykey="+entrykey+"&UserAct="+UserAct,"PrintConsumerInfoBS");     
             
    }
    
    function sendemail_click()
    {
       var EmailAdd=document.Form101BS.c_email.value.toString();         
       //alert(EmailAdd);
       window.location.href="mailto:"+EmailAdd;
    }

    function ConfirmSave()
    {     
       if (confirm('Same last name and first name already exist, do you still want to save?'))
       {
          var mySaveSameName = document.getElementById(<%= "'" + SaveSameName.ClientID + "'" %>);        
          mySaveSameName.value = '1';
          window.document.Form101BS.submit(); 
          window.focus();   
       }
    }
    
    function ConfirmNew()
    {     
       if (confirm('Same last name and first name already exist, do you still want to add?'))
       {
          var myNewSameName = document.getElementById(<%= "'" + NewSameName.ClientID + "'" %>);        
          myNewSameName.value = '1';
          window.document.Form101BS.submit(); 
          window.focus();   
       }
    }

    function save_click() {
        return true;
    }

    function back_click() {
        if (Confirm_Page())
           document.location.replace('../webList/webConsumerList.aspx'); 
    }
    //-->
    </script>
</head>
<body id="body" runat="server">  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ConsumerInfo" method="post" runat="server">   
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_dtm" id="consumer_dtm" value="10" runat="server" />
    <input id="SaveSameName"  type="hidden" runat="server" value="0" />
    <input id="NewSameName"   type="hidden" runat="server" value="0" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_dtd" id="consumer_dtd" value="13" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="consumer_dty" id="consumer_dty" value="18" runat="server" />
    <div align="left" style="WIDTH:100%; ">
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr valign="middle" style="height:30px; background-color: #EAF4FF">
        <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save"
                OnClientClick="return save_click();" OnClick="btnEdit_Click" >
            </asp:ImageButton>
            <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save"
                OnClientClick="return save_click();" OnClick="btnAdd_Click" >
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
        <td align="left" width="60%">
            <asp:label id="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">Form101&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</asp:label>
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
        <td colspan="3" style="background-color:#137AC5"></td> <!-- #AAFFC4-->
      </tr>
    </table>  
    </div>

    <div id="maindiv" align="center" 
        style="position:relative;WIDTH:100%;overflow:auto;height:450px; top: 0px; left: 0px;">
                    <table class="table_maindiv" cellspacing="0" cellpadding="0">
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr>
                        <td colspan="4">
                          <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                          <tr class="tr_common">
                          <td style="width: 260px" align="right" class="td_label">
                                <b><asp:Label ID="l_c_attention" runat="server" Text="Property Name:" ToolTip="Property Name" ></asp:Label></b></td>
                          <td style="width: 5px"></td>   
                          <td style="width: 450px" class="td_unline" align="left" >
                                <asp:TextBox ID="c_attention" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                          </td>
                          </tr>
                          <tr style="height:5px;">
                             <td colspan="3">
                             </td>
                          </tr>
                          <tr class="tr_common">
                          <td style="width: 260px;" align="right" class="td_label">
                               <b><asp:Label ID="l_c_name_last" runat="server" Text="Legal Owner Name:"></asp:Label></b>
                          </td>
                          <td style="width: 5px"></td>                
                          <td style="width: 450px">
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr class="tr_common">
                                 <td class="td_unline" align="left" style="width: 205px">
                                  <asp:TextBox ID="c_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>                             
                                 <td style="width: 10px"></td>  
                                 <td class="td_unline" align="left"style="width: 205px">
                                  <asp:TextBox ID="c_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>     
                               </tr>   
                             </table>       
                          </td>
                          </tr>
                          <tr style="height:5px;">
                             <td colspan="3">
                             </td>
                          </tr>
                          <tr class="tr_common">
                          <td style="width: 260px;" align="right" class="td_label">
                               <b><asp:Label ID="l_c_name_aka_last" runat="server" Text="Property Owner for 11/2012:"></asp:Label></b>
                          </td>
                          <td style="width: 5px"></td>                
                          <td style="width: 450px">
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr class="tr_common">
                                 <td class="td_unline" align="left" style="width: 205px">
                                  <asp:TextBox ID="c_name_aka_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>                             
                                 <td style="width: 10px"></td>  
                                 <td class="td_unline" align="left"style="width: 205px">
                                  <asp:TextBox ID="c_name_aka_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>     
                               </tr>   
                             </table>       
                          </td>
                          </tr>
                          <tr style="height:5px;">
                             <td colspan="3">
                             </td>
                          </tr>
                          <tr class="tr_common">
                          <td style="width: 260px;" align="right" class="td_label">
                               <b><asp:Label ID="l_c_name_maiden_last" runat="server" Text="Owner-Contact Name:"></asp:Label></b>
                          </td>
                          <td style="width: 5px"></td>                
                          <td style="width: 450px">
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr class="tr_common">
                                 <td class="td_unline" align="left" style="width: 205px">
                                  <asp:TextBox ID="c_name_maiden_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>                             
                                 <td style="width: 10px"></td>  
                                 <td class="td_unline" align="left"style="width: 205px">
                                  <asp:TextBox ID="c_name_maiden_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                 </td>     
                               </tr>   
                             </table>       
                          </td>
                          </tr>
                          <tr style="height:5px;">
                             <td colspan="3">
                             </td>
                          </tr>
                          <tr class="tr_common"> 
                          <td align="right" class="td_label"  style="width: 260px">
                                <b><asp:Label ID="l_c_eye_color" runat="server" Text="Category:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="450">
                                <asp:DropDownList ID="c_eye_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="335" OnClick="DataChanged()" CssClass="infaceDropRead" Enabled="false">
                                </asp:DropDownList>
                          </td>
                          </tr>
                          <tr style="height:5px;">
                             <td colspan="3">
                             </td>
                          </tr>
                          <tr>
                          <td style="width: 260px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_status" runat="server" Text="Status:"></asp:Label></b>
                          </td>
                          <td style="width:5px">
                          </td>
                          <td align="left" width="450">
                              <asp:DropDownList ID="c_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   Width="335" OnClick="DataChanged()" CssClass="infaceDropRead" Enabled="false">
                              </asp:DropDownList>
                          </td>
                          </tr>
                          </table>
                        </td>
                        <td colspan="2" style="width: 305px;">
                                &nbsp;<asp:ImageButton ID="viewphoto" runat="server" 
                                    ImageUrl="ImageThumbeNail.aspx?height=120&width=120" 
                                    OnClientClick="popupDialogSmall('ConsumerIMG.aspx');"  tabindex="-1" />
                        </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="6" class="td_thicksepline">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common"> 
                          <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_marital_status" runat="server" Text="Contact Type:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300">
                                <asp:DropDownList ID="c_marital_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="250" OnClick="DataChanged()">
                                </asp:DropDownList>
                          </td>
                          <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_ethnicity" runat="server" Text="New Contact:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300">
                                <asp:DropDownList ID="c_ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" class="td_label" >
                              <b><asp:Label ID="l_c_cm_id" runat="server" Text="B.S. Agent:"></asp:Label></b>
                          </td>
                          <td style="width:5px">
                          </td>
                          <td align="left" width="300">
                              <asp:DropDownList ID="c_cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                   Width="250" OnClick="DataChanged();" >
                              </asp:DropDownList>
                          </td>
                          <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_language" runat="server" Text="Tier:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300">
                              <asp:DropDownList ID="c_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   Width="235" OnClick="DataChanged()">
                              </asp:DropDownList>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_initial_inquiry_date" runat="server" Text="B.S. Initial Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_initial_inquiry_date" runat="server" CssClass="inface" 
                                 onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_initial_inquiry_date" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="initial_inquiry_dt"></asp:CompareValidator>
                          </td>

                          <td style="width: 210px" align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_initial_interview_date" runat="server" Text="B.S. Last Contact Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_initial_interview_date" runat="server" CssClass="inface"
                                 onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_initial_interview_date" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="initial_interview_dt"></asp:CompareValidator>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_1" runat="server" Text="Total APNs :"></asp:Label></b></td>
                          <td  style="width: 5px">
                          </td>
                          <td align="left" width="300">
                              <asp:DropDownList ID="c_legal_status_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   Width="235" OnClick="DataChanged();" >
                              </asp:DropDownList>
                          </td>
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_mis" runat="server" Text="APN:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mis" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common"> 
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_offsite_location" runat="server" Text="Acq_Ref:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300">
                              <asp:DropDownList ID="c_offsite_location" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                  Width="235" OnClick="DataChanged()">
                              </asp:DropDownList>
                          </td>

                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_date07" runat="server" Text="Assigned Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_date07" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_date07" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date07_dt"></asp:CompareValidator>                                
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" class="td_label"  style="width: 210px">
                               <b><asp:Label ID="l_c_gender" runat="server" Text="WHW?:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300" >
                                <asp:DropDownList ID="c_gender" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" OnClick="DataChanged()">
                                </asp:DropDownList>
                          </td>
                          <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_hair_color" runat="server" Text="Occupancy:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300">
                              <asp:DropDownList ID="c_hair_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                   Width="235" OnClick="DataChanged()" >
                              </asp:DropDownList>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="6" class="td_thicksepline">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_2" runat="server" Text="Subj Prop_Street Address:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
						  <td class="td_unline" align="left" width="300">
                              <span style="float:left;" id="streetText">
                              <asp:TextBox ID="c_address_line_2" runat="server" CssClass="inface" MaxLength="30" width="210"></asp:TextBox>
                              </span>
                          </td>
                          <td colspan="3">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_city" runat="server" Text="City and State:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                           <table align="left" cellspacing="0" cellpadding="0" border="0">
                             <tr><td width="230" style="width:230px">
                             <span id="cityText">
                             <asp:TextBox ID="c_address_city" runat="server" CssClass="inface" Width="210" MaxLength="19" ></asp:TextBox>
                             </span>
                             </td>
                             <td width="70" style="width:70px">
                             <span id="stateText">
                             <asp:TextBox ID="c_address_state" runat="server" CssClass="inface" Width="30" MaxLength="2" ></asp:TextBox>
                             </span>  
                             </td></tr>
                           </table>
                          </td>
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_address_zip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300" id="Td1">
                                <asp:TextBox ID="c_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 ></asp:TextBox>                                
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text5" runat="server" Text="Appraiser's Name:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text5" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                          </td>
                          <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text10" runat="server" Text="FMV of Property: $"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text10" runat="server" CssClass="inface" Width="80" MaxLength="50" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_review_sar_date" runat="server" Text="Final Appraisal Issued Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_review_sar_date" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_review_sar_date" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_sar_dt"></asp:CompareValidator>
                          </td>
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text6" runat="server" Text="Purchase Price of Property: $"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text6" runat="server" CssClass="inface" Width="80" MaxLength="50" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_review_quarterly3_date" runat="server" Text="Term Sheet Signing Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_review_quarterly3_date" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_review_quarterly3_date" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_quarterly3_dt"></asp:CompareValidator>
                          </td>
                          <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text11" runat="server" Text="Moving/Relocation Costs: $"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text11" runat="server" CssClass="inface" Width="80" MaxLength="50" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_review_quarterly1_date" runat="server" Text="PSA Signing Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_review_quarterly1_date" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_review_quarterly1_date" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_quarterly1_dt"></asp:CompareValidator>
                          </td>
                          <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text12" runat="server" Text="Other Costs: $"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text12" runat="server" CssClass="inface" Width="80" MaxLength="50" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_date10" runat="server" Text="Escrow Opening Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_date10" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_date10" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date10_dt"></asp:CompareValidator>
                          </td>                            
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_qol" runat="server" Text="Tenant Costs: $"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_qol" runat="server" CssClass="inface" Width="80" MaxLength="15" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_date12" runat="server" Text="Property Close Date:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_date12" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                              <asp:CompareValidator ControlToValidate="c_date12" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date12_dt"></asp:CompareValidator>
                          </td>
                          <td colspan="3">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="6" class="td_thicksepline">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label">
                              <b><asp:Label ID="l_c_mailing_address_line_2" runat="server" Text="Owner Mailing Address:"></asp:Label></b></td>
                          <td width="5" >
                          </td>
					      <td class="td_unline" align="left" width="300">
                              <span style="float:left;" id="Span1">
                              <asp:TextBox ID="c_mailing_address_line_2" runat="server" CssClass="inface" MaxLength="30" width="210"></asp:TextBox>
                              </span>
                          </td>
                          <td colspan="3">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_mailing_address_city" runat="server" Text="City and State:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                           <table align="left" cellspacing="0" cellpadding="0" border="0">
                             <tr><td width="230" style="width:230px">
                             <span id="Span3">
                             <asp:TextBox ID="c_mailing_address_city" runat="server" CssClass="inface" Width="210" MaxLength="19" ></asp:TextBox>
                             </span>
                             </td>
                             <td width="70" style="width:70px">
                             <span id="Span4">
                             <asp:TextBox ID="c_mailing_address_state" runat="server" CssClass="inface" Width="30" MaxLength="2" ></asp:TextBox>
                             </span>  
                             </td></tr>
                           </table>
                          </td>
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_mailing_address_zip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300" id="Td2">
                              <asp:TextBox ID="c_mailing_address_zip" runat="server" CssClass="inface" Width="80" MaxLength=10 ></asp:TextBox>                                
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label">
                              <b><asp:Label ID="l_c_phone_1" runat="server" Text="Owner Phone:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td width="300">
                              <table align="left" cellspacing="0" cellpadding="0" border="0">
                                 <tr>
                                   <td align="center" width="10px">(</td>
                                   <td class="td_unline" width="30px">
                                      <asp:TextBox ID="c_phone_1_1" runat="server" CssClass="inface" MaxLength="3" 
                                       onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_2);"></asp:TextBox>
                                   </td>
                                   <td align="center" width="15px">) </td>
                                   <td class="td_unline" width="30px">
                                      <asp:TextBox ID="c_phone_1_2" runat="server" CssClass="inface" MaxLength="3"
                                      onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_3);"></asp:TextBox>
                                   </td>
                                   <td align="center" width="10px">-</td>
                                   <td class="td_unline" width="40px">
                                      <asp:TextBox ID="c_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                   </td>
                                 </tr>  
                              </table>    
                          </td>
                          <td style="width: 210px;" align="right" width="210" class="td_label">
                              <b><asp:Label ID="l_c_phone_2" runat="server" Text="Owner Cell:"></asp:Label></b>
                          </td>
                          <td width="5"  style="height: 20px">
                          </td>
                          <td width="300">
                              <table align="left" cellspacing="0" cellpadding="0" border="0">
                                 <tr>
                                   <td align="center" width="10px">(</td>
                                   <td class="td_unline" width="30px">
                                      <asp:TextBox ID="c_phone_2_1" runat="server" CssClass="inface" MaxLength="3"
                                      onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_2);"></asp:TextBox>
                                   </td>
                                   <td align="center" width="15px">) </td>
                                   <td class="td_unline" width="30px">
                                      <asp:TextBox ID="c_phone_2_2" runat="server" CssClass="inface" MaxLength="3"
                                      onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_3);"></asp:TextBox>
                                   </td>
                                   <td align="center" width="10px">-</td>
                                   <td class="td_unline" width="40px">
                                      <asp:TextBox ID="c_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                   </td>
                                 </tr>  
                              </table>    
                          </td>                      
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 183px" align="right" width="183" class="td_label" >
                              <b><asp:Label ID="l_c_email" runat="server" Text="Email:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td colspan="4" class="td_unline" align="left">
                              <asp:TextBox ID="c_email" runat="server" CssClass="inface" MaxLength=45 Width="380px"></asp:TextBox>
                             <input type="button" id="btnSendEmail" name="btnSendEmail" value="SendEmail" style="width:80px;" class="buttonbluestyle" 
                                     onclick="javascript:sendemail_click();" /> 
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_comment_1" runat="server" Text="Owner Notes:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" colspan="4">
                              <asp:TextBox ID="c_comment_1" runat="server" CssClass="inface" MaxLength="60" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="6" class="td_thicksepline">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                             <b><asp:Label ID="l_c_box_number" runat="server" Text="Grossed Area:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_box_number" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                          </td>
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_box_2" runat="server" Text="Living Area:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_box_2" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                          </td>
                         </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_box_3" runat="server" Text="Year Built:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_box_3" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                          </td>
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_box_4" runat="server" Text="Total Acres:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_box_4" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" class="td_label"  style="width: 210px">
                              <b><asp:Label ID="l_c_physical_county" runat="server" Text="County Use:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300" id="countryText">
                              <asp:DropDownList ID="c_physical_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                       Width="235" OnClick="DataChanged()">
                              </asp:DropDownList>
                          </td>
                          <td colspan="3"></td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_comment_2" runat="server" Text="B. S. Notes:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" colspan="4">
                              <asp:TextBox ID="c_comment_2" runat="server" CssClass="inface" MaxLength="60" ></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="6" class="td_thicksepline">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text1" runat="server" Text="Current Debt:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text1" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text7" runat="server" Text="Tenant issues:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text7" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text2" runat="server" Text="Tenant LastName:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text2" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text3" runat="server" Text="Tenant FirstName:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text3" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_phone_3" runat="server" Text="Tenant Phone:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <table align="left" cellspacing="0" cellpadding="0" border="0">
                                 <tr>
                                   <td align="center" width="10px">(</td>
                                   <td class="td_unline" width="30px">
                                      <asp:TextBox ID="c_phone_3_1" runat="server" CssClass="inface" MaxLength="3"
                                      onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_2);"></asp:TextBox>
                                   </td>
                                   <td align="center" width="15px">) </td>
                                   <td class="td_unline" width="30px">
                                      <asp:TextBox ID="c_phone_3_2" runat="server" CssClass="inface" MaxLength="3"
                                      onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_3);"></asp:TextBox>
                                   </td>
                                   <td align="center" width="10px">-</td>
                                   <td class="td_unline" width="40px">
                                      <asp:TextBox ID="c_phone_3_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                   </td>
                                 </tr>  
                              </table>    
                          </td>
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text4" runat="server" Text="Tenant Email:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text8" runat="server" Text="Lease Type:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text8" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                          <td align="right" width="210" class="td_label" >
                              <b><asp:Label ID="l_c_text9" runat="server" Text="Lease Expiration:"></asp:Label></b>
                          </td>
                          <td width="5" >
                          </td>
                          <td class="td_unline" align="left" width="300">
                              <asp:TextBox ID="c_text9" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr>
                          <td colspan="6" class="td_thicksepline">
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                    </table>

                 <table id="table_appraisal" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 98%" >
                   <tr>
                        <td height="5">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td align="center" class="td_label">
                          <b><asp:Label ID="TitleappraisalDetail" runat="server" Text="Transaction Details"></asp:Label></b>
                        </td>
                   </tr>
                   <tr>
                        <td height="5">
                        </td>
                   </tr>
                   <tr>
                     <td>
                        <table class="tabel_inside">
                          <tr class="tr_common">
                            <td style="width: 180px" align="right" valign="top" class="td_label">
                              <b>Next Steps:</b>
                            </td>
                            <td style="width: 5px"></td> 
                            <td align="left" style="width: 840px">
                              <asp:TextBox ID="txd_next_step" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                   runat="server" width="99%" Height="80" ReadOnly=true></asp:TextBox>
                            </td>
                          </tr>
                        </table>
                     </td>
                   </tr>
                   <tr>
                        <td height="5">
                        </td>
                   </tr>
                   <tr>
                        <td>
                            <table class="tabel_inside">
				              <tr class="tr_common">
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Appraised Value:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_appraisal_value" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Property SqFt:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_property_sqft" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Car Storage:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_car_storage" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 120px" align="right" class="td_label">
                                  <b>Age:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_age" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                              <tr class="tr_common">
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Appraised Date:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_appraisal_date" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Guest Home SqFt:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_guess_sqft" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Covered Area:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_covered_area" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 120px" align="right" class="td_label">
                                  <b>Pool:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_pool" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                              <tr class="tr_common">
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Property Type:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_property_type" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>BR/BA:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_brba" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Condition:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_condition" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 120px" align="right" class="td_label">
                                  <b>Landscaping:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_landscaping" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                            </table>
                        </td>
                   </tr>
                   <tr>
                        <td>
                            <table class="tabel_inside">
                              <tr class="tr_common">
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Offer Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_offer_amt" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Additional Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_offer_add" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 60px" align="right" class="td_label">
                                  <b>Date:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px;">
                                  <asp:Label ID="txd_offer_date" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 150px" align="right" class="td_label">
                                  <b>Offer From:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td align="left" style="width: 120px;">
                                 <asp:dropdownlist id="txd_offer_from" runat="server" Width="110px" readonly=true>
                                    <asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="1">PG&E</asp:ListItem>
								    <asp:ListItem Value="2">SELLER</asp:ListItem>
				                 </asp:dropdownlist>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                              <tr class="tr_common">
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Counter Offer Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_counter_amt" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Additional Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:Label ID="txd_counter_add" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 60px" align="right" class="td_label">
                                  <b>Date:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px;">
                                  <asp:Label ID="txd_counter_date" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 150px" align="right" class="td_label">
                                  <b>Counter Offer From:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td align="left" style="width: 120px;">
                                 <asp:dropdownlist id="txd_counter_from" runat="server" Width="110px" readonly=true>
                                    <asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="1">PG&E</asp:ListItem>
								    <asp:ListItem Value="2">SELLER</asp:ListItem>
				                 </asp:dropdownlist>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                              <tr class="tr_common">
                                <td style="width: 180px" align="right" valign="top" class="td_label">
                                  <b>Meeting Details:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td colspan="13" class="td_unline" align="left">
                                  <asp:TextBox ID="txd_other" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" width="99%" Height="80" ReadOnly=true></asp:TextBox>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                              <tr class="tr_common">
                                <td style="width: 180px" align="right" valign="top" class="td_label">
                                  <b>Contact Info:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td colspan="13" class="td_unline" align="left">
                                  <asp:TextBox ID="txd_contact_info" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" width="99%" Height="80" ReadOnly=true></asp:TextBox>
                                </td>
                              </tr>
                              <tr>
                                  <td colspan="15" height="5">
                                  </td>
                              </tr>
                              <tr class="tr_common">
                                <td style="width: 180px" align="right" valign="top" class="td_label">
                                  <b>Property Info:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td colspan="13" class="td_unline" align="left">
                                  <asp:TextBox ID="txd_property_info" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" width="99%" Height="80" ReadOnly=true></asp:TextBox>
                                </td>
                              </tr>
                            </table>
                        </td>
                   </tr>
            </table> 
    </div>
    </form>
</body>
</html>
