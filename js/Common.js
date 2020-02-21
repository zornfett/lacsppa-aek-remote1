window.showModalDialog = window.showModalDialog || function (url, arg, feature) {
    var opFeature = feature.split(";");
    var featuresArray = new Array()
    if (document.all) {
        for (var i = 0; i < opFeature.length - 1; i++) {
            var f = opFeature[i].split("=");
            featuresArray[f[0]] = f[1];
        }
    }
    else {

        for (var i = 0; i < opFeature.length - 1; i++) {
            var f = opFeature[i].split(":");
            featuresArray[f[0].toString().trim().toLowerCase()] = f[1].toString().trim();
        }
    }



    var h = "200px", w = "400px", l = "100px", t = "100px", r = "yes", c = "yes", s = "no";
    if (featuresArray["dialogheight"]) h = featuresArray["dialogheight"];
    if (featuresArray["dialogwidth"]) w = featuresArray["dialogwidth"];
    if (featuresArray["dialogleft"]) l = featuresArray["dialogleft"];
    if (featuresArray["dialogtop"]) t = featuresArray["dialogtop"];
    if (featuresArray["resizable"]) r = featuresArray["resizable"];
    if (featuresArray["center"]) c = featuresArray["center"];
    if (featuresArray["status"]) s = featuresArray["status"];
    var modelFeature = "height = " + h + ",width = " + w + ",left=" + l + ",top=" + t + ",model=yes,alwaysRaised=yes" + ",resizable= " + r + ",celter=" + c + ",status=" + s;

    var model = window.open(url, "", modelFeature, null);

    model.dialogArguments = arg;

    // alert(model.returnValue);
}

function isIE() //judge browser is IE
{
    //if ((window.navigator.userAgent.toLowerCase().indexOf("msie") >= 1) ||
    //    (window.navigator.userAgent.match(/Trident\/7\./))) {
    //    return true;
    //}
    //else
    //    return false; 

    var ua = window.navigator.userAgent;
    if (ua.indexOf("Trident/7.0") > 0)
        return 11;
    else if (ua.indexOf("Trident/6.0") > 0)
        return 10;
    else if (ua.indexOf("Trident/5.0") > 0)
        return 9;
    else
        return 0;  // not IE9, 10 or 11
}

function resizeframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

function winhref(url, name)
{
    var newwin;
	newwin=window.open(url,name,"toolbar=0,location=yes,top=0,left=0,directories=0,status=0,menubar=yes,width=1000px,height=700px,scrollbars=yes,moveable=auto,resizable=yes");
	newwin.focus();
}

function winhrefmiddle(url, name)
{
    var newwin;
	newwin=window.open(url,name,"toolbar=0,location=yes,top=0,left=0,directories=0,status=0,menubar=yes,width=700px,height=500px,scrollbars=yes,moveable=auto,resizable=yes");
	newwin.focus();
}

function winhrefsmall(url, name)
{
    var newwin;
	newwin=window.open(url,name,"toolbar=0,location=no,top=0,left=0,directories=0,status=0,menubar=no,width=450px,height=250px,scrollbars=no,moveable=auto,resizable=yes");
	newwin.focus();
}

function popupDialog(url)
{
    window.showModalDialog(url, self,'status:no;dialogWidth:1000px;dialogHeight:750px;help:yes;scroll:yes;resizable:yes');    
}

function popupDialogSmall(url)
{
   window.showModalDialog(url, self,'status:no;dialogWidth:700px;dialogHeight:600px;help:yes;scroll:yes;resizable:yes');      
}

function popupDialogSmallWide(url) {
    window.showModalDialog(url, self, 'status:no;dialogWidth:900px;dialogHeight:600px;help:yes;scroll:yes;resizable:yes');
}

function popupDialogWithWindow(url, WinName)
{
    window.showModalDialog(url, WinName, 'status:no;dialogWidth:1000px;dialogHeight:750px;help:yes;scroll:yes;resizable:yes');   
}

function popupDialogWide(url)
{
    window.showModalDialog(url, self,'status:no;dialogWidth:1100px;dialogHeight:750px;help:yes;scroll:yes;resizable:yes;maximize:yes;minimize:yes;');   
    
}

function popupDialogWideWithWindow(url, WinName)
{
    window.showModalDialog(url, WinName, 'status:no;dialogWidth:1100px;dialogHeight:750px;help:yes;scroll:yes;resizable:yes;maximize:yes;minimize:yes;');   
}

function popupDialogShort(url)
{
    window.showModalDialog(url, self,'status:no;dialogWidth:900px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');    
}

function popupDialogTiny(url) {
    window.showModalDialog(url, self, 'status:no;dialogWidth:600px;dialogHeight:300px;help:yes;scroll:yes;resizable:yes');
}

function PromptDel(Msg)
{  
   var delflag;
   if (isIE())
       delflag = window.showModalDialog("../webDialogDel.aspx?title=" + Msg, self, "status:no;dialogWidth:350px;dialogHeight:100px;help:no;scroll:no;resizable:yes;");
   else
   {
       if (confirm(Msg))
           delflag = "1";
       else delflag = "0";
   }

   if (delflag=="1")
   {
       return true;
   }
   else
   {
       return false;
   }        
}

function PromptSaveChange(NoCancel, DspStr) {
    var saveflag;
    if (DspStr == "")
        DspStr = "Do you want to save the changes made?";

    if (isIE()) {
        if (NoCancel == 1)
            saveflag=window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        else
            saveflag=window.showModalDialog("../webSaveChange.aspx?DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
    }
    else {
        if (confirm(DspStr))
            saveflag = "1";
        else saveflag = "0";
    }

    return saveflag;
}

function PromptSaveChangeUplevel(NoCancel, DspStr) {
    var saveflag;
    if (DspStr == "")
        DspStr = "Do you want to save the changes made?";

    if (isIE()) {
        if (NoCancel == 1)
            saveflag = window.showModalDialog("./webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        else
            saveflag = window.showModalDialog("./webSaveChange.aspx?DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
    }
    else {
        if (confirm(DspStr))
            saveflag = "1";
        else saveflag = "0";
    }

    return saveflag;
}

function getEvent() //ie firefox   
{    
   if(document.all)   return window.event;    
   func=getEvent.caller;    
   while(func!=null){    
       var arg0=func.arguments[0];    
       if(arg0)    
       {    
           if((arg0.constructor==Event || arg0.constructor ==MouseEvent) || (typeof(arg0)=="object" && arg0.preventDefault && arg0.stopPropagation))    
           {    
               return arg0;    
           }    
       }    
       func=func.caller;    
   }    
   return null;    
}    

function get_cookie(Name) 
{
   var search = Name + '='
   var returnvalue = '';
   if (document.cookie.length > 0) 
   {
       offset = document.cookie.indexOf(search)
       if (offset != -1) {
           offset += search.length
           end = document.cookie.indexOf(';', offset);
           if (end == -1)
              end = document.cookie.length;
           returnvalue=unescape(document.cookie.substring(offset, end))
       }
   }
   return returnvalue;
}
        
//Function called when the browser is closed. for popup Modal Dialog
var dataChanged = false;
var NoConfirm = false;  // NoConfirm only used in popup Modal Dialog with HandleOnClose event set inside c#
var NoIDNotes = false;  // Need to set for CreateIDNotes page such as Client Profile, CDer08 etc.
function HandleOnClose(evt, refreshdata) {
    if ((!NoConfirm) && dataChanged)
    { 
        if (get_cookie('popupblock')=='yes')
        {
           alert("Please turn off the popup blocker for this website !");
           return false;
        }         
        
        //var saveflag=window.showModalDialog("../webSaveChange.aspx", self,"status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        var saveflag = PromptSaveChange(0, "");
        if (saveflag=="1") {
            document.forms[0].hdtoSaveData.value = "PageClosed";
            document.forms[0].submit(); 
            
            alert("Update Successful!");
             
            if (refreshdata==1)
            {              
               var opener=window.dialogArguments; 
               if (isIE())
               {
                  opener.RefreshMyData();                 
               }
               else
               {
                  window.opener.RefreshMyData();  
               }      
             }      
             return true;      
        }
        else if (saveflag == "0") {
            return true;
        }
        else
        {   
            if(window.event)    
               window.event.returnValue = "";    
            else    
               getEvent().preventDefault();//for firefox                        
        }
    }
}

// For Main.aspx when user click the menu
function SubmitOnClose() {
    if (dataChanged) {
      if (get_cookie('popupblock') == 'yes') {
            alert("Please turn off the popup blocker for this website !");
            return false;
      }

      try {
          //var saveflag = window.showModalDialog("../webSaveChange.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          var saveflag = PromptSaveChange(0, "");
          if (saveflag == "1") {
              if (save_click()) {
                  document.forms[0].hdtoSaveData.value = "PageClosed";
                  return true;
              }
              else {
                  document.forms[0].hdtoSaveData.value = "";
                  return true;
              }
          }
          else if (saveflag == "0") {
              if (document.forms[0].id == "IDNotesInfo") {
                  document.forms[0].hdtoSaveData.value = "DeleteDraft";
                  return true;
                  //return false;
              }
              else
                 return false;
          }
          else
              return true;
      }
      catch (err) {
          return false;
      }
    }
}

// for these icons at the top of the page such as back button
function Confirm_Page() {
	var a = document.forms[0].hdtoSaveData;
	if (a == null) return true;

    if (dataChanged) {
       //var saveflag=window.showModalDialog("../webSaveChange.aspx", self,"status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        var saveflag = PromptSaveChange(0, "");
       if (saveflag == "1") { // Yes save
           if (save_click()) {
               NoCreateIDNotes();
               document.forms[0].hdtoSaveData.value = "PageClosed";
               document.forms[0].submit();
               return false;
           }
           else return false;
       }
       else if (saveflag == "0")  // No
       {
           if (document.forms[0].id == "IDNotesInfo") {
               document.forms[0].hdtoSaveData.value = "DeleteDraft";
               //document.forms[0].submit();
               //return false;
               return true;
           }
           else
               return true;
       }
       else return false;    // Cancel
    }
    else return true;  
}

function CreateIDNotes(formname) {
    try {
        if (!NoIDNotes && (document.forms[0].IDNotessave.value == "Y") && (document.forms[0].IDNotespopup.value == "Y")) {
            var DspStr = "Do You Want To Create An ID Note For The " + formname + " You Just Saved ?";
            //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
            var saveflag = PromptSaveChange(1, DspStr);
            if (saveflag == "1")
                document.location.replace("../WebList/webIDNotesInfo.aspx?type=add&IDNotesType=" + document.forms[0].IDNotestype.value +
                    "&IDNotesTemplate=" + document.forms[0].IDNotestemplate.value);
        }
    }
    catch (err) { }
}

function CreateIDNotesDialog(formname) {
    try {
        if (!NoIDNotes && (document.forms[0].IDNotessave.value == "Y") && (document.forms[0].IDNotespopup.value == "Y")) {
            var DspStr = "Do You Want To Create An ID Note For The " + formname + " You Just Saved ?";
            //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
            var saveflag = PromptSaveChange(1, DspStr);            
            if (saveflag == "1") {
                var opener = window.dialogArguments;
                //opener.CallCreateIDNotes(document.forms[0].IDNotestype.value, document.forms[0].IDNotestemplate.value);
                opener.document.location.replace("../WebList/webIDNotesInfo.aspx?type=add&IDNotesType=" + document.forms[0].IDNotestype.value +
                    "&IDNotesTemplate=" + document.forms[0].IDNotestemplate.value);
                window.close();
            }
            else RefreshParent(0);
        }
    }
    catch (err) { }
}
// user change the data such as textbox
function DataChanged()  {
   dataChanged = true;
}

// for popup Diaglog only, post back selection no need to check save
function NoConfirmExit() {
   NoConfirm = true;
}

// post back selection no Need To create ID Notes
function NoCreateIDNotes() {
   NoIDNotes = true;
}
// Don't ask if need to create ID Notes or not for posk back selection

var NoUnlockForm = false;  // Need for Elig Form lock/unlock.
function NoUnLockFormPage() {
    NoUnlockForm = true;
}

function JTrim(strIn) {
      strTemp=strIn.substr(0,1);
      if (strTemp==" ")
      {
         while (strTemp==" ")
         {
            strIn=strIn.substr(1);
            strTemp=strIn.substr(0,1);
         }
      }
 
      strTemp=strIn.substr(strIn.length-1);
      if (strTemp==" ")
      {
         while (strTemp==" ")
         {
            strIn=strIn.substr(0,strIn.length-1);
            strTemp=strIn.substr(strIn.length-1);
         }
      }
    return (strIn);
}

function IsTimeAMPM(strtime) {
    strtime = JTrim(strtime);
    if (strtime != "") {
        if (strtime.indexOf(":") == 0) {
            alert("Incorrect Time format. Please enter time as hh:ss.");
            return ("false");
        }
    }
    else       //no input 
    {
        return ("true");
    }

    intPos = strtime.indexOf(":");

    intHH = parseInt(strtime.substring(0, intPos), 10);
    intMM = parseInt(strtime.substring(intPos + 1), 10);

    if ((isNaN(intHH)) || (isNaN(intMM))) {
        alert("Incorrect Time format. Please enter time as hh:ss.");
        return ("false");
    }

    if ((intHH < 0) || (intHH > 12) || (intMM < 0) || (intMM > 59)) {
        alert("Incorrect Time format. Please enter time as hh:ss (hh between 0-12)");
        return ("false");
    }

    return ("true");
}

function IsTime(strtime) {
       strtime = JTrim(strtime);
       if (strtime != "") {
           if (strtime.indexOf(":") == 0) 
           {
               alert("Incorrect Time format. Please enter time as hh:ss.");
               return ("false");
           }
       }
       else       //no input 
       {
           return ("true");
       }

       intPos = strtime.indexOf(":");

       intHH = parseInt(strtime.substring(0, intPos), 10);
       intMM = parseInt(strtime.substring(intPos + 1), 10);

       if ((isNaN(intHH)) || (isNaN(intMM)))
       {
           alert("Incorrect Time format. Please enter time as hh:ss.");
           return ("false");
       }

       if ((intHH < 0) || (intHH > 23) || (intMM <0) || (intMM > 59)) {
           alert("Incorrect Time format. Please enter time as hh:ss.");
           return ("false");
       }

       return ("true");
}

function IsDate(strdate, required) {
      strdate = JTrim(strdate);
      //alert(strdate);
      if (strdate=="") //no input false     
      {
          if (required) {
              // alert("Empty Date, please enter the date");
              return ("false");
          }
          else return ("true");
      }

      if (strdate.indexOf("/")>0)
      {
         strflag="/"
      }
      else if(strdate.indexOf("-")>0)
      {
         strflag="-"
      }
      else    //illegal format false
      {  
         alert("Incorrect date format. Please enter date as month/day/year or month-day-year.")
         return ("false")
      }

      intPos1=strdate.indexOf(strflag);
      intPos2=strdate.indexOf(strflag,intPos1+1);
    
      if (intPos2==-1)     //illegal format false
      {   
         alert("Incorrect date format. Please enter date as month/day/year or month-day-year.")
         return ("false")
      }
    
      intMonth=parseInt(strdate.substring(0,intPos1),10);
      intDay=parseInt(strdate.substring(intPos1+1,intPos2),10);
      intYear=parseInt(strdate.substring(intPos2+1),10);

      if ((intYear < 1900) || (intYear > 2030)) {
          alert("Incorrect number for Year.")
          return ("false")
      }
      else if ((intMonth < 1) || (intMonth > 12)) {
          alert("Incorrect number for Month. Please enter a month between 1 and 12.")
          return ("false")
      }
      else if (intDay < 1) {
          alert("Incorrect number for Day. Please enter a day between 1 and 31.")
          return ("false")
      }
      else {
          switch (intMonth) {
              case 1:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in January.");
                      return ("false")
                  }
                  break;
              case 3:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in March.");
                      return ("false")
                  }
                  break;
              case 5:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in May.");
                      return ("false")
                  }
                  break;
              case 7:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in July.");
                      return ("false")
                  }
                  break;
              case 8:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in August.");
                      return ("false")
                  }
                  break;
              case 10:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in October.");
                      return ("false")
                  }
                  break;
              case 12:
                  if (intDay > 31) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 31 in December.");
                      return ("false")
                  }
                  break;
              case 4:
                  if (intDay > 30) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 30 in April.");
                      return ("false")
                  }
                  break;
              case 6:
                  if (intDay > 30) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 30 in June.");
                      return ("false")
                  }
                  break;
              case 9:
                  if (intDay > 30) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 30 in September.");
                      return ("false")
                  }
                  break;
              case 11:
                  if (intDay > 30) {
                      alert("Incorrect number for Day. Please enter a day between 1 and 30 in November.");
                      return ("false")
                  }
                  break;
              case 2:
                  if (((intYear % 4) == 0 && (intYear % 100) != 0) || (intYear % 400) == 0) {
                      if (intDay > 29) {
                          alert("Incorrect number for Day. Please enter a day between 1 and 29 in Feberary.");
                          return ("false")
                      }
                  }
                  else {
                      if (intDay > 28) {
                          alert("Incorrect number for Day. Please enter a day between 1 and 28 in Feberary.");
                          return ("false")
                      }
                  }
                  break;
          }
      }
      return ("true")
   }
         
   function IsNumber(strvalue,diagvalue)
   {
      var int_pos=0;
      if (strvalue!="")
      {
        if (diagvalue=="2")
        {
          if (isNaN(strvalue)==true)
          {
             alert("Please input number(decimal digits is 2)!");
             return ("false")
          }  
          else
          {
             int_pos=strvalue.indexOf(".");  
             if (int_pos>0)
             {
                if  ((strvalue.length-(int_pos+1))>2)
                {
                    alert("Please input number(decimal digits is 2)!");                       
                    return ("false")
                }
             }
          }  
        }
        else
        {
          if (isNaN(strvalue)==true)
          {
               // alert("Please input number!");
               return ("false")
          }  
        }   
      } 
      return "true";             
   }

   function IsInteger(intfield) {
       var fieldlength;
       var single;
       intfield = JTrim(intfield);
       fieldlength = intfield.length;
       if (fieldlength == 0) return false;
       for (var i = 0; i <= fieldlength - 1; i++) {
           single = intfield.substring(i, i + 1);
           if ((single < "0") || (single > "9")) {
               return false;
               break;
           }
       }
       return true;
   }

   function isMaxLength(txtbox, len)
   {
       if (txtbox.value.length < len)
          return true;
       else
       {
          alert("Reached the maximum text length: "+len);
          return false;
       }
   }

   function autotab(original, destination) 
   {
       if (original.getAttribute && original.value.length == original.getAttribute("maxlength"))
           destination.focus();
   }

   function onloadsizechg(spaceline) {
       var myWidth = 0, myHeight = 0;
       spaceline = 200;
       if (typeof (window.innerWidth) == 'number') {
           //Non-IE
           myWidth = window.innerWidth;
           myHeight = window.innerHeight;
       }
       else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
           //IE 6+ in 'standards compliant mode'
           myWidth = document.documentElement.clientWidth;
           myHeight = document.documentElement.clientHeight;
       }
       else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
           //IE 4 compatible
           myWidth = document.body.clientWidth;
           myHeight = document.body.clientHeight;
       }
       //if (document.getElementById('maindivannual')!=undefined)
       document.getElementById('maindiv').style.height = myHeight - spaceline;
   }

   function DisplayTitleInfo(clientstr, pagestr) {
       window.top.document.getElementById('clientinfo').innerHTML = clientstr;
       window.top.document.getElementById('pagetitle').innerHTML = pagestr;
   }

   var lastrow;
   var lastcolor;
   function SetRowColorAfterClick(row) {
       if (lastrow != null) {
           lastrow.style.backgroundColor = lastcolor;
           lastrow.style.fontWeight = '';
       }
       lastrow = row;
       lastcolor = row.style.backgroundColor;

       row.style.backgroundColor = 'LightGreen';
       row.style.fontWeight = 'bold';
   }

   function SetSessionVarAfterClick(row, URL) 
   {
       if (lastrow != null) {
           lastrow.style.backgroundColor = lastcolor;
           lastrow.style.fontWeight = '';
       }
       lastrow = row;
       lastcolor = row.style.backgroundColor;

       row.style.backgroundColor = 'LightGreen';
       row.style.fontWeight = 'bold';

       var ajaxRequest;  // The variable that makes Ajax possible!

       try {
           // Opera 8.0+, Firefox, Safari
           ajaxRequest = new XMLHttpRequest();
       }
       catch (e) {
           // Internet Explorer Browsers
           try {
               ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
           }
           catch (e) {
               try {
                   ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
               }
               catch (e) {
                   // Something went wrong
                   alert("Your browser does not support Ajax!");
                   return false;
               }
           }
       }
       // Create a function that will receive data sent from the server
       ajaxRequest.onreadystatechange = function () {
           if (ajaxRequest.readyState == 4) {
               /*
               var returnstr = ajaxRequest.responseText;
               var pos1=returnstr.indexOf("presel=");
               var pos2=returnstr.indexOf("precolor=");
               var presel = returnstr.substring(pos1+7,pos2);
               var precolor = returnstr.substring(pos2+9);
               row.style.backgroundColor = 'LightGreen';
                
               if (presel != "") 
               {  
               var aa=document.getElementById("dg_consumerinfo");
               if (precolor == "")
               aa.rows[presel].style.backgroundColor = "";
               else
               aa.rows[presel].style.backgroundColor = precolor;
               }
               */
           }
       }
       var urlstr = URL + "&BackColor=" + row.style.backgroundColor; 
       ajaxRequest.open("GET", urlstr, true);
       ajaxRequest.send(null);
   }

   function RestoreMyHome() {
       window.top.bg_change(0);
       // window.top.mainlist.location.replace();
       document.getElementById("mainlist").src = "../webPartsMain.aspx";
       return true;
   }

   function PopupMessage(type) {
   //*********************************
   // Popup Messages-- Global 
   //*********************************
       if (type == 0)  // Save and Add Success/failed
           alert("Update successful!");
       else if (type == 1)
           alert("Update unsuccessful! Please try again.");
       else if (type == 2)
           alert("Delete successful!");
       else if (type== 201)
           alert("Delete unsuccessful! Please try again.")
       else if (type == 3)
           alert("Client Not Exist!");
       else if (type == 10)  // General 
           alert("Under Construction ...");
       else if (type == 11)
       //alert("Session Timeout, Please login again.");
           alert("Connection Lost, Please login again.");
       else if (type == 12)
           alert("System is busy. Please contact administrator.");

       else if (type == 13)
           alert("User ID already exists. Please try again.");

    //*********************************
    // Popup Messages-- Consumer Profile
    //*********************************

    //*********************************
    // Popup Messages-- POS
    //*********************************

       else if (type == 21)  // FormPosList
           alert("Please select a item in the Authorized POS List first.");
       else if (type == 22)
           alert("Please select a item in the POS or TSR List first.");
       else if (type == 23)
           alert("Please select a item in the POS/TSR/Auth POS List first.");

    //*********************************
    // Popup Messages-- Tickler
    //*********************************
       else if (type == 27) 
           alert("Please enter appointment date/time before printing the letter.");

    //*********************************
    // Popup Messages-- Login Page
    //*********************************
       else if (type == 30) 
           alert("login failed,please login again.");
       else if (type == 31)
           alert("Incorrect User Name! Please try again.");
       else if (type == 32)
           alert("Please initialize your password first.");
       else if (type == 33)
           alert("Incorrect User Name or Password! Please try again.");
       else if (type == 34)
           alert("Please input your login name first.");
       else if (type == 35)
           alert("Your login name does not exist in the system, please contact KeaSystem support.");
       else if (type == 36)
           alert("Your email address is empty, please contact KeaSystem support.");
       else if (type == 37)
           alert("Failed to send your email, please contact KeaSystem support.");
       else if (type == 38)
           alert("Reset password unsuccessful! Please try again.");
       else if (type == 39)
           alert("Password reset! You will recieve a email for new password.");
       else if (type == 40)
           alert("Password reset");
       else if (type == 41)
           alert("Incorrect Password! Please try again.");
       else if (type == 42)
           alert("You don't have the permission to sign the form.");
       else if (type == 43)
           alert("Your account is locked.  Please contact your administrators.");
       else if (type == 44)
           alert("Your account is disabled.  Please contact your administrators.");
    //*********************************
    // Popup Messages-- Transfer PRRS
    //*********************************
       else if (type == 45) 
           alert("Client can not be found, please try again.");
       else if (type == 46)
           alert("More than one clients are found, please try again.");

    //*********************************
    // Popup Messages-- Search
    //*********************************

       else if (type == 50) 
           alert("To create a new search criteria, please enter search name and setting on the right side of this page, then click Save or Cancel button.");
    //*********************************
    // Popup Messages-- Label
    //*********************************

       else if (type == 55) 
           alert("Label id is integer,please input again!")
       else if (type == 56)
           alert("Label id is integer,please input again!");
       else if (type == 57)
           alert("Please input label id!");
       else if (type == 58)
           alert("Please input setting name!");
       else if (type == 59)
           alert("Please input descriptions!");
       else if (type == 60)
           alert("The Label Id is already in use.?Please enter a unique ID.");
    //*********************************
    // Popup Messages-- Time Card
    //*********************************
       else if (type == 65)  
           alert("Period has been closed.");
       else if (type == 66)
           alert("Please Check 'Lunch' checkbox!");
       else if (type == 67)
           alert("Please check 'I approve and certify ..' checkbox first before submit!");
    //*********************************
    // Popup Messages--  WebLink Control
    //*********************************
       else if (type == 70)
           alert("The Weblink name/URL can't be empty");

    //*********************************
    // Popup Messages--  Signature
    //*********************************
       else if (type == 80)
           alert("Only the Assessment Coordinator can sign up here. Please contact your office administrator.");

    //*********************************
    // Popup Messages-- Super Manager
    //*********************************
       else if (type == 90)
           alert("Please select account!");
       else if (type == 91)
           alert("Please Enter 'From' Date!");
       else if (type == 92)
           alert("Please Enter 'To' Date!");
       
       else if (type == 93)
           alert("Please select the PDF file you want to upload first");
   }

   function RefreshParent(closeself) {
       var opener = window.dialogArguments;
       if (isIE()) {
           opener.RefreshMyData();
       }
       else {
           window.opener.RefreshMyData();
       }
       if (closeself == 1) {
           window.close();
       }
       else {
           window.focus();
       }
   }

   function padStr(i) {
       return (i < 10) ? "0" + i : "" + i;
   }

   /*
   // Prevent the backspace key from navigating back.
   $(document).unbind('keydown').bind('keydown', function (event) {
       var doPrevent = false;
       if (event.keyCode === 8) {
           var d = event.srcElement || event.target;
           if ((d.tagName.toUpperCase() === 'INPUT' && (d.type.toUpperCase() === 'TEXT' || d.type.toUpperCase() === 'PASSWORD'))
             || d.tagName.toUpperCase() === 'TEXTAREA') {
               doPrevent = d.readOnly || d.disabled;
           }
           else {
               doPrevent = true;
           }
       }

       if (doPrevent) {
           event.preventDefault();
       }
   });
   */

   function cancelBack() {
       if ((event.keyCode == 8 ||
           (event.keyCode == 37 && event.altKey) ||
           (event.keyCode == 39 && event.altKey))
            &&
           (event.srcElement.form == null || event.srcElement.isTextEdit == false)
          ) {
           //alert("hh");
           event.cancelBubble = true;
           event.returnValue = false;
       }
       //alert("jjj");
   }   
