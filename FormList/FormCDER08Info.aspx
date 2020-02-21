<%@ Page Language="C#" Inherits="Virweb2.FormList.FormCDER08Info" Codebehind="FormCDER08Info.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::CDER08--Client Development Evaluation Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
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
          else */
          {
             CDER_DE.style.color="";
             //CDER_DE.style.cursor="pointer";
             CDER_EE.style.color="";
             //CDER_EE.style.cursor="pointer";
             CDER_EN.style.color="";
             //CDER_EN.style.cursor = "pointer";
                       
             obj.style.color = "#990066";
             //obj.style.cursor="auto"; 	         
          }    
          Cder_DE.style.display="none";
          Cder_EE.style.display = "none";
          Cder_EN.style.display = "none";
	      switch(obj.id)
	      {
	          case "CDER_DE":
	              Cder_DE.style.display = "";
	              document.CderInfo.now_div_flag.value = "1";	    
	              break;
	          case "CDER_EE":
	              Cder_EE.style.display="";
	              document.CderInfo.now_div_flag.value = "2";
	              break;
	          case "CDER_EN":
	              Cder_EN.style.display = "";
	              document.CderInfo.now_div_flag.value = "3";
	              break;      
	      }          
       }

       function doseltdbyid(obj_id) 
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
               CDER_DE.style.color = "";
               //CDER_DE.style.cursor="pointer";
               CDER_EE.style.color = "";
               //CDER_EE.style.cursor="pointer";
               CDER_EN.style.color = "";
               //CDER_EN.style.cursor = "pointer";
           }
           Cder_DE.style.display = "none";
           Cder_EE.style.display = "none";
           Cder_EN.style.display = "none";

           switch (obj_id) {
               case "CDER_DE":
                   Cder_DE.style.display = "";
                   CDER_DE.style.color = "#990066";
                   //CDER_DE.style.cursor="auto";
                   document.CderInfo.now_div_flag.value = "1";
                   break;
               case "CDER_EE":
                   Cder_EE.style.display = "";
                   CDER_EE.style.color = "#990066";
                   //CDER_EE.style.cursor="auto";
                   document.CderInfo.now_div_flag.value = "2";
                   break;
               case "CDER_EN":
                   Cder_EN.style.display = "";
                   CDER_EN.style.color = "#990066";
                   //CDER_EN.style.cursor="auto";
                   document.CderInfo.now_div_flag.value = "3";
                   break;
           }
       }  

       function doseltdbyflag(flag) 
       {
           /*
           if (isIE())
           {  
              for(var i=0;i<tr_info.childNodes.length;i++)
              {
                 var e=tr_info.childNodes[i];

                 //e.background="../img/lable_unselect.gif";
                 e.style.color="#000000";
                 e.style.cursor="hand";
              }
           }
           else
           */
           {
               CDER_DE.style.color = "";
               //CDER_DE.style.cursor="pointer";
               CDER_EE.style.color = "";
               //CDER_EE.style.cursor="pointer";
               CDER_EN.style.color = "";
               //CDER_EN.style.cursor = "pointer";
           }
           Cder_DE.style.display = "none";
           Cder_EE.style.display = "none";
           Cder_EN.style.display = "none";

           switch (flag) 
           {
               case 1:
                   Cder_DE.style.display = "";
                   CDER_DE.style.color = "#990066";
                   //CDER_DE.style.cursor="auto";
                   document.CderInfo.now_div_flag.value = "1";
                   break;
               case 2:
                   Cder_EE.style.display = "";
                   CDER_EE.style.color = "#990066";
                   //CDER_EE.style.cursor="auto";
                   document.CderInfo.now_div_flag.value = "2";
                   break;
               case 3:
                   Cder_EN.style.display = "";
                   CDER_EN.style.color = "#990066";
                   //CDER_EN.style.cursor="auto";
                   document.CderInfo.now_div_flag.value = "3";
                   break;     
           }
       }

       function print_click() {
           // PopupMessage(10);
           var flag=document.CderInfo.now_div_flag.value.toString();   
           var consumer_key=document.CderInfo.consumer_key.value.toString();
           var entrykey=document.CderInfo.entrykey.value.toString();
           var UserAct = document.CderInfo.UserAct.value.toString();
           var url = "PrintFormCDER08Info.aspx?uci=" + consumer_key + "&entrykey=" + entrykey + "&flag=" + flag + "&UserAct=" + UserAct;
           //winhref('PrintFormCDER08Info.aspx?uci="+consumer_key+"&entrykey="+strEntrykey+"&flag="+flag+"&UserAct="+UserAct+"', 'PrintFormCDER08Info');
           //winhref('PrintFormCDER08Info.aspx?uci="+consumer_key+"&entrykey="+strEntrykey+"&flag="+flag+"&UserAct="+UserAct+"', 'PrintFormCDER08Info');
           winhref(url, 'PrintFormCDER08Info');
           
       }

       
       function save_click() {
           // Check Interge for Weight/Height
           if ((document.getElementById('hgt').value != "") && (!IsInteger(document.getElementById('hgt').value)))
           {
              alert('Height needs to be an integer');
              return false; 
           }
           if ((document.getElementById('wgt').value != "") && (!IsInteger(document.getElementById('wgt').value)))
           {
              alert('Weight needs to be an integer');
              return false; 
           }

           // group 1
           var lvlrtd = document.getElementById('lvlrtd');
           var mr1 = document.getElementById('mr1');
           var dtemre = document.getElementById('dtemre');
           if (!(lvlrtd.disabled)) {
               if ((lvlrtd.value != "") &&
               ((mr1.value == "") || (dtemre.value == ""))) {
                   alert('The following fields are required:\nintellectual disability-11. 12a. 13.');
                   return false;
               }
           }

           // group 2
           var prsncp = document.getElementById('prsncp');
           var cpet01 = document.getElementById('cpet01');
           var cpet01_text = document.getElementById('cpet01_text');
           var svrmd = document.getElementById('svrmd');
           var typemd = document.getElementById('typemd');
           var locmd = document.getElementById('locmd');
           var mdimp = document.getElementById('mdimp');
           if (!(prsncp.disabled)) {
               if ((prsncp.value != "") &&
               ((cpet01.value == "") || (svrmd.value == "") || (typemd.value == "") || (locmd.value == "") && (mdimp.value == ""))) {
                   alert('The following fields are required:\nCerebral Palsy-17. 18a. 19. 20. 21. 22.');
                   return false;
               }
           }

           // group 3
           var prsaut = document.getElementById('prsaut');
           var prsoth = document.getElementById('prsoth');
           var autsm1 = document.getElementById('autsm1');
           var autsm1_text = document.getElementById('autsm1_text');
           var autdat = document.getElementById('autdat');
           var autimp = document.getElementById('autimp');
           if (!(prsaut.disabled)) {
               if ((prsaut.value != "") &&
               ((prsoth.value == "") || (autsm1.value == "") || (autdat.value == "") || (autimp.value == ""))) {
                   alert('The following fields are required:\nAUTISM-23a. 23b. 24a. 25. 26.');
                   return false;
               }
           }

           // group 4
           var typsz1 = document.getElementById('typsz1');
           var szfrq1 = document.getElementById('szfrq1');
           var szimp1 = document.getElementById('szimp1');
           var eplp1 = document.getElementById('eplp1');
           var eplp1_text = document.getElementById('eplp1_text');
           var antcnv = document.getElementById('antcnv');
           var stepls = document.getElementById('stepls');
           if (!(typsz1.disabled)) {
               if (((typsz1.value != "") && (typsz1.value != "0")) &&
               ((szfrq1.value == "") || (szimp1.value == "") || (eplp1.value == "") || (antcnv.value == "") || (stepls.value == ""))) {
                   alert('The following fields are required:\nEpilepsy-C27a. 27b. 27c. 30a. 31. 32.');
                   return false;
               }
           }

           // group 5
           var typsz2 = document.getElementById('typsz2');
           var szfrq2 = document.getElementById('szfrq2');
           var szimp2 = document.getElementById('szimp2');
           if (!(typsz2.disabled)) {
               if (((typsz2.value != "") && (typsz2.value != "0")) &&
               ((szfrq2.value == "") || (szimp2.value == ""))) {
                   alert('The following fields are required:\nEpilepsy-C28a. 28b. 28c.');
                   return false;
               }
           }

           // group 15
           var typsz3 = document.getElementById('typsz3');
           var szfrq3 = document.getElementById('szfrq3');
           var szimp3 = document.getElementById('szimp3');
           if (!(typsz3.disabled)) {
               if (((typsz3.value != "") && (typsz3.value != "0")) &&
               ((szfrq3.value == "") || (szimp3.value == ""))) {
                   alert('The following fields are required:\nEpilepsy-C29a. 29b. 29c.');
                   return false;
               }
           }

           // group 6
           var othdis = document.getElementById('othdis');
           var othdd1 = document.getElementById('othdd1');
           var oth1et = document.getElementById('oth1et');
           if (!(othdis.disabled)) {
               if ((othdis.value != "") &&
               ((othdd1.value == "") || (oth1et.value == ""))) {
                   alert('The following fields are required:\nOther Disability-C33. 33a. 34a.');
                   return false;
               }
           }

           // group 7
           var mntla1 = document.getElementById('mntla1');
           var dtmna1 = document.getElementById('dtmna1');
           var mimpa1 = document.getElementById('mimpa1');
           if (!(mntla1.readOnly)) {
               if ((mntla1.value != "") &&
               ((dtmna1.value == "") || (mimpa1.value == ""))) {
                   alert('The following fields are required:\nPsychiatric Disorders-C50a. 50b. 50c');
                   return false;
               }
           }
           
           // group 16 
           var mntlb1 = document.getElementById('mntlb1');
           var dtmnb1 = document.getElementById('dtmnb1');
           var mimpb1 = document.getElementById('mimpb1');
           if (!(mntlb1.readOnly)) {
               if ((mntlb1.value != "") &&
               ((dtmnb1.value == "") || (mimpb1.value == ""))) {
                   alert('The following fields are required:\nPsychiatric Disorders-C52a. 52b. 52c.');
                   return false;
               }
           }

           // group 8
           var mntla2 = document.getElementById('mntla2');
           var dtmna2 = document.getElementById('dtmna2');
           var mimpa2 = document.getElementById('mimpa2');
           if (!(mntla2.readOnly)) {
               if ((mntla2.value != "") &&
               ((dtmna2.value == "") || (mimpa2.value == ""))) {
                   alert('The following fields are required:\nPsychiatric Disorders-C51a. 51b. 51c');
                   return false;
               }
           }

           // group 17
           var mntlb2 = document.getElementById('mntlb2');
           var dtmnb2 = document.getElementById('dtmnb2');
           var mimpb2 = document.getElementById('mimpb2');
           if (!(mntlb2.readOnly)) {
               if ((mntlb2.value != "") &&
               ((dtmnb2.value == "") || (mimpb2.value == ""))) {
                   alert('The following fields are required:\nPsychiatric Disorders-C53a. 53b. 53c.');
                   return false;
               }
           }

           // group 9
           var chrmc1 = document.getElementById('chrmc1');
           var chrim1 = document.getElementById('chrim1');
           if (!(chrmc1.readOnly)) {
               if ((chrmc1.value != "") && (chrim1 == "")) {
                   alert('The following fields are required:\nChronic Major Medical Conditions-C54a. 54b.');
                   return false;
               }
           }

           // group 10
           var chrmc2 = document.getElementById('chrmc2');
           var chrim2 = document.getElementById('chrim2');
           if (!(chrmc2.readOnly)) {
               if ((chrmc2.value != "") && (chrim2 == "")) {
                   alert('The following fields are required:\nChronic Major Medical Conditions-C55a. 55b.');
                   return false;
               }
           }

           // group 11
           var chrmc3 = document.getElementById('chrmc3');
           var chrim3 = document.getElementById('chrim3');
           if (!(chrmc3.readOnly)) {
               if ((chrmc3.value != "") && (chrim3 == "")) {
                   alert('The following fields are required:\nChronic Major Medical Conditions-C56a. 56b.');
                   return false;
               }
           }

           // group 12
           var chrmc4 = document.getElementById('chrmc4');
           var chrim4 = document.getElementById('chrim4');
           if (!(chrmc4.readOnly)) {
               if ((chrmc4.value != "") && (chrim4 == "")) {
                   alert('The following fields are required:\nChronic Major Medical Conditions-C57a. 57b.');
                   return false;
               }
           }

           // group 13
           var chrmc5 = document.getElementById('chrmc5');
           var chrim5 = document.getElementById('chrim5');
           if (!(chrmc5.readOnly)) {
               if ((chrmc5.value != "") && (chrim5 == "")) {
                   alert('The following fields are required:\nChronic Major Medical Conditions-C58a. 58b.');
                   return false;
               }
           }

           // group 14
           var chrmc6 = document.getElementById('chrmc6');
           var chrim6 = document.getElementById('chrim6');
           if (!(chrmc6.readOnly)) {
               if ((chrmc6.value != "") && (chrim6 == "")) {
                   alert('The following fields are required:\nChronic Major Medical Conditions-C59a. 59b.');
                   return false;
               }
           }

           if (((!document.CderInfo.walknghistory_yes.checked) && (!document.CderInfo.walknghistory_no.checked)) ||
                ((!document.CderInfo.whlusehistory_yes.checked) && (!document.CderInfo.whlusehistory_no.checked)) ||
                ((!document.CderInfo.takmedhistory_yes.checked) && (!document.CderInfo.takmedhistory_no.checked)) ||
                ((!document.CderInfo.eatinghistory_yes.checked) && (!document.CderInfo.eatinghistory_no.checked)) ||
                ((!document.CderInfo.tltnghistory_yes.checked) && (!document.CderInfo.tltnghistory_no.checked)) ||
                ((!document.CderInfo.bbctrlhistory_yes.checked) && (!document.CderInfo.bbctrlhistory_no.checked)) ||
                ((!document.CderInfo.prshyghistory_yes.checked) && (!document.CderInfo.prshyghistory_no.checked)) ||
                ((!document.CderInfo.drssnghistory_yes.checked) && (!document.CderInfo.drssnghistory_no.checked)) ||
                ((!document.CderInfo.safetyhistory_yes.checked) && (!document.CderInfo.safetyhistory_no.checked)) ||
                ((!document.CderInfo.disbhvhistory_yes.checked) && (!document.CderInfo.disbhvhistory_no.checked)) ||
                ((!document.CderInfo.aggrsnhistory_yes.checked) && (!document.CderInfo.aggrsnhistory_no.checked)) ||
                ((!document.CderInfo.sevsihistory_yes.checked) && (!document.CderInfo.sevsihistory_no.checked)) ||
                ((!document.CderInfo.dstrprhistory_yes.checked) && (!document.CderInfo.dstrprhistory_no.checked)) ||
                ((!document.CderInfo.rnwndhistory_yes.checked) && (!document.CderInfo.rnwndhistory_no.checked)) ||
                ((!document.CderInfo.emoouthistory_yes.checked) && (!document.CderInfo.emoouthistory_no.checked))) 
           {
               alert('Must Complete Evaluation Narrative History in Order to Save');
               return false;
           }

           CheckValidated('Validated');

           NoCreateIDNotes();
           return true;
       }

       function verify_click() {
           document.getElementById("Validated").checked = true;
           return save_click();
       }

       function back_click() {
           if (Confirm_Page())
              document.location.replace('FormCDER08List.aspx');
       }

       function confirm(str) {
           execScript("n = (msgbox('" + str + "',vbYesNo,'Virtual Chart')=vbYes)", "vbscript");
           return (n); 
       }  

       function confirm_clear(ddlid,flag) 
       {
           switch (ddlid) 
           {
               case "group1":
                   var lvlrtd = document.getElementById('lvlrtd');
                   var mr1 = document.getElementById('mr1');
                   var dtemre = document.getElementById('dtemre');
                   var mr1_text = document.getElementById('mr1_text');
                   //if ((lvlrtd.options[lvlrtd.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") == "") && (flag.toString() == "0") 
                   if (((lvlrtd.value == "") && (flag.toString() == "0"))
                       && ((mr1.value != "") || (dtemre.value != "") || (mr1_text.value != "")))
                   {
                       if (confirm('Do you want to clear out all data for the \"intellectual disability\" section?')) 
                       {
                           dtemre.value = "";
                           mr1.value = "";
                           mr1_text.value = "";
                       }
                   }

                   //if ((lvlrtd.options[lvlrtd.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") == "")
                   // || (mr1.value.replace(/(^\s*)|(\s*$)/g, "") != "" && dtemre.value.replace(/(^\s*)|(\s*$)/g, "") != ""))
                   if ((lvlrtd.value != "") && ((mr1.value == "") || (dtemre.value == ""))) 
                   {
                       lvlrtd.style.backgroundColor = "#ffaeae";
                       mr1.style.backgroundColor = "#ffaeae";
                       dtemre.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag1.value = "1";
                   }
                   else
                   {
                       lvlrtd.style.backgroundColor = "#ffffff";
                       mr1.style.backgroundColor = "#ffffff";
                       dtemre.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag1.value = "0";
                   }
                   break;

               case "group2":
                   var prsncp = document.getElementById('prsncp');
                   var cpet01 = document.getElementById('cpet01');
                   var cpet01_text = document.getElementById('cpet01_text');
                   var svrmd = document.getElementById('svrmd');
                   var typemd = document.getElementById('typemd');
                   var locmd = document.getElementById('locmd');
                   var mdimp = document.getElementById('mdimp');
                   //if ((prsncp.options[prsncp.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") == "" && flag.toString() == "0")
                   if (((prsncp.value == "") && (flag.toString() == "0"))
                       && ((cpet01.value != "") || (cpet01_text.value != "") || (svrmd.value != "") || (typemd.value != "") || (locmd.value != "") || (mdimp.value != ""))) 
                   {
                       if (confirm('Do you want to clear out all data for the \"Cerebral Palsy\" section?')) 
                       {
                           cpet01.value = "";
                           cpet01_text.value = "";
                           svrmd.value = "";
                           typemd.value = "";
                           locmd.value = "";
                           mdimp.value = "";
                       }
                   }

                   //if (prsncp.options[prsncp.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& cpet01.value.replace(/(^\s*)|(\s*$)/g, "") != "" && svrmd.options[svrmd.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& typemd.options[typemd.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& locmd.options[locmd.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& mdimp.options[mdimp.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "")
                   if ((prsncp.value != "") &&
                       ((cpet01.value == "") || (svrmd.value == "") || (typemd.value == "") || (locmd.value == "") && (mdimp.value == ""))) 
                   {
                       prsncp.style.backgroundColor = "#ffaeae";
                       cpet01.style.backgroundColor = "#ffaeae";
                       svrmd.style.backgroundColor = "#ffaeae";
                       typemd.style.backgroundColor = "#ffaeae";
                       locmd.style.backgroundColor = "#ffaeae";
                       mdimp.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag2.value = "1";
                   }
                   else
                   {
                       prsncp.style.backgroundColor = "#ffffff";
                       cpet01.style.backgroundColor = "#ffffff";
                       svrmd.style.backgroundColor = "#ffffff";
                       typemd.style.backgroundColor = "#ffffff";
                       locmd.style.backgroundColor = "#ffffff";
                       mdimp.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag2.value = "0";
                   }
                   break;

               case "group3":
                   var prsaut = document.getElementById('prsaut');
                   var prsoth = document.getElementById('prsoth');
                   var autsm1 = document.getElementById('autsm1');
                   var autsm1_text = document.getElementById('autsm1_text');
                   var autdat = document.getElementById('autdat');
                   var autimp = document.getElementById('autimp');
                   //if (prsaut.options[prsaut.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") == "" && flag.toString() == "0") 
                   if (((prsaut.value == "") && (flag.toString() == "0"))
                       && ((prsoth.value != "") || (autsm1.value != "") || (autsm1_text.value != "") || (autdat.value != "") || (autimp.value != ""))) 
                   {
                       if (confirm('Do you want to clear out all data for the \"AUTISM\" section?')) 
                       {
                           prsoth.value = "";
                           autsm1.value = "";
                           autsm1_text.value = "";
                           autdat.value = "";
                           autimp.value = "";
                       }
                   }

                   //if (prsaut.options[prsaut.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& prsoth.options[prsoth.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& autsm1.value.replace(/(^\s*)|(\s*$)/g, "") != "" && autdat.value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& autimp.options[autimp.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((prsaut.value != "") &&
                       ((prsoth.value == "") || (autsm1.value == "") || (autdat.value == "") || (autimp.value == ""))) 
                   {
                       prsaut.style.backgroundColor = "#ffaeae";
                       prsoth.style.backgroundColor = "#ffaeae";
                       autsm1.style.backgroundColor = "#ffaeae";
                       autdat.style.backgroundColor = "#ffaeae";
                       autimp.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag3.value = "1";
                   }
                   else
                   {   
                       prsaut.style.backgroundColor = "#ffffff";
                       prsoth.style.backgroundColor = "#ffffff";
                       autsm1.style.backgroundColor = "#ffffff";
                       autdat.style.backgroundColor = "#ffffff";
                       autimp.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag3.value = "0";
                   }
                   break;

               case "group4":
                   var typsz1 = document.getElementById('typsz1');
                   var szfrq1 = document.getElementById('szfrq1');
                   var szimp1 = document.getElementById('szimp1');
                   var eplp1 = document.getElementById('eplp1');
                   var eplp1_text = document.getElementById('eplp1_text');
                   var antcnv = document.getElementById('antcnv');
                   var stepls = document.getElementById('stepls');
                   // if (typsz1.options[typsz1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") == "" && flag.toString() == "0") 
                   if ((((typsz1.value == "") || (typsz1.value == "0")) && (flag.toString() == "0"))
                       && ((szfrq1.value != "") || (szimp1.value != "") || (eplp1.value != "") || (eplp1_text.value != "") || (antcnv.value != "") || (stepls.value != ""))) 
                   {
                       if (confirm('Do you want to clear out all data for the \"Epilepsy\" section?')) 
                       {
                           szfrq1.value = "";
                           szimp1.value = "";
                           eplp1.value = "";
                           eplp1_text.value = "";
                           antcnv.value = "";
                           stepls.value = "";
                       }
                   }

                   //if (typsz1.options[typsz1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& szfrq1.options[szfrq1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& szimp1.options[szimp1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& eplp1.value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& antcnv.options[antcnv.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& stepls.options[stepls.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if (((typsz1.value != "") && (typsz1.value != "0")) &&
                       ((szfrq1.value == "") || (szimp1.value == "") || (eplp1.value == "") || (antcnv.value == "") || (stepls.value == "")))  
                   {
                       typsz1.style.backgroundColor = "#ffaeae";
                       szfrq1.style.backgroundColor = "#ffaeae";
                       szimp1.style.backgroundColor = "#ffaeae";
                       eplp1.style.backgroundColor = "#ffaeae";
                       antcnv.style.backgroundColor = "#ffaeae";
                       stepls.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag4.value = "1";
                   }
                   else
                   {
                       typsz1.style.backgroundColor = "#ffffff";
                       szfrq1.style.backgroundColor = "#ffffff";
                       szimp1.style.backgroundColor = "#ffffff";
                       eplp1.style.backgroundColor = "#ffffff";
                       antcnv.style.backgroundColor = "#ffffff";
                       stepls.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag4.value = "0";
                   }                    
                   break;

               case "group5":
                   var typsz2 = document.getElementById('typsz2');
                   var szfrq2 = document.getElementById('szfrq2');
                   var szimp2 = document.getElementById('szimp2');
                   //if (typsz2.options[typsz2.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& szfrq2.options[szfrq2.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& szimp2.options[szimp2.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if (((typsz2.value != "") && (typsz2.value != "0")) &&
                       ((szfrq2.value == "") || (szimp2.value == ""))) 
                   {
                       typsz2.style.backgroundColor = "#ffaeae";
                       szfrq2.style.backgroundColor = "#ffaeae";
                       szimp2.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag5.value = "1";
                   }
                   else
                   {
                       typsz2.style.backgroundColor = "#ffffff";
                       szfrq2.style.backgroundColor = "#ffffff";
                       szimp2.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag5.value = "0";
                   }
                   break;

               case "group15":
                   var typsz3 = document.getElementById('typsz3');
                   var szfrq3 = document.getElementById('szfrq3');
                   var szimp3 = document.getElementById('szimp3');
                   //if (typsz3.options[typsz3.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& szfrq3.options[szfrq3.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& szimp3.options[szimp3.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if (((typsz3.value != "") && (typsz3.value != "0")) &&
                       ((szfrq3.value == "") || (szimp3.value == ""))) 
                   {
                       typsz3.style.backgroundColor = "#ffaeae";
                       szfrq3.style.backgroundColor = "#ffaeae";
                       szimp3.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag15.value = "1";
                   }
                   else
                   {
                       typsz3.style.backgroundColor = "#ffffff";
                       szfrq3.style.backgroundColor = "#ffffff";
                       szimp3.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag15.value = "0";
                   }
                   break;

               case "group6":
                   var othdis = document.getElementById('othdis');
                   var othdd1 = document.getElementById('othdd1');
                   var oth1et = document.getElementById('oth1et');
                   //if (othdis.options[othdis.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& othdd1.value.replace(/(^\s*)|(\s*$)/g, "") != "" && oth1et.value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((othdis.value != "") &&
                       ((othdd1.value == "") || (oth1et.value == ""))) 
                   {
                       othdis.style.backgroundColor = "#ffaeae";
                       othdd1.style.backgroundColor = "#ffaeae";
                       oth1et.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag6.value = "1";
                   }    
                   else     
                   {
                       othdis.style.backgroundColor = "#ffffff";
                       othdd1.style.backgroundColor = "#ffffff";
                       oth1et.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag6.value = "0";
                   }
                   break;

               case "group7":
                   var mntla1 = document.getElementById('mntla1');
                   var dtmna1 = document.getElementById('dtmna1');
                   var mimpa1 = document.getElementById('mimpa1');
                   //if (mimpa1.options[mimpa1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& dtmna1.value.replace(/(^\s*)|(\s*$)/g, "") != "" && mntla1.value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& mimpb1.options[mimpb1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& dtmnb1.value.replace(/(^\s*)|(\s*$)/g, "") != "" && mntlb1.value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((mntla1.value != "") &&
                       ((dtmna1.value == "") || (mimpa1.value == ""))) {
                       mntla1.style.backgroundColor = "#ffaeae";
                       dtmna1.style.backgroundColor = "#ffaeae";
                       mimpa1.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag7.value = "1";
                   }
                   else {
                       mntla1.style.backgroundColor = "#ffffff";
                       dtmna1.style.backgroundColor = "#ffffff";
                       mimpa1.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag7.value = "0";
                   }
                   break;

               case "group16":
                   var mntlb1 = document.getElementById('mntlb1');
                   var dtmnb1 = document.getElementById('dtmnb1');
                   var mimpb1 = document.getElementById('mimpb1');
                   if ((mntlb1.value != "") &&
                       ((dtmnb1.value == "") || (mimpb1.value == ""))) 
                   {
                       mntlb1.style.backgroundColor = "#ffaeae";
                       dtmnb1.style.backgroundColor = "#ffaeae";
                       mimpb1.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag16.value = "1";
                   }
                   else 
                   {
                       mntlb1.style.backgroundColor = "#ffffff";
                       dtmnb1.style.backgroundColor = "#ffffff";
                       mimpb1.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag16.value = "0";
                   }
                   break;

               case "group8":
                   var mntla2 = document.getElementById('mntla2');
                   var dtmna2 = document.getElementById('dtmna2');
                   var mimpa2 = document.getElementById('mimpa2');
                   //if (mimpa2.options[mimpa2.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& dtmna2.value.replace(/(^\s*)|(\s*$)/g, "") != "" && mntla2.value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& mimpb2.options[mimpb2.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != ""
                   //&& dtmnb2.value.replace(/(^\s*)|(\s*$)/g, "") != "" && mntlb2.value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((mntla2.value != "") &&
                       ((dtmna2.value == "") || (mimpa2.value == ""))) 
                   {
                       mntla2.style.backgroundColor = "#ffaeae";
                       dtmna2.style.backgroundColor = "#ffaeae";
                       mimpa2.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag8.value = "1";
                   }
                   else 
                   {
                       mntla2.style.backgroundColor = "#ffffff";
                       dtmna2.style.backgroundColor = "#ffffff";
                       mimpa2.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag8.value = "0";
                   }
                   break;

               case "group17":
                   var mntlb2 = document.getElementById('mntlb2');
                   var dtmnb2 = document.getElementById('dtmnb2');
                   var mimpb2 = document.getElementById('mimpb2');
                   if ((mntlb2.value != "") &&
                       ((dtmnb2.value == "") || (mimpb2.value == ""))) 
                   {
                       mntlb2.style.backgroundColor = "#ffaeae";
                       dtmnb2.style.backgroundColor = "#ffaeae";
                       mimpb2.style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag8.value = "1";
                   }
                   else 
                   {
                       mntlb2.style.backgroundColor = "#ffffff";
                       dtmnb2.style.backgroundColor = "#ffffff";
                       mimpb2.style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag8.value = "0";
                   }
                   break;

               case "group9":
                   var chrmc1 = document.getElementById('chrmc1');
                   var chrim1 = document.getElementById('chrim1');
                   // if (chrmc1.value.replace(/(^\s*)|(\s*$)/g, "") != "" && chrim1.options[chrim1.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((chrmc1.value != "") && (chrim1 == ""))
                   {
                       document.getElementById('chrmc1').style.backgroundColor = "#ffaeae";
                       document.getElementById('chrim1').style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag9.value = "1";
                   }
                   else 
                   {
                       document.getElementById('chrmc1').style.backgroundColor = "#ffffff";
                       document.getElementById('chrim1').style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag9.value = "0";
                   }
                   break;

               case "group10":
                   var chrmc2 = document.getElementById('chrmc2');
                   var chrim2 = document.getElementById('chrim2');
                   //if (chrmc2.value.replace(/(^\s*)|(\s*$)/g, "") != "" && chrim2.options[chrim2.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((chrmc2.value != "") && (chrim2 == "")) 
                   {
                       document.getElementById('chrmc2').style.backgroundColor = "#ffaeae";
                       document.getElementById('chrim2').style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag10.value = "1";
                   }
                   else 
                   {
                       document.getElementById('chrmc2').style.backgroundColor = "#ffffff";
                       document.getElementById('chrim2').style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag10.value = "0";
                   }
                   break;

               case "group11":
                   var chrmc3 = document.getElementById('chrmc3');
                   var chrim3 = document.getElementById('chrim3');
                   //if (chrmc3.value.replace(/(^\s*)|(\s*$)/g, "") != "" && chrim3.options[chrim3.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((chrmc3.value != "") && (chrim3 == "")) 
                   {
                       document.getElementById('chrmc3').style.backgroundColor = "#ffaeae";
                       document.getElementById('chrim3').style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag11.value = "1";
                   }
                   else 
                   {
                       document.getElementById('chrmc3').style.backgroundColor = "#ffffff";
                       document.getElementById('chrim3').style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag11.value = "0";
                   }
                   break;

               case "group12":
                   var chrmc4 = document.getElementById('chrmc4');
                   var chrim4 = document.getElementById('chrim4');
                   // if (chrmc4.value.replace(/(^\s*)|(\s*$)/g, "") != "" && chrim4.options[chrim4.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((chrmc4.value != "") && (chrim4 == "")) 
                   {
                       document.getElementById('chrmc4').style.backgroundColor = "#ffaeae";
                       document.getElementById('chrim4').style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag12.value = "1";
                   }
                   else 
                   {
                       document.getElementById('chrmc4').style.backgroundColor = "#ffffff";
                       document.getElementById('chrim4').style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag12.value = "0";
                   }
                   break;

               case "group13":
                   var chrmc5 = document.getElementById('chrmc5');
                   var chrim5 = document.getElementById('chrim5');
                   //if (chrmc5.value.replace(/(^\s*)|(\s*$)/g, "") != "" && chrim5.options[chrim5.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((chrmc5.value != "") && (chrim5 == "")) 
                   {
                       document.getElementById('chrmc5').style.backgroundColor = "#ffaeae";
                       document.getElementById('chrim5').style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag13.value = "1";
                   }
                   else 
                   {
                       document.getElementById('chrmc5').style.backgroundColor = "#ffffff";
                       document.getElementById('chrim5').style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag13.value = "0";
                   }
                   break;
               case "group14":
                   var chrmc6 = document.getElementById('chrmc6');
                   var chrim6 = document.getElementById('chrim6');
                   //if (chrmc6.value.replace(/(^\s*)|(\s*$)/g, "") != "" && chrim6.options[chrim6.selectedIndex].value.replace(/(^\s*)|(\s*$)/g, "") != "") 
                   if ((chrmc6.value != "") && (chrim6 == "")) 
                   {
                       document.getElementById('chrmc6').style.backgroundColor = "#ffaeae";
                       document.getElementById('chrim6').style.backgroundColor = "#ffaeae";

                       document.CderInfo.groupflag14.value = "1";
                   }
                   else 
                   {
                       document.getElementById('chrmc6').style.backgroundColor = "#ffffff";
                       document.getElementById('chrim6').style.backgroundColor = "#ffffff";

                       document.CderInfo.groupflag14.value = "0";
                   }
                   break;
           } 
       }

       function CheckValidated(cb) {
           var cbox = document.getElementById(cb);
           if (!cbox.checked) {
               document.CderInfo.validatedflag.value = confirm('Do you want to Validate this CDER?');
           }
           else document.CderInfo.validatedflag.value = "true";

           if (document.CderInfo.validatedflag.value == "true") {
               document.getElementById(cb).checked = true;
           }
       }

       function submitcalendar(boxid) {
           var InputDate = JTrim(boxid.value);
           if (InputDate != "") {
              boxid.value = InputDate.substring(0,2) + InputDate.substring(5);
           }
       }
    //-->
    </script>

</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="CderInfo" method="post" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="groupflag1" id="groupflag1" value="0" runat="server" />
        <input type="hidden" name="groupflag2" id="groupflag2" value="0" runat="server" />
        <input type="hidden" name="groupflag3" id="groupflag3" value="0" runat="server" />
        <input type="hidden" name="groupflag4" id="groupflag4" value="0" runat="server" />
        <input type="hidden" name="groupflag5" id="groupflag5" value="0" runat="server" />
        <input type="hidden" name="groupflag6" id="groupflag6" value="0" runat="server" />
        <input type="hidden" name="groupflag7" id="groupflag7" value="0" runat="server" />
        <input type="hidden" name="groupflag8" id="groupflag8" value="0" runat="server" />
        <input type="hidden" name="groupflag9" id="groupflag9" value="0" runat="server" />
        <input type="hidden" name="groupflag10" id="groupflag10" value="0" runat="server" />
        <input type="hidden" name="groupflag11" id="groupflag11" value="0" runat="server" />
        <input type="hidden" name="groupflag12" id="groupflag12" value="0" runat="server" />
        <input type="hidden" name="groupflag13" id="groupflag13" value="0" runat="server" />
        <input type="hidden" name="groupflag14" id="groupflag14" value="0" runat="server" />
        <input type="hidden" name="groupflag15" id="groupflag15" value="0" runat="server" />
        <input type="hidden" name="groupflag16" id="groupflag16" value="0" runat="server" />
        <input type="hidden" name="groupflag17" id="groupflag17" value="0" runat="server" />
        <input type="hidden" name="validatedflag" id="validatedflag" value="false" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />  
        <input type="hidden" name="consumer_age" id="consumer_age" value="" runat="server" />   
        <input type="hidden" name="consumer_dob" id="consumer_dob" value="" runat="server" />        
        <input type="hidden" name="entrykey" id="entrykey" runat="server" />
        <input type="hidden" name="IDNotespopup" id="IDNotespopup" runat="server" />
        <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
        <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
        <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
        <div align="center" style="width: 100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" ID="titleline" runat="server">
            <tr style="height:30px; background-color: #EAF4FF">
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
                    <asp:ImageButton ID="btnVerify" runat="server" AlternateText="Verify" Visible="False" Style="width:25px;height:25px"
                        ImageURL="../img/verify.jpg" ToolTip="Validate"
                        OnClientClick="return verify_click();" OnClick="btnVerify_Click">
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
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Cder08 For</asp:Label>
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
                            <td id="CDER_DE" style="color:#990066;" class="tab_sel" onclick="doseltd(this);" 
                                 width="200">
                                <b><u>DIAGNOSTIC ELEMENT</u></b>
                            </td>
                            <td id="CDER_EE" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>EVALUATION ELEMENT</u></b>
                            </td>
                            <td id="CDER_EN" class="tab_sel" onclick="doseltd(this);"
                                 width="200">
                                <b><u>EVALUATION Narrative History</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>              
        </table>
        </div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:480px">
        <table class="table_maindiv">
          <tr>
           <td valign="top" align="center" width="100%" height="100%">
            <div id="Cder_DE">
            <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:97%">  
                <tr><td style="height:10px;"></td></tr> 
                <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                 <td align="left">
                                     <asp:CheckBox ID="Validated" runat="server" Text="Validated" Font-Bold="True"/>
                                 </td>
                            </tr>
                            </table>
                    </td>
                </tr>    
                <tr><td style="height:5px;"></td></tr>          
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0"
                            style="width: 100%">
                            <tr class="tr_common">
                                <td align="right" class="td_label">
                                    <asp:Label ID="label6" runat="server" Text="Name:"></asp:Label>
                                </td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 160px">
                                    <asp:Label ID="uciname1" runat="server" width="160px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="right" class="td_label">
                                    <asp:Label ID="label2" runat="server" Text="UCI:"></asp:Label>
                                </td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 100px">
                                    <asp:Label ID="uci1" runat="server" Width="100px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="right" class="td_label">
                                    <asp:Label ID="label3" runat="server" Text="DOB:"></asp:Label>
                                </td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 100px">
                                    <asp:Label ID="uci_dob1" runat="server" Width="100px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="right" class="td_label">
                                    <asp:Label ID="label5" runat="server" Text="Gender:"></asp:Label>
                                </td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 60px">
                                    <asp:Label ID="uci_gender1" runat="server" Width="60px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="right" class="td_label">
                                    <asp:Label ID="label4" runat="server" Text="CM:"></asp:Label>
                                </td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 160px">
                                    <asp:Label ID="uci_Counselor1" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td style="height:5px;"></td></tr> 
                <tr><td class="td_thicksepline"></td></tr> 
                <tr><td style="height:5px;"></td></tr> 
                <tr>
                    <td>
                         <table class="table_common" cellspacing="0" cellpadding="0" border="0"
                            style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" class="td_label">
                                    <b>1.&nbsp;</b><asp:Label ID="lc_rptdte" runat="server" Text="Face to Face Date:"></asp:Label>
                                </td>                        
                                <td class="td_unline" style="width: 80px">
								    <asp:textbox id="rptdte"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  
                                    runat="server" CssClass="inface" Width="80px"></asp:textbox>
							    </td>
							    <td style="width:2px"></td>
							    <td align="left" class="td_label">
                                    <b>5.&nbsp;</b><asp:Label ID="lc_hgt" runat="server" Text="Height:"></asp:Label>
                                </td>
							    <td class="td_unline" style="width: 40px">
								    <asp:textbox id="hgt" runat="server" CssClass="inface" MaxLength="2" Width="40px"></asp:textbox>
							    </td>
							    <td style="width:2px"></td>
							    <td align="left" class="td_label">
                                    <b>6.&nbsp;</b><asp:Label ID="lc_wgt" runat="server" Text="Weight:"></asp:Label>
                                </td>
							    <td class="td_unline" style="width: 40px">
								    <asp:textbox id="wgt" runat="server" CssClass="inface" MaxLength="3" Width="40px"></asp:textbox>
							    </td>
							    <td style="width:2px"></td>
							    <td align="left" class="td_label">
                                    <b>7.&nbsp;</b><asp:Label ID="lc_dtewgt" runat="server" Text="Date Weighed:"></asp:Label>(mm/yyyy)
                                </td>
							    <td class="td_unline" style="width: 50px">
								    <asp:textbox id="dtewgt" runat="server" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                          CssClass="inface" Width="50px"></asp:textbox>
							    </td>
							    <td style="width:2px"></td>
							    <td align="left" class="td_label">
                                    <b>8.&nbsp;</b><asp:Label ID="lc_prgrm" runat="server" Text="Program:"></asp:Label>
                                </td>
							    <td class="td_unline"  style="width: 40px">
								    <asp:textbox id="prgrm" runat="server" CssClass="inface" MaxLength=3 Width="40px"></asp:textbox>
							    </td>
							    <td style="width:2px"></td>
							    <td align="left" class="td_label">
                                    <b>9.&nbsp;</b><asp:Label ID="lc_sctn" runat="server" Text="Section:"></asp:Label>
                                </td> 
							    <td class="td_unline"  style="width: 40px">
								     <asp:textbox id="sctn" runat="server" CssClass="inface" MaxLength=3 Width="40px"></asp:textbox>
							    </td>
							    <td style="width:2px"></td>
							    <td align="left" class="td_label">
                                     <b>10.&nbsp;</b><asp:Label ID="lc_unit" runat="server" Text="Unit:"></asp:Label>
                                </td> 
							    <td class="td_unline"  style="width: 40px">
								     <asp:textbox id="unit" runat="server" CssClass="inface" MaxLength=3 Width="40px"></asp:textbox>
							    </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="20"></td>
                            </tr>
                            <tr>
                                <td colspan="20" class="td_thicksepline"></td>
                            </tr>    
                            <tr style="height:5px;">
                                <td colspan="20"></td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="20"  valign="middle" align="center" > 
                                   <asp:Label ID="Label7" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                            Height="24px">DEVELOPMENT DIAGNOSTIC INFORMATION</asp:Label>
                                </td>
                            </tr>  
                            <tr style="height:5px;">
                                <td colspan="20"></td>
                            </tr> 
                            <tr>
                                <td colspan="20" class="td_thicksepline"></td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="20"></td>
                            </tr>                         
                         </table>   
                    </td>
                </tr>                
                <tr style="height:20px;">
                    <td><b>intellectual disability:</b></td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                 <td align="left" class="td_label">
                                     <b>11.&nbsp;</b><asp:label id="lc_lvlrtd" runat="server" Text="Level of Retardation:"></asp:label>
                                 </td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 450px" align="left">
							          <asp:dropdownlist id="lvlrtd" runat="server" DataValueField="tb_entry_name" 
                                          DataTextField="tb_entry_text" Height="20" Width="450" onchange="confirm_clear('group1','0');"
                                          OnClick="DataChanged()">
	                                  </asp:dropdownlist>
							     </td>
							     <td style="width:28%"></td>
                             </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:20px;">
                    <td><b>Etiology:</b></td>
                </tr>
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>12a.&nbsp;</b><asp:label id="lc_mr1" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="mr1" runat="server" onkeyup="confirm_clear('group1','1');" 
                                          CssClass="inface" width="100px" MaxLength=7  ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="mr1_text" runat="server" CssClass="inface" width="560px" ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="mr1Srch"  runat="server" OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=mr1'); confirm_clear('group1','1');" /></td>
                             </tr>
                             <tr style="height:5px"><td colspan="6"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>12b.&nbsp;</b><asp:label id="lc_mr2" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="mr2" runat="server" CssClass="inface" width="100px" MaxLength=7  ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="mr2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="mr2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=mr2');" /></td>
                             </tr>
                         </table>    
                   </td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>13.&nbsp;</b><asp:label id="lc_dtemre" runat="server" Text="Date of Last Evaluation:"></asp:label>(mm/yyyy)</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width:160px">
                                       <asp:textbox id="dtemre" name="group1" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                          onkeyup="confirm_clear('group1','1');"></asp:textbox>
                                  </td>
                                  <td style="width:56%"></td>
                             </tr>
                        </table>     
                    </td>
                </tr>
                <tr style="height:20px">
                    <td><b>Developmental Center Clients Only</b></td>
                </tr>
                <tr style="height:20px">
                    <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>14.&nbsp;</b><asp:label id="lc_iq" runat="server" Text="Intelligence Quotient:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td class="td_unline"  style="width: 100px">
								     <asp:textbox id="iq" runat="server" CssClass="inface" MaxLength=3></asp:textbox>
							     </td>
							     <td style="width:3%"></td>
							     <td align="left" class="td_label"><b>15.&nbsp;</b><asp:label id="lc_itest" runat="server" Text="Intelligence Test:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 450px">
								     <asp:dropdownlist id="itest" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="450" OnClick="DataChanged()">
	                                 </asp:dropdownlist>
							     </td>
							     <td style="width:5%"></td>
                             </tr>
                         </table>    
                    </td>
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>16.&nbsp;</b><asp:label id="Label8" runat="server" Text="Adaptive Behavior Rating:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 450px" align="left">
								       <asp:dropdownlist id="adpvbh" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							     </td>
							     <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                   <td  class="td_thicksepline"></td>
                </tr>    
                <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>CEREBRAL PALSY:</b></td>
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>17.&nbsp;</b><asp:label id="lc_prsncp" runat="server" Text="Presence Of Cerebral Palsy:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="prsncp" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                        OnClick="DataChanged()" onchange="confirm_clear('group2','0');">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr style="height:20px;">
                    <td><b>Etiology:</b></td>
                </tr>
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>18a.&nbsp;</b><asp:label id="lc_cpet01" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="cpet01" runat="server" CssClass="inface" width="100px" MaxLength=7 onkeyup="confirm_clear('group2','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="cpet01_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="cpet01Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=cpet01'); confirm_clear('group2','1');" /></td>
                             </tr>
                              <tr style="height:5px"><td colspan="6"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>18b.&nbsp;</b><asp:label id="lc_cpet02" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="cpet02" runat="server" CssClass="inface" width="100px" MaxLength=7  ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="cpet02_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="cpet02Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=cpet02');" /></td>
                             </tr>
                         </table>    
                   </td>
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>19.&nbsp;</b><asp:label id="lc_svrmd" runat="server" Text="Severity of Motor Dysfunction:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="svrmd" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       OnClick="DataChanged()" onchange="confirm_clear('group2','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>20.&nbsp;</b><asp:label id="lc_typemd" runat="server" Text="Type of Motor Dysfunction:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="typemd" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       OnClick="DataChanged()" onchange="confirm_clear('group2','1');">
	                                   </asp:dropdownlist >
							      </td>
							      <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>21.&nbsp;</b><asp:label id="lc_locmd" runat="server" Text="Location of Motor Dysfunction:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="locmd" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()" onchange="confirm_clear('group2','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>22.&nbsp;</b><asp:label id="lc_mdimp" runat="server" Text="Condition Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="mdimp" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()" onchange="confirm_clear('group2','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
                <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>AUTISM:</b></td>
               </tr> 
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>23a.&nbsp;</b><asp:label id="lc_prsaut" runat="server" Text="Presence of Autistic Disorder:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="prsaut" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group3','0');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>      
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td  align="left" class="td_label"><b>23b.&nbsp;</b><asp:label id="lc_prsoth" runat="server" Text="Presence of Other PDD:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="prsoth" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group3','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr style="height:20px;">
                    <td>Etiology:</td>
                </tr>
                 <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>24a.&nbsp;</b><asp:label id="lc_autsm1" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="autsm1" runat="server" CssClass="inface" width="100px" MaxLength=7  onkeyup="confirm_clear('group3','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="autsm1_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="autsm1Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=autsm1'); confirm_clear('group3','1');" /></td>
                             </tr>
                             <tr style="height:5px"><td colspan="6"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>24b.&nbsp;</b><asp:label id="lc_autsm2" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="autsm2" runat="server" CssClass="inface" width="100px" MaxLength=7  ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="autsm2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="autsm2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=autsm2');" /></td>
                             </tr>
                         </table>    
                   </td>
                </tr>
                <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>25.&nbsp;</b><asp:label id="lc_autdat" runat="server" Text="Determination Date:"></asp:label>(mm/yyyy)</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width:450px">
                                     <asp:textbox id="autdat" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                           onkeyup="confirm_clear('group3','1');"></asp:textbox>
                                  </td>
                                  <td style="width:28%"></td>
                             </tr>
                        </table>     
                    </td>
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>26.&nbsp;</b><asp:label id="lc_autimp" runat="server" Text="Condition Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="autimp" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group3','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
               <tr style="height:20px;">
                    <td><b>EPILEPSY:</b></td>
               </tr> 
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>27a.&nbsp;</b><asp:label id="lc_typsz1" runat="server" Text="Type of Seizure:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="typsz1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group4','0');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>     
                             <tr style="height:5px"><td colspan="4"></td></tr>        
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>27b.&nbsp;</b><asp:label id="lc_szfrq1" runat="server" Text="Seizure Frequency:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="szfrq1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group4','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>     
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>27c.&nbsp;</b><asp:label id="lc_szimp1" runat="server" Text="Condition Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="szimp1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group4','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr>  
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>28a.&nbsp;</b><asp:label id="lc_typsz2" runat="server" Text="Type of Seizure:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="typsz2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group5','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>     
                             <tr style="height:5px"><td colspan="4"></td></tr>        
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>28b.&nbsp;</b><asp:label id="lc_szfrq2" runat="server" Text="Seizure Frequency:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="szfrq2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group5','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>     
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>28c.&nbsp;</b><asp:label id="lc_szimp2" runat="server" Text="Condition Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="szimp2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group5','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr>     
                              <tr class="tr_common">
                                  <td align="left" class="td_label"><b>29a.&nbsp;</b><asp:label id="lc_typsz3" runat="server" Text="Type of Seizure:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="typsz3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group15','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>     
                             <tr style="height:5px"><td colspan="4"></td></tr>        
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>29b.&nbsp;</b><asp:label id="lc_szfrq3" runat="server" Text="Seizure Frequency:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="szfrq3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group15','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>     
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>29c.&nbsp;</b><asp:label id="lc_szimp3" runat="server" Text="Condition Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 450px" align="left">
								       <asp:dropdownlist id="szimp3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group15','1');">
	                                   </asp:dropdownlist>
							      </td>
							      <td style="width:28%"></td>
                             </tr>              
                         </table>
                     </td>        
                </tr> 
               <tr style="height:20px;">
                    <td><b>Etiology:</b></td>
                </tr>
                 <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>30a.&nbsp;</b><asp:label id="lc_eplp1" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="eplp1" runat="server" CssClass="inface" width="100px" MaxLength=7 onkeyup="confirm_clear('group4','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="eplp1_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="eplp1Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=eplp1'); confirm_clear('group4','1');" /></td>
                             </tr>
                             <tr style="height:5px"><td colspan="6"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>30b.&nbsp;</b><asp:label id="lc_eplp2" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="eplp2" runat="server" CssClass="inface" width="100px" MaxLength=7  ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="eplp2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="eplp2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=eplp2');" /></td>
                             </tr>
                         </table>    
                   </td>
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>31.&nbsp;</b><asp:label id="lc_antcnv" runat="server" Text="Consumer takes anticonvulsant medication:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="antcnv" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group4','1');">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:18%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>32.&nbsp;</b><asp:label id="Label9" runat="server" Text="Status Epilepticus:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="stepls" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()"
                                       onchange="confirm_clear('group4','1');">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                   <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
               <tr style="height:20px;">
                    <td><b>OTHER TYPE OF DEVELOPMENTAL DISABILITY</b></td>
               </tr> 
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>33.&nbsp;</b><asp:label id="lc_othdis" runat="server" Text="Other Disability:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="othdis" runat="server" OnClick="DataChanged()" onchange="confirm_clear('group6','1');">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							     <td style="width:70%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>
               <tr style="height:20px;">
                    <td><b>Type of other Disability:</b></td>
                </tr>
               <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>33a.&nbsp;</b><asp:label id="lc_othdd1" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="othdd1" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group6','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="othdd1_text" runat="server" CssClass="inface" width="560px"></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="othdd1Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=othdd1'); confirm_clear('group6','1');" /></td>
                             </tr>
                              <tr style="height:5px"><td colspan="6"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>33b.&nbsp;</b><asp:label id="lc_othdd2" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="othdd2" runat="server" CssClass="inface" width="100px"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="othdd2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="othdd2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=othdd2'); " /></td>
                             </tr>
                         </table>    
                   </td>
                </tr> 
                 <tr style="height:20px;">
                    <td><b>Etiology:</b></td>
                </tr>
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>34a.&nbsp;</b><asp:label id="lc_oth1et" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="oth1et" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group6','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="oth1et_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="oth1etSrch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=oth1et'); confirm_clear('group6','1');" /></td>
                             </tr>
                             <tr style="height:5px"><td colspan="6"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>34b.&nbsp;</b><asp:label id="lc_oth2et" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="oth2et" runat="server" CssClass="inface" width="100px" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="oth2et_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="oth2etSrch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=oth2et');" /></td>
                             </tr>
                         </table>    
                   </td>
                </tr>   
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>RISK FACTOR:</b></td>
               </tr>   
               <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>35.&nbsp;</b><asp:label id="lc_rskf35" runat="server" Text="Low birth weight or preterm labor with complications:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf35" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td align="left" class="td_label"><b>36.&nbsp;</b><asp:label id="lc_rskf36" runat="server" Text="Teenage pregnancy (17 years and younger):"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf36" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:7%"></td>
                             </tr>
                             <tr style="height:5px"><td colspan="8"></td></tr>
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>37.&nbsp;</b><asp:label id="lc_rskf37" runat="server" Text="Maternal age 35 years or older at time of delivery:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf37" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td align="left" class="td_label"><b>38.&nbsp;</b><asp:label id="lc_rskf38" runat="server" Text="Accidents of near drowning:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf38" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:7%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="8"></td></tr>
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>39.&nbsp;</b><asp:label id="lc_rskf39" runat="server" Text="Accidents involving an automobile:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf39" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td align="left" class="td_label"><b>40.&nbsp;</b><asp:label id="lc_rskf40" runat="server" Text="Accidents involving other types of vehicles:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf40" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:7%"></td>
                             </tr>
                             <tr style="height:5px"><td colspan="8"></td></tr>
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>41.&nbsp;</b><asp:label id="lc_rskf41" runat="server" Text="Accidents of other types:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf41" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td align="left" class="td_label"><b>42.&nbsp;</b><asp:label id="lc_rskf42" runat="server" Text="Environmental toxins (pesticides, lead, etc.):"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf42" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:7%"></td>
                             </tr>
                             <tr style="height:5px"><td colspan="8"></td></tr>
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>43.&nbsp;</b><asp:label id="lc_rskf43" runat="server" Text="Drug or alcohol abuse:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf43" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td align="left" class="td_label"><b>44.&nbsp;</b><asp:label id="lc_rskf44" runat="server" Text="Psychosocial (environmental) deprivation:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf44" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:7%"></td>
                             </tr>
                             <tr style="height:5px"><td colspan="8"></td></tr>
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>45.&nbsp;</b><asp:label id="lc_rskf45" runat="server" Text="Family history of intellectual disability:"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf45" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td align="left" class="td_label"><b>46.&nbsp;</b><asp:label id="lc_rskf46" runat="server" Text="Child abuse or neglect:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf46" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:7%"></td>
                             </tr>
                             <tr style="height:5px"><td colspan="8"></td></tr>
                             <tr class="tr_common">
                                 <td align="left" class="td_label"><b>47.&nbsp;</b><asp:label id="lc_rskf47" runat="server" Text="Other cause(s):"></asp:label></td>
                                 <td style="height: 20px" height="20" width="5"></td>
                                 <td style="width: 75px" align="left">
								       <asp:dropdownlist id="rskf47" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" OnClick="DataChanged()">
								       </asp:dropdownlist>
							      </td>
							      <td style="width:5%"></td>
							      <td></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
							      </td>
							      <td style="width:7%"></td>
                             </tr>                           
                         </table>
                   </td>
               </tr>      
               <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>PSYCHIATRIC DISORDERS:</b></td>
               </tr>   
               <tr style="height:20px;">
                    <td><b>Axls I:</b></td>
               </tr>   
               <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>50a.&nbsp;</b><asp:label id="lc_mntla1" runat="server" Text="Type:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="mntla1" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group7','1');"  ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="mntla1_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="DSM Code" style="width:100px" ID="mntla1Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchDSM.aspx?FieldName=mntla1'); confirm_clear('group7','1');" /></td>
                             </tr>                            
                         </table>    
                   </td>
                </tr> 
               <tr style="height:5px"><td colspan="8"></td></tr>
               <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>50b.&nbsp;</b><asp:label id="lc_dtmna1" runat="server" Text="Eval Date:"></asp:label>(mm/yyyy)</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width:160px">
                                        <asp:textbox id="dtmna1" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                           onkeyup="confirm_clear('group7','1');"></asp:textbox>
                                  </td>
                                  <td style="width:56%"></td>
                             </tr>
                        </table>     
                    </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                 <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>50c.&nbsp;</b><asp:label id="lc_mimpa1" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="mimpa1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       onchange="confirm_clear('group7','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr>
                 <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>51a.&nbsp;</b><asp:label id="lc_mntla2" runat="server" Text="Type:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="mntla2" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group8','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="mntla2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="DSM Code" style="width:100px" ID="mntla2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchDSM.aspx?FieldName=mntla2'); confirm_clear('group8','1');" /></td>
                             </tr>                            
                         </table>    
                   </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>51b.&nbsp;</b><asp:label id="lc_dtmna2" runat="server" Text="Eval Date:"></asp:label>(mm/yyyy)</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width:160px">
                                       <asp:textbox id="dtmna2" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                           onkeyup="confirm_clear('group8','1');"></asp:textbox>
                                  </td>
                                  <td style="width:56%"></td>
                             </tr>
                        </table>     
                    </td>
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>51c.&nbsp;</b><asp:label id="lc_mimpa2" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="mimpa2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       onchange="confirm_clear('group8','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>    
                <tr style="height:20px;">
                    <td><b>Axls II:</b></td>
               </tr>   
               <tr style="height:5px"><td colspan="8"></td></tr>
               <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>52a.&nbsp;</b><asp:label id="lc_mntlb1" runat="server" Text="Type:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="mntlb1" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group16','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="mntlb1_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="DSM Code" style="width:100px" ID="mntlb1Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchDSM.aspx?FieldName=mntlb1'); confirm_clear('group16','1');" /></td>
                             </tr>                            
                         </table>    
                   </td>
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr>
               <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>52b.&nbsp;</b><asp:label id="lc_dtmnb1" runat="server" Text="Eval Date:"></asp:label>(mm/yyyy)</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width:160px">
                                      <asp:textbox id="dtmnb1" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                          onkeyup="confirm_clear('group16','1');" ></asp:textbox>
                                  </td>
                                  <td style="width:56%"></td>
                             </tr>
                        </table>     
                    </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                 <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>52c.&nbsp;</b><asp:label id="lc_mimpb1" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="mimpb1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       onchange="confirm_clear('group16','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr>
                 <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>53a.&nbsp;</b><asp:label id="lc_mntlb2" runat="server" Text="Type:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="mntlb2" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group17','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="mntlb2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="DSM Code" style="width:100px" ID="mntlb2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchDSM.aspx?FieldName=mntlb2'); confirm_clear('group17','1');" /></td>
                             </tr>                            
                         </table>    
                   </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr>
                    <td>
                        <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>53b.&nbsp;</b><asp:label id="lc_dtmnb2" runat="server" Text="Eval Date:"></asp:label>(mm/yyyy)</td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width:160px">
                                       <asp:textbox id="dtmnb2" runat="server" CssClass="inface" onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" 
                                           onkeyup="confirm_clear('group17','1');" ></asp:textbox>
                                  </td>
                                  <td style="width:56%"></td>
                             </tr>
                        </table>     
                    </td>
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>53c.&nbsp;</b><asp:label id="lc_mimpb2" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="mimpb2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       onchange="confirm_clear('group17','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>    
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>CHRONIC MAJOR MEDICAL CONDITIONS:</b></td>
               </tr>       
               <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>54a.&nbsp;</b><asp:label id="lc_chrmc1" runat="server" Text="Condition:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="chrmc1" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group9','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="chrmc1_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="chrmc1Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc1'); confirm_clear('group9','1');" /></td>
                             </tr>                             
                         </table>    
                   </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>54b.&nbsp;</b><asp:label id="lc_chrim1" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="chrim1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       onchange="confirm_clear('group9','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr>     
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>55a.&nbsp;</b><asp:label id="lc_chrmc2" runat="server" Text="Condition:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="chrmc2" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group10','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="chrmc2_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="chrmc2Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc2'); confirm_clear('group10','1');" /></td>
                             </tr>                             
                         </table>    
                   </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>55b.&nbsp;</b><asp:label id="lc_chrim2" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="chrim2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                       onchange="confirm_clear('group10','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>            
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>56a.&nbsp;</b><asp:label id="lc_chrmc3" runat="server" Text="Condition:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="chrmc3" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group11','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="chrmc3_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="chrmc3Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc3'); confirm_clear('group11','1');" /></td>
                             </tr>                             
                         </table>    
                   </td>
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr> 
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>56b.&nbsp;</b><asp:label id="lc_chrim3" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="chrim3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       onchange="confirm_clear('group11','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>      
                <tr style="height:5px"><td colspan="8"></td></tr>          
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>57a.&nbsp;</b><asp:label id="lc_chrmc4" runat="server" Text="Condition:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="chrmc4" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group12','1');" ></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="chrmc4_text" runat="server" CssClass="inface" width="560px"  ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="chrmc4Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc4'); confirm_clear('group12','1');" /></td>
                             </tr>                             
                         </table>    
                   </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>57b.&nbsp;</b><asp:label id="lc_chrim4" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="chrim4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       onchange="confirm_clear('group12','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>     
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>58a.&nbsp;</b><asp:label id="lc_chrmc5" runat="server" Text="Condition:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="chrmc5" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group13','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="chrmc5_text" runat="server" CssClass="inface" width="560px" ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="chrmc5Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc5'); confirm_clear('group13','1');" /></td>
                             </tr>                             
                         </table>    
                   </td>
                </tr>  
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>58b.&nbsp;</b><asp:label id="lc_chrim5" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="chrim5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       onchange="confirm_clear('group13','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>      
                <tr style="height:5px"><td colspan="8"></td></tr>      
                <tr>
                   <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>59a.&nbsp;</b><asp:label id="lc_chrmc6" runat="server" Text="Condition:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline"style="width:100px"><asp:textbox id="chrmc6" runat="server" CssClass="inface" width="100px" onkeyup="confirm_clear('group14','1');"></asp:textbox></td>                                  
                                  <td style="width:10px"></td>
                                  <td class="td_unline" style="width:560px"><asp:textbox id="chrmc6_text" runat="server" CssClass="inface" width="560px" ></asp:textbox></td>
                                  <td><input type="button" value="ICD10 Code" style="width:100px" ID="chrmc6Srch"  runat="server"  OnClick="DataChanged();javascript:popupDialogSmallWide('SearchICD10.aspx?FieldName=chrmc6'); confirm_clear('group14','1');" /></td>
                             </tr>                             
                         </table>    
                   </td>
                </tr> 
                <tr style="height:5px"><td colspan="8"></td></tr> 
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>59b.&nbsp;</b><asp:label id="lc_chrim6" runat="server" Text="Impact:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="chrim6" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450"
                                       onchange="confirm_clear('group14','1');" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:28%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>  
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td ><b>OTHER DIAGNOSTIC INFORMATION</b></td>
               </tr>        
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td style="width:120px" class="td_label"><b>HEARING:</b></td>
                                  <td align="left" class="td_label"><b>60.&nbsp;</b><asp:label id="lc_hrngun" runat="server" Text="Level of Hearing Loss Uncorrected:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="hrngun" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:10%"></td>
                             </tr> 
                             <tr style="height:5px"><td colspan="5"></td></tr>     
                             <tr class="tr_common">
                                  <td style="width:120px"></td>
                                  <td align="left" class="td_label"><b>61.&nbsp;</b><asp:label id="lc_hrngcr" runat="server" Text="Level of Hearing Loss Corrected:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="hrngcr" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:10%"></td>
                             </tr>   
                             <tr>
                                     <td  colspan="5" style="height:5px"></td>
                              </tr>
                              <tr>
                                    <td  colspan="5" class="td_thicksepline"></td>
                             </tr>    
                             <tr>
                                 <td  colspan="5" style="height:5px"></td>
                             </tr>   
                             <tr class="tr_common">
                                  <td style="width:120px" class="td_label"><b>VISION:</b></td>
                                  <td align="left" class="td_label"><b>62.&nbsp;</b><asp:label id="lc_vsnun" runat="server" Text="Level of Vision Loss Uncorrected:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="vsnun" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:10%"></td>
                             </tr> 
                             <tr style="height:5px"><td colspan="5"></td></tr>     
                             <tr class="tr_common">
                                  <td style="width:120px"></td>
                                  <td align="left" class="td_label"><b>63.&nbsp;</b><asp:label id="lc_vsncr" runat="server" Text="Level of Vision Loss Corrected:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="vsncr" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:10%"></td>
                             </tr>                                                      
                         </table>
                     </td>        
                </tr>  
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td ><b>BEHAVIOR MODIFYING DRUGS:</b></td>
               </tr>      
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>64.&nbsp;</b><asp:label id="lc_apsymn" runat="server" Text="Anti-Psychotic:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="apsymn" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>65.&nbsp;</b><asp:label id="lc_adepmn" runat="server" Text="Anti-Depressant:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="adepmn" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>66.&nbsp;</b><asp:label id="lc_aanxmn" runat="server" Text="Anti-Anxiety:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="aanxmn" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
                             </tr> 
                             <tr style="height:5px"><td colspan="12"></td></tr>     
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>67.&nbsp;</b><asp:label id="lc_sedhyp" runat="server" Text="Sedative/Hypnotic:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="sedhyp" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>68.&nbsp;</b><asp:label id="lc_stmlnt" runat="server" Text="Stimulant:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="stmlnt" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>69.&nbsp;</b><asp:label id="lc_othdrg" runat="server" Text="Other:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="othdrg" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
                             </tr>                              
                          </table>
                     </td>
                </tr>   
                <tr style="height:5px"><td colspan="8"></td></tr>
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>70.&nbsp;</b><asp:label id="lc_histpm" runat="server" Text="History of Prescribed Medication for Maladaptive Behavior:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="histpm" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:10%"></td>
                             </tr>                            
                         </table>
                     </td>        
                </tr>   
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td ><b>ABNORMAL INVOLUNTARY MOVEMENTS:  (DC CLIENTS ONLY)</b></td>
               </tr>       
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>71.&nbsp;</b><asp:label id="lc_parkin" runat="server" Text="Parkinsonism:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width: 75px" align="left">
                                       <asp:dropdownlist id="parkin" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>72.&nbsp;</b><asp:label id="lc_dyston" runat="server" Text="Dystonia:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width: 75px" align="left">
                                       <asp:dropdownlist id="dyston" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>73.&nbsp;</b><asp:label id="lc_dyskin" runat="server" Text="Dyskinesia:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width: 75px" align="left">
                                       <asp:dropdownlist id="dyskin" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
                             </tr>
                            <tr style="height:5px"><td colspan="12"></td></tr>     
                            <tr class="tr_common">
                                  <td align="left" class="td_label"><b>74.&nbsp;</b><asp:label id="lc_akath" runat="server" Text="Akathisia:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width: 75px" align="left">
                                       <asp:dropdownlist id="akath" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><b>75.&nbsp;</b><asp:label id="lc_parox" runat="server" Text="Paroxysmal Movements:"></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td class="td_unline" style="width: 75px" align="left">
                                       <asp:dropdownlist id="parox" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:100px;"></td>
							      <td></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
							      </td>
							      <td style="width:100px;"></td>
                             </tr>                  
                         </table>
                    </td>
               </tr>      
               <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td ><b>SPECIAL HEALTH CARE REQUIREMENTS:</b></td>
               </tr>
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>76.&nbsp;</b><asp:label id="lc_sphc1" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:50px"></td>
							       <td align="left" class="td_label"><b>77.&nbsp;</b><asp:label id="lc_sphc2" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:100px"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="8"></td></tr>    
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>78.&nbsp;</b><asp:label id="lc_sphc3" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:50px"></td>
							       <td align="left" class="td_label"><b>79.&nbsp;</b><asp:label id="lc_sphc4" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:100px"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="8"></td></tr>  
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>80.&nbsp;</b><asp:label id="lc_sphc5" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:50px"></td>
							       <td align="left" class="td_label"><b>81.&nbsp;</b><asp:label id="lc_sphc6" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc6" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:100px"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="8"></td></tr>    
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>82.&nbsp;</b><asp:label id="lc_sphc7" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc7" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:50px"></td>
							       <td align="left" class="td_label"><b>83.&nbsp;</b><asp:label id="lc_sphc8" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc8" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:100px"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="8"></td></tr>    
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>84.&nbsp;</b><asp:label id="lc_sphc9" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc9" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:50px"></td>
							       <td align="left" class="td_label"><b>85.&nbsp;</b><asp:label id="lc_sphc10" runat="server" Text=""></asp:label></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="sphc10" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="350" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:100px"></td>
                             </tr>                 
                         </table>
                     </td>        
                </tr> 
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td ><b>SPECIAL CONDITIONS OR BEHAVIORS:</b></td>
               </tr>  
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>86.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn1" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn1" runat="server" Text="Does the client display maladaptive sexual behavior?"></asp:label></td>							      
							  </tr>
							 <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>87.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn2" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn2" runat="server" Text="Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death?"></asp:label></td>							      
							  </tr>
							 <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>88.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn3" runat="server" Text="Has the client attempted suicide in past 5 years?"></asp:label></td>							      
							  </tr>
							  <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>89.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn4" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn4" runat="server" Text="Does the client habitually engage in theft in past 5 years?"></asp:label></td>							      
							  </tr>
							   <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>90.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn5" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn5" runat="server" Text="Has the client participated in acts of vandalism or acts of property destruction in past 5 years?"></asp:label></td>							      
							  </tr>
							  <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>91.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn6" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn6" runat="server" Text="Has the client been convicted of any substance abuse or alcohol related offenses in past 5 years?"></asp:label></td>							      
							  </tr>
							  <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>92.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn7" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn7" runat="server" Text="Does the client have a recent history of abusing drugs or alcohol currently abusing/within past 3 years?"></asp:label></td>							      
							  </tr>
							  <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>93.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn8" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn8" runat="server" Text="Does the client have a history of habitual lying in past 3 years?"></asp:label></td>							      
							  </tr>
							  <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>94.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="spcn9" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_spcn9" runat="server" Text="Does the client display behaviors which could result or have resulted in fire setting?"></asp:label></td>							      
							  </tr>							 
						</table>
					</td>
				</tr>	
				<tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td ><b>SPECIAL LEGAL CONDITIONS:</b></td>
               </tr>  
                <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>95.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="splgc1" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_splgc1" runat="server" Text="Is the client currently on probation, parole, or commitment under Penal Code or W&&I Codes relating to criminal offense?"></asp:label></td>							      
							  </tr>
							 <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>96.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="splgc2" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_splgc2" runat="server" Text="Is the client currently on Diversion pursuant to Penal Code section 1001.20 et seq.?"></asp:label></td>							      
							  </tr>
							 <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>97.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="splgc3" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_splgc3" runat="server" Text="Is the client currently a person within the provisions of Welfare and Institutions code section 6500 et seq. (dangerous intellectual disability individual committed by the court)?"></asp:label></td>							      
							  </tr>
							 <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>98.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="splgc4" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_splgc4" runat="server" Text="Is the client currently under a Lanterman-Petris-Short (mental health) conservatorship?"></asp:label></td>							      
							  </tr>
							  <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>99.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="splgc5" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_splgc5" runat="server" Text="Is the client currently a conservatee under the Probate Code (conserved because client is unable to make informed application and consent to treatment)?"></asp:label></td>							      
							  </tr>
							   <tr style="height:5px"><td colspan="5"></td></tr>   
							 <tr class="tr_common">
                                  <td align="left" class="td_label"><b>100.&nbsp;</b></td>
                                  <td style="height: 20px" height="20" width="5"></td>
                                  <td style="width: 75px" align="left">
								       <asp:dropdownlist id="splgc6" runat="server" OnClick="DataChanged()">
									       <asp:ListItem Value=""></asp:ListItem>
								           <asp:ListItem Value="1">Yes</asp:ListItem>
								           <asp:ListItem Value="2">No</asp:ListItem>
								     </asp:dropdownlist>
							      </td>
							      <td style="width:20px"></td>
							      <td align="left"><asp:label id="lc_splgc6" runat="server" Text="Is the client currently a dependent child of the Court (Welfare and Institutions Code section 300 et seq.)?"></asp:label></td>							      
							  </tr>
						</table>
					</td>
				</tr>			 			                                                                                   
            </table>
            </div>
            <div id="Cder_EE"  style="display:none;">
            <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:92%">              
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0"  border="0"
                            style="width: 100%">
                            <tr class="tr_common">
                                <td align="left" class="td_label"><asp:Label ID="label10" runat="server" Text="Name:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 160px">
                                    <asp:Label ID="uciname2" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="left" class="td_label"><asp:Label ID="label12" runat="server" Text="UCI:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 100px">
                                    <asp:Label ID="uci2" runat="server" CssClass="infaceText" Width="100px"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="left" class="td_label"><asp:Label ID="label14" runat="server" Text="DOB:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 100px">
                                    <asp:Label ID="uci_dob2" runat="server" CssClass="infaceText" Width="100px"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="left" class="td_label"><asp:Label ID="label16" runat="server" Text="Gender:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 60px">
                                    <asp:Label ID="uci_gender2" runat="server" CssClass="infaceText"  Width="60px"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td align="left" class="td_label"><asp:Label ID="label18" runat="server" Text="CM:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 160px">
                                    <asp:Label ID="uci_Counselor2" runat="server" CssClass="infaceText" Width="160px"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                            </tr>                           
                        </table>
                    </td>
                </tr>
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td  align="center" ><asp:Label ID="Label1" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                            Height="24px">EVALUATION ELEMENT</asp:Label>
                    </td>
               </tr>   
               <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>A.&nbsp;SKILLS DEMONSTRATED IN DAILY LIFE</b></td>
               </tr>  
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>1.&nbsp;</b><asp:label id="lc_handus" runat="server" Text="Using Hands"></asp:label></td>
                                  <td style="width:40px"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="handus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                            <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>2.&nbsp;</b><asp:label id="lc_walkng" runat="server" Text="Walking"></asp:label></td>
                                   <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="walkng" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>3.&nbsp;</b><asp:label id="lc_whluse" runat="server" Text="Using a Wheelchair"></asp:label></td>
                                   <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="whluse" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>     
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>4.&nbsp;</b><asp:label id="lc_takmed" runat="server" Text="Taking Prescription Medication"></asp:label></td>
                                   <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="takmed" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>      
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>5.&nbsp;</b><asp:label id="lc_eating" runat="server" Text="Eating"></asp:label></td>
                                   <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="eating" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>6.&nbsp;</b><asp:label id="lc_tltng" runat="server" Text="Toileting"></asp:label></td>
                                   <td style="width:40px"><b>(1-4)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="tltng" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>    
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>7.&nbsp;</b><asp:label id="lc_bbctrl" runat="server" Text="Bladder and Bowel Control"></asp:label></td>
                                   <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="bbctrl" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>   
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>8.&nbsp;</b><asp:label id="lc_prshyg" runat="server" Text="Personal Care"></asp:label></td>
                                   <td style="width:40px"><b>(1-4)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="prshyg" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>9.&nbsp;</b><asp:label id="lc_drssng" runat="server" Text="Dressing"></asp:label></td>
                                   <td style="width:40px"><b>(1-4)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="drssng" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>10.&nbsp;</b><asp:label id="lc_safety" runat="server" Text="Safety Awareness"></asp:label></td>
                                   <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="safety" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>11.&nbsp;</b><asp:label id="lc_focus" runat="server" Text="Focusing on Tasks and Activities"></asp:label></td>
                                   <td style="width:40px"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="focus" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>12.&nbsp;</b><asp:label id="lc_verbal" runat="server" Text="Verbal Communication"></asp:label></td>
                                   <td style="width:40px"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="verbal" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>13.&nbsp;</b><asp:label id="lc_novrbl" runat="server" Text="Nonverbal Communication"></asp:label></td>
                                   <td style="width:40px"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="novrbl" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>14.&nbsp;</b><asp:label id="lc_social" runat="server" Text="Social Interaction"></asp:label></td>
                                   <td style="width:40px"></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="social" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>                    
                         </table>
                     </td>        
                </tr>   
                <tr style="height:20px;">
                    <td><b>B.&nbsp;CHALLENGING BEHAVIORS</b></td>
               </tr>  
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>15.&nbsp;</b><asp:label id="lc_disbhv" runat="server" Text="Disruptive Social Behavior"></asp:label></td>
                                  <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="disbhv" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                            <tr style="height:5px"><td colspan="4"></td></tr> 
                            <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>16.&nbsp;</b><asp:label id="lc_aggrsn" runat="server" Text="Aggressive Social Behavior"></asp:label></td>
                                  <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="aggrsn" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                            <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>17.&nbsp;</b><asp:label id="lc_sevsi" runat="server" Text="Self-Injurious Behavior"></asp:label></td>
                                  <td style="width:40px"><b>(1-4)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="sevsi" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                            <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>18.&nbsp;</b><asp:label id="lc_dstrpr" runat="server" Text="Destruction of Property"></asp:label></td>
                                  <td style="width:40px"><b>(1-2)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="dstrpr" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                            <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>19.&nbsp;</b><asp:label id="lc_rnwnd" runat="server" Text="Running or Wandering Away"></asp:label></td>
                                  <td style="width:40px"><b>(1-4)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="rnwnd" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                            <tr class="tr_common">
                                  <td align="left" class="td_label" style="width:200px;"><b>20.&nbsp;</b><asp:label id="lc_emoout" runat="server" Text="Emotional Outbursts"></asp:label></td>
                                  <td style="width:40px"><b>(1-3)</b></td>
                                   <td style="width: 450px" align="left">
								       <asp:dropdownlist id="emoout" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:24%"></td>
                             </tr>  
                        </table>
                     </td>
                </tr>  
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td  ><b>PERSONAL OUTCOMES ELEMENT</b></td>
               </tr>   
               <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>A.&nbsp;PHYSICAl AND SOCIAL ENVIRONMENT</b></td>
               </tr>         
               <tr style="height:20px;">
                    <td><b>SCHOOL AND WORK</b></td>
               </tr>  
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>1.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_school" runat="server" Text="What type of school does the consumer attend?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="school" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                            <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>2.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_scntct" runat="server" Text="On a typical day, how much contact does the consumer have at school with students who do not have a disability?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="scntct" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>3.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_scntsp" runat="server" Text="On a typical day, how many people does the consumer interact with at school who speak the consumer's primary language (e.g., Spanish, English)?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="scntsp" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>4.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_daywrk" runat="server" Text="In what type of work or day program does the consumer participate most often?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="daywrk" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>5.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_dcnndd" runat="server" Text="On a typical day, how many people does the consumer interact with at the day program and/or work site who do not have a disability? (Include both peers and staff)"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="dcnndd" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                              <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>6.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_dcnlg" runat="server" Text="On a typical day, how many people does the consumer interact with at the day program and/or work site who speak the consumer's primary language?(Include both peers and staff)"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="dcnlg" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>7.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_hrpdwk" runat="server" Text="In a typical week, how many hours is the consumer paid for work? (Please estimate if the consumer is paid for productivity.) "></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="hrpdwk" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr> 
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>8.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_wages" runat="server" Text="In a typical week, how much does the consumer earn per hour of work? (Please estimate if the consumer is paid for productivity.) "></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="wages" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                          </table>
                      </td>
                 </tr> 
                <tr style="height:20px;">
                    <td><b>COMMUNITY AND SOCIAL LIFE</b></td>
               </tr>         
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>9.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_outing" runat="server" Text="During the past 6 months, about how often did the consumer participate in community outings for personal errands, recreation, entertainment, or church? "></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="outing" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                            <tr style="height:5px"><td colspan="4"></td></tr>
                            <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>10.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_friend" runat="server" Text="How many friends does the consumer have?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="friend" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                         </table>
                     </td>
                </tr> 
                <tr style="height:20px;">
                    <td><b>OUT-OF-HOME LIVING</b></td>
               </tr> 
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>11.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_ddinhs" runat="server" Text="Including the consumer, how many people with disabilities live in the household?(include both peers and staff)"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="ddinhs" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                            <tr style="height:5px"><td colspan="4"></td></tr>
                            <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>12.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_moved" runat="server" Text="How many times has the consumer moved from one residence to another in the last 2 years?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="moved" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                             <tr style="height:5px"><td colspan="4"></td></tr>
                            <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>13.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_spklng" runat="server" Text="On a typical day, how many people who live at the consumer's household speak the consumer's primary language (e.g., Spanish, English, Cambodian)?(Include both peers and staff)"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="spklng" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr> 
                         </table>
                     </td>
               </tr> 
               <tr style="height:20px;">
                    <td><b>B. HEALTH AND SAFETY</b></td>
               </tr>    
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>14.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_mdcare" runat="server" Text="Did the consumer see a physician, nurse practitioner, or physician's assistant for medical care (including check-ups) during the past 12 months?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="mdcare" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                            <tr style="height:5px"><td colspan="4"></td></tr>
                            <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>15.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_dscare" runat="server" Text="Did the consumer see a dentist for dental care(including check-ups) during the past 12 months?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="dscare" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                              <tr style="height:5px"><td colspan="4"></td></tr>
                            <tr class="tr_common">
                                  <td align="left" class="td_label" valign="top"><b>16.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_nocare" runat="server" Text="Does the consumer currently have a medical and/or dental condition for which appropriate care is not being provided, although it should be?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="nocare" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                        </table>
                    </td>
                </tr> 
                <tr style="height:20px;">
                    <td><b>C. CONSUMER SURVEY</b></td>
               </tr>         
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td align="left" valign="top"></td>
                                  <td align="left" class="td_label" ><asp:label id="lc_survey" runat="server" Text="If the consumer did not answer any of the following questions in this section,indicate why."></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="survey" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" 
                                          OnSelectedIndexChanged="survey_SelectedIndexChanged" CssClass="infaceDrop" onchange="NoConfirmExit();" AutoPostBack="true">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr> 
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label" ><b>17.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_lklive" runat="server" Text="Do you like living at _____?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="lklive" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>18.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_lkppll" runat="server" Text="Do you like the people who help you at _____?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="lkppll" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>19.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_cnlive" runat="server" Text="Do you want to keep living at _____?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="cnlive" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label" ><b>20.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_lkgoin" runat="server" Text="Do you like going to ______?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="lkgoin" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>21.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_lkppld" runat="server" Text="Do you like the people who help you at _____?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="lkppld" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>  
                              <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>22.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_cngoin" runat="server" Text="Do you want to keep going to _____?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="cngoin" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>
                              <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>23.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_talkto" runat="server" Text="Who do you talk to when you are sad or unhappy?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="talkto" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>24.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_safe" runat="server" Text="Do you feel safe or afraid most of the time?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="safe" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>25.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_hypsad" runat="server" Text="Are you happy or sad most of the time?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="hypsad" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                             <tr style="height:5px"><td colspan="4"></td></tr>
                             <tr class="tr_common">
                                  <td align="left" class="td_label"><b>26.&nbsp;</b></td>
                                  <td align="left" class="td_label"><asp:label id="lc_telwnt" runat="server" Text="Do you tell people what you want most the time?"></asp:label></td>                                
                                   <td style="width: 350px" align="left">
								       <asp:dropdownlist id="telwnt" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"  Width="450" OnClick="DataChanged()">
	                                   </asp:dropdownlist>
							       </td>
							       <td style="width:20px"></td>
                             </tr>   
                          </table>
                     </td>
                 </tr>  
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td  ><b>CALCULATIONS</b></td>
               </tr>      
               <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                  <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                  <td style="width:40px;"></td>
                                  <td align="left" class="td_label"><asp:label id="lc_frkfac" runat="server" Text="Frankland Factor:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="frkfac" runat="server" CssClass="inface" MaxLength=2></asp:textbox>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><asp:label id="lc_cdwhus" runat="server" Text="WheelChair use:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdwhus" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:30%"></td>							    
                             </tr>   
                             <tr style="height:5px"><td colspan="7"></td></tr>
                             <tr class="tr_common">
                                  <td style="width:40px;"></td>
                                  <td align="left" class="td_label"><asp:label id="lc_devlev" runat="server" Text="Development Level:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="devlev" runat="server" CssClass="inface" MaxLength=2></asp:textbox>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><asp:label id="lc_cdnonvb" runat="server" Text="Non-verbal Communication:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdnonvb" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:30%"></td>							    
                             </tr>   
                              <tr style="height:5px"><td colspan="7"></td></tr>
                             <tr class="tr_common">
                                  <td style="width:40px;"></td>
                                  <td align="left" class="td_label"><asp:label id="lc_cdprin" runat="server" Text="Practical Independence:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdprin" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><asp:label id="lc_cdintg" runat="server" Text="Integration:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdintg" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:30%"></td>							    
                             </tr>   
                             <tr style="height:5px"><td colspan="7"></td></tr>
                             <tr class="tr_common">
                                  <td style="width:40px;"></td>
                                  <td align="left" class="td_label"><asp:label id="lc_cdpess" runat="server" Text="Personal /Social Skills:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdpess" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><asp:label id="lc_cdwlbe" runat="server" Text="Well-Being:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdwlbe" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:30%"></td>							    
                             </tr>   
                             <tr style="height:5px"><td colspan="7"></td></tr>
                             <tr class="tr_common">
                                  <td style="width:40px;"></td>
                                  <td align="left" class="td_label"><asp:label id="lc_cdchbh" runat="server" Text="Challenging Behaviors:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdchbh" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:100px;"></td>
							      <td align="left" class="td_label"><asp:label id="lc_cdunmed" runat="server" Text="Untreated Medical Condition:"></asp:label></td>
                                  <td class="td_unline" style="width: 75px" align="left">
							           <asp:textbox id="cdunmed" runat="server" CssClass="inface" MaxLength=10></asp:textbox>
							      </td>
							      <td style="width:30%"></td>							    
                             </tr>   
                         </table>
                    </td>
                </tr>                                            
            </table>
            </div>
            <div id="Cder_EN"  style="display:none;">
            <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:92%">              
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0"  border="0"
                            style="width: 100%">
                            <tr class="tr_common">
                                <td class="td_label"><asp:Label ID="label11" runat="server" Text="Name:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 160px">
                                    <asp:Label ID="uciname3" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td class="td_label"><asp:Label ID="label15" runat="server" Text="UCI:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 100px">
                                    <asp:Label ID="uci3" runat="server" Width="100px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td class="td_label"><asp:Label ID="label19" runat="server" Text="DOB:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 100px">
                                    <asp:Label ID="uci_dob3" runat="server" Width="100px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td class="td_label"><asp:Label ID="label21" runat="server" Text="Gender:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 60px">
                                    <asp:Label ID="uci_gender3" runat="server" Width="60px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                                <td class="td_label"><asp:Label ID="label23" runat="server" Text="CM:"></asp:Label></td>
                                <td width="5px"></td>
                                <td class="td_unline" style="width: 160px">
                                    <asp:Label ID="uci_counselor3" runat="server" Width="160px" CssClass="infaceText"></asp:Label>
                                </td>
                                <td style="width: 2%"></td>
                            </tr>                           
                        </table>
                    </td>
                </tr>
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td align="center" > <asp:Label ID="Label25" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue"
                                            Height="24px">EVALUATION ELEMENT(ADDED NARRATIVE)</asp:Label>
                    </td>
               </tr>   
               <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
               <tr>
                   <td  style="height:5px"></td>
                </tr>
                <tr style="height:20px;">
                    <td><b>A.&nbsp;SKILLS DEMONSTRATED IN DAILY LIFE</b></td>
               </tr>  
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                <td align="left" class="td_label" style="width:25%;"><b>1.&nbsp;</b><asp:label id="Label26" runat="server" Text="Using Hands"></asp:label></td>
                                <td align="left" style="width:75%"></td>                                    							       
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="handustext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>2.&nbsp;</b><asp:label id="Label27" runat="server" Text="Walking"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="walknghistory_yes" groupname="walknghistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="walknghistory_no" groupname="walknghistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>    
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="walkngtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>3.&nbsp;</b><asp:label id="Label28" runat="server" Text="Using a Wheelchair"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="whlusehistory_yes" groupname="whlusehistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="whlusehistory_no" groupname="whlusehistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>     
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="whlusetext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>4.&nbsp;</b><asp:label id="Label29" runat="server" Text="Taking Prescription Meds."></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="takmedhistory_yes" groupname="takmedhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="takmedhistory_no" groupname="takmedhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="takmedtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>      
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>5.&nbsp;</b><asp:label id="Label30" runat="server" Text="Eating"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="eatinghistory_yes" groupname="eatinghistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="eatinghistory_no" groupname="eatinghistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="eatingtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>6.&nbsp;</b><asp:label id="Label31" runat="server" Text="Toileting"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="tltnghistory_yes" groupname="tltnghistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="tltnghistory_no" groupname="tltnghistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="tltngtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>7.&nbsp;</b><asp:label id="Label32" runat="server" Text="Bladder and Bowel Control"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="bbctrlhistory_yes" groupname="bbctrlhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="bbctrlhistory_no" groupname="bbctrlhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="bbctrltext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>   
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>8.&nbsp;</b><asp:label id="Label33" runat="server" Text="Personal Care"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="prshyghistory_yes" groupname="prshyghistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="prshyghistory_no" groupname="prshyghistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="prshygtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>  
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>9.&nbsp;</b><asp:label id="Label34" runat="server" Text="Dressing"></asp:label></td>                                  
                                <td  align="left" class="td_label">
                                   <asp:Radiobutton ID="drssnghistory_yes" groupname="drssnghistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="drssnghistory_no" groupname="drssnghistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							      
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="drssngtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>  
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>10.&nbsp;</b><asp:label id="Label35" runat="server" Text="Safety Awareness"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="safetyhistory_yes" groupname="safetyhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="safetyhistory_no" groupname="safetyhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="safetytext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>  
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>11.&nbsp;</b><asp:label id="Label36" runat="server" Text="Focusing on Tasks and Activities"></asp:label></td>                                  
                                <td align="left">								  
							    </td>
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
                                   <asp:textbox id="focustext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>								  
							    </td>							       
                             </tr>  
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>12.&nbsp;</b><asp:label id="Label37" runat="server" Text="Verbal Communication"></asp:label></td>                                  
                                <td align="left">       
							    </td>
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="verbaltext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>  
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>13.&nbsp;</b><asp:label id="Label38" runat="server" Text="Nonverbal Communication"></asp:label></td>
                                <td align="left">
							    </td>
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="novrbltext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>  
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>14.&nbsp;</b><asp:label id="Label39" runat="server" Text="Social Interaction"></asp:label></td>
                                <td align="left">
							    </td>							       
                             </tr>
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">
								   <asp:textbox id="socialtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                         </table>
                     </td>        
                </tr>   
                <tr style="height:20px;">
                    <td><b>B.&nbsp;CHALLENGING BEHAVIORS</b></td>
               </tr>  
               <tr style="height:20px">
                     <td>
                         <table class="table_common" cellSpacing="0" cellPadding="0"  border="0" style="width: 100%">
                             <tr class="tr_common">
                                <td align="left" class="td_label" style="width:25%;"><b>15.&nbsp;</b><asp:label id="Label40" runat="server" Text="Disruptive Social Behavior"></asp:label></td>                                  
                                <td align="left" style="width:75%" class="td_label">
                                   <asp:Radiobutton ID="disbhvhistory_yes" groupname="disbhvhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="disbhvhistory_no" groupname="disbhvhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">								       
                                   <asp:textbox id="disbhvtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>16.&nbsp;</b><asp:label id="Label41" runat="server" Text="Aggressive Social Behavior"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="aggrsnhistory_yes" groupname="aggrsnhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="aggrsnhistory_no" groupname="aggrsnhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">								       
                                   <asp:textbox id="aggrsntext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>17.&nbsp;</b><asp:label id="Label42" runat="server" Text="Self-Injurious Behavior"></asp:label></td>                               
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="sevsihistory_yes" groupname="sevsihistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="sevsihistory_no" groupname="sevsihistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">								       
                                   <asp:textbox id="sevsitext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>18.&nbsp;</b><asp:label id="Label43" runat="server" Text="Destruction of Property"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="dstrprhistory_yes" groupname="dstrprhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="dstrprhistory_no" groupname="dstrprhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">								       
                                   <asp:textbox id="dstrprtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>19.&nbsp;</b><asp:label id="Label44" runat="server" Text="Running or Wandering Away"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="rnwndhistory_yes" groupname="rnwndhistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="rnwndhistory_no" groupname="rnwndhistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							       
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">								       
                                   <asp:textbox id="rnwndtext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                             <tr style="height:5px"><td colspan="2"></td></tr> 
                             <tr class="tr_common">
                                <td align="left" class="td_label"><b>20.&nbsp;</b><asp:label id="Label45" runat="server" Text="Emotional Outbursts"></asp:label></td>                                  
                                <td align="left" class="td_label">
                                   <asp:Radiobutton ID="emoouthistory_yes" groupname="emoouthistory" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>Historical MW Qualifier</b>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Radiobutton ID="emoouthistory_no" groupname="emoouthistory" runat="server" Text="" Checked="false"></asp:Radiobutton><b>N/A</b>
							    </td>							    
                             </tr>  
                             <tr class="tr_common">
                                <td style="width: 100%" align="left" colspan="2">								       
                             	   <asp:textbox id="emoouttext" runat="server" CssClass="inface" MaxLength="500"></asp:textbox>
							    </td>							       
                             </tr>                    
                        </table>
                     </td>
                </tr>  
                <tr>
                    <td  style="height:5px"></td>
                </tr>
                <tr>
                    <td  class="td_thicksepline"></td>
                </tr>    
                <tr>
                   <td  style="height:5px"></td>
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
