<%@ Page Language="c#" Inherits="Virweb2.WebList.webMedicalInfo" Codebehind="webMedicalInfo.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::Medical Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript">
    <!--
       
    function doseltd(obj)
    {
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
       else*/
       {
          MD_AS.style.color="";
          //MD_AS.style.cursor="pointer";
          MD_IF.style.color="";
          //MD_IF.style.cursor="pointer";
          MD_MC.style.color="";
          //MD_MC.style.cursor="pointer";
          MD_VT.style.color="";
          //MD_VT.style.cursor="pointer";
          MD_DT.style.color="";
          //MD_DT.style.cursor="pointer";
   
	      obj.style.color="#990066";	
          //obj.style.cursor="auto";         
       }         
	   Medical_AS.style.display="none";
	   Medical_IF.style.display="none";
	   Medical_MC.style.display="none";
	   Medical_VT.style.display="none";
	   Medical_DT.style.display="none";
	   
	   switch(obj.id)
	   {
	      case "MD_AS":
			 Medical_AS.style.display="";
			 document.MedicalInfo.now_div_flag.value="1";	       
		     break;
		  case "MD_IF":    
			 Medical_IF.style.display="";
			 document.MedicalInfo.now_div_flag.value="2"; 		    	
		     break;
		  case "MD_MC":    
			 Medical_MC.style.display="";
			 document.MedicalInfo.now_div_flag.value="3";		    	
		     break;   
		  case "MD_VT":    
			 Medical_VT.style.display="";	
			 document.MedicalInfo.now_div_flag.value="4";		    	 
		     break;    
		  case "MD_DT":    
			 Medical_DT.style.display="";
			 document.MedicalInfo.now_div_flag.value="5"; 		    	
		     break;    
	   }
    }    
    
    ///set div 
    function doseltdbyid(obj_id)
    {
       /*if (isIE())
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
          MD_AS.style.color="#000000";
          //MD_AS.style.cursor="pointer";
          MD_IF.style.color="#000000";
          //MD_IF.style.cursor="pointer";
          MD_MC.style.color="#000000";
          //MD_MC.style.cursor="pointer";
          MD_VT.style.color="#000000";
          //MD_VT.style.cursor="pointer";
          MD_DT.style.color="#000000";
          //MD_DT.style.cursor="pointer";
       }         
	   Medical_AS.style.display="none";
	   Medical_IF.style.display="none";
	   Medical_MC.style.display="none";
	   Medical_VT.style.display="none";
	   Medical_DT.style.display="none";
	  
	   switch(obj_id)
	   {
	      case "MD_AS":
			 Medical_AS.style.display="";
			 MD_AS.style.color="#990066";
             //MD_AS.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="1";	       
		     break;
		  case "MD_IF":    
			 Medical_IF.style.display="";
			 MD_IF.style.color="#990066";
             //MD_IF.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="2"; 		    	
		     break;
		  case "MD_MC":    
			 Medical_MC.style.display="";
			 MD_MC.style.color="#990066";
             //MD_MC.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="3";		    	
		     break;   
		  case "MD_VT":    
			 Medical_VT.style.display="";	
			 MD_VT.style.color="#990066";
             //MD_VT.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="4";		    	 
		     break;    
		  case "MD_DT":    
			 Medical_DT.style.display="";
			 MD_DT.style.color="#990066";
             //MD_DT.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="5"; 		    	
		     break; 
	   }
    }  

    function Message_Click(option)
    {
        var url="../weblist/WebMessagePopup.aspx?txt="+option;            
        window.showModalDialog(url, self,'status:yes;dialogWidth:750px;dialogHeight:400px;help:yes;scroll:yes;resizable:yes');                    
    }

    function doseltdbyflag(flag)
    {
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
          MD_AS.style.color="";
          //MD_AS.style.cursor="pointer";
          MD_IF.style.color="";
          //MD_IF.style.cursor="pointer";
          MD_MC.style.color="";
          //MD_MC.style.cursor="pointer";
          MD_VT.style.color="";
          //MD_VT.style.cursor="pointer";
          MD_DT.style.color="";
          //MD_DT.style.cursor="pointer";
       }         
	   Medical_AS.style.display="none";
	   Medical_IF.style.display="none";
	   Medical_MC.style.display="none";
	   Medical_VT.style.display="none";
	   Medical_DT.style.display="none";

	   switch(flag)
	   {
	      case 1:
			 Medical_AS.style.display="";
			 MD_AS.style.color="#990066";
             //MD_AS.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="1";	       
		     break;
		  case 2:    
			 Medical_IF.style.display="";
			 MD_IF.style.color="#990066";
             //MD_IS.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="2"; 		    	
		     break;
		  case 3:    
			 Medical_MC.style.display="";
			 MD_MC.style.color="#990066";
             //MD_MC.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="3";		    	
		     break;   
		  case 4:    
			 Medical_VT.style.display="";	
			 MD_VT.style.color="#990066";
             //MD_VT.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="4";		    	 
		     break;    
		  case 5:    
			 Medical_DT.style.display="";
			 MD_DT.style.color="#990066";
             //MD_DT.style.cursor="auto";
			 document.MedicalInfo.now_div_flag.value="5"; 		    	
		     break;  
	   }
    }  

    function RefreshMyData()    
    {                  
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '1';        
       window.document.MedicalInfo.submit(); 
       window.focus();   
    }
    
    function print_click()
    {
       
       var flag=document.MedicalInfo.now_div_flag.value.toString();   
       var consumer_key=document.MedicalInfo.consumer_key.value.toString();
       var UserAct=document.MedicalInfo.UserAct.value.toString();   
       if(flag == "1")
       {      
            PopupMessage(10);
       } 
       else
       {
            winhref("PrintMedicalInfo.aspx?c_key="+consumer_key+"&flag="+flag+"&UserAct="+UserAct,"PrintMedicalInfo");
       } 
    }

    function save_click() {
        NoCreateIDNotes();
        return true;
    }

    function back_click() {
        if (Confirm_Page())
           document.location.replace('webConsumerList.aspx'); 
    }

    function esrreport()
    {
          winhref('../ReportList/ReportFormESR11.aspx', 'esr');
    }

    //-->
    </script>    
</head>
<body  id="body"  runat="server" style="cursor:wait" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="MedicalInfo" method="post" runat="server">   
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input id="NoConfirm"  type="hidden" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />  
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" /> 
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" value="Y" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
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
        <td align="left" valign="middle" width="60%">        
            <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Medical For</asp:Label>
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
                    <td id="MD_AS"  style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Assessments</u></b>
                    </td>
                    <td id="MD_IF"  class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Information</u></b>
                    </td>
                    <td id="MD_MC"  class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Medication</u></b>
                    </td>
                    <td id="MD_VT"  class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Medical Visit</u></b>
                    </td>
                    <td id="MD_DT"  class="tab_sel" onclick="doseltd(this);"
                        width="110">
                        <b><u>Doctors</u></b>
                    </td>
                </tr>
            </table>
        </td>
      </tr>
    </table> 
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;Height:100%; overflow: auto ">
    <table class="table_maindiv">
        <tr>
            <td valign="top" align="center" width="100%" height="100%">
                <div id="Medical_AS" align="left" >
                  <br />
                  <br />
                  <font style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold;">
                  <a href="javascript:winhref('https://earlystartreport.dds.ca.org','DDS');">ESR/DDS</a>
                  </font>
                  <br />
                  <br />
                  <font style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold;">
                  <a href="javascript:esrreport();">ES Report</a>
                  </font>
                  <br />
                  <br />
                  <font style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold;">
                  <a href="../FormList/FormCDER08List.aspx">CDER - Client Development Evaluation Report</a> 
                  </font>                 
                </div>
                <div id="Medical_IF" style="display: none" align="left">
                  <table class="table_common" cellspacing="0" cellpadding="0" align="left" border="0">
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                           <table cellspacing="0" cellpadding="0" border="0">
                               <tr>
                                 <td style="width: 120px;" align="left" class="td_label">
                                  <b><asp:Label ID="l_height" runat="server" Text="Current Height:"></asp:Label></b>
                                 </td>
                                 <td width="5" style="width: 5px"></td> 
                                 <td class="td_unline" align="left" width="60" style="width: 60px">
                                  <asp:TextBox ID="height" runat="server" CssClass="inface" Style="width: 60px"
                                     Width="60" MaxLength="10"></asp:TextBox>
                                 </td>
                                 <td width="5" style="width: 5px"></td>
                                 <td style="width: 50px;" align="left" class="td_label">
                                  <b><asp:Label ID="Label1" runat="server" Text="Inches"></asp:Label></b>
                                 </td> 
                                 <td width="5" style="width: 5px"></td>
                                 <td style="width: 120px;" align="left" class="td_label">
                                  <b><asp:Label ID="l_weight" runat="server" Text="Current Weight:"></asp:Label></b>
                                 </td>
                                 <td width="5" style="width: 5px"></td> 
                                 <td class="td_unline" align="left" width="60" style="width: 60px">
                                  <asp:TextBox ID="weight" runat="server" CssClass="inface" Style="width: 60px"
                                     Width="60" MaxLength="10"></asp:TextBox>
                                 </td>
                                 <td width="5" style="width: 5px"></td>
                                 <td style="width: 50px;" align="left" class="td_label">
                                  <b><asp:Label ID="Label3" runat="server" Text="Lbs"></asp:Label></b>
                                 </td> 
                                 <td width="5" style="width: 5px"></td>
                                 <td style="width: 120px;" align="left" class="td_label">
                                  <b><asp:Label ID="l_cderHeight" runat="server" Text="Height in CDER:"></asp:Label></b>
                                 </td>
                                 <td class="td_label" align="left" width="50" style="height: 20px">
                                  <asp:Label ID="cderHeight" runat="server"></asp:Label>
                                 </td>
                                 <td style="width: 50px;" align="left" class="td_label">
                                  <b><asp:Label ID="Label5" runat="server" Text="Inches"></asp:Label></b>
                                 </td> 
                                 <td width="5" style="width: 5px"></td>
                                 <td style="width: 120px;" align="left" class="td_label">
                                  <b><asp:Label ID="l_cderWeight" runat="server" Text="Weight in CDER:"></asp:Label></b>
                                 </td>
                                 <td class="td_label" align="left" width="50" style="height: 20px">
                                  <asp:Label ID="cderWeight" runat="server"></asp:Label>
                                 </td>
                                 <td style="width: 50px;" align="left" class="td_label">
                                  <b><asp:Label ID="Label7" runat="server" Text="Lbs"></asp:Label></b>
                                 </td>    
                                 <td width="5" style="width: 5px"></td>
                                 <td style="width: 200px;" align="left" class="td_label">
                                  <b><asp:checkbox ID="Precaution" runat="server" Text="Universal Precaution Required"></asp:checkbox></b>
                                 </td>
                               </tr>   
                             </table>       
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Current Medical/Health Status</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="status" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="120"></asp:textbox>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Restricted Health Conditions</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Gtube" runat="server" Text="" OnClick="DataChanged()" /></b>G-Tube 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Disease" runat="server" Text="" OnClick="DataChanged()" /></b>Communicable/Infectious Disease 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Oxygen" runat="server" Text="" OnClick="DataChanged()" /></b>Oxygen 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Trach" runat="server" Text="" OnClick="DataChanged()" /></b>Tracheostomy 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Wound" runat="server" Text="" OnClick="DataChanged()" /></b>Wound/Dermal Ulcer 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Inhalation" runat="server" Text="" OnClick="DataChanged()" /></b>Inhalation Device 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="NIDiabetes" runat="server" Text="" OnClick="DataChanged()" /></b>Non-Insulin Dependent Diabetes 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Catheter" runat="server" Text="" OnClick="DataChanged()" /></b>Urinary Catheter 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Diastat" runat="server" Text="" OnClick="DataChanged()" /></b>Diastat 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="IDiabetes" runat="server" Text="" OnClick="DataChanged()" /></b>Insulin Dependent Diabetes 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Colostomy" runat="server" Text="" OnClick="DataChanged()" /></b>Colostomy/Ileostomy 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Enema" runat="server" Text="" OnClick="DataChanged()" /></b>Fecal Impaction, Enema or Suppository 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Special Health Needs</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Seizure" runat="server" Text="" OnClick="DataChanged()" /></b>Seizure Disorder 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Constipation" runat="server" Text="" OnClick="DataChanged()" /></b>Constipation/Hx of Obstruction 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="ADL" runat="server" Text="" OnClick="DataChanged()" /></b>ADL Dependence 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="VNS" runat="server" Text="" OnClick="DataChanged()" /></b>VNS 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Anticoag" runat="server" Text="" OnClick="DataChanged()" /></b>Anticoagulant Medication 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Baclofen" runat="server" Text="" OnClick="DataChanged()" /></b>Baclofen Pump 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Dialysis" runat="server" Text="" OnClick="DataChanged()" /></b>Renal Dialysis 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Eating" runat="server" Text="" OnClick="DataChanged()" /></b>Eating Disorder 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Epipen" runat="server" Text="" OnClick="DataChanged()" /></b>Epipen 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Suctioning" runat="server" Text="" OnClick="DataChanged()" /></b>Suctioning 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                          <b><asp:CheckBox ID="Pacemaker" runat="server" Text="" OnClick="DataChanged()" /></b>Pacemaker 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Special Health Care Requirements (from CDER)</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="cderequipment" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="40" ReadOnly="false" CssClass="infaceText"></asp:textbox>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Additional Special Health Needs</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="equipment" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="60" ></asp:textbox>

                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="image" id="Image1" runat="server" alt="Message" style="width: 25px; height: 25px;position:relative;left:-15px;top:-13px;"
                                src="../img/help.ico" title="Send Message"
                                onclick="javascript:Message_Click('Note any special equipment.  List chronic health care issues such as diabetes, allergies and note the treatment plan, if any.');return false;" />
                

                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Special Diet</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          (As Reported By Family, Facility, Etc.)
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="specialdiet" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="60"></asp:textbox>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Allergies / Reactions to Medications or other Substances / Medication Side Effects</b>&nbsp;&nbsp;&nbsp;
                          (As Reported By Family, Facility, Etc.)
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="allergies" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="60"></asp:textbox>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Dental Health</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="dentalhealth" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="80"></asp:textbox>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b>Other Tests and Medication</b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                         <asp:textbox id="tbpositive" textmode="MultiLine" Wrap="true"  
                             BorderStyle="Solid" runat="server" width="90%" height="80"></asp:textbox>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td colspan="3">
                          <b><asp:Label ID="l_gender" runat="server" Text="Women's Health"></asp:Label></b>
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_lastmenses" runat="server" Text="Last Menses:"></asp:Label>
                                     <asp:Label ID="l_prostateexam" runat="server" Text="Last Prostate Exam:" Visible="false"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:TextBox ID="lastmenses" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                        onfocus="DataChanged();showcalendar(event, this);" ></asp:TextBox>
                                     <asp:TextBox ID="prostateexam" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                        onfocus="DataChanged();showcalendar(event, this);" Visible="false"></asp:TextBox>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_gynexam" runat="server" Text="Last Gynecological Exam:"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:TextBox ID="gynexam" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                        onfocus="DataChanged();showcalendar(event, this);" ></asp:TextBox>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_mammogram" runat="server" Text="Last Mammogram:"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:TextBox ID="mammogram" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                        onfocus="DataChanged();showcalendar(event, this);" ></asp:TextBox>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_mensesreg" runat="server" Text="Regular Menses:"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:TextBox ID="mensesreg" runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_papsmear" runat="server" Text="Last Pap Smear:"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:TextBox ID="papsmear" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                        onfocus="DataChanged();showcalendar(event, this);" ></asp:TextBox>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                       <td style="width: 280px" align="left" width="280" height="20">
                       </td>
                     </tr>
                     <tr style="height: 5px">
                       <td colspan="3">
                       </td>
                     </tr>
                     <tr class="tr_common">
                       <td style="width: 280px" align="left" width="280" height="20">
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_birthcontrol" runat="server" Text="Birth Control:"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:DropDownList ID="birthcontrol" runat="server" CssClass="inface" OnClick="DataChanged()">
                                         <asp:ListItem Value=""></asp:ListItem>
                                         <asp:ListItem Value="Y">Yes</asp:ListItem>
                                         <asp:ListItem Value="N">No</asp:ListItem>
                                     </asp:DropDownList>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                       <td colspan=2>
                               <table cellspacing="0" cellpadding="0" border="0">                               
                                 <tr>
                                   <td style="width: 170px" align="right" width="170" class="td_label">
                                     <b><asp:Label ID="l_birthcontroltype" runat="server" Text="Birth Control Type:"></asp:Label>
                                     </b>
                                   </td>
                                   <td width="5" style="height: 20px"></td> 
                                   <td class="td_unline" align="left" width="100" style="height: 20px">
                                     <asp:TextBox ID="birthcontroltype" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                   </td>  
                                 </tr>   
                               </table> 
                       </td>
                     </tr>
                  </table>
                </div>
                <div id="Medical_MC" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
	                                <td align="left">
			                           <asp:label id="l_MedicationList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">MEDICATION(s) LIST</asp:label>
			                        </td>
			                        <td align="left" width="300px">
				                       <asp:Button ID="BtnAddMC" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px" Visible="false"></asp:Button>
                                    </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr style="height:10px;">
                            <td>
                            </td>
                       </tr>
                       <tr style="height:25px;">
                            <td>
                            <b>CURRENT MEDICATION LIST</b>
                            </td>
                       </tr>
                       <tr>
                            <td>
				        <asp:datagrid id="dg_medicationlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="medication" HeaderText="Current Medication(s)" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="dosage" HeaderText="Dosage" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="frequency" HeaderText="Frequency" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="purpose" HeaderText="Reason For Use" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			           </tr>   
                       <tr style="height:10px;">
                            <td>
                            </td>
                       </tr>
                       <tr style="height:25px;">
                            <td>
                            <b>DISCONTINUED MEDICATION LIST</b>
                            </td>
                       </tr>
                       <tr>
                            <td>
				        <asp:datagrid id="dg_medicationdiscontlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="medication" HeaderText="Discontinued Medication(s)" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="dosage" HeaderText="Dosage" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="frequency" HeaderText="Frequency" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="purpose" HeaderText="Reason For Use" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>       
                    </table>
                </div>
                <div id="Medical_VT" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
	                                <td align="left">
			                           <asp:label id="l_MedVisitList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">MEDICAL VISIT LIST</asp:label>
			                        </td>
			                        <td align="left" width="300px">
				                       <asp:Button ID="BtnAddVT" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px" Visible="false"></asp:Button>
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
                            <td>
				        <asp:datagrid id="dg_medvisitlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="EntryDate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="eventdate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="appttype" HeaderText="Type" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="doctorname" HeaderText="Doctor" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="doctortype" HeaderText="Specialty" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="doctorcomments" HeaderText="Details" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>     
                    </table>
                </div>
                <div id="Medical_DT" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
	                                <td align="left">
			                           <asp:label id="l_meddoctorlist" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">MEDICAL DOCTOR LIST</asp:label>
			                        </td>
			                        <td align="left" width="300px">
				                       <asp:Button ID="BtnAddDT" Runat="server" Text="Add" CssClass="buttonbluestyle" Style="width:125px" Visible="false"></asp:Button>
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
				        <asp:datagrid id="dg_meddoctorlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="s_number" HeaderText="s_number" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="Relationship" HeaderText="Doctor Type" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Name" HeaderText="Name" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="s_phone_1" HeaderText="Phone #" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="phone3full" HeaderText="Other #" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="Address" HeaderText="Current Address" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="NoProvider" HeaderText="No Longer a Provider" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_view" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
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
