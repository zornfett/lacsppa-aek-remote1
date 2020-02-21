<%@ Page Language="C#" Inherits="Virweb2.FormList.Form101InfoPRNT" Codebehind="Form101InfoPRNT.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Intake Form:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
    <!--
       function print_click() 
       {
           NoConfirmExit();
           var key = document.getElementById("keyid").value.toString();
           var UserAct = document.getElementById("UserAct").value.toString();
           winhref("PrintForm101PRNT.aspx?id=" + key + "&UserAct=" + UserAct, "PrintForm101InfoPRNT");     
       }

       function submit_click()
       {
         try {
           return confirm("Do you want to submit this form? It will be readonly after submit.");
         }
         catch (err) 
         {
           alert("The system is busy, please try again"); 
         }
       }
         
       function submitcalendar()
       {
           document.getElementById("<%=submitdob.ClientID %>").value="1";
           document.form101.submit();
       }

       function MatchConsumer(mis)
       {
           Div_Search.style.display='none';
           document.getElementById("CloseSearchFlag").value="0";
           document.getElementById("<%=submitmis.ClientID %>").value=mis;
           document.form101.submit();
       }
       
       function display_consumerinfo(c_key)
       {      
          var useractname= document.getElementById("useractname").value;
          window.showModalDialog("webConsumerInfo.aspx?c_key="+c_key.toString(), self, 'status:no;dialogWidth:1100px;dialogHeight:750px;help:yes;scroll:yes;resizable:yes;maximize:yes;minimize:yes;');   
       }
       
       function earlystart_click(click_type)
       {
           if (click_type=="1") //earlystart_no
           {
               if (document.getElementById("earlystart_no").checked)
               {
                    if (document.getElementById("earlystart_yes")!=null)
                    {
                        document.getElementById("earlystart_yes").checked=false;
                        DisableEarlyStart();
                    }
                    EnableDevelop();
               }
               else
               {
                    if (document.getElementById("earlystart_yes")!=null)
                    {
                        document.getElementById("earlystart_yes").checked=true;
                        EnableEarlyStart();
                    }
                    DisableDevelop();
               }
           }
           else if (click_type=="2") //earlystart_yes
           {
               if (document.getElementById("earlystart_yes").checked)
               {
                    if (document.getElementById("earlystart_no")!=null)
                    {
                        document.getElementById("earlystart_no").checked=false;
                        DisableDevelop();
                    }
                    EnableEarlyStart();
               }
               else
               {
                    if (document.getElementById("earlystart_no")!=null)
                    { 
                        document.getElementById("earlystart_no").checked=true;
                        EnableDevelop();
                    }
                    DisableEarlyStart();
               }
           }           
      }
       
      function getObj(name)
      {
          if (document.getElementById) // test if browser supports document.getElementById
          {
              this.obj = document.getElementById(name);
              this.style = document.getElementById(name).style;
              this.parent = document.getElementById(name).parentNode;
          }
          else if (document.all) // test if browser supports document.all
          {
              this.obj = document.all[name];
              this.style = document.all[name].style;
              this.parent = document.all[name].parentElement;
          }
          else if (document.layers) // test if browser supports document.layers
          {
             this.obj = document.layers[name];
             this.style = document.layers[name].style;
             this.parent = document.layers[name].parentNode;
         }
       }
       
       function EnableDevelop()
       {          
           var iq = new getObj('iq');
           iq.obj.disabled = false;
           iq.parent.disabled = false;
           document.getElementById("Iq_desc").disabled=false;
           var cp = new getObj('cp');
           cp.obj.disabled = false;
           cp.parent.disabled = false;
           document.getElementById("cp_type").disabled=false;    
           var epilepsy = new getObj('epilepsy');
           epilepsy.obj.disabled = false;
           epilepsy.parent.disabled = false;
           document.getElementById("epilepsy_freq").disabled=false;       
           var autism = new getObj('autism');
           autism.obj.disabled = false;
           autism.parent.disabled = false;
           document.getElementById("autism_by").disabled=false;    
           var cder_other = new getObj('cder_other');
           cder_other.obj.disabled = false;
           cder_other.parent.disabled = false;
           document.getElementById("cder_other_desc").disabled=false;   
           document.getElementById("age_onset").disabled=false;  
           document.getElementById("medic").disabled=false;  
           document.getElementById("psy_his").disabled=false;  
           document.getElementById("diagnosis").disabled=false;      
       }
       
       function DisableDevelop()
       {          
           var iq = new getObj('iq');
           iq.obj.disabled = true;
           iq.parent.disabled = true;
           iq.obj.checked=false;
           document.getElementById("Iq_desc").value="";
           document.getElementById("Iq_desc").disabled=true;
           var cp = new getObj('cp');
           cp.obj.disabled = true;
           cp.parent.disabled = true;
           cp.obj.checked=false;
           document.getElementById("cp_type").value="";
           document.getElementById("cp_type").disabled=true;      
           var epilepsy = new getObj('epilepsy');
           epilepsy.obj.disabled = true;
           epilepsy.parent.disabled = true;
           epilepsy.obj.checked=false;
           document.getElementById("epilepsy_freq").value="";
           document.getElementById("epilepsy_freq").disabled=true;       
           var autism = new getObj('autism');
           autism.obj.disabled = true;
           autism.parent.disabled = true;
           autism.obj.checked=false;
           document.getElementById("autism_by").value="";
           document.getElementById("autism_by").disabled=true;    
           var cder_other = new getObj('cder_other');
           cder_other.obj.disabled = true;
           cder_other.parent.disabled = true;
           cder_other.obj.checked=false;
           document.getElementById("cder_other_desc").value="";
           document.getElementById("cder_other_desc").disabled=true;    
           document.getElementById("age_onset").value="";
           document.getElementById("age_onset").disabled=true;  
           document.getElementById("medic").value="";
           document.getElementById("medic").disabled=true;  
           document.getElementById("psy_his").value="";
           document.getElementById("psy_his").disabled=true;  
           document.getElementById("diagnosis").value="";
           document.getElementById("diagnosis").disabled=true;        
       }
       
       function EnableEarlyStart()
       {
           var esrk = new getObj('esrk');
           esrk.obj.disabled = false;
           esrk.parent.disabled = false;
           document.getElementById("Esrk_dueto").disabled=false;
           var dpdy = new getObj('dpdy');
           dpdy.obj.disabled = false;
           dpdy.parent.disabled = false;
            var gm = new getObj('gm');
           gm.obj.disabled = false;
           gm.parent.disabled = false;
            var fm = new getObj('fm');
           fm.obj.disabled = false;
           fm.parent.disabled = false;
            var sp = new getObj('sp');
           sp.obj.disabled = false;
           sp.parent.disabled = false;
           var dpdy_other = new getObj('dpdy_other');
           dpdy_other.obj.disabled = false;
           dpdy_other.parent.disabled = false;
           document.getElementById("dpdy_other_desc").disabled=false;  
           var hrd = new getObj('hrd');
           hrd.obj.disabled = false;
           hrd.parent.disabled = false;
           document.getElementById("Hrd_dueto").disabled=false; 
           document.getElementById("gest").disabled=false; 
           document.getElementById("wgt").disabled=false; 
           document.getElementById("wgt_unit").disabled=false; 
           document.getElementById("apgar").disabled=false;     
           var Low_incid = new getObj('Low_incid');
           Low_incid.obj.disabled = false;
           Low_incid.parent.disabled = false;   
           var visual = new getObj('visual');
           visual.obj.disabled = false;
           visual.parent.disabled = false;     
           var hearing = new getObj('hearing');
           hearing.obj.disabled = false;
           hearing.parent.disabled = false; 
           var ortho = new getObj('ortho');
           ortho.obj.disabled = false;
           ortho.parent.disabled = false; 
           document.getElementById("consid_other").disabled=false;        
           
           var Dcfs_Dependent_yes = new getObj('Dcfs_Dependent_yes');
           Dcfs_Dependent_yes.obj.disabled = false;
           Dcfs_Dependent_yes.parent.disabled = false; 
           var Dcfs_Dependent_no = new getObj('Dcfs_Dependent_no');
           Dcfs_Dependent_no.obj.disabled = false;
           Dcfs_Dependent_no.parent.disabled = false; 
           var Dcfs_Adopting_yes = new getObj('Dcfs_Adopting_yes');
           Dcfs_Adopting_yes.obj.disabled = false;
           Dcfs_Adopting_yes.parent.disabled = false; 
           var Dcfs_Adopting_no = new getObj('Dcfs_Adopting_no');
           Dcfs_Adopting_no.obj.disabled = false;
           Dcfs_Adopting_no.parent.disabled = false; 
           var Dcfs_EducRight_NA = new getObj('Dcfs_EducRight_NA');
           Dcfs_EducRight_NA.obj.disabled = false;
           Dcfs_EducRight_NA.parent.disabled = false; 
           var Dcfs_EducRight_YES = new getObj('Dcfs_EducRight_YES');
           Dcfs_EducRight_YES.obj.disabled = false;
           Dcfs_EducRight_YES.parent.disabled = false; 
           var Dcfs_EducRight_NO = new getObj('Dcfs_EducRight_NO');
           Dcfs_EducRight_NO.obj.disabled = false;
           Dcfs_EducRight_NO.parent.disabled = false; 
           var Dcfs_EducRight_Unknow = new getObj('Dcfs_EducRight_Unknow');
           Dcfs_EducRight_Unknow.obj.disabled = false;
           Dcfs_EducRight_Unknow.parent.disabled = false; 
           
           document.getElementById("Dcfs_ProvideName").disabled=false;  
           document.getElementById("Dcfs_ProvidePhone").disabled=false;  
           document.getElementById("Dcfs_ProvideAddress").disabled=false;  
           var Dcfs_CSW_yes = new getObj('Dcfs_CSW_yes');
           Dcfs_CSW_yes.obj.disabled = false;
           Dcfs_CSW_yes.parent.disabled = false; 
           var Dcfs_CSW_no = new getObj('Dcfs_CSW_no');
           Dcfs_CSW_no.obj.disabled = false;
           Dcfs_CSW_no.parent.disabled = false; 
           document.getElementById("Pediatrician").disabled=false;  
           document.getElementById("Ped_Address").disabled=false;  
           document.getElementById("Ped_phone").disabled=false;  
           document.getElementById("Ped_fax").disabled=false;  
           var Ped_Medication_yes = new getObj('Ped_Medication_yes');
           Ped_Medication_yes.obj.disabled = false;
           Ped_Medication_yes.parent.disabled = false; 
           var Ped_Medication_no = new getObj('Ped_Medication_no');
           Ped_Medication_no.obj.disabled = false;
           Ped_Medication_no.parent.disabled = false; 
           document.getElementById("Ped_Reason").disabled=false;  
           document.getElementById("Lang_response").disabled=false;  
           document.getElementById("Lang_communt").disabled=false;  
           document.getElementById("Lang_words").disabled=false;  
           document.getElementById("Lang_speech").disabled=false;  
           document.getElementById("Lang_firstword").disabled=false; 
           document.getElementById("Lang_understand").disabled=false;
       }

       function DisableEarlyStart()
       {
           var esrk = new getObj('esrk');
           esrk.obj.disabled = true;
           esrk.parent.disabled = true;
           esrk.obj.checked=false;
           document.getElementById("Esrk_dueto").value="";
           document.getElementById("Esrk_dueto").disabled=true;
           var dpdy = new getObj('dpdy');
           dpdy.obj.disabled = true;
           dpdy.parent.disabled = true;
           dpdy.obj.checked=false;
           var gm = new getObj('gm');
           gm.obj.disabled = true;
           gm.parent.disabled = true;
           gm.obj.checked=false;
            var fm = new getObj('fm');
           fm.obj.disabled = true;
           fm.parent.disabled = true;
           fm.obj.checked=false;
           var sp = new getObj('sp');
           sp.obj.disabled = true;
           sp.parent.disabled = true;
           sp.obj.checked=false;
           var dpdy_other = new getObj('dpdy_other');
           dpdy_other.obj.disabled = true;
           dpdy_other.parent.disabled = true;
           dpdy_other.obj.checked=false;
           document.getElementById("dpdy_other_desc").value="";
           document.getElementById("dpdy_other_desc").disabled=true;  
           var hrd = new getObj('hrd');
           hrd.obj.disabled = true;
           hrd.parent.disabled = true;
           hrd.obj.checked=false;
           document.getElementById("Hrd_dueto").value="";
           document.getElementById("Hrd_dueto").disabled=true; 
           document.getElementById("gest").value="";
           document.getElementById("gest").disabled=true; 
           document.getElementById("wgt").value="";
           document.getElementById("wgt").disabled=true; 
           document.getElementById("wgt_unit").disabled=true; 
           document.getElementById("apgar").value="";
           document.getElementById("apgar").disabled=true;     
           var Low_incid = new getObj('Low_incid');
           Low_incid.obj.disabled = true;
           Low_incid.parent.disabled = true;   
           Low_incid.obj.checked=false;
           var visual = new getObj('visual');
           visual.obj.disabled = true;
           visual.parent.disabled = true;    
           visual.obj.checked=false; 
           var hearing = new getObj('hearing');
           hearing.obj.disabled = true;
           hearing.parent.disabled = true; 
           hearing.obj.checked=false; 
           var ortho = new getObj('ortho');
           ortho.obj.disabled = true;
           ortho.parent.disabled = true; 
           ortho.obj.checked=false; 
           document.getElementById("consid_other").value="";
           document.getElementById("consid_other").disabled=true;  
           var Dcfs_Dependent_yes = new getObj('Dcfs_Dependent_yes');
           Dcfs_Dependent_yes.obj.disabled = true;
           Dcfs_Dependent_yes.parent.disabled = true; 
           Dcfs_Dependent_yes.obj.checked=false;  
           var Dcfs_Dependent_no = new getObj('Dcfs_Dependent_no');
           Dcfs_Dependent_no.obj.disabled = true;
           Dcfs_Dependent_no.parent.disabled = true; 
           Dcfs_Dependent_no.obj.checked=false;   
           var Dcfs_Adopting_yes = new getObj('Dcfs_Adopting_yes');
           Dcfs_Adopting_yes.obj.disabled = true;
           Dcfs_Adopting_yes.parent.disabled = true; 
           Dcfs_Adopting_yes.obj.checked=false;  
           var Dcfs_Adopting_no = new getObj('Dcfs_Adopting_no');
           Dcfs_Adopting_no.obj.disabled = true;
           Dcfs_Adopting_no.parent.disabled = true; 
           Dcfs_Adopting_no.obj.checked=false; 
           var Dcfs_EducRight_NA = new getObj('Dcfs_EducRight_NA');
           Dcfs_EducRight_NA.obj.disabled = true;
           Dcfs_EducRight_NA.parent.disabled = true; 
           Dcfs_EducRight_NA.obj.checked=false; 
           var Dcfs_EducRight_YES = new getObj('Dcfs_EducRight_YES');
           Dcfs_EducRight_YES.obj.disabled = true;
           Dcfs_EducRight_YES.parent.disabled = true; 
           Dcfs_EducRight_YES.obj.checked=false; 
           var Dcfs_EducRight_NO = new getObj('Dcfs_EducRight_NO');
           Dcfs_EducRight_NO.obj.disabled = true;
           Dcfs_EducRight_NO.parent.disabled = true; 
           Dcfs_EducRight_NO.obj.checked=false; 
           var Dcfs_EducRight_Unknow = new getObj('Dcfs_EducRight_Unknow');
           Dcfs_EducRight_Unknow.obj.disabled = true;
           Dcfs_EducRight_Unknow.parent.disabled = true; 
           Dcfs_EducRight_Unknow.obj.checked=false; 
           
           document.getElementById("Dcfs_ProvideName").value="";
           document.getElementById("Dcfs_ProvideName").disabled=true;  
           document.getElementById("Dcfs_ProvidePhone").value="";
           document.getElementById("Dcfs_ProvidePhone").disabled=true;  
           document.getElementById("Dcfs_ProvideAddress").value="";
           document.getElementById("Dcfs_ProvideAddress").disabled=true;  
           var Dcfs_CSW_yes = new getObj('Dcfs_CSW_yes');
           Dcfs_CSW_yes.obj.disabled = true;
           Dcfs_CSW_yes.parent.disabled = true; 
           Dcfs_CSW_yes.obj.checked=false;
           var Dcfs_CSW_no = new getObj('Dcfs_CSW_no');
           Dcfs_CSW_no.obj.disabled = true;
           Dcfs_CSW_no.parent.disabled = true; 
           Dcfs_CSW_no.obj.checked=false;
           document.getElementById("Pediatrician").value="";
           document.getElementById("Pediatrician").disabled=true;  
           document.getElementById("Ped_Address").value="";
           document.getElementById("Ped_Address").disabled=true;  
           document.getElementById("Ped_phone").value="";
           document.getElementById("Ped_phone").disabled=true;  
           document.getElementById("Ped_fax").value="";
           document.getElementById("Ped_fax").disabled=true;  
           var Ped_Medication_yes = new getObj('Ped_Medication_yes');
           Ped_Medication_yes.obj.disabled = true;
           Ped_Medication_yes.parent.disabled = true; 
           Ped_Medication_yes.obj.checked=false;
           var Ped_Medication_no = new getObj('Ped_Medication_no');
           Ped_Medication_no.obj.disabled = true;
           Ped_Medication_no.parent.disabled = true; 
           Ped_Medication_no.obj.checked=false;
           document.getElementById("Ped_Reason").value="";
           document.getElementById("Ped_Reason").disabled=true;  
           
           document.getElementById("Lang_response").value="";
           document.getElementById("Lang_response").disabled=true;  
           document.getElementById("Lang_communt").value="";
           document.getElementById("Lang_communt").disabled=true;  
           document.getElementById("Lang_words").value="";
           document.getElementById("Lang_words").disabled=true;  
           document.getElementById("Lang_speech").value="";
           document.getElementById("Lang_speech").disabled=true;  
           document.getElementById("Lang_firstword").value="";
           document.getElementById("Lang_firstword").disabled=true; 
           document.getElementById("Lang_understand").value="";
           document.getElementById("Lang_understand").disabled=true; 
       }
       
       function Get_CurrentAddress(addressflag)
       {
           switch(addressflag)
	       {	 
	         case "0":	 //mail address (as current address)        
                document.getElementById("mail_address_line_1").value=document.getElementById("address_line_1").value;
                document.getElementById("mail_address_city").value=document.getElementById("address_city").value;
                document.getElementById("mail_address_state").value=document.getElementById("address_state").value;
                document.getElementById("mail_address_zip").value=document.getElementById("address_zip").value;    
                break;
             case "1": //relationship1 address(as current address)
                document.getElementById("contact1_address_line_1").value=document.getElementById("address_line_1").value;
                document.getElementById("contact1_address_city").value=document.getElementById("address_city").value;
                document.getElementById("contact1_address_state").value=document.getElementById("address_state").value;
                document.getElementById("contact1_address_zip").value=document.getElementById("address_zip").value;    
                break;
            case "2": //relationship1 address(as mail address)
                document.getElementById("contact1_address_line_1").value=document.getElementById("mail_address_line_1").value;
                document.getElementById("contact1_address_city").value=document.getElementById("mail_address_city").value;
                document.getElementById("contact1_address_state").value=document.getElementById("mail_address_state").value;
                document.getElementById("contact1_address_zip").value=document.getElementById("mail_address_zip").value;    
                break;  
            case "3": //relationship2 address(as current address)
                document.getElementById("contact2_address_line_1").value=document.getElementById("address_line_1").value;
                document.getElementById("contact2_address_city").value=document.getElementById("address_city").value;
                document.getElementById("contact2_address_state").value=document.getElementById("address_state").value;
                document.getElementById("contact2_address_zip").value=document.getElementById("address_zip").value;    
                break;
            case "4": //relationship2 address(as mail address)
                document.getElementById("contact2_address_line_1").value=document.getElementById("mail_address_line_1").value;
                document.getElementById("contact2_address_city").value=document.getElementById("mail_address_city").value;
                document.getElementById("contact2_address_state").value=document.getElementById("mail_address_state").value;
                document.getElementById("contact2_address_zip").value=document.getElementById("mail_address_zip").value;    
                break;                            
           }       
       }
       function window_onload()
       {
          var closeflag=document.getElementById("CloseSearchFlag").value;
          if (closeflag=="0")
          {
             Div_Search.style.display='none';
          }
          else
          {
             Div_Search.style.display='';
          }
     }

     function save_click() {
         NoConfirmExit();
         return true;
     }

     function back_click() {
         if (Confirm_Page())
             document.location.replace('../FormList/Form101List.aspx');
     }
    //-->
    </script>
    <style type="text/css">
        #body
        {
            height: 885px;
        }
    </style>
</head>
<body id="body" runat="server"  >
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form101" method="post" runat="server">
      <input id="NoConfirm" type="hidden" value="0" />
      <input type="hidden" name="CloseSearchFlag" id="CloseSearchFlag" value="0" runat="server" /> 
      <input type="hidden" name="submitdob" id="submitdob" value="" runat="server" /> 
      <input type="hidden" name="submitmis" id="submitmis" value="" runat="server" />   
      <input type="hidden" name="ref_screener" id="ref_screener" value="" runat="server" />
      <input type="hidden" name="ServSC" id="ServSC" value="" runat="server" />
      <input type="hidden" name="createdate" id="createdate" value="" runat="server" />
      <input type="hidden" name="earlystart" id="earlystart" value="" runat="server" />
      <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
      <input type="hidden" name="keyid" id="keyid" runat="server" />
      <input type="hidden" name="useractname" id="useractname" value="" runat="server" /> 
      <div align="center" style="WIDTH:100%">  
	  <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	    <tr style="height: 30px; background-color: #EAF4FF">
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
            <asp:ImageButton ID="btnSubmit" runat="server" AlternateText="Submit" Visible="false" Style="width: 25px;height:25px"
                ImageURL="../img/reauth.jpg" ToolTip="Submit" 
                OnClientClick="return submit_click();" OnClick="btnSubmit_Click" >
            </asp:ImageButton>
            &nbsp;   
            <input type="image" id="btnPrint" runat="server" alt="Print" Visible="False" style="width: 25px;height:25px"  
                src="../img/print.ico" title="Print"
                onclick="javascript:print_click();return false;" />             
            &nbsp;
            <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                src="../img/back.ico" title="Back"
                onclick="javascript:back_click();return false;" />        
        </td>
        <td align="left" width="60%">
            <asp:label id="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">Form101 Info</asp:label>
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
      <div id="Div_Search" style="position: relative; width: 100%; height: 300px; display:none;overflow: auto;">
         <br />
         <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
               <tr>
                    <td style="width:30px;"></td>
                    <td style="width:60%">
                        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
                             <tr>
                                <td valign="top"><b>SEARCH BY: </b></td>
                                <td> <asp:DropDownList ID="SearchBy" runat="server" CssClass="inface" Width="120px"   OnSelectedIndexChanged="SearchBy_SelectedIndexChanged" AutoPostBack="true"> 
                                       <asp:ListItem Value="0" Selected="True"  >Name and Dob</asp:ListItem>                                           
                                       <asp:ListItem Value="1">Name</asp:ListItem>
                                       <asp:ListItem Value="2">Dob</asp:ListItem>
                                      <asp:ListItem Value="3">Phone number</asp:ListItem>                                                                             
                                     </asp:DropDownList>
                                 </td>                                     
                             </tr>
                             <tr><td colspan="2"><asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">SEARCH RESULT</asp:label> </td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                      <div id="Div1" style="position: relative; width: 100%; height: 200px;overflow: auto;">
                                         <asp:datagrid id="dg_grid1" runat="server"  AllowPaging="false" CssClass="grd_body"       
				                         Visible="True" AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false" ShowFooter="false"   BorderStyle="none" >
			                              	<HeaderStyle ></HeaderStyle>
			                             	<ItemStyle></ItemStyle>
				                            <AlternatingItemStyle></AlternatingItemStyle>
			                               	<FooterStyle ></FooterStyle>
			                      	     <Columns>
			                      	        <asp:BoundColumn DataField="c_key" HeaderText=""  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"  Visible="false"></asp:BoundColumn>						
				                            <asp:TemplateColumn ItemStyle-Width="40px"> 
                                              <ItemTemplate> 
                                                 <input type="radio" name="RadioName" value="<%# DataBinder.Eval(Container.DataItem, "c_key")%>" style="width:40px;"/> 
                                              </ItemTemplate> 
                                            </asp:TemplateColumn>  
					                        <asp:BoundColumn DataField="ConsumerUCIName" HeaderText=""  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ></asp:BoundColumn>						
				                         </Columns>					
		                   	             </asp:datagrid>
                                      </div>
                                 </td>
                             </tr>
                        </table>
                    </td>                       
                    <td align="center" valign="top"><asp:Button ID="btnMatch" runat="server" Text="Match Selected Client" Style="width: 200px" CssClass="buttonbluestyle" OnClick="btnMatch_Click" ></asp:Button></td>
                    <td  align="center" valign="top" style="width: 121px"><input type="button" name="btnCLose" id="btnClose" runat="server" value="Close"  class="buttonbluestyle"  style="width: 60px;" onclick="javascript:document.getElementById('CloseSearchFlag').value='0';Div_Search.style.display='none';" /></td>
               </tr>                   
         </table>
         <hr noshade="noshade" style="size:3px; background-color:Black; color:Black; " />
        </div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:997px; top: 0px; left: 0px;">
              <table class="table_maindiv">
                    <tr>
                        <td>
                           <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">          
                                    <td style="font:bold;width:100px" align="right" class="td_label">Admission Date:</td>
                                    <td style="width:5px"></td>
                                    <td class="td_unline" style="width:100px" >
                                         <asp:TextBox ID="AppDate" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  
                                            runat="server" CssClass="inface"></asp:TextBox>
                                    </td>
                                    <td style="width:5px"></td>
                                    <td style="font:bold; width:300px" align="right" class="td_label">Date Assigned to Case Manager:</td>
                                   <td class="td_unline" style="width:100px"><asp:TextBox ID="confirm_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox></td>
                                   <td style="width:5px"></td>
                                   <td style="font:bold; width:100px;" align="right" class="td_label">California ID:</td>
                                    <td class="td_unline" style="width:150px; height: 27px;">
                                        <asp:TextBox ID="ref_address_line_1" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox>
                                    </td>
                                    <td width="120px" style="font:bold;width: 100px" align="right" class="td_label">
                                        Referral Code:
                                    </td>
                                    <td width="50%" style="width: 200px" class="td_unline">
                                        <asp:TextBox ID="Iq_desc" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                    </td>
                                    <td style="width:5px;"></td>
                                </tr>
                                <tr>
                                   <td colspan="10" style="height:5px"></td>
                                </tr>   
                            </table>        
                        </td>
                    </tr>         
                    <tr><td style="height:5px;"></td></tr>          
                    <tr>
                        <td>
                           <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                    <td style="font:bold" width="100px" class="td_label">Client ID:</td> 
                                    <td class="td_unline"  style="width:100px" >
                                        <asp:TextBox ID="mis" runat="server" CssClass="infaceText"  MaxLength="8" readonly="true"></asp:TextBox>
                                    </td>
                                    <td style="width:10px"></td>
                                    <td style="font:bold" width="100px" class="td_label">Intake Staff:</td> 
                                    <td class="td_unline" style="width:120px">
                                        <asp:TextBox ID="ref_screener_name" runat="server" CssClass="infaceText"  readonly="true" ></asp:TextBox>
                                    </td>
                                    <td style="width:10px"></td>
                                     <td style="width:10px"></td>
                                    <td style="width:10px"></td>
                                    <td style="font:bold" width="100px" class="td_label">Submit By:</td>
                                    <td class="td_unline" style="width:200px">
                                    <asp:Label ID="Submittedby" runat="server" CssClass="infaceText" ></asp:Label>
                                    </td>
                                    <td style="width:10px"></td>
                                    <td style="font:bold" width="120px" class="td_label">Submit Date:</td> 
                                    <td class="td_unline" style="width:100px">
                                    <asp:Label ID="Submitdate" runat="server" CssClass="infaceText"></asp:Label>
                                    </td>
                                </tr>
                            </table>        
                        </td>
                    </tr> 
                    <tr><td style="height:5px"></td></tr>                 
                    <tr>
                       <td>
                           <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                               <tr class="tr_common"> 
                                   <td style="font:bold" class="td_label">Intake Date:</td>
                                   <td class="td_unline"  style="width:120px"><asp:TextBox ID="ref_date"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox></td>
                                   <td style="width:10px"></td>
                                   <td style="font:bold" class="td_label">Treatment Counselor:</td>
                                   <td class="td_unline" style="width:120px"><asp:TextBox ID="ref_name_first" runat="server" CssClass="inface"  MaxLength="11"></asp:TextBox></td>
                                   <td style="width:5px"></td>
                                   <td class="td_unline" style="width:120px"><asp:TextBox ID="ref_name_last" runat="server" CssClass="inface" MaxLength="14" ></asp:TextBox></td>
                                   <td style="width:10px"></td>
                                   <td style="font:bold" class="td_label">Treatment Provider:</td>
                                   <td class="td_unline" style="width:250px;">
                                        <asp:TextBox ID="epilepsy_freq" runat="server" CssClass="inface" MaxLength="100" ></asp:TextBox>
                                   </td> 
                                   <td style="width:5px"></td>
                               </tr>
                               <tr> 
                                   <td colspan="4"></td>
                                   <td>First Name</td>
                                   <td></td>
                                   <td>Last Name</td>
                                   <td colspan="4"></td>
                               </tr>
                           </table>
                       </td>
                    </tr>
                    <tr>
                       <td  class="td_thicksepline"></td>                       
                    </tr>
                    <tr><td style="height:5px;"></td></tr>                              
                    <tr>
                       <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                   <td style="font:bold;width:60px" class="td_label">Name:</td>
                                   <td class="td_unline" style="width:120px"><asp:TextBox ID="name_first" runat="server" CssClass="inface"  MaxLength="20"></asp:TextBox></td>
                                   <td style="width:5px"></td>
                                   <td class="td_unline" style="width:30px"><asp:TextBox ID="name_mi" runat="server" CssClass="inface"  MaxLength="1"></asp:TextBox></td>
                                   <td style="width:5px"></td>
                                   <td class="td_unline" style="width:120px"><asp:TextBox ID="name_last" runat="server" CssClass="inface" MaxLength="20" ></asp:TextBox></td>
                                   <td style="width:10px"></td>
                                   <td style="font:bold;width:60px" class="td_label">DOB:</td>
                                   <td colspan="4" style="width:550px">
                                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                             <tr class="tr_common"> 
                                                <td class="td_unline"  style="width:100px">
                                                    <asp:TextBox ID="dob" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" 
                                                          CssClass="inface" >
                                                    </asp:TextBox>
                                                </td>
                                                <td><asp:Button ID="btnCheck" runat="server" Text="Check" style="width:60px" CssClass="buttonbluestyle" 
							                          Visible="False" OnClientClick="javascript:document.getElementById('CloseSearchFlag').value='1';Div_Search.style.display='';" OnClick="btnCheck_Click"></asp:Button>
							                    </td>
                                                <td style="width:30px"></td>
                                                
                                                <td style="width:200px"></td>
                                             </tr>           
                                         </table> 
                                   </td>
                                   <td style="width:5px"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>First Name</td>    
                                    <td width="5px"></td>
                                    <td>M</td>  
                                    <td width="5px"></td>  
                                    <td>Last Name</td>    
                                    <td width="10px"></td>
                                    <td colspan="5"></td>                         
                                    <td style="width:5px"></td>    
                                </tr>     
                                <tr>
                                    <td colspan="13" style="height:5px"></td>
                                </tr>       
                                <tr class="tr_common"> 
                                   <td style="font:bold" class="td_label">Alias Name:</td>
                                   <td class="td_unline" style="width:120px"><asp:TextBox ID="name_aka_first" runat="server" CssClass="inface"  MaxLength="20"></asp:TextBox></td>
                                   <td style="width:5px"></td>
                                   <td class="td_unline" style="width:30px"><asp:TextBox ID="name_aka_mi" runat="server" CssClass="inface"  MaxLength="1"></asp:TextBox></td>
                                   <td style="width:5px"></td>
                                   <td class="td_unline" style="width:120px"><asp:TextBox ID="name_aka_last" runat="server" CssClass="inface" MaxLength="20" ></asp:TextBox></td>
                                   <td style="width:10px"></td>
                                   <td style="font:bold;width:60px" class="td_label">SSN:</td>
                                   <td style="width:120px" class="td_unline">
                                       <asp:TextBox ID="ssn" runat="server" CssClass="inface" MaxLength="11" ></asp:TextBox>
                                   </td>
                                   <td style="width:30px"></td>
                                   <td style="font:bold;width:100px" class="td_label">Maiden Name:</td>
                                   <td class="td_unline" style="width:300px"><asp:TextBox ID="BirthPlace" runat="server" CssClass="inface"  MaxLength="60"></asp:TextBox></td>                                                 
                                   <td style="width:5px"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>First Name</td>    
                                    <td width="5px"></td>
                                    <td>M</td>  
                                    <td width="5px"></td>  
                                    <td>Last Name</td>    
                                    <td width="10px"></td>
                                    <td colspan="5"></td>                         
                                    <td style="width:5px"></td>    
                                </tr>
                            </table>
                       </td>
                    </tr>
                    <tr>
                       <td  style="height:5px"></td>
                    </tr>  
                    <tr>
                      <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                   <td style="font:bold;width:120px" class="td_label">Ethnicity:</td>
                                   <td width="250">
                                     <asp:DropDownList ID="ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                          Height="20" Width="235">
                                     </asp:DropDownList>
                                   </td>
                                   <td width="50"></td>
                                   <td style="font:bold" class="td_label">Language:</td>
                                   <td>
                                     <asp:DropDownList ID="language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                        Height="20" Width="150" OnClick="DataChanged()">
                                     </asp:DropDownList>
                                   </td>  
                                   <td style="font:bold;width:120px" class="td_label">Homeless:</td>
                                   <td class="td_unline" style="width:250px;">
                                        <asp:TextBox ID="cp_type" runat="server" CssClass="inface" MaxLength="100" ></asp:TextBox>
                                   </td> 
                                </tr>
                                <tr>
                                   <td colspan="5" style="height:5px"></td>
                                </tr>                                
                            </table>
                      </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr class="tr_common">
                       <td class="td_label"><b>Current Address:</b></td>
                    </tr>
                    <tr>
                       <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                    <td style="width:70px;font:bold" class="td_label">Street:</td>
                                    <td class="td_unline" style="width:560px"><asp:TextBox ID="address_line_1" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox></td>
                                    <td style="width:5px"></td>
                                    <td style="width:55px;font:bold" align="right" class="td_label">City:</td>
                                    <td class="td_unline" style="width:160px"><asp:TextBox ID="address_city" runat="server" CssClass="inface"  MaxLength="19"></asp:TextBox></td>
                                    <td style="width:5px"></td>
                                    <td style="width:55px;font:bold" align="right" class="td_label">State:</td>
                                    <td class="td_unline" style="width:40px"><asp:TextBox ID="address_state" runat="server" CssClass="inface"  MaxLength="2"></asp:TextBox></td>
                                    <td style="width:5px"></td>
                                    <td style="width:45px;font:bold" align="right" class="td_label">Zip:</td>
                                    <td class="td_unline" style="width:100px"><asp:TextBox ID="address_zip" runat="server" CssClass="inface"  MaxLength="10"></asp:TextBox></td>
                                    <td style="width:5px"></td>                                    
                                </tr>
                            </table>    
                       </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr class="tr_common">
                       <td class="td_label"><b>Mailing Address:&nbsp;&nbsp;If different from the Current Address</b></td>
                    </tr>
                    <tr>
                       <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                    <td style="width:70px;font:bold" class="td_label">Street:</td>
                                    <td class="td_unline" style="width:560px"><asp:TextBox ID="mail_address_line_1" runat="server" CssClass="inface"  MaxLength="50"></asp:TextBox></td>
                                    <td style="width:5px"></td>
                                    <td style="width:55px;font:bold" align="right" class="td_label">City:</td>
                                    <td class="td_unline" style="width:160px"><asp:TextBox ID="mail_address_city" runat="server" CssClass="inface"  MaxLength="19"></asp:TextBox></td>
                                    <td style="width:5px"></td>
                                    <td style="width:55px;font:bold" align="right" class="td_label">State:</td>
                                    <td class="td_unline" style="width:40px"><asp:TextBox ID="mail_address_state" runat="server" CssClass="inface"  MaxLength="2"></asp:TextBox></td>
                                    <td style="width:5px"></td>
                                    <td style="width:45px;font:bold" align="right" class="td_label">Zip:</td>
                                    <td class="td_unline" style="width:100px"><asp:TextBox ID="mail_address_zip" runat="server" CssClass="inface"  MaxLength="10"></asp:TextBox></td>
                                    <td style="width:5px"></td>                                    
                                </tr>
                            </table>    
                       </td>
                    </tr>
                    <tr>
                       <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                    <td style="font:bold" class="td_label">Telephone Number:</td>
                                    <td style="font:bold" class="td_label">Home:</td>                                    
                                    <td style="width:10px"></td>
                                    <td style="width:120px">
                                         <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                         <tr>
                                            <td align="center" width="10px">(</td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="phone_1_1" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="15px">) </td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="phone_1_2" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="10px">-</td>
                                            <td class="td_unline" width="30px">
                                               <asp:TextBox ID="phone_1_3" runat="server" CssClass="inface" MaxLength=4 TabIndex="2"></asp:TextBox>
                                            </td>
                                         </tr>
                                         </table>
                                    </td>
                                    <td style="width:10px"></td>
                                    <td style="font:bold" class="td_label">Cell:</td>
                                    <td style="width:120px">
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td align="center" width="10px">(</td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="phone_2_1" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="15px">) </td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="phone_2_2" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="10px">-</td>
                                            <td class="td_unline" width="30px">
                                               <asp:TextBox ID="phone_2_3" runat="server" CssClass="inface" MaxLength=4 TabIndex="2"></asp:TextBox>
                                            </td>
                                         </tr>
                                         </table>
                                    </td>
                                    <td style="width:40%"></td>                                    
                                </tr>
                            </table>    
                       </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr> 
                    <tr>
                       <td>
                       <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                         <tr class="tr_common">
                           <td style="font:bold; width:150px" class="td_label">Emergency Contact (1):</td>
                           <td class="td_unline" style="width:250px;"><asp:TextBox ID="contact1_name_first" runat="server" CssClass="inface"  MaxLength="20"></asp:TextBox></td>
                           <td style="width:20px;"></td>
                           <td class="td_unline" style="width:250px;">
                                <asp:TextBox ID="contact1_name_last" runat="server" CssClass="inface" MaxLength="20" ></asp:TextBox>
                           </td>    
                           <td style="width:50px"></td>        
                         </tr>  
                         <tr>
                           <td></td>
                           <td>First Name</td>    
                           <td></td>
                           <td>Last Name</td>    
                           <td></td>                     
                         </tr> 
                       </table>
                       </td>
                    </tr>
                    <tr>
                       <td>
                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                         <tr class="tr_common">
                           <td style="font:bold; width:200px" class="td_label">Emergency Contact Relationship:</td>
                           <td style="width:5px"></td>
                           <td style="width:240px">
                             <asp:DropDownList ID="contact1_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                 Height="20" Width="235" OnClick="DataChanged()">
                             </asp:DropDownList>
                           </td> 
                           <td style="width:5px"></td>
                         </tr> 
                         </table>                                                                   
                       </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr>
                       <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                    <td style="font:bold" class="td_label">Telephone Number:</td>
                                    <td style="font:bold" class="td_label">Home:</td>                                    
                                    <td style="width:120px">
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td align="center" width="10px">(</td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact1_phone_1_1" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="15px">) </td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact1_phone_1_2" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="10px">-</td>
                                            <td class="td_unline" width="30px">
                                               <asp:TextBox ID="contact1_phone_1_3" runat="server" CssClass="inface" MaxLength=4 TabIndex="2"></asp:TextBox>
                                            </td>
                                         </tr>
                                         </table>
                                    </td>
                                    <td style="width:10px"></td>
                                    <td style="font:bold" class="td_label">Work:</td>
                                    <td style="width:120px">
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td align="center" width="10px">(</td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact1_phone_2_1" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="15px">) </td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact1_phone_2_2" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="10px">-</td>
                                            <td class="td_unline" width="30px">
                                               <asp:TextBox ID="contact1_phone_2_3" runat="server" CssClass="inface" MaxLength=4 TabIndex="2"></asp:TextBox>
                                            </td>
                                         </tr>
                                         </table>
                                    </td>
                                    <td style="width:40%"></td>                                    
                                </tr>
                            </table>    
                       </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr><td class="td_thicksepline"></td></tr> 
                    <tr><td style="height:5px;"></td></tr> 
                    <tr>
                       <td>
                       <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                         <tr class="tr_common">
                           <td style="font:bold; width:150px" class="td_label">Emergency Contact (2)</td>
                           <td class="td_unline" style="width:180px;"><asp:TextBox ID="contact2_name_first" runat="server" CssClass="inface"  MaxLength="20"></asp:TextBox></td>
                           <td style="width:20px;"></td>
                           <td class="td_unline" style="width:180px;">
                                <asp:TextBox ID="contact2_name_last" runat="server" CssClass="inface" MaxLength="20" ></asp:TextBox>
                           </td>  
                           <td style="width:50px"></td>
                         </tr>  
                         <tr>
                           <td></td>
                           <td>First Name</td>    
                           <td></td>  
                           <td>Last Name</td>    
                           <td></td>
                         </tr> 
                       </table>
                       </td>
                    </tr>
                    <tr>
                       <td>
                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                         <tr class="tr_common">
                           <td style="font:bold; width:200px" class="td_label">Emergency Contact Relationship:</td>
                           <td style="width:5px"></td>
                           <td style="width:240px">
                             <asp:DropDownList ID="contact2_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                 Height="20" Width="235" OnClick="DataChanged()">
                             </asp:DropDownList>
                           </td> 
                           <td style="width:5px"></td>
                         </tr> 
                         </table>                                                                   
                       </td>
                    </tr>
                    <tr><td style="height:5px;"></td></tr> 
                    <tr>
                       <td>
                            <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common"> 
                                    <td style="font:bold" class="td_label">Telephone Number:</td>
                                    <td style="font:bold" class="td_label">Home:</td>                                    
                                    <td style="width:120px">
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td align="center" width="10px">(</td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact2_phone_1_1" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="15px">) </td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact2_phone_1_2" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="10px">-</td>
                                            <td class="td_unline" width="30px">
                                               <asp:TextBox ID="contact2_phone_1_3" runat="server" CssClass="inface" MaxLength=4 TabIndex="2"></asp:TextBox>
                                            </td>
                                         </tr>
                                         </table>
                                    </td>
                                    <td style="width:10px"></td>
                                    <td style="font:bold" class="td_label">Work:</td>
                                    <td style="width:120px">
                                        <table style="border-collapse: collapse" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td align="center" width="10px">(</td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact2_phone_2_1" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="15px">) </td>
                                            <td class="td_unline" width="25px">
                                               <asp:TextBox ID="contact2_phone_2_2" runat="server" CssClass="inface" MaxLength=3 TabIndex="2"></asp:TextBox>
                                            </td>
                                            <td align="center" width="10px">-</td>
                                            <td class="td_unline" width="30px">
                                               <asp:TextBox ID="contact2_phone_2_3" runat="server" CssClass="inface" MaxLength=4 TabIndex="2"></asp:TextBox>
                                            </td>
                                         </tr>
                                         </table>
                                    </td>
                                    <td style="width:40%"></td>                                    
                                </tr>
                            </table>    
                       </td>
                    </tr>
              </table>    
         </div>   
    </form>
</body>
</html>
