<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormSirInfo.aspx.cs" Inherits="Virweb2.FormList.FormSirInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="MetaBuilders.WebControls" Namespace="MetaBuilders.WebControls"
    TagPrefix="mb" %>
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<html>
<head>
    <base target="_self"></base>
    <title>:::Consumer SIR info:::...</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
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
	            SIR_T1.style.color = "";
	            //SIR_T1.style.cursor="pointer";
	            SIR_T2.style.color = "";
	            //SIR_T2.style.cursor="pointer";
	            SIR_T3.style.color = "";
	            //SIR_T3.style.cursor="pointer";
	            SIR_T4.style.color = "";
	            //SIR_T4.style.cursor="pointer";
                SIR_T5.style.color = "";
	            //SIR_T5.style.cursor="pointer";
	            obj.style.color = "#990066";
	            //obj.style.cursor="auto"; 	         
	        }
	        Sir_T1.style.display = "none";
	        Sir_T2.style.display = "none";
	        Sir_T3.style.display = "none";
	        Sir_T4.style.display = "none";
            Sir_T5.style.display = "none";
	        switch (obj.id) {
	            case "SIR_T1":
	                Sir_T1.style.display = "";
	                document.SirInfo.now_div_flag.value = "1";
	                break;
	            case "SIR_T2":
	                Sir_T2.style.display = "";
	                document.SirInfo.now_div_flag.value = "2";
	                break;
	            case "SIR_T3":
	                Sir_T3.style.display = "";
	                document.SirInfo.now_div_flag.value = "3";
	                break;
	            case "SIR_T4":
	                Sir_T4.style.display = "";
	                document.SirInfo.now_div_flag.value = "4";
	                break;
                case "SIR_T5":
	                Sir_T5.style.display = "";
	                document.SirInfo.now_div_flag.value = "5";
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
	            SIR_T1.style.color = "";
	            //SIR_T1.style.cursor="pointer";
	            SIR_T2.style.color = "";
	            //SIR_T2.style.cursor="pointer";
	            SIR_T3.style.color = "";
	            //SIR_T3.style.cursor="pointer";
	            SIR_T4.style.color = "";
	            //SIR_T4.style.cursor="pointer";
                SIR_T5.style.color = "";
	            //SIR_T5.style.cursor="pointer";
	        }
	        Sir_T1.style.display = "none";
	        Sir_T2.style.display = "none";
	        Sir_T3.style.display = "none";
	        Sir_T4.style.display = "none";
            Sir_T5.style.display = "none";

	        switch (obj_id) {
	            case "SIR_T1":
	                Sir_T1.style.display = "";
	                SIR_T1.style.color = "#990066";
	                //SIR_T1.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "1";
	                break;
	            case "SIR_T2":
	                Sir_T2.style.display = "";
	                SIR_T2.style.color = "#990066";
	                //SIR_T2.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "2";
	                break;
	            case "SIR_T3":
	                Sir_T3.style.display = "";
	                SIR_T3.style.color = "#990066";
	                //SIR_T3.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "3";
	                break;
	            case "SIR_T4":
	                Sir_T4.style.display = "";
	                SIR_T4.style.color = "#990066";
	                //SIR_T4.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "4";
	                break;
                case "SIR_T5":
	                Sir_T5.style.display = "";
	                SIR_T5.style.color = "#990066";
	                //SIR_T5.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "5";
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
	            SIR_T1.style.color = "";
	            //SIR_T1.style.cursor="pointer";
	            SIR_T2.style.color = "";
	            //SIR_T2.style.cursor="pointer";
	            SIR_T3.style.color = "";
	            //SIR_T3.style.cursor="pointer";
	            SIR_T4.style.color = "";
	            //SIR_T4.style.cursor="pointer";
                SIR_T5.style.color = "";
	            //SIR_T5.style.cursor="pointer";
	        }
	        Sir_T1.style.display = "none";
	        Sir_T2.style.display = "none";
	        Sir_T3.style.display = "none";
	        Sir_T4.style.display = "none";
            Sir_T5.style.display = "none";

	        switch (flag) {
	            case 1:
	                Sir_T1.style.display = "";
	                SIR_T1.style.color = "#990066";
	                //SIR_T1.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "1";
	                break;
	            case 2:
	                Sir_T2.style.display = "";
	                SIR_T2.style.color = "#990066";
	                //SIR_T2.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "2";
	                break;
	            case 3:
	                Sir_T3.style.display = "";
	                SIR_T3.style.color = "#990066";
	                //SIR_T3.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "3";
	                break;
	            case 4:
	                Sir_T4.style.display = "";
	                SIR_T4.style.color = "#990066";
	                //SIR_T4.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "4";
	                break;
                case 5:
	                Sir_T5.style.display = "";
	                SIR_T5.style.color = "#990066";
	                //SIR_T5.style.cursor="auto";
	                document.SirInfo.now_div_flag.value = "5";
	                break;
	        }
	   }

       function RefreshMyData()    
       {                  
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.SirInfo.submit(); 
            window.focus();   
       }

	   function print_click() {
	        var flag = document.SirInfo.now_div_flag.value.toString();
            var s_key = document.SirInfo.s_key.value.toString();
            var UserAct = document.SirInfo.UserAct.value.toString();
            var consumer_key = document.SirInfo.consumer_key.value.toString();
            if(flag.toString() == "3")
            {
                alert("Please select a record to print!");
            }
            else
            {
                var url = "PrintFormSirInfo.aspx?s_key=" + s_key + "&consumer_key=" + consumer_key + "&flag=" + flag + "&UserAct=" + UserAct;
                winhref(url, 'PrintFormSirInfo');
	        }
       }

       function CheckDistribute() {
       //alert(document.SirInfo.dist_userIDs.value);
           if (document.SirInfo.dist_userIDs.value != "")
           {
              var DspStr = "Do you want to distribute this SIR?";
              //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
              var saveflag = PromptSaveChange(1, DspStr);
              if (saveflag == "1")
                document.SirInfo.distflag.value = "true";
              else document.SirInfo.distflag.value = "false";
           }
       }

       function save_click() {
           var strTime = document.SirInfo.s_incident_time.value.toString();
           if (IsTimeAMPM(strTime) == "false")
              return false;

           CheckDistribute();

           NoCreateIDNotes();
           return true;
       }

       function multisave_click() {
           var strTime = document.SirInfo.s_incident_time.value.toString();
           if (IsTimeAMPM(strTime) == "false")
              return false;
           
           NoCreateIDNotes();

           popupDialogSmall('SearchConsumer.aspx');
       }

       function AddMulti(clients)
       {
           var clientList = document.getElementById(<%= "'" + hdnclientData.ClientID + "'" %>);        
           clientList.value = clients;        
           window.focus(); 
       }

       function AddMultiTables2(codes, desc, bDDS, bDeath, bDDSA)
       {
           var IncidentType = document.getElementById(<%= "'" + s_incident_type.ClientID + "'" %>);        
           IncidentType.value = codes; 
           var IncidentDesc = document.getElementById(<%= "'" + s_incident_type_desc.ClientID + "'" %>);        
           IncidentDesc.value = desc;
           
           var LabVendorCare = document.getElementById(<%= "'" + l_s_vendor_care.ClientID + "'" %>);
           var VendorCare = document.getElementById(<%= "'" + s_vendor_care.ClientID + "'" %>); 
           var LabDeathType = document.getElementById(<%= "'" + l_s_death_type.ClientID + "'" %>);
           var LabDeathEvent = document.getElementById(<%= "'" + l_s_death_event.ClientID + "'" %>);
           var DeathType = document.getElementById(<%= "'" + s_death_type.ClientID + "'" %>);
           var DeathEvent = document.getElementById(<%= "'" + s_death_event.ClientID + "'" %>);

           if (bDDS == "1")
           {
              //document.SirInfo.s_type.value = "Reportable";
              IncidentType.style.backgroundColor = "pink";
              IncidentDesc.style.backgroundColor = "pink";
              LabVendorCare.style.color = "black";
              /*
              VendorCare.disabled = false;
              var DspStr = "Did the incident occur while the consumer was under the care of a vendor?\r\rNote: 24-hour care providers are responsible for the consumer at all times.";
              var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
              if (saveflag == "1")
                VendorCare.selectedIndex = 1;
              else VendorCare.selectedIndex = 2;
              */ 
           }
           else 
           {
              //document.SirInfo.s_type.value = "Non-Reportable";
              LabVendorCare.style.color = "gray";
              /*
              VendorCare.selectedIndex = 0;
              VendorCare.disabled = true;
              */
              LabDeathType.style.color = "gray";
              LabDeathEvent.style.color = "gray";
              DeathType.selectedIndex = 0;
              DeathEvent.selectedIndex = 0;
              DeathType.disabled = true;
              DeathEvent.disabled = true;
           }

           document.SirInfo.s_type.value = "Non-Reportable";
           VendorCare.disabled = false;
           var DspStr = "Did the incident occur while the consumer was under the care of a vendor?\r\rNote: 24-hour care providers are responsible for the consumer at all times.";
           //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
           var saveflag = PromptSaveChange(1, DspStr);
           if (saveflag == "1")
           {
              if (bDDS == "1")
                 document.SirInfo.s_type.value = "Reportable";

              VendorCare.selectedIndex = 1;
           }
           else
           { 
              VendorCare.selectedIndex = 2; 
           }

           if (bDDSA == "1")
              document.SirInfo.s_type.value = "Reportable";

           if (bDeath == "1")
           {
              LabDeathType.style.color = "black";
              DeathType.disabled = false; 
              LabDeathEvent.style.color = "black";
              DeathEvent.disabled = false;
              DeathType.selectedIndex = 0;
              DeathEvent.selectedIndex = 0;
              document.getElementById("creatMorReview").style.display="block";
           }
           else
           {
              LabDeathType.style.color = "gray";
              LabDeathEvent.style.color = "gray";
              DeathType.selectedIndex = 0;
              DeathEvent.selectedIndex = 0;
              DeathType.disabled = true;
              DeathEvent.disabled = true;
              document.getElementById("creatMorReview").style.display="none";
           }
                    
           window.focus(); 
       }

       function NotifyClick()
       {
           DataChanged();
           popupDialogSmall('SearchUser.aspx?ForSir=1&ToNameList='+document.SirInfo.dist_userIDs.value);
       }

       function AddMultiUsers(selusers,selIDs) 
       {
            var i,j;
            var Ids= new Array();
            var Usrs= new Array();
            Ids = selIDs.split(";");
            Usrs = selusers.split(";");
            document.SirInfo.s_other_distribution.value = '';
            document.SirInfo.dist_userIDs.value = '';

            for (i=0;i<Usrs.length ;i++ )
            {
                if(document.SirInfo.s_other_distribution.value.indexOf(Usrs[i]) < 0 )
                {
                    document.SirInfo.s_other_distribution.value = document.SirInfo.s_other_distribution.value + Usrs[i] + " / ";  
                }
            }

            for (j=0;j<Ids.length ;j++ )
            {
                if(document.SirInfo.dist_userIDs.value.indexOf(Ids[j]) < 0 )
                {
                    document.SirInfo.dist_userIDs.value = document.SirInfo.dist_userIDs.value + Ids[j] + " ";  
                }
            }


	       //document.SirInfo.s_other_distribution.value = document.SirInfo.s_other_distribution.value + selusers;
           //document.SirInfo.dist_userIDs.value = document.SirInfo.dist_userIDs.value + selIDs;
	   }

       function back_click() {
           if (Confirm_Page())
              document.location.replace('FormSirList.aspx'); 
       }

       function viewnotes_click() {
	        var str_key=document.SirInfo.consumer_key.value.toString();
	        var url = "../WebList/webIDNotesInfo.aspx?c_key=" + str_key + "&popupw=1";
            popupDialog(url);
            //winhref(url);
	   }

       /*
       function DeathType_click() {
           var LabDeathEvent = document.getElementById(<%= "'" + l_s_death_event.ClientID + "'" %>);
           var DeathType = document.getElementById(<%= "'" + s_death_type.ClientID + "'" %>);
           var DeathEvent = document.getElementById(<%= "'" + s_death_event.ClientID + "'" %>);
           var SelIndex = DeathType.selectedIndex;
           var SelValue = DeathType.options[SelIndex].value;
           if (SelValue == "02")
           {
               LabDeathEvent.style.color = "black";
               DeathEvent.disabled = false;
           }
           else 
           {
               LabDeathEvent.style.color = "gray";
               DeathEvent.selectedIndex = 0;
               DeathEvent.disabled = true;
           }
       }
       */

       function SelectResource(VendorNumber,SvcCode,SubCode,Rate)
       {
            var myVendorNumber = document.getElementById(<%= "'" + hdnVendorNumber.ClientID + "'" %>);        
            myVendorNumber.value = VendorNumber;   
                          
            window.document.SirInfo.submit(); 
            window.focus();   
       }

       function ResetResource() 
       {
           if (!confirm("Do you want to reset the vendor information ?"))
               return false;

           document.getElementById('<%= this.s_vendor_number.ClientID %>').innerHTML = "";
           document.SirInfo.s_residence.selectedIndex = 0;
           //document.getElementById('<%= this.s_resource_number.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_name.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_address.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_city.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_state.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_zip.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_phone.ClientID %>').innerHTML = "";
           document.getElementById('<%= this.s_residence_level.ClientID %>').innerHTML = "";

           document.SirInfo.hdn_s_vendor_number.value = "";
           document.SirInfo.hdn_s_residence_name.value = "";
           document.SirInfo.hdn_s_residence_address.value = "";
           document.SirInfo.hdn_s_residence_city.value = "";
           document.SirInfo.hdn_s_residence_state.value = "";
           document.SirInfo.hdn_s_residence_zip.value = "";
           document.SirInfo.hdn_s_residence_phone.value = "";
           document.SirInfo.hdn_s_residence_level.value = "";

           return true;
       }

       function DisplayMortalityInfo()
       {
            SIR_T5.style.display="";
            document.SirInfo.Mortality_flag.value = "1";
       }

       function SetMortalityInfo()
       {
           if(document.SirInfo.Mortality_flag.value == "1")
           {
                SIR_T5.style.display="";
           }
       }

       function Sign(UserName) {
           var nowdate = new Date();
           document.getElementById("s_approved_by_name").value = UserName.toString();          
           document.getElementById("s_approved_by_date").value = (nowdate.getMonth() + 1).toString() + "/" + nowdate.getDate().toString() + "/" + nowdate.getFullYear().toString();
           document.getElementById("s_status").value = "T";   
           if ( document.SirInfo.checksign.value == "Sign")
           {
              document.SirInfo.checksign.value = "Signed";
           }    
           window.document.SirInfo.submit(); 
       }

       function CheckPwd() {
           document.SirInfo.checksign.value = "Sign";
           window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
       }

       function NoPermission() {
           PopupMessage(42);
           return false;
       }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="SirInfo" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="hdnclientData" id="hdnclientData" value="" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="hdnVendorNumber" id="hdnVendorNumber" value="" runat="server" />
    <input type="hidden" name="hdn_s_vendor_number" id="hdn_s_vendor_number" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_name" id="hdn_s_residence_name" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_address" id="hdn_s_residence_address" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_city" id="hdn_s_residence_city" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_state" id="hdn_s_residence_state" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_zip" id="hdn_s_residence_zip" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_phone" id="hdn_s_residence_phone" value="" runat="server" />
    <input type="hidden" name="hdn_s_residence_level" id="hdn_s_residence_level" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="s_key" id="s_key" value="" runat="server" />
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
    <input type="hidden" name="dist_userIDs" id="dist_userIDs" value="" runat="server" />
    <input type="hidden" name="s_type" id="s_type" value="Non-Reportable" runat="server" />
    <input type="hidden" name="Mortality_flag" id="Mortality_flag" value="0" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="distflag" id="distflag" value="false" runat="server" />
    <input type="hidden" name="IsAdmin" id="IsAdmin" value="0" runat="server" />
    <input type="hidden" name="checksign" id="checksign" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table  id="headericon" runat="server" border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnEdit_Click"></asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                        OnClick="btnAdd_Click"></asp:ImageButton>
                    &nbsp;
                    <asp:ImageButton ID="btnMultiAdd" runat="server" AlternateText="MultiSave" Visible="False"
                        Style="width: 25px; height: 25px" ImageUrl="../img/multi-save.ico" ToolTip="Multiple Save"
                        OnClientClick="javascript:return multisave_click();"></asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnNotes" runat="server" alt="View Notes" style="width: 25px;height:25px"  
                        src="../img/documents.png" title="View Notes"
                        onclick="javascript:viewnotes_click();return false;" />  
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false" style="width: 25px; height: 25px" 
                        src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Sir For</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height: 25px" 
                        src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;
                        height: 25px" src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="SIR_T1" style="color: #990066;" class="tab_sel" onclick="doseltd(this);"
                                width="200">
                                <b><u>Special Incident Report</u></b>
                            </td>
                            <td id="SIR_T2" class="tab_sel" onclick="doseltd(this);" width="130">
                                <b><u>Text Continuation</u></b>
                            </td>
                            <td id="SIR_T3" class="tab_sel" onclick="doseltd(this);" width="110">
                                <b><u>Follow-Up List</u></b>
                            </td>
                            <td id="SIR_T4" class="tab_sel" onclick="doseltd(this);" width="180">
                                <b><u>Outcomes/Actions Taken</u></b>
                            </td>
                            <td id="SIR_T5" class="tab_sel" onclick="doseltd(this);"  width="110" style="display: none;">
                                <b><u>Mortality Review</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Sir_T1" runat="server">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 120px;" align="left" class="td_label">
                                                <b>Incident Number:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 50px" align="left">
                                                <asp:Label ID="s_num" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="width: 80px;" align="left" class="td_label">
                                                <b>Status:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px;">
                                                <asp:TextBox ID="s_status" runat="server" CssClass="inface" width="60px" contentEditable="false"></asp:TextBox>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 120px;" align="left" class="td_label">
                                                <b>Transmitted Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 50px" align="left">
                                                <asp:Label ID="s_transmitted" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 225px;" align="left" class="td_label">
                                                <b>Client's Name:</b>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Sex:</b>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Date of Birth:</b>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>UCI Number:</b>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Date Received:</b>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Date Reported:</b>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 225px;">
                                                <asp:Label ID="s_name" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:Label ID="s_gender" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:Label ID="s_dob" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:Label ID="s_uci" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="s_recieved_dt" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width: 15px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="s_rpt_date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr>
                                            <td style="width: 100px;" align="left" valign="top" class="td_label">
                                                <b>Diagnosis:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="height: 40px;">
                                                <asp:TextBox ID="s_diagnosis" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="40" MaxLength="250"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 160px;" align="left" class="td_label">
                                                <b>Check Applicable:</b>
                                            </td>
                                            <td style="width: 320px;" align="center" class="td_label">
                                                <asp:RadioButton Text="Verbal" ID="s_verb_yes" GroupName="s_verb" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RadioButton Text="Non-Verbal" ID="s_verb_no" GroupName="s_verb" runat="server" />
                                            </td>
                                            <td style="width: 320px;" align="center" class="td_label">
                                                <asp:RadioButton Text="Ambulatory" ID="s_amb_yes" GroupName="s_amb" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RadioButton Text="Non-Ambulatory" ID="s_amb_no" GroupName="s_amb" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 200px" align="left" class="td_label">
                                                            <b>Type of Incident Codes:</b>
                                                        </td>
                                                        <td style="width: 50px">
                                                        </td>
                                                        <td style="width: 200px">
                                                            <input type="button" value="Create Mortality Review" style="width: 200px; display: none"
                                                                id="creatMorReview" runat="server" onclick="DisplayMortalityInfo();" />
                                                        </td>
                                                        <td style="width: auto">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 120px">
                                                            <input type="button" value="Select" style="width: 100px" id="selIncType" runat="server"
                                                                onclick="DataChanged();javascript:popupDialogSmall('SearchTables2.aspx?tablename=SIR INCIDENT TYPE');" />
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td style="width: 800px">
                                                            <asp:TextBox ID="s_incident_type" runat="server" CssClass="inface"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>Type of Incident Description:</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 60px" valign="top">
                                                <asp:TextBox ID="s_incident_type_desc" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="60"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 200px" align="right" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_s_vendor_care" runat="server" Text="Occurred Under Vendor Care:"
                                                        ForeColor="gray"></asp:Label>
                                                </b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 50px" align="left">
                                                <asp:DropDownList ID="s_vendor_care" runat="server" OnClick="DataChanged()" CssClass="infaceDropRead"
                                                    Enabled="false">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                    <asp:ListItem Value="N">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 180px" align="right" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_s_death_type" runat="server" Text="Apparent Manner of Death:" ForeColor="gray"></asp:Label></b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 220px;">
                                                <asp:DropDownList ID="s_death_type" runat="server" onchange="NoCreateIDNotes();"
                                                    DataValueField="tb_code" DataTextField="tb_entry_text" CssClass="infaceDropRead"
                                                    OnSelectedIndexChanged="deathtype_SelectedIndexChanged" AutoPostBack=true Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 100px" align="right" class="td_label">
                                                <b>
                                                    <asp:Label ID="l_s_death_event" runat="server" Text="Death Event:" ForeColor="gray"></asp:Label></b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 220px;">
                                                <asp:DropDownList ID="s_death_event" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDropRead" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="4" style="width: 305px;" align="left" class="td_label">
                                                <b>Date and Time of Incident:</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 265px;" align="left" class="td_label">
                                                <b>Site of Incident/Description:</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 250px;" align="left" class="td_label">
                                                <b>Alleged Perpetrator:</b>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 65px" align="right" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td colspan="2" class="td_unline" style="width: 140px;">
                                                <asp:TextBox ID="s_incident_dt" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td class="td_label" style="width: 100px;">
                                                <asp:CheckBox ID="s_incident_dt_approx" runat="server" Text="Approximate" />
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 265px;">
                                                <asp:DropDownList ID="s_incident_site_type" runat="server" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 250px;">
                                                <asp:DropDownList ID="s_alleged_perp_rel" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 65px" align="right" class="td_label">
                                                <b>Time:</b>
                                            </td>
                                            <td class="td_unline" style="width: 80px;">
                                                <asp:TextBox ID="s_incident_time" runat="server" CssClass="inface" Width="70px"></asp:TextBox>
                                            </td>
                                            <td style="width: 60px;">
                                                <asp:DropDownList ID="s_incident_AMPM" runat="server" CssClass="infaceDrop" Width="50px">
                                                    <asp:ListItem Value="AM">AM</asp:ListItem>
                                                    <asp:ListItem Value="PM">PM</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="td_label" style="width: 100px;">
                                                <asp:CheckBox ID="s_incident_time_approx" runat="server" Text="Approximate" />
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td colspan="3" class="td_unline" style="width: 265px;">
                                                <asp:Label ID="s_incident_site" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 800px" align="left" class="td_label">
                                                <b>Description of Incident: (Title 17 requires a description of the alleged perpetrator,
                                                    if applicable.)</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 100px" valign="top">
                                                <asp:TextBox ID="s_incident_desc" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="100"></asp:TextBox>
                                                 <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="s_incident_desc" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="7" align="left" class="td_label">
                                                <b>Outpatient/Chronic Medical Device Utilization (Check all devices used on long term basis):</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization01" runat="server" Text="G/J/NG Tube" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization02" runat="server" Text="O2 or CPAP" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization03" runat="server" Text="Catheterization" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization04" runat="server" Text="TPN/IV" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization05" runat="server" Text="Tracheostomy" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization06" runat="server" Text="Dialysis" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization07" runat="server" Text="Ventriculostomy/VP Shunt" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization08" runat="server" Text="Pacemaker" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization09" runat="server" Text="Ventilator" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization10" runat="server" Text="Baclofen Pump" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                                <asp:CheckBox ID="s_utilization11" runat="server" Text="Vagus Nerve Stimulation (VNS)" />
                                            </td>
                                            <td style="width: 10px;"></td>
                                            <td class="td_label" style="width: 190px;">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="7">
                                             <table class="table_inside">
                                              <tr class="tr_common">
                                               <td class="td_label" style="width: 100px;">
                                                <asp:CheckBox ID="s_utilization_other" runat="server" Text="Other(s):" />
                                               </td>
                                               <td style="width: 10px;"></td>
                                               <td style="width: 690px">
                                                <asp:TextBox ID="s_utilization_other_desc" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                               </td>
                                              </tr>
                                             </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="9" style="width: 800px;" align="left" class="td_label">
                                                <b>Law Enforcement</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3" style="width: 250px;" align="center" class="td_label">
                                                <b>County Sheriff:</b>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td colspan="3" style="width: 250px;" align="center" class="td_label">
                                                <b>City Police:</b>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 250px;" align="center" class="td_label">
                                                <b>County Coroner:</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3" class="td_unline" style="width: 250px;">
                                                <asp:DropDownList ID="s_sheriff_county" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td colspan="3" class="td_unline" style="width: 250px;">
                                                <asp:DropDownList ID="s_police_city" runat="server" DataValueField="id"
                                                    DataTextField="name" CssClass="infaceDrop" OnSelectedIndexChanged="policecity_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:DropDownList ID="s_coroner_county" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3" style="width: 250px;" align="center" class="td_label">
                                                (County)
                                            </td>
                                            <td tyle="width: 25px">
                                            </td>
                                            <td colspan="3" style="width: 250px;" align="center" class="td_label">
                                                (City)
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 250px;" align="center" class="td_label">
                                                (County)
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3" class="td_unline" style="width: 250px;">
                                                <asp:TextBox ID="s_sheriff_officer" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td colspan="3" class="td_unline" style="width: 250px;">
                                                <asp:TextBox ID="s_police_officer" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 250px;" align="center" class="td_label">
                                                <asp:Label ID="s_coroner_autopsy_title" runat="server" Width="100"><b>Autopsy:</b></asp:Label>
                                                <asp:RadioButton Text="Yes" ID="s_coroner_autopsy_yes" GroupName="s_coroner_autopsy"
                                                    runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RadioButton Text="No" ID="s_coroner_autopsy_no" GroupName="s_coroner_autopsy"
                                                    runat="server" />
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3" style="width: 250px;" align="center" class="td_label">
                                                (Officer)
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td colspan="3" style="width: 250px;" align="center" class="td_label">
                                                (Officer)
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 250px;" align="center" class="td_label">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="9">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="s_sheriff_rpt_num" runat="server" CssClass="inface" MaxLength="25"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 120px">
                                                <asp:TextBox ID="s_sheriff_phone" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="s_police_rpt_num" runat="server" CssClass="inface" MaxLength="25"></asp:TextBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td class="td_unline" style="width: 120px;">
                                                <asp:TextBox ID="s_police_phone" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td class="td_unline" style="width: 250px;">
                                                <asp:TextBox ID="s_coroner_phone" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 120px;" align="center" class="td_label">
                                                (Report #)
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 120px;" align="center" class="td_label">
                                                (Telephone #)
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 120px;" align="center" class="td_label">
                                                (Report #)
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 120px;" align="center" class="td_label">
                                                (Telephone #)
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 250px;" align="center" class="td_label">
                                                (Telephone #)
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                Facility/Provider Responsible:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td colspan="5">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="button" value="Select" style="width: 80px" id="btnResource" runat="server" onclick="javascript:popupDialogWide('SearchResource.aspx?page=SIR');" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="button" id="btnReset" style="width: 80px;" value="Reset"  runat="server" onclick="javascript:ResetResource();DataChanged();" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                Vendor Number:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 350px;">
                                                <asp:Label ID="s_vendor_number" runat="server" Width="150px" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                Residence:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 185px;">
                                                <asp:DropDownList ID="s_residence" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_textID" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                Vendor Name:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 350px;">
                                                <asp:Label ID="s_resource_number" runat="server" CssClass="infaceText" Visible="false"></asp:Label>
                                                <asp:Label ID="s_residence_name" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 100px; display:none" align="left" class="td_label">
                                                Res. Level:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 185px; display:none">
                                                <asp:Label ID="s_residence_level" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                Vendor Address:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 350px;">
                                                <asp:Label ID="s_residence_address" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 100px;" align="left" class="td_label">
                                                Telephone:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 185px;">
                                                <asp:Label ID="s_residence_phone" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                City/State/Zip:
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 350px;">
                                                <asp:Label ID="s_residence_city" runat="server" CssClass="infaceText" Width="180"></asp:Label>&nbsp;
                                                <asp:Label ID="s_residence_state" runat="server" CssClass="infaceText" Width="70"></asp:Label>&nbsp;
                                                <asp:Label ID="s_residence_zip" runat="server" CssClass="infaceText" Width="80"></asp:Label>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="7" align="center" class="td_label">
                                                <b>Other Agencies/Individuals Notified:</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left" class="td_label">
                                                <b>Entity</b>
                                            </td>
                                            <td style="width: 10px" class="td_label">
                                            </td>
                                            <td style="width: 280px;" align="left" class="td_label">
                                                <b>Name:</b>
                                            </td>
                                            <td style="width: 10px" class="td_label">
                                            </td>
                                            <td style="width: 180px;" align="left" class="td_label">
                                                <b>By</b>
                                            </td>
                                            <td style="width: 10px" class="td_label">
                                            </td>
                                            <td style="width: 180px;" align="left" class="td_label">
                                                <b>Telephone</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_type1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px" >
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px;">
                                            </td>
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_name1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_by1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_phone1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_type2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_name2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_by2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_phone2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_type3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_name3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_by3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_phone3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_type4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_name4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_by4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_phone4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_type5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_notify_name5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_by5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_notify_phone5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="7">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 280px;" align="left" class="td_label">
                                                <b>Other</b>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 280px;" align="left">
                                                <mb:ComboBox ID="s_other_notified_name" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="230px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_other_notified_by" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 180px;" align="left">
                                                <mb:ComboBox ID="s_other_notified_phone" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_name" Width="130px" BorderStyle="Inset" BorderWidth="2px">
                                                </mb:ComboBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="left" class="td_label">
                                                <b>Medical Treatment Necessary:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 150px;" class="td_label">
                                                <asp:RadioButton Text="Yes" ID="s_treatment_1" GroupName="s_treatment" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RadioButton Text="No" ID="s_treatment_0" GroupName="s_treatment" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td style="width: 400px" align="left" class="td_label">
                                                <asp:RadioButton Text="Unknown" ID="s_treatment_2" GroupName="s_treatment" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>If Yes, Nature of Treatment:</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 160px" valign="top">
                                                <asp:TextBox ID="s_treatment_type" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="160"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="s_treatment_type" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                Administered At:
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 300px;" class="td_unline">
                                                <asp:TextBox ID="s_treatment_site" runat="server" CssClass="inface" MaxLength="80"></asp:TextBox>
                                            </td>
                                            <td style="width: 295px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="4">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 200px;" align="left" class="td_label">
                                                Administered By:
                                            </td>
                                            <td style="width: 5px;">
                                            </td>
                                            <td style="width: 300px;" class="td_unline">
                                                <asp:TextBox ID="s_treatment_person" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 295px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>Follow-up Treatment, if Any:</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 100px" valign="top">
                                                <asp:TextBox ID="s_treatment_followup" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="100"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="s_treatment_followup" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>Immediate Action Taken - Planned(by Vendor/Caregiver) and Anticipated Results</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 100px" valign="top" height="100">
                                                <asp:TextBox ID="s_action_taken" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="100"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="s_action_taken" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>Action Taken and/or Planned (by Regional Center) to Prevent Further Occurrences:</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 160px" valign="top" height="160">
                                                <asp:TextBox ID="s_action_prevent" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="160"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="s_action_prevent" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>Comments (include the name/address of any witnesses to the incident)</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 160px" valign="top" height="160">
                                                <asp:TextBox ID="s_comment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="160"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="s_comment" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 100px;">
                                            </td>
                                            <td style="width: 20px">
                                            </td>
                                            <td style="width: 300px;" align="center" class="td_label">
                                                <b>Report Entered by</b>
                                            </td>
                                            <td style="width: 95px">
                                            </td>
                                            <td style="width: 300px;" align="center" class="td_label">
                                                <b>Report Approved by</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Name:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 300px;" class="td_unline">
                                                <asp:Label ID="s_entered_by" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td style="width: 95px">
                                            </td>
                                            <td style="width: 300px;" class="td_unline">
                                                <asp:TextBox ID="s_approved_by_name" runat="server" onclick="NoPermission();" width="280px" contentEditable="false" Font-Names="Comic Sans MS">
                                                </asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Title:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 300px;" class="td_unline">
                                                <asp:TextBox ID="s_entered_by_title" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 95px">
                                            </td>
                                            <td style="width: 300px;" class="td_unline">
                                                <asp:TextBox ID="s_approved_by_title" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 300px;">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 5px" class="td_unline">
                                                            <asp:TextBox ID="s_entered_by_date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                                runat="server" Width="70" CssClass="inface"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 90px" align="left" class="td_label">
                                                            <b>Telephone:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td style="width: 20px" class="td_unline">
                                                            <asp:TextBox ID="s_entered_by_phone" runat="server" Width="110" CssClass="inface"
                                                                MaxLength="20"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 95px">
                                            </td>
                                            <td style="width: 300px;">
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 85px" class="td_unline">
                                                            <asp:TextBox ID="s_approved_by_date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                                runat="server" Width="80" CssClass="inface" Font-Names="Comic Sans MS"></asp:TextBox>
                                                        </td>
                                                        <td style="width: 90px" align="left" class="td_label">
                                                            <b>Telephone:</b>
                                                        </td>
                                                        <td style="width: 5px">
                                                        </td>
                                                        <td style="width: 20px" class="td_unline">
                                                            <asp:TextBox ID="s_approved_by_phone" runat="server" Width="110" CssClass="inface"
                                                                MaxLength="20"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common" style="display:none">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b>Distribution:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 695px;">
                                                <asp:CheckBox ID="s_client_file" runat="server" Text="Client's File" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox ID="s_vendor_file" runat="server" Text="Vendor File" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox ID="s_liasion" runat="server" Text="Facility Liaison" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox ID="s_dds" runat="server" Text="DDS" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox ID="s_licensing_agency" runat="server" Text="Licensing Agency" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox ID="s_client_advocate" runat="server" Text="Client's Rights Advocate" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr style="height: 5px; display:none"">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px;" align="left" valign="top" class="td_label">
                                                <b>Distribution:</b><br />
                                                <input type="button" value="Select" style="width: 100px" id="selUser" runat="server"
                                                    onclick="javascript:NotifyClick();" />
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="height: 40px" valign="top">
                                                <asp:TextBox ID="s_other_distribution" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="40" ></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="left" class="td_label">
                                    If the event occurred as the result of a Licensing violation, the SIR will be forwarded
                                    to the appropriate Licensing entity.
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Sir_T2"  runat="server" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="left" class="td_label">
                                                <b>CDER Information:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Aggressive Social Behavior:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                                <asp:DropDownList ID="aggrsn" runat="server" Enabled="false" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDropRead">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="right" width="250" class="td_label">
                                                <b>Self-injurious Behavior:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                                <asp:DropDownList ID="sevsi" runat="server" Enabled="false" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDropRead">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Destruction of Property:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                                <asp:DropDownList ID="dstrpr" runat="server" Enabled="false" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDropRead">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Running or Wandering Away:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                                <asp:DropDownList ID="rnwnd" runat="server" Enabled="false" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDropRead">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Emotional Outbursts:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                                <asp:DropDownList ID="emoout" runat="server" Enabled="false" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDropRead">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Mental Disorder:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td style="width: 545px">
                                                <asp:DropDownList ID="othdd1" runat="server" Enabled="false" DataValueField="icd10_cd"
                                                    DataTextField="icd10_desc" CssClass="infaceDropRead">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 800px;" align="left" class="td_label">
                                                <b>Text Continuations To SIR</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 100px" valign="top">
                                                <asp:TextBox ID="s_addendums" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="100"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="s_addendums" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Sir_T3"  runat="server" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr>
                                <td>
                                    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                                  <tr style="height: 30px;" valign="middle">
	                                    <td  align="left" style="width:30px;height:25">
                                            <asp:Image ID="BtnAddFollowUp" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" />
                                        </td>
                                        <td align="center">
			                               <asp:label id="l_SiraddList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">FOLLOW-UP LIST</asp:label>
			                            </td>
		                              </tr>
		                            </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DataGrid ID="dg_siradd" runat="server" AllowPaging="False" CssClass="grd_body"
                                        AutoGenerateColumns="False" AllowSorting="False">
                                        <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine">
                                        </HeaderStyle>
                                        <ItemStyle CssClass="grd_item"></ItemStyle>
                                        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                                        <Columns>
                                            <asp:BoundColumn DataField="sa_key" HeaderText="sa_key" Visible="False"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="sa_rpt_dt" HeaderText="Report Date" DataFormatString="{0:MM/dd/yyyy}"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="sa_due_dt" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="sa_rpt" HeaderText="Rpt#" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="EnteredBy" HeaderText="Entered By" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="CompletedBy" HeaderText="Completed By" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="Status" HeaderText="Status" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="Subst" HeaderText="Subst" ItemStyle-HorizontalAlign="Left"
                                                ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="Edit">
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                <ItemTemplate>
                                                    <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                                        BorderWidth="0"></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="DELETE">
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                                <ItemTemplate>
                                                    <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                                        ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Sir_T4"  runat="server" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                                <td colspan="3" style="width: 800px;" align="center" class="td_label">
                                    <b>SPECIAL INCIDENT REPORT OVERVIEW</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 800px;" align="left" class="td_label">
                                    <b>Regional Center Actions:</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Plan of Correction</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Training and/or Technical Assistance Provided</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Sanctions Imposed</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk4" runat="server" Text="" OnClick="DataChanged()" />
                                              Consumer Relocated</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk5" runat="server" Text="" OnClick="DataChanged()" />
                                              Consumer/Auth. Rep Refused Relocation</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk6" runat="server" Text="" OnClick="DataChanged()" />
                                              Increased Clinical Services</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk7" runat="server" Text="" OnClick="DataChanged()" />
                                              Increased Case Management</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk8" runat="server" Text="" OnClick="DataChanged()" />
                                              Additional New Services/Supports</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk9" runat="server" Text="" OnClick="DataChanged()" />
                                              Additional Services/Supports Refused</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_rc_actions_chk10" runat="server" Text="" OnClick="DataChanged()" />
                                              Other(Specify)</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 40px" valign="top">
                                    <asp:TextBox ID="s_rc_actions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3" style="width: 800px;" align="left" class="td_label">
                                    <b>Vendor Actions:</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_vendor_actions_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Staff on Administrative Leave or Terminated</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_vendor_actions_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Staff Training</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_vendor_actions_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Policies Revised</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_vendor_actions_chk4" runat="server" Text="" OnClick="DataChanged()" />
                                              Other(Specify)</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 40px" valign="top">
                                    <asp:TextBox ID="s_vendor_actions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3" style="width: 800px;" align="left" class="td_label">
                                    <b>Licensing Actions:</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Investigated</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Substantiated</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Inconclusive</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk4" runat="server" Text="" OnClick="DataChanged()" />
                                              Unsubstantiated/Unfounded</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk5" runat="server" Text="" OnClick="DataChanged()" />
                                              Fine Assessed</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk6" runat="server" Text="" OnClick="DataChanged()" />
                                              Plan of Correction</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk7" runat="server" Text="" OnClick="DataChanged()" />
                                              Legal Action (e.g. Lic Suspension, TSO)</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_lic_actions_chk8" runat="server" Text="" OnClick="DataChanged()" />
                                              Other(Specify)</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 40px" valign="top">
                                    <asp:TextBox ID="s_lic_actions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3" style="width: 800px;" align="left" class="td_label">
                                    <b>CPS/APS/LTCO Actions:</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_cps_actions_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Investigated</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_cps_actions_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Referred for Criminal Action</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_cps_actions_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Substantiated </b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_cps_actions_chk4" runat="server" Text="" OnClick="DataChanged()" />
                                              Other(Specify)</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 40px" valign="top">
                                    <asp:TextBox ID="s_cps_actions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3" style="width: 800px;" align="left" class="td_label">
                                    <b>Law Enforcement Actions:</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="3">
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_law_actions_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Investigated</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_law_actions_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Arrested</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="s_law_actions_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Other(Specify)</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 40px" valign="top">
                                    <asp:TextBox ID="s_law_actions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Sir_T5"  runat="server" style="display: none;">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                                <td align="center" class="td_label">
                                    <b>MORTALITY REVIEW</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="td_label">
                                    <b>IDENTIFYING INFORMATION</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 120px;" align="right" class="td_label">
                                                <b>Consumer Name:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 225px;">
                                                <asp:Label ID="consumername" runat="server" CssClass="infaceText" Width="225px"></asp:Label>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 100px;" align="right" class="td_label">
                                                <b>UCI #:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:Label ID="c_uci" runat="server" CssClass="infaceText" Width="225px"></asp:Label>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 100px;" align="right" class="td_label">
                                                <b>SSN:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td class="td_unline" style="width: 225px;">
                                                <asp:Label ID="c_ssn" runat="server" CssClass="infaceText" Width="225px"></asp:Label>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 120px;" align="right" class="td_label">
                                                <b>Date of Birth:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 225px;">
                                                <asp:Label ID="c_dob" runat="server" CssClass="infaceText" Width="225px"></asp:Label>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 150px;" align="right" class="td_label">
                                                <b>Regional Center:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td class="td_unline" style="width: 225px;">
                                                <asp:Label ID="c_report_agency" runat="server" CssClass="infaceText" Width="225px"></asp:Label>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 120px;" align="right" class="td_label">
                                                <b>Date of Death:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="deathdate" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Residence Type at Time of Death:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 225px;">
                                                <asp:Label ID="c_residence_current" runat="server" CssClass="infaceText" Width="120px"></asp:Label>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 150px;" align="right" class="td_label">
                                                <b>SDC Consumer:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td  style="width: 225px;">
                                                <asp:DropDownList ID="dc" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 140px;" align="right" class="td_label">
                                                <b>Location of Death:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 250px;">
                                                <asp:DropDownList ID="location" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 150px;" align="right" class="td_label">
                                                <b>County of Death:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td  style="width: 250px;">
                                                <asp:DropDownList ID="county" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="td_label">
                                    <b>DIAGNOSTIC INFORMATION</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Diagnosed Developmental Disabilities:</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="ddtext" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Major Medical Diagnoses/Conditions Present:</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="cmtext" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Psychiatric Diagnoses, if applicable:</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="pdtext" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td colspan="3" align="left" class="td_label">
                                                <b>Care Characteristics Information (Check all that apply)</b>
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac01" runat="server" Text="Under care of family/guardian at time of death" />
                                            </td>
                                            <td style="width: 20px;"></td>
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac02" runat="server" Text="Consumer alone at time of death" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac03" runat="server" Text="Under ongoing care of physician/specialist at time of death" />
                                            </td>
                                            <td style="width: 20px;"></td>
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac04" runat="server" Text="Within 30 days of hospital discharge" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac05" runat="server" Text="Within 30 days of surgical procedure" />
                                            </td>
                                            <td style="width: 20px;"></td>
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac06" runat="server" Text="Within 30 days of medical appointment" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac07" runat="server" Text="Within 30 days of emergency room visit" />
                                            </td>
                                            <td style="width: 20px;"></td>
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac08" runat="server" Text="End of life planning/hospice" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac09" runat="server" Text="Use of restrictive procedure/restraints" />
                                            </td>
                                            <td style="width: 20px;"></td>
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac10" runat="server" Text="Medical/safety equipment malfunction" />
                                            </td>
                                        </tr>
                                        <tr style="height: 5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width: 380px;">
                                                <asp:CheckBox ID="s_care_charac11" runat="server" Text="Death involved criminal activity" />
                                            </td>
                                            <td style="width: 20px;"></td>
                                            <td class="td_label" style="width: 380px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>

                            <tr>
                                <td align="left" class="td_label">
                                    <b>CATEGORY/TYPE OF DEATH</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 350px;" align="right" class="td_label">
                                                <b>Was death disease/disability-related?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 150px;">
                                                <asp:DropDownList ID="disease" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 100px;" align="right" class="td_label">
                                                <b>Category:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td  style="width: 250px;">
                                                <asp:DropDownList ID="category" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 350px;" align="right" class="td_label">
                                                <b>Was death non-disease/disabilty related?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 150px;">
                                                <asp:DropDownList ID="nondisease" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 100px;" align="right" class="td_label">
                                                <b>Category:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td  style="width: 250px;">
                                                <asp:DropDownList ID="Category1" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 350px;" align="right" class="td_label">
                                                <b>Was there no known information about death?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 150px;">
                                                <asp:DropDownList ID="Unknown" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 350px;" align="right" class="td_label">
                                                <b>Assistive/Adaptive Medical Technology Used?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 150px;">
                                                <asp:DropDownList ID="Assistive" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td>
                                                <b>(Enter Categories Below)</b>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table>
                                        <tr class="tr_common" align="center">
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive1" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive2" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive3" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table>
                                        <tr class="tr_common" align="center">
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive4" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive5" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive6" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <table>
                                        <tr class="tr_common" align="center">
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive7" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive8" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td  style="width: 350px;" align="center">
                                                <asp:DropDownList ID="Assistive9" runat="server" OnClick="DataChanged()" DataValueField="tb_code"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Was the death expected?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 200px;">
                                                <asp:DropDownList ID="Expected" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 200px;" align="right" class="td_label">
                                                <b>Was a DNR in effect?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td  style="width: 200px;">
                                                <asp:DropDownList ID="DNR" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Was there a coroner's report?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td  style="width: 200px;">
                                                <asp:DropDownList ID="Coroner" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 200px;" align="right" class="td_label">
                                                <b>Was there an autopsy?</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>  
                                            <td  style="width: 200px;">
                                                <asp:DropDownList ID="Autopsy" runat="server" OnClick="DataChanged()" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" CssClass="infaceDrop">
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 250px;" align="right" class="td_label">
                                                <b>Date of last Health Status Review:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 100px;">
                                                <asp:TextBox ID="LastReview" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                                    runat="server" CssClass="inface"></asp:TextBox>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="td_label">
                                    <b>Coroner’s Findings</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="Coroner_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Coroner’s Report Received</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="Coroner_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Autopsy Conducted</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="Coroner_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Cause of Death Determined</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="Coroner_chk4" runat="server" Text="" OnClick="DataChanged()" />
                                              Other (Specify Cause of Death)</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px" valign="top">
                                    <asp:TextBox ID="Coroner_other" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="td_label">
                                    <b>CIRCUMSTANCES OF DEATH</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="Circumstances" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="td_label">
                                    <b>CAUSE OF DEATH</b>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                <table  class="table_inside">
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk1" runat="server" Text="" OnClick="DataChanged()" />
                                              Heart Disease</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk2" runat="server" Text="" OnClick="DataChanged()" />
                                              Cancer</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk3" runat="server" Text="" OnClick="DataChanged()" />
                                              Stroke</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk4" runat="server" Text="" OnClick="DataChanged()" />
                                              Seizure</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk5" runat="server" Text="" OnClick="DataChanged()" />
                                              Pulmonary/Respiratory</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk6" runat="server" Text="" OnClick="DataChanged()" />
                                              Kidney/Renal Failure</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk7" runat="server" Text="" OnClick="DataChanged()" />
                                              Complications from Diabetes</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk8" runat="server" Text="" OnClick="DataChanged()" />
                                              Chronic Liver Disease</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk9" runat="server" Text="" OnClick="DataChanged()" />
                                              Communicable Disease</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk10" runat="server" Text="" OnClick="DataChanged()" />
                                              Healthcare Acquired Disease</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk11" runat="server" Text="" OnClick="DataChanged()" />
                                              Infection/Sepsis</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk12" runat="server" Text="" OnClick="DataChanged()" />
                                              Bowel Obstruction</b>
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk13" runat="server" Text="" OnClick="DataChanged()" />
                                              Aspiration Pneumonia</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk14" runat="server" Text="" OnClick="DataChanged()" />
                                              Drug Reaction/Interaction/Toxicity</b>
                                      </td>
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                      </td>
                                   </tr>
                                   <tr style="height: 5px">
                                      <td colspan="3">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td class="td_label" style="width: 280px"  width="280" height="20">
                                          <b><asp:CheckBox ID="CauseDeath_chk15" runat="server" Text="" OnClick="DataChanged()" />
                                              Other</b>
                                      </td>
                                      <td colspan="2">
                                      </td>
                                   </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 40px" valign="top">
                                    <asp:TextBox ID="CauseDeath_other" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="40"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Immediate Cause of Death</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="Immediate" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Antecedent Cause of Death</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="Antecedent" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Underlying Cause of Death</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="Underlying" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 800px;" align="left" class="td_label">
                                    <b>Significant Conditions</b>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 80px" valign="top">
                                    <asp:TextBox ID="Conditions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="99%" Height="120"></asp:TextBox>
                                </td>
                            </tr>

                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 100px;" align="right" class="td_label">
                                                <b>Entered By:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="enteredby" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 150px;" align="right" class="td_label">
                                                <b>Signature Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:Label ID="SignDate" runat="server" CssClass="infaceText" Width="150px"></asp:Label>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <tr class="tr_common">   
                                            <td style="width: 100px;" align="right" class="td_label">
                                                <b>Reviewed By:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 180px;">
                                                <asp:TextBox ID="MD" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td style="width: 25px">
                                            </td>
                                            <td style="width: 150px;" align="right" class="td_label">
                                                <b>Signature Date:</b>
                                            </td>
                                            <td style="width: 5px">
                                            </td>
                                            <td class="td_unline" style="width: 150px;">
                                                <asp:Label ID="MDSignDate" runat="server" CssClass="infaceText" Width="150px"></asp:Label>
                                            </td>
                                            <td style="width:auto">
                                            </td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 35px">
                                <td>
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
