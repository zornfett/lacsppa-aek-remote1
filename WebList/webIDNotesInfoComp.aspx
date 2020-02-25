<%@ page language="C#" inherits="Virweb2.WebList.webIDNotesInfo" ValidateRequest="false" Codebehind="webIDNotesInfoComp.aspx.cs" AutoEventWireup="True" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::CASE NOTES:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javascript" src="../js/common.js"></script>

<script language="javascript" type="text/javascript">
/*
       var sessionTimeoutWarning = "<%= System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()%>";
       var sessionTimeout = "<%= Session.Timeout %>";
       
       var sTimeout = (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning)) * 60 * 1000;
       setTimeout('SessionWarning()', sTimeout);

       function SessionWarning() {
         var message = "Your session will expire in another " + 
            parseInt(sessionTimeoutWarning) + 
            " mins! Please Save the data before the session expires";
         alert(message);
       }
*/
</script>
    
    <script type="text/javascript">
	    // JScript File
        var CountStepper = Math.ceil(1);
        var DisplayFormat = "%%D%% Days, %%H%% Hours, %%M%% Minutes, %%S%% Seconds.";
        var SetTimeOutPeriod = (Math.abs(CountStepper)-1)*1000 + 990;
        var ddiff=0
        var CountActive=false

        function calcage(secs, num1, num2) 
        {
            s = ((Math.floor(secs/num1))%num2).toString();
            if (s.length < 2)
                s = "0" + s;
            return "<b>" + s + "</b>";
        }

        function CountBack(secs) 
        {
            DisplayStr = DisplayFormat.replace(/%%D%%/g, calcage(secs,86400,100000));
            DisplayStr = DisplayStr.replace(/%%H%%/g, calcage(secs,3600,24));
            DisplayStr = DisplayStr.replace(/%%M%%/g, calcage(secs,60,60));
            DisplayStr = DisplayStr.replace(/%%S%%/g, calcage(secs,1,60));

            document.getElementById("cntup").innerHTML = DisplayStr;
            if (CountActive)
            {
                setTimeout("CountBack(" + (secs+CountStepper) + ")", SetTimeOutPeriod);
                ddiff=secs+CountStepper;  
            }
        }

        function StartClock()
        {
            CountActive=true   
            CountBack(ddiff);
            document.getElementById("start").disabled=true;
            document.getElementById("reset").disabled=true;
        }

        function EndClock()
        {
            CountActive=false;  
            document.getElementById("total").innerHTML = ddiff; 
            document.getElementById("tx_minutes").value = Math.ceil(ddiff/60);
            document.getElementById("start").disabled=false;
            document.getElementById("reset").disabled=false;
        }

        function ResetClock()
        {
            CountActive=false;
            ddiff=0;
            document.getElementById("cntup").innerHTML = "00 Days, 00 Hours, 00 Minutes, 00 Seconds";
            document.getElementById("total").innerHTML = 0;
            document.getElementById("tx_minutes").value = "0"; 
        }
               
        function window_onload()
        {
          var tx_date =document.IDNotesInfo.txdate.value.toString();         
          if (tx_date=="")     
          {              
              document.IDNotesInfo.btnPrint.disabled=true;
          }   
          else
          {
             document.IDNotesInfo.btnPrint.disabled=false;
          }   
        }

        function Add_click()
        {
           if (Confirm_Page())
              document.location.replace("webIDNotesInfoComp.aspx?type=add&validated="+document.IDNotesInfo.validated.value);
        }

        function List_click()
        {
            if (Confirm_Page())
               document.location.replace("webIDNotesListComp.aspx?validated="+document.IDNotesInfo.validated.value); 
        }

        function print_click()
        {
          var tx_uci=document.IDNotesInfo.consumer_key.value.toString();  
          var tx_date =document.IDNotesInfo.txdate.value.toString(); 
          var txty_type = document.IDNotesInfo.txtytype.value.toString(); 
          var UserAct=document.IDNotesInfo.UserAct.value.toString();      
          winhref("PrintIDNotesInfo.aspx?tx_uci=" + tx_uci + "&tx_date=" + tx_date + "&txty_type="+ txty_type + "&UserAct="+UserAct,"PrintIDNotesInfo");          
        }
        
        function Message_Click()
        {
            var tx_uci=document.IDNotesInfo.consumer_key.value.toString();  
            var url="WebMessager.aspx?uci="+tx_uci+"&popupw=1";            
            window.showModalDialog(url, self,'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');               
        }

        function save_click()
        {
           var str="";
           var int_num=0;
           if (document.IDNotesInfo.bill.value != "1")  // not billing type
           {
             if (IsInteger(JTrim(document.getElementById("tx_minutes").value)))
             {
              int_num=parseInt(document.getElementById("tx_minutes").value,10); 
              if (int_num<1)
              {  
                 alert("The 'Minutes' field is required and must be greater than 0.");
                 document.getElementById("tx_minutes").focus();
                 return false;
              }
             }
             else
             {
              alert("The 'Minutes' field is required and must be greater than 0.");
              document.getElementById("tx_minutes").focus();
              return false;
             }
           }

           if (IsDate(document.getElementById("tx_date").value, true) != "true") 
		   {
              alert("Please input Service Date!");
              document.IDNotesInfo.tx_date.focus();
              return false;          
           }

           var ServiceDate = Date.parse(document.getElementById("tx_date").value);
           var Today = new Date();
           if (ServiceDate >= Date.parse(Today))
           {
              alert("You cannot save ID Note when the date/time is set in the future.");
              document.getElementById("tx_date").focus();
              return false;
           }

           var notestr=document.getElementById("tx_id_notes").value;
           if (notestr.indexOf('_') >= 0)
           {
              alert("Please remove all of the underscores in the description field.");
              document.getElementById("tx_id_notes").focus();
              return false;
           }

           if (document.getElementById("txtytype").value == "1")
           {
              str=JTrim(document.getElementById("txd_misc_hour").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txd_misc_hour").value)))
                 {
                    int_num=parseInt(document.getElementById("txd_misc_hour").value,10);
                    if ((int_num>1000) || (int_num<0))
                    {
                       alert("Please input a number between 0-1000 in the Hour field!");
                       document.getElementById("txd_misc_hour").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-1000 in the Hour field!");
                       document.getElementById("txd_misc_hour").focus();
                       return false;
                 }
              }
              str=JTrim(document.getElementById("txd_misc_min").value)             
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txd_misc_min").value)))
                 {
                    int_num=parseInt(document.getElementById("txd_misc_min").value,10);                   
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txd_misc_min").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txd_misc_min").focus();
                       return false;
                 }
              }
           }
                  
           //if (document.getElementById("tx_type").value=="A")
           if (document.getElementById("txtytype").value == "2")
           {
              str=JTrim(document.getElementById("txt_timein1").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_timein1").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_timein1").value,10);
                    if ((int_num>12) || (int_num<0))
                    {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_timein1").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_timein1").focus();
                       return false;
                 }
              }
              str=JTrim(document.getElementById("txt_timein2").value)             
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_timein2").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_timein2").value,10);                   
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_timein2").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_timein2").focus();
                       return false;
                 }
              }
              str=JTrim(document.getElementById("txt_timeout1").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_timeout1").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_timeout1").value,10);
                    if ((int_num>12) || (int_num<0))
                    {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_timeout1").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_timeout1").focus();
                       return false;
                 }
              }
              str=JTrim(document.getElementById("txt_timeout2").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_timeout2").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_timeout2").value,10);
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_timeout2").focus();
                       return false;
                    }
                 } 
                 else
                 {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_timeout2").focus();
                       return false;
                 } 
              }
              
           }          
        
           if (document.getElementById("tx_type").value=="E")     
           {
              str=JTrim(document.getElementById("txt_starttime1").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_starttime1").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_starttime1").value,10);
                    if ((int_num>12) || (int_num<0))
                    {
                       alert("Incorrect hour. Please enter a hour between 0 and 11!");
                       document.getElementById("txt_starttime1").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Incorrect hour. Please enter a hour between 0 and 11!");
                       document.getElementById("txt_starttime1").focus();
                       return false;
                 }
              }
              else
              {
                  alert("Incorrect hour. Please enter a hour between 0 and 11!");
                  document.getElementById("txt_starttime1").focus();
                  return false;
              }
              str=JTrim(document.getElementById("txt_starttime2").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_starttime2").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_starttime2").value,10);
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Incorrect minute. Please enter a minute between 0 and 59!");
                       document.getElementById("txt_starttime2").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Incorrect minute. Please enter a minute between 0 and 59!");
                       document.getElementById("txt_starttime2").focus();
                       return false;
                 }
              }
              else
              {
                  alert("Incorrect minute. Please enter a minute between 0 and 59!");
                  document.getElementById("txt_starttime2").focus();
                  return false;
              }
              str=JTrim(document.getElementById("txt_endtime1").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_endtime1").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_endtime1").value,10);
                    if ((int_num>12) || (int_num<0))
                    {
                       alert("Incorrect hour. Please enter a hour between 0 and 11!");
                       document.getElementById("txt_endtime1").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Incorrect hour. Please enter a hour between 0 and 11!");
                       document.getElementById("txt_endtime1").focus();
                       return false;
                 }
              }
              else
              {
                  alert("Incorrect hour. Please enter a hour between 0 and 11!");
                  document.getElementById("txt_endtime1").focus();
                  return false;
              }
              str=JTrim(document.getElementById("txt_endtime2").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_endtime2").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_endtime2").value,10);
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Incorrect minute. Please enter a minute between 0 and 59!");
                       document.getElementById("txt_endtime2").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Incorrect minute. Please enter a minute between 0 and 59!");
                       document.getElementById("txt_endtime2").focus();
                       return false;
                 }
              }
              else
              {
                  alert("Incorrect minute. Please enter a minute between 0 and 59!");
                  document.getElementById("txt_endtime2").focus();
                  return false;
              }
               str=JTrim(document.getElementById("txt_program").value)
               if (str=="")
               {
                  alert("Please select a Program!");
                  document.getElementById("txt_program").focus();
                  return false;
               }          
           }

           if (document.getElementById("txtytype").value == "5")
           {
                 if (IsDate(document.getElementById("txd_appraisal_date").value, false) != "true")) 
		         {
                     document.IDNotesInfo.txd_appraisal_date.focus();
                     return false;          
                 }
                 
                 if (IsDate(document.getElementById("txd_offer_date").value, false) != "true")) 
		         {
                     document.IDNotesInfo.txd_offer_date.focus();
                     return false;          
                 }
                 
                 if (IsDate(document.getElementById("txd_counter_date").value, false) != "true") 
		         {
                     document.IDNotesInfo.txd_counter_date.focus();
                     return false;          
                 }

                 if (document.getElementById("txd_tickler_days").value == "")
                     document.getElementById("txd_tickler_days").value = "0";
                 
                 if ((document.getElementById("txd_tickler").value == "Y") &&
                     ( document.getElementById("txd_tickler_days").value == "0"))
                 {
                     alert("Please input a number for the tickler days!");
                     document.getElementById("txd_tickler_days").focus();
                     return false;
                 }

                 if (!IsInteger(JTrim(document.getElementById("txd_tickler_days").value)))
                 {
                     alert("Please input a number for the tickler days!");
                     document.getElementById("txd_tickler_days").focus();
                     return false;
                 }
           }
           /*
           // if (document.getElementById("tx_template").value.toUpperCase()=="EBILLING")
           if (document.getElementById("txtytype").value == "3")  // Original EBilling
           {
              str=JTrim(document.getElementById("txt_ebilling_timein1").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_ebilling_timein1").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_ebilling_timein1").value,10);
                    if ((int_num>12) || (int_num<0))
                    {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_ebilling_timein1").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_ebilling_timein1").focus();
                       return false;
                 }
              }
              else
              {
                 document.getElementById("txt_ebilling_timein1").value="0";
              }
              str=JTrim(document.getElementById("txt_ebilling_timein2").value)             
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_ebilling_timein2").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_ebilling_timein2").value,10);                   
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_ebilling_timein2").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_ebilling_timein2").focus();
                       return false;
                 }
              }
              else
              {
                 document.getElementById("txt_ebilling_timein2").value="0";
              }
              str=JTrim(document.getElementById("txt_ebilling_timeout1").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_ebilling_timeout1").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_ebilling_timeout1").value,10);
                    if ((int_num>12) || (int_num<0))
                    {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_ebilling_timeout1").focus();
                       return false;
                    }
                 }  
                 else
                 {
                       alert("Please input a number between 0-12 in the Hour field!");
                       document.getElementById("txt_ebilling_timeout1").focus();
                       return false;
                 }
              }
              else
              {
                 document.getElementById("txt_ebilling_timeout1").value="0";
              }
              str=JTrim(document.getElementById("txt_ebilling_timeout2").value)
              if (str!="")
              {
                 if (IsInteger(JTrim(document.getElementById("txt_ebilling_timeout2").value)))
                 {
                    int_num=parseInt(document.getElementById("txt_ebilling_timeout2").value,10);
                    if ((int_num>59) || (int_num<0))
                    {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_ebilling_timeout2").focus();
                       return false;
                    }
                 } 
                 else
                 {
                       alert("Please input a number between 0-59 in the Minute field!");
                       document.getElementById("txt_ebilling_timeout2").focus();
                       return false;
                 } 
              }
              else
              {
                 document.getElementById("txt_ebilling_timeout2").value="0";
              }
              
           }          
           */

           if (document.IDNotesInfo.brookstatuschg.value == "1")
           {
              var DspStr = "You have changed the status/category.  Do you also want to update the profile?";
              //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
              var saveflag = PromptSaveChange(1, DspStr);
              if (saveflag == "1")
                   document.IDNotesInfo.brookstatusupd.value = "1";
              else 
                   document.IDNotesInfo.brookstatusupd.value = "0";

              document.IDNotesInfo.brookstatuschg.value = "0";
           }     

           return true;          
        }
        
        function multisave_click()
        {
           if (save_click())
           {
             popupDialogSmall('../FormList/SearchConsumer.aspx');
           }
           else return false;
        }
                
        function AddMulti(clients)
        {
           var clientList = document.getElementById(<%= "'" + hdnclientData.ClientID + "'" %>);        
           clientList.value = clients;        
           //window.document.IDNotesInfo.submit(); 
           window.focus(); 
        }

        function back_click() 
        {
            if (Confirm_Page())
            {
               if (document.IDNotesInfo.bill.value != "1")  // not billing type
                  document.location.replace("webIDNotesListComp.aspx?validated="+document.IDNotesInfo.validated.value); 
               else
                  document.location.replace("webBillingReport.aspx"); 
            }
        }

        function Select_Program()
        {
           document.IDNotesInfo.txt_starttime1.value="";
           document.IDNotesInfo.txt_starttime2.value="";
           document.IDNotesInfo.dplist_starttime.value="1";
           document.IDNotesInfo.txt_endtime1.value="";
           document.IDNotesInfo.txt_endtime2.value="";
           document.IDNotesInfo.dplist_endtime.value="1"; 
           var strprogram=document.IDNotesInfo.txt_program.value;           
           var int_pos=strprogram.indexOf("|");          
           if (int_pos>0)
           {
               var strdate=strprogram.substr(int_pos+1); 
               var strstartdate="";
               var strenddate="";              
               if (strdate.substr(0,2)=="TM")
               {
                  strstartdate=strdate.substr(2,4);                 
                  strenddate=strdate.substr(6,4);               
                  if (parseInt(strstartdate.substr(0,2),10)>=12)
                  {                     
                     document.IDNotesInfo.dplist_starttime.value="2"; 
                     if (parseInt(strstartdate.substr(0,2),10)==12)
                        document.IDNotesInfo.txt_starttime1.value=strstartdate.substr(0,2).toString();
                     else
                        document.IDNotesInfo.txt_starttime1.value=(parseInt(strstartdate.substr(0,2),10)-12).toString();                                         
                  }
                  else
                  {
                     document.IDNotesInfo.dplist_starttime.value="1"; 
                     document.IDNotesInfo.txt_starttime1.value=strstartdate.substr(0,2).toString();
                  }
                  document.IDNotesInfo.txt_starttime2.value=strstartdate.substr(2,2).toString();  
                  

                  if (parseInt(strenddate.substr(0,2),10)>=12)
                  {                     
                     document.IDNotesInfo.dplist_endtime.value="2";
                     if (parseInt(strenddate.substr(0,2),10)==12)
                        document.IDNotesInfo.txt_endtime1.value=strenddate.substr(0,2).toString();
                     else
                        document.IDNotesInfo.txt_endtime1.value=(parseInt(strenddate.substr(0,2),10)-12).toString();                         
                  }
                  else
                  {
                     document.IDNotesInfo.dplist_endtime.value="1"; 
                     document.IDNotesInfo.txt_endtime1.value=strenddate.substr(0,2).toString();
                  }
                  document.IDNotesInfo.txt_endtime2.value=strenddate.substr(2,2).toString();
               }
           }
        }

        function StatusChg()
        {
           document.IDNotesInfo.brookstatuschg.value = "1";
        }
    </script>

</head>
<body id="body" runat="server">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="IDNotesInfo" method="post" runat="server">
        <input type="submit" value="test" style="display:none;" /> 
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="hdnclientData" id="hdnclientData" value="" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="CaseManagerID" id="CaseManagerID" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" value="" runat="server" />
        <input type="hidden" name="txtytype" id="txtytype" value="" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
        <input type="hidden" name="orderby" id="orderby" value="" runat="server" />
        <input type="hidden" name="Total_Rows" id="Total_Rows" runat="server" />
        <input type="hidden" name="txdate" id="txdate" value="" runat="server" />
        <input type="hidden" name="validated" id="validated" value="" runat="server" />
        <input type="hidden" name="bill" id="bill" value="" runat="server" />
        <input type="hidden" name="brookcategory" id="brookcategory" value="" runat="server" />
        <input type="hidden" name="brookstatus" id="brookstatus" value="" runat="server" />
        <input type="hidden" name="brookstatuschg" id="brookstatuschg" value="" runat="server" />                
        <input type="hidden" name="brookstatusupd" id="brookstatusupd" value="" runat="server" />                
        <div align="left" style="width: 100%">
            <table border="0" cellpadding="0" style="border-collapse: collapse;width:100%;" >
                <tr style="height: 30px; background-color: #EAF4FF" align="left" valign="middle" >
                    <td align="left" valign="middle" width="25%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="image" id="btnList" runat="server" alt="List" style="width: 25px;height:25px"  
                            src="../img/list.bmp" title="List Notes" 
                            onclick="javascript:List_click(); return false;" />
                        &nbsp;                        
                        <input type="image" id="btnAddNew" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                            src="../img/add.ico" title="New"
                            onclick="javascript:Add_click();return false;" />
                        &nbsp;  
                        <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                            ImageURL="../img/save.ico" ToolTip="Save"
                            OnClientClick="javascript:return save_click();" OnClick="btnAdd_Click" >
                        </asp:ImageButton>   
                        
                        <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                            ImageURL="../img/save.ico" ToolTip="Save" 
                            OnClientClick="javascript:return save_click();" OnClick="btnEdit_Click" >
                        </asp:ImageButton>
                        &nbsp;
                        <asp:ImageButton ID="btnMultiAdd" runat="server" AlternateText="MultiSave" Visible="False" Style="width: 25px;height:25px"
                            ImageURL="../img/multi-save.ico" ToolTip="Multiple Save"
                            OnClientClick="javascript:return multisave_click();" >
                        </asp:ImageButton>
                        &nbsp;
                        <input type="image" id="btnImage" runat="server" alt="Document" style="width: 25px;height:25px" Visible="false"
                            src="../img/Documents.png" title="Document List" />                                   
                        &nbsp;
                        <input type="image" id="btnMessager" runat="server" alt="Message" style="width: 25px;height:25px" Visible="false"   
                            src="../img/Message list.ico" title="Message List" 
                            onclick="javascript:Message_Click();return false;" />    
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
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Case Note For</asp:Label>
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
                <table border="0" cellpadding="0" style="border-collapse: collapse;width:100%;" >
                <tr style="height: 25px; align="left" valign="middle">
                    <td align="center" valign="middle" width="60%">
                    </td>
                    <td align="left" valign="middle" width="40%">
                        <table border="0" cellpadding="0" style="border-collapse: collapse">
                            <tr>
                               <asp:Panel ID="Panel1" runat="server" Visible="false">
                                    <td>
                                        <asp:Button ID="BtnFirst" runat="server" Text=" |< " Enabled="False" OnClientClick="return Confirm_Page();" OnClick="BtnFirst_Click">
                                        </asp:Button>
                                        <asp:Button ID="BtnPre" runat="server" Text=" < " Enabled="False" OnClientClick="return Confirm_Page();" OnClick="BtnPre_Click">
                                        </asp:Button>
                                        <asp:textbox ID="LblRecord" runat="server" Height="20px" Width="80" style="width:80px;height:20px" BorderColor="#0000cc"
                                            BorderWidth="1px" BackColor="#9fb0f4" ReadOnly="true"></asp:textbox>
                                        <asp:Button ID="BtnNext" runat="server" Text=" > " Enabled="False" OnClientClick="return Confirm_Page();" OnClick="BtnNext_Click">
                                        </asp:Button>
                                        <asp:Button ID="BtnBottom" runat="server" Text=" >| " Enabled="False" OnClientClick="return Confirm_Page();" OnClick="BtnBottom_Click">
                                        </asp:Button>
                                    </td>
                              </asp:Panel>
                              <asp:Label ID="lbl_err" runat="server" ForeColor="Blue"></asp:Label> 
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; height: 450px; overflow: auto">
            <table class="table_maindiv">
                <tr>
                    <td>
                        <table class="table_common" cellspacing="0" cellpadding="0">
                            <tr class="tr_common">
                                <td style="width: 120px; height: 20px;" align="right" width="120" class="td_label">
                                  <b><asp:Label ID="l_tx_date" runat="server" Text="Date:"></asp:Label></b>
                                </td>
                                <td width="5" style="height: 20px">
                                </td>
                                <td align="left" width="280" style="width: 280px">
                                  <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                                  <tr>
                                    <td class="td_unline" align="left" width="90" style="width: 100px; height: 20px;">
                                      <asp:TextBox ID="tx_date" runat="server" CssClass="inface" Style="width: 100px"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" >
                                      </asp:TextBox>
                                      <asp:CompareValidator ControlToValidate="tx_date" Operator="DataTypeCheck" Type="Date" 
                                         Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="tx_date_dt"></asp:CompareValidator>
                                    </td>
                                    <td width="5" style="height: 20px">
                                    <td width="90" style="width:90px; height: 20px" align="right" class="td_label">
                                      <b>Create Date:</b>
                                    </td>
                                    <td width="5" style="height: 20px">
                                    </td>
                                    <td class="td_unline" width="80" style="width:80px; height: 20px">  
                                      <asp:Label ID="tx_createdate" runat="server" CssClass="infaceText" style="padding-top:5px" Width="80" Height="20"></asp:Label>
                                    </td>
                                  </tr>
                                  </table>
                                </td>
                                <td style="width: 120px" align="right" width="120" class="td_label">
                                  <b><asp:Label ID="l_tx_uci" runat="server" Text="Coordinator:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td class="td_unline" align="left" width="280" style="width: 280px">
                                  <asp:Label ID="CaseMgrName" runat="server" CssClass="infaceText" style="padding-top:5px" Width="270" Height="20"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" height="5">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b>
                                        <asp:Label ID="l_tx_type" runat="server" Text="Type:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td align="left" width="280" style="width: 280px">
                                    <asp:DropDownList ID="tx_type" runat="server" DataValueField="txty_code" DataTextField="txty_text"
                                        Height="25" Width="260" OnSelectedIndexChanged="txtype_SelectedIndexChanged"
                                        AutoPostBack="true">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b>
                                        <asp:Label ID="l_tx_entered_by_name" runat="server" Text="EnteredBy:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td class="td_unline" align="left" width="280" style="width: 280px">
                                    <asp:DropDownList ID="tx_createdfor" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                       Height="20" Width="140" style="width: 140px" visible="false">
                                    </asp:DropDownList>
                                    <asp:Label ID="tx_entered_by_name" runat="server" CssClass="infaceText" style="padding-top:5px" Width="270" Height="20">
                                    </asp:Label>
                                    <asp:Label ID="tx_entered_by" runat="server" Visible="false"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" height="5">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b><asp:Label ID="l_tx_template" runat="server" Text="Template:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td class="td_unline" align="left" width="280" style="width: 280px">
                                    <asp:TextBox ID="tx_template" runat="server" CssClass="inface" Style="width: 180px"
                                        MaxLength="24"></asp:TextBox>
                                    <input type="button" value="Select" style="width: 70px" id="select"  runat="server" onclick="javascript:popupDialogWide('../FormList/SearchTemplate.aspx');" />
                                </td>
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b><asp:Label ID="l_tx_rid" runat="server" Text="Resource:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td align="left" width="280" style="width: 280px">
                                    <asp:DropDownList ID="tx_rid" runat="server" DataValueField="r_resource_id" DataTextField="ResourceName"
                                        Height="25" Width="270" OnSelectedIndexChanged="Resource_SelectedIndexChanged"
                                        AutoPostBack="true">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" height="5">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b>
                                        <asp:Label ID="l_tx_minutes" runat="server" Text="Minutes:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td class="td_unline" align="left" width="280" style="width: 280px">
                                    <asp:TextBox ID="tx_minutes" runat="server" CssClass="inface" Width="50" MaxLength="4"></asp:TextBox>
                                </td>
                                <td style="width: 120px" width="120" align="right" class="td_label" height="20">
                                    <b><asp:Label ID="l_ServiceName" runat="server" Text="Service Code:"></asp:Label></b>                                    
                                </td>
	 			                <td Width="5" Height="20"></td>
	 			                <td class="td_unline" align="left" width="280" style="width: 280px">
	 				                <asp:Label id="ServiceName" runat="server" CssClass="infaceText" style="padding-top:5px" Width="270" Height="20"></asp:Label>
	 			                </td>
                            </tr>
                            <tr>
                                <td colspan="6" height="5">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <asp:CheckBox ID="tx_validated_date" runat="server" Text="Final" Width="130" Font-Bold=true OnClick="DataChanged()" />                                
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td align="left" height="20">
                                    <asp:CheckBox ID="tx_tele_commute" runat="server" Text="TeleCom" Width="130" Font-Bold=true OnClick="DataChanged()" Visible="false" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="tx_verified_xix" runat="server" Text="Verify" Width="130" OnClick="DataChanged()" enabled="false" visible="false" />                                   
                                </td>
                                <td  style="width: 120px" width="120" align="right" class="td_label" height="20">
                                    <b><asp:Label ID="l_SubName" runat="server" Text="Sub Code:"></asp:Label></b>                                    
                                </td>
	 			                <td Width="5" Height="20"></td>
	 			                <td class="td_unline" align="left" width="280" style="width: 280px">
	 				                <asp:Label id="SubName" runat="server" CssClass="infaceText" style="padding-top:5px" Width="270" Height="20"></asp:Label>
	 			                </td>
                            </tr>
                        </table>
                    </td>                   
                </tr>
                <tr id="countclock">
                    <td>
                      <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                      <tr>
                        <td style="width: 70%; height: 40px" align="left">
                        <b>Timer:</b> <span id="cntup" runat="server"
                            style="background-color: #FFFFFF; color: #008000;">00
                            Days, 00 Hours, 00 Minutes, 00 Seconds.</span> <b>Total:&nbsp;&nbsp;<span id="total">0</span>&nbsp;&nbsp;Seconds</b>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" name="start" id="start" value="Start" runat="server" onclick="javascript: StartClock();" />
                        <input type="button" name="end" id="end" value="Stop" runat="server" onclick="javascript: EndClock();" />
                        <input type="button" name="reset" id="reset" value="Reset" runat="server" onclick="javascript: ResetClock();" />
                        </td>
                        <td width="120" style="width:120px; height: 20px" align="right" class="td_label">
                         <b>Last Modify Date:</b>
                        </td>
                        <td width="5" style="height: 20px">
                        </td>
                        <td class="td_unline" width="120" style="width:120px; height: 20px">  
                         <asp:Label ID="tx_last_mod_date" runat="server" CssClass="infaceText" style="padding-top:5px" Height="20"></asp:Label>
                        </td>
                      </tr>
                      </table>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 25px" align="center" class="td_label">
                        <b>
                            <asp:Label ID="l_tx_id_notes" runat="server" Text="DESCRIPTION"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 80px" valign="top" height="80">
                        <asp:TextBox ID="tx_id_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" width="99%" Height="80"></asp:TextBox><br />
                        <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="tx_id_notes" ShowModal="true"                        
                            runat="server" >
                        </cc1:UltimateSpell>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 25px" align="center" class="td_label" height="25">
                        <b>
                            <asp:Label ID="l_tx_cm_notes" runat="server" Text="INTERDISCIPLINARY NOTES"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 200px" valign="top" height="200">
                        <asp:TextBox ID="tx_cm_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" Width="99%" Height="200"></asp:TextBox><br />
                        <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="tx_cm_notes" ShowModal="true" 
                            runat="server">
                        </cc1:UltimateSpell>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 5px">
                    </td>
                </tr>
            </table>
            <br />
            <table id="Addendum" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                align="center" border="0" style="width: 98%" visible="false">
                <tr class="tr_common">
                    <td colspan="11" style="width: 770px; height: 25px" align="center" width="770">
                        <b><asp:Label ID="TitleAddendum" runat="server" Text="Case Notes Addendum"></asp:Label></b>
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="11" height="2">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 70px; height: 20px;" align="right" width="70" class="td_label">
                        <b>
                            <asp:Label ID="l_tx_miles" runat="server" Text="Miles"></asp:Label></b>
                    </td>
                    <td width="5" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        <asp:TextBox ID="txd_miles" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>

                    <td style="width: 100px; height: 20px;" align="right" width="100" class="td_label">
                        <b>
                            <asp:Label ID="l_tx_SFC" runat="server" Text="Spent for Client:"></asp:Label></b>
                    </td>
                    <td width="5" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:Label ID="txd_SFC" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:Label>
                    </td>
                    <td style="width: 50px; height: 20px;" align="right" width="50" class="td_label">
                        <b><asp:Label ID="l_tx_misc" runat="server" Text="Misc:"></asp:Label></b>
                    </td>                    
                    <td style="width: 40px; height: 20px;" align="right" width="40" class="td_label">
                        <b><asp:Label ID="l_tx_misc_hour" runat="server" Text="Hour"></asp:Label></b>
                    </td>
                    <td class="td_unline" align="left" width="30" style="width: 30px; height: 20px;">
                        <asp:TextBox ID="txd_misc_hour" runat="server" CssClass="inface" Style="width: 30px">
                        </asp:TextBox>
                    </td>
                    <td style="width: 40px; height: 20px;" align="right" width="40" class="td_label">
                        <b><asp:Label ID="l_tx_misc_min" runat="server" Text="Min"></asp:Label></b>
                    </td>
                    <td class="td_unline" align="left" width="30" style="width: 30px; height: 20px;">
                        <asp:TextBox ID="txd_misc_min" runat="server" CssClass="inface" Style="width: 30px">
                        </asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <table id="AddendumItem" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                align="center" border="0" style="width: 98%" visible="false">
                <tr class="tr_common">
                    <td style="width: 235px; height: 20px;" align="right" width="235" class="td_label">
                        <b>Item Descriptions</b>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td style="width: 70px; height: 20px;" align="right" width="70" class="td_label">
                        <b>Amount</b>
                    </td>
                    <td width="60" style="height: 20px">
                        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Style="width: 60px"
                             CssClass="buttonbluestyle" OnClick="btnCalculate_Click">
                        </asp:Button>
                    </td>
                    <td style="width: 235px; height: 20px;" align="right" width="235" class="td_label">
                        <b>Item Descriptions</b>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td style="width: 70px; height: 20px;" align="right" width="70" class="td_label">
                        <b>Amount</b>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="8" height="2">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc1" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount1" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="60" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc2" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount2" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="8" height="2">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc3" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount3" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="60" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc4" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount4" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td colspan="8" height="2">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc5" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount5" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="60" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc6" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount6" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc7" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount7" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="60" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc8" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount8" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc9" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount9" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="60" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc10" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount10" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc11" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount11" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="60" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="235" style="width: 235px; height: 20px;">
                        <asp:TextBox ID="txd_itemdesc12" runat="server" CssClass="inface" MaxLength=50 Style="width: 225px">
                        </asp:TextBox>
                    </td>
                    <td width="20" style="height: 20px">
                    </td>
                    <td class="td_unline" align="left" width="70" style="width: 70px; height: 20px;">
                        $<asp:TextBox ID="txd_itemamount12" runat="server" CssClass="inface" Style="width: 60px">
                        </asp:TextBox>
                    </td>
                    <td width="40" style="height: 20px">
                    </td>
                </tr>
                <tr style="height:10px">
                    <td colspan="8"></td>
                </tr>
            </table>
            
            <table id="table_Attendance" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 98%" visible="false">
                   <tr class="tr_common">
                        <td colspan=8 style="width: 770px; height: 25px" align="center" width="770">
                          <b><asp:Label ID="TitleAttAddendum" runat="server" Text="Case Notes Addendum"></asp:Label></b>
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan=8 height="2">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 70px; height: 20px;" align="right" class="td_label">
                          <b>Time In:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_timein1" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="10" style="width: 10px" align="center" >
                            <b>:</b>
                        </td>
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_timein2" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td  width="50" style="width: 50px; height: 20px;">
                            <asp:DropDownList ID="txt_timein3" runat="server"  Width="50px">
                                <asp:ListItem Selected="True" Value="1">AM</asp:ListItem>
                                <asp:ListItem Value="2">PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>     
                        <td width="590px" style="width:590px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="tx_absent" runat="server" Text="Absent" Width="130" />
                        </td>              
                   </tr>
                   <tr>
                        <td colspan=8 height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 70px; height: 20px;" align="right" class="td_label">
                          <b>Time Out:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_timeout1" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="10" style="width: 10px" align="center" >
                            <b>:</b>
                        </td>
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_timeout2" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td  width="50" style="width: 50px; height: 20px;">
                            <asp:DropDownList ID="txt_timeout3" runat="server" Width="50px">
                                <asp:ListItem Selected="True" Value="1">AM</asp:ListItem>
                                <asp:ListItem Value="2">PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>    
                        <td width="590px" style="width:590px"></td>                  
                   </tr>
                   <tr style="height:50px">
                       <td colspan=8></td>
                   </tr>
            </table>
            
            <table id="table_Ecf_Attendance" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 98%" visible="false">
                   <tr class="tr_common">
                        <td colspan=8 style="width: 770px; height: 25px" align="center" width="770">
                          <b><asp:Label ID="TitleEcfAddendum" runat="server" Text="Case Notes Addendum"></asp:Label></b>
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan=8 style="height: 2px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 70px; height: 20px;" align="right" width="70" class="td_label">
                          <b>Class/Program:</b>
                        </td>      
                        <td width="5" style="height: 20px"></td>                 
                        <td width="695" style="width: 695px; height: 20px;" colspan=6>                           
                             <asp:DropDownList ID="txt_program" runat="server" DataValueField="display_value" DataTextField="display_name"
                                        Height="20" Width="250px" onchange="javascript:Select_Program();" >
                             </asp:DropDownList>
                        </td>    
                   </tr>
                   <tr>
                        <td colspan=8 height="5">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 70px; height: 20px;" align="right" width="70" class="td_label">
                          <b>Start Time:</b>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_starttime1" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="10" style="width: 10px" align="center" >
                            <b>:</b>
                        </td>
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_starttime2" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td  width="50" style="width: 50px; height: 20px;">
                            <asp:DropDownList ID="dplist_starttime" runat="server"  Width="50px">
                                <asp:ListItem Selected="True" Value="1">AM</asp:ListItem>
                                <asp:ListItem Value="2">PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>     
                        <td width="590px" style="width:590px"></td>              
                   </tr>  
                   <tr>
                        <td colspan=8 height="5">
                        </td>
                   </tr>                  
                   <tr class="tr_common">
                        <td style="width: 70px; height: 20px;" align="right" width="70" class="td_label">
                          <b>End Time:</b>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_endtime1" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="10" style="width: 10px" align="center" >
                            <b>:</b>
                        </td>
                        <td class="td_unline" align="left" width="20" style="width: 20px; height: 20px;">
                            <asp:TextBox ID="txt_endtime2" runat="server" CssClass="inface"  Style="width: 20px">
                            </asp:TextBox>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td  width="50" style="width: 50px; height: 20px;">
                            <asp:DropDownList ID="dplist_endtime" runat="server" Width="50px">
                                <asp:ListItem Selected="True" Value="1">AM</asp:ListItem>
                                <asp:ListItem Value="2">PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>    
                        <td width="590px" style="width:590px"></td>                  
                   </tr>                  
                   <tr style="height:50px">
                       <td colspan=8></td>
                   </tr>
            </table>  
            
            <table id="table_ebilling" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 98%" visible="false">
                   <tr class="tr_common">
                        <td colspan=8 style="width: 770px; height: 25px" align="center" width="770">
                          <b><asp:Label ID="Titleebilling" runat="server" Text="Case Notes Addendum - Attendance"></asp:Label></b>
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan=8 height="2">
                        </td>
                   </tr>
                   <tr class="tr_common" visible="false">
                        <td style="width: 120px; height: 20px;" align="right" class="td_label">
                          <b>Time In:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td class="td_unline" align="left" width="40" style="width: 40px; height: 20px;">
                            <asp:TextBox ID="txt_ebilling_timein1" runat="server" CssClass="inface"  Style="width: 40px">
                            </asp:TextBox>
                        </td>
                        <td width="10" style="width: 10px" align="center" >
                            <b>:</b>
                        </td>
                        <td class="td_unline" align="left" width="40" style="width: 40px; height: 20px;">
                            <asp:TextBox ID="txt_ebilling_timein2" runat="server" CssClass="inface"  Style="width: 40px">
                            </asp:TextBox>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td  width="50" style="width: 50px; height: 20px;">
                            <asp:DropDownList ID="txt_ebilling_timein3" runat="server"  Width="50px">
                                <asp:ListItem Selected="True" Value="1">AM</asp:ListItem>
                                <asp:ListItem Value="2">PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>     
                        <td width="500px" style="width:500px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="tx_ebilling_absent" runat="server" Text="Absent" Width="130" />
                        </td>              
                   </tr>
                   <tr visible="false">
                        <td colspan=8 height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common" visible="false">
                        <td style="width: 120px; height: 20px;" align="right" class="td_label">
                          <b>Time Out:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td class="td_unline" align="left" width="40" style="width: 40px; height: 20px;">
                            <asp:TextBox ID="txt_ebilling_timeout1" runat="server" CssClass="inface"  Style="width: 40px">
                            </asp:TextBox>
                        </td>
                        <td width="10" style="width: 10px" align="center" >
                            <b>:</b>
                        </td>
                        <td class="td_unline" align="left" width="40" style="width: 40px; height: 20px;">
                            <asp:TextBox ID="txt_ebilling_timeout2" runat="server" CssClass="inface"  Style="width: 40px">
                            </asp:TextBox>
                        </td>
                        <td width="5" style="height: 20px"></td>
                        <td  width="50" style="width: 50px; height: 20px;">
                            <asp:DropDownList ID="txt_ebilling_timeout3" runat="server" Width="50px">
                                <asp:ListItem Selected="True" Value="1">AM</asp:ListItem>
                                <asp:ListItem Value="2">PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>    
                        <td width="500px" style="width:500px"></td>                  
                   </tr>
                    <tr>
                        <td colspan=8 height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px; height: 20px;" align="right" class="td_label">
                          <b>Vendor number:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td style="width: 600px" colspan="6" align="left">
                             <asp:dropdownlist id="txt_ebilling_auth" runat="server"  OnSelectedIndexChanged="auth_SelectedIndexChanged"
							              DataValueField="auth_number" DataTextField="auth_name" Height="20" Width="360px" AutoPostBack="true" >
				             </asp:dropdownlist>
                        </td>                        
                   </tr>  
                   <tr>
                        <td colspan=8 height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px; height: 20px;" align="right" class="td_label">
                          <b>Service code:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td style="width: 600px" colspan="6" align="left">
                              <asp:dropdownlist id="txt_ebilling_service" runat="server"  OnSelectedIndexChanged="service_SelectedIndexChanged"
							              DataValueField="tb_entry_name" DataTextField="fullentry" Height="20" Width="360px" AutoPostBack="true">
				              </asp:dropdownlist>
                        </td>                        
                   </tr>  
                   <tr>
                        <td colspan=8 height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px; height: 20px;" align="right" class="td_label">
                          <b>Sub code:</b>
                        </td>
                        <td style="height: 20px; width: 5px"></td> 
                        <td style="width: 600px" colspan="6" align="left">
                             <asp:dropdownlist id="txt_ebilling_sub" runat="server"
							              DataValueField="tb_entry_name" DataTextField="fullentry" Height="20" Width="360px" AutoPostBack="true">
				              </asp:dropdownlist>
                        </td>                        
                   </tr>  
                   <tr>
                        <td colspan=8 height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan=8>
                            <table runat="server" class="table_common" cellspacing="0" cellpadding="0"
                                   align="center" border="0" style="width: 100%">
                              <tr class="tr_common">
                                <td style="width: 120px; height: 20px;" align="right" class="td_label">
                                  <b>Charge:</b>
                                </td>
                                <td style="height: 20px; width: 5px"></td> 
                                <td style="width: 100px; height: 20px;" class="td_unline" align="left">
                                  <asp:Label ID="TotalCharge" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td> 
                                <td style="width: 200px; height: 20px;" align="right" class="td_label">
                                  <b>Current POS Rate:</b>
                                </td>
                                <td style="height: 20px; width: 5px"></td> 
                                <td style="width: 100px; height: 20px;" class="td_unline" align="left" visible="false">
                                  <asp:Label ID="POSBalance" runat="server" CssClass="infaceText" Visible="false">
                                  </asp:Label>
                                </td> 
                                <td style="height: 20px; width: 5px"></td> 
                                <td style="width: 350px; height: 20px;" align="left">
                                  <asp:Label ID="POSRate" runat="server" CssClass="infaceText">
                                  </asp:Label>
                                </td> 
                              </tr>                       
                            </table>
                        </td>    
                   </tr>
                     
                   <tr style="height:50px">
                       <td colspan=8></td>
                   </tr>    
            </table>     
            
            <table id="table_referral" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 98%" visible="false">
                   <tr class="tr_common">
                        <td colspan="4" align="center">
                          <b><asp:Label ID="Titlereferral" runat="server" Text="Case Notes Addendum - Referral"></asp:Label></b>
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan="4" height="2">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan="4">
                          <b>Contact Purpose: (Please select one)</b>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td colspan="2" style="width: 400px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck1" runat="server" />Discuss Referral to RC                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td colspan="2" style="width: 400px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck2" runat="server" />Listening to situation or family conern/Emotional Support                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td colspan="2" style="width: 400px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck3" runat="server" />Helping negotiate with Community Service                             
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck4" runat="server" Text="Library" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck5" runat="server" Text="Physician" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck6" runat="server" Text="Head Start" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck7" runat="server" Text="Child Care" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck8" runat="server" Text="School District" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck9" runat="server" Text="Developmental Playground" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck10" runat="server" Text="Other" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck11" runat="server" Text="211" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td style="width: 50px"></td> 
                        <td style="width: 350px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck12" runat="server" Text="None" />                            
                        </td>                        
                        <td style="width:350px"></td>
                   </tr>  
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td colspan="2" style="width: 400px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck13" runat="server" />Discuss or Register for a Group Event                             
                        </td>                        
                        <td style="width:350px"></td>
                   </tr> 
                   <tr>
                        <td colspan="4" height="5px">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 50px"></td> 
                        <td colspan="2" style="width: 400px" align="left" class="td_label">
                          <asp:CheckBox ID="txd_itemcheck14" runat="server" />Provide Other Information                             
                        </td>                        
                        <td style="width:350px"></td>
                   </tr> 
            </table>
            <table id="table_appraisal" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                       align="center" border="0" style="width: 98%" visible="false">
                   <tr class="tr_common">
                        <td colspan="3" align="center">
                          <b><asp:Label ID="Titleappraisal" runat="server" Text="Case Notes Addendum - Appraisal"></asp:Label></b>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3" height="2">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px" align="right" class="td_label">
                          <b>New Category:</b>
                        </td>
                        <td style="width: 5px"></td> 
                        <td align="left" style="width: 775px;">
                            <asp:dropdownlist id="txd_category" runat="server"
							        DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="600px" OnChange="StatusChg();">
				            </asp:dropdownlist>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3" height="5">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px" align="right" class="td_label">
                          <b>New Status:</b>
                        </td>
                        <td style="width: 5px"></td> 
                        <td align="left" style="width: 775px;">
                            <asp:dropdownlist id="txd_status" runat="server"
							        DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="600px" OnChange="StatusChg();">
				            </asp:dropdownlist>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3" height="5">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px" align="right" class="td_label">
                          <b>Tickler:</b>
                        </td>
                        <td style="width: 5px"></td> 
                        <td align="left" style="width: 775px;">
                          <table class="tabel_inside">
				            <tr class="tr_common">
                              <td align="left" style="width: 80px;">
                                 <asp:dropdownlist id="txd_tickler" runat="server" Width="60px" >
                                    <asp:ListItem Value=""></asp:ListItem>
								    <asp:ListItem Value="Y">Yes</asp:ListItem>
								    <asp:ListItem Value="N">No</asp:ListItem>
				                 </asp:dropdownlist>
                              </td>
						      <td style="width: 10px"></td>
                              <td style="width: 120px" align="right" class="td_label">
                                 <b>Tickler Title:</b>
                              </td>
						      <td style="width: 5px"></td>
                              <td class="td_unline" align="left" style="width: 200px">
                                 <asp:TextBox ID="txd_tickler_title" runat="server" CssClass="inface">
                                 </asp:TextBox>
                              </td>
                              <td style="width: 10px"></td>
                              <td style="width: 120px" align="right" class="td_label">
                                 <b>Tickler Days:</b>
                              </td>
						      <td style="width: 5px"></td>
                              <td class="td_unline" align="left" style="width: 120px">
                                 <asp:textbox id="txd_tickler_days" runat="server" CssClass="inface">
                                 </asp:textbox>
                              </td>
                            </tr>
                          </table>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3" height="5">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td style="width: 120px" align="right" valign="top" class="td_label">
                          <b>Next Steps:</b>
                        </td>
                        <td style="width: 5px"></td> 
                        <td align="left" style="width: 775px;">
                           <asp:TextBox ID="txd_next_step" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" width="99%" Height="80"></asp:TextBox>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3" height="5">
                        </td>
                   </tr>
                   <tr class="tr_common">
                        <td colspan="3" align="center" class="td_label">
                          <b><asp:Label ID="TitleappraisalDetail" runat="server" Text="Transaction Details"></asp:Label></b>
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3" height="5">
                        </td>
                   </tr>
                   <tr>
                        <td colspan="3">
                            <table class="tabel_inside">
				              <tr class="tr_common">
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Appraised Value:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_appraisal_value" runat="server" CssClass="inface" MaxLength=50>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Property SqFt:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_property_sqft" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Car Storage:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_car_storage" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 120px" align="right" class="td_label">
                                  <b>Age:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_age" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
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
                                  <asp:TextBox ID="txd_appraisal_date" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                                  </asp:TextBox>
                                  <asp:CompareValidator ControlToValidate="txd_appraisal_date" Operator="DataTypeCheck" Type="Date" 
                                         Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="txd_appraisal_date_dt"></asp:CompareValidator>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Guest Home SqFt:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_guess_sqft" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Covered Area:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_covered_area" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 120px" align="right" class="td_label">
                                  <b>Pool:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_pool" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
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
                                  <asp:TextBox ID="txd_property_type" runat="server" CssClass="inface" MaxLength=2>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>BR/BA:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_brba" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 140px" align="right" class="td_label">
                                  <b>Condition:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_condition" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 10px"></td>
                                <td style="width: 120px" align="right" class="td_label">
                                  <b>Landscaping:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_landscaping" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
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
                        <td colspan="3">
                            <table class="tabel_inside">
                              <tr class="tr_common">
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Offer Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_offer_amt" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Additional Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_offer_add" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 60px" align="right" class="td_label">
                                  <b>Date:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px;">
                                  <asp:TextBox ID="txd_offer_date" runat="server" CssClass="inface" Style="width: 100px"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" >
                                  </asp:TextBox>
                                  <asp:CompareValidator ControlToValidate="txd_offer_date" Operator="DataTypeCheck" Type="Date" 
                                         Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="txd_offer_date_dt"></asp:CompareValidator>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 150px" align="right" class="td_label">
                                  <b>Offer From:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td align="left" style="width: 120px;">
                                 <asp:dropdownlist id="txd_offer_from" runat="server" Width="110px" >
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
                                  <asp:TextBox ID="txd_counter_amt" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 180px" align="right" class="td_label">
                                  <b>Additional Amount:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px">
                                  <asp:TextBox ID="txd_counter_add" runat="server" CssClass="inface" MaxLength=10>
                                  </asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 60px" align="right" class="td_label">
                                  <b>Date:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td class="td_unline" align="left" style="width: 100px;">
                                  <asp:TextBox ID="txd_counter_date" runat="server" CssClass="inface" Style="width: 100px"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" >
                                  </asp:TextBox>
                                  <asp:CompareValidator ControlToValidate="txd_counter_date" Operator="DataTypeCheck" Type="Date" 
                                         Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="txd_counter_date_dt"></asp:CompareValidator>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 150px" align="right" class="td_label">
                                  <b>Counter Offer From:</b>
                                </td>
						        <td style="width: 5px"></td>
                                <td align="left" style="width: 120px;">
                                 <asp:dropdownlist id="txd_counter_from" runat="server" Width="110px" >
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
                                        runat="server" width="99%" Height="80"></asp:TextBox>
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
                                        runat="server" width="99%" Height="80"></asp:TextBox>
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
                                        runat="server" width="99%" Height="80"></asp:TextBox>
                                </td>
                              </tr>
                            </table>
                        </td>
                   </tr>
            </table>
            
            <table id="table_billing" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                align="center" border="0" style="width: 98%" visible="false">
                <tr class="tr_common">
                    <td colspan="15" align="center">
                        <b><asp:Label ID="Titlebilling" runat="server" Text="Case Notes Addendum - Billing"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 100px;" align="center" class="td_label">
                        <b>Type</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 220px;" align="center" class="td_label">
                        <b>Descriptions</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 100px;" align="center" class="td_label">
                        <b>Start</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 100px;" align="center" class="td_label">
                        <b>End</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 100px;" align="center" class="td_label">
                        <b>Units</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 100px;" align="center" class="td_label">
                        <b>Rate($)</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 120px;" align="center" class="td_label">
                        <b>Extended($)</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type1" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc1" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start1" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end1" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit1" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate1" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended1" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type2" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc2" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start2" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end2" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit2" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate2" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended2" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type3" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc3" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start3" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end3" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit3" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate3" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended3" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type4" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc4" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start4" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end4" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit4" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate4" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended4" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type5" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc5" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start5" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end5" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit5" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate5" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended5" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type6" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc6" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start6" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end6" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit6" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate6" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended6" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type7" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc7" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start7" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end7" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit7" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate7" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended7" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type8" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc8" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start8" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end8" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit8" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate8" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended8" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type9" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc9" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start9" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end9" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit9" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate9" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended9" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="15" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td align="left">
                        <asp:dropdownlist id="txd_bill_type10" runat="server" CssClass="infaceDropDown">
                            <asp:ListItem Value=""></asp:ListItem>
					        <asp:ListItem Value="Mileage">Mileage</asp:ListItem>
					        <asp:ListItem Value="Time">Time</asp:ListItem>
					        <asp:ListItem Value="Meals">Meals</asp:ListItem>
					        <asp:ListItem Value="Lodging">Lodging</asp:ListItem>
					        <asp:ListItem Value="Supplies">Supplies</asp:ListItem>
					        <asp:ListItem Value="Misc">Misc</asp:ListItem>
				        </asp:dropdownlist>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_desc10" runat="server" CssClass="inface" MaxLength=100>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_start10" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_end10" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td style="width: 10px;" align="center" class="td_label">
                        <b>Or</b>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_unit10" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_rate10" runat="server" CssClass="inface" MaxLength=10>
                        </asp:TextBox>
                    </td>
                    <td style="width: 10px">
                    </td>
                    <td align="left" class="td_unline">
                        <asp:TextBox ID="txd_bill_extended10" runat="server" CssClass="inface" MaxLength=20>
                        </asp:TextBox>
                    </td>
                </tr>
            </table> 
            
            <table id="table_tickler" runat="server" class="table_common" cellspacing="0" cellpadding="0"
                align="center" border="0" style="width: 98%" visible="false">
                <tr class="tr_common">
                    <td colspan="3" align="center">
                        <b>
                            <asp:Label ID="Titletickler" runat="server" Text=" Ticket" ></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="2"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 120px" align="right" class="td_label">
                        <b>Category:</b>
                    </td>
                    <td style="width: 5px"></td>
                    <td align="left" style="width: 775px;">
                        <asp:DropDownList ID="txd_tickler_category" runat="server"
                            DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 120px" align="right" class="td_label">
                        <b>Status:</b>
                    </td>
                    <td style="width: 5px"></td>
                    <td align="left" style="width: 775px;">
                        <asp:DropDownList ID="txd_tickler_status" runat="server"
                            DataValueField="tb_entry_name" DataTextField="tb_entry_text" CssClass="infaceDrop">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="5"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 120px" align="right" class="td_label" >
                        <b>Type:</b>
                    </td>
                    <td style="width: 5px"></td>
                    <td align="left" style="width: 775px;">
                        <table class="tabel_inside">
                            <tr class="tr_common">
                                <td align="left" style="width: 120px;" >
                                    <asp:DropDownList ID="txd_tickler_type" runat="server" CssClass="infaceDrop">
                                        <asp:ListItem Value =" "></asp:ListItem>
                                        <asp:ListItem Value ="TYPE1">Type1</asp:ListItem>
                                        <asp:ListItem Value ="TYPE2">Type2</asp:ListItem>
                                    </asp:DropDownList>
                                </td>             
                                <td style="width: 5px"></td>
                                <td style="width: 80px" align="right" class="td_label">
                                    <b>Priority:</b>
                                </td>
                                <td style="width: 5px"></td>
                                 <td class="td_unline" align="left" style="width: 120px">
                                     <asp:DropDownList ID="txd_tickler_priority" runat="server" CssClass="infaceDrop">
                                        <asp:ListItem Value =" "></asp:ListItem>
                                        <asp:ListItem Value ="Emergency">Emergency</asp:ListItem>
                                        <asp:ListItem Value ="High">High</asp:ListItem>
                                         <asp:ListItem Value ="Regular">Regular</asp:ListItem>
                                         <asp:ListItem Value ="Low">Low</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 80px" align="right" class="td_label">
                                    <b>Report By:</b>
                                </td>
                                <td style="width: 5px"></td>
                                 <td class="td_unline" align="left" style="width: 150px">
                                    <asp:TextBox ID="txd_tickler_report_by"  runat="server" CssClass="inface">
                                    </asp:TextBox>
                                </td>
                                <td style="width: 5px"></td>
                                <td style="width: 80px" align="right" class="td_label">
                                    <b>Job Done By:</b>
                                </td>
                                <td style="width: 5px"></td>
                                 <td class="td_unline" align="left" style="width: 150px">
                                    <asp:DropDownList ID="txd_tickler_assign_by" runat="server" DataValueField="EmployeeID" 
                                       DataTextField="EmployeeName" CssClass="infaceDrop">
                                 </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>                
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>