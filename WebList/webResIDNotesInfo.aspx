<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webResIDNotesInfo.aspx.cs" Inherits="Virweb2.WebList.webResIDNotesInfo" %>
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
              document.location.replace("webResIDNotesInfo.aspx?type=add");
        }

        function List_click()
        {
            if (Confirm_Page())
               document.location.replace("webResIDNotesList.aspx"); 
        }

        function print_click()
        { 
          var tx_rid=document.IDNotesInfo.resource_key.value.toString();  
          var tx_date =document.IDNotesInfo.txdate.value.toString();  
          var UserAct=document.IDNotesInfo.UserAct.value.toString();      
          winhref("PrintResIDNotesInfo.aspx?tx_rid=" + tx_rid + "&tx_date=" + tx_date + "&UserAct="+UserAct,"PrintResIDNotesInfo");        
        }

        function save_click()
        {
           var str="";
           var int_num=0;
//           if (IsInteger(JTrim(document.getElementById("tx_minutes").value)))
//           {
//              int_num=parseInt(document.getElementById("tx_minutes").value,10); 
//              if (int_num<1)
//              {  
//                 alert("The 'Minutes' field is required and must be greater than 0.");
//                 document.getElementById("tx_minutes").focus();
//                 return false;
//              }
//           }
//           else
//           {
//              alert("The 'Minutes' field is required and must be greater than 0.");
//              document.getElementById("tx_minutes").focus();
//              return false;
//           }

           if (document.getElementById("tx_date").value == "")
           {
              alert("Please input Service Date!");
              document.getElementById("tx_date").focus();
              return false;
           }
           else
           {
              var ServiceDate = Date.parse(document.getElementById("tx_date").value);
              var Today = new Date();
              if (ServiceDate >= Date.parse(Today))
              {
                 alert("You cannot save ID Note when the date/time is set in the future.");
                 document.getElementById("tx_date").focus();
                 return false;
              }
           }

           var notestr=document.getElementById("tx_id_notes").value;
           if (notestr.indexOf('_') >= 0)
           {
              alert("Please remove all of the underscores in the description field.");
              document.getElementById("tx_id_notes").focus();
              return false;
           }         
        
           
            return true;          
        }
        
        function multisave_click()
        {
           if (save_click())
           {
             popupDialogSmall('../FormList/SearchResourceList.aspx');
           }
           else return false;
        }
                
        function AddMulti(resources)
        {
           var resourceList = document.getElementById(<%= "'" + hdnresourceData.ClientID + "'" %>);        
           resourceList.value = resources;        
           //window.document.IDNotesInfo.submit(); 
           window.focus(); 
        }

        function back_click() 
        {
           if (document.IDNotesInfo.ticklerVal.value == "1")
           {
               if (document.IDNotesInfo.RegionCenter.value == "FDLRC")
                  document.location.replace('webTicklerResFDLRC.aspx');
               else
                  document.location.replace('webTicklerResSCLARC.aspx');
           }
           else
           {
               if (Confirm_Page())
                  document.location.replace('webResIDNotesList.aspx');
           }
        }

        function submitcalendar(boxid) {
           var InputDate = JTrim(boxid.value);
           if (InputDate != "") {
           var d = new Date(InputDate);
           var weekday = new Array(7);
           weekday[0]=  "Sunday";
           weekday[1] = "Monday";
           weekday[2] = "Tuesday";
           weekday[3] = "Wednesday";
           weekday[4] = "Thursday";
           weekday[5] = "Friday";
           weekday[6] = "Saturday";
 
           document.getElementById("l_tx_date_day").innerHTML = weekday[d.getDay()]; 
           }
        }
    </script>

</head>
<body id="body" runat="server">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="IDNotesInfo" method="post" runat="server">
        <input type="submit" value="test" style="display:none;" /> 
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="hdnresourceData" id="hdnresourceData" value="" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="CaseManagerID" id="CaseManagerID" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" value="" runat="server" />
        <input type="hidden" name="resource_key" id="resource_key" value="" runat="server" />
        <input type="hidden" name="Total_Rows" id="Total_Rows" runat="server" />
        <input type="hidden" name="orderby" id="orderby" value="" runat="server" />
        <input type="hidden" name="txdate" id="txdate" value="" runat="server" />
        <input type="hidden" name="ticklerVal" id="ticklerVal" value="" runat="server" />
        <input type="hidden" name="RegionCenter" id="RegionCenter" value="" runat="server" />
        <div align="left" style="width: 100%">
            <table id="headericon" runat="server" border="0" cellpadding="0" style="border-collapse: collapse;width:100%;" >
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
                        <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                            src="../img/print.ico" title="Print"
                            onclick="javascript:print_click();return false;" />
                        &nbsp;
                        <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                            src="../img/back.ico" title="Back"
                            onclick="javascript:back_click();return false;" />    
                    </td>
                    <td align="left" valign="middle" width="60%">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">ID Note For</asp:Label>
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
                    <td align="right" valign="middle" width="60%">
                        <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="tx_id_notes,tx_cm_notes" ShowModal="true" runat="server" >
                        </cc1:UltimateSpell>
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
        <div id="maindiv" align="center" style="position: relative; width: 100%; height: 650px; overflow: auto">
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
                                    <td class="td_unline" align="left" width="80" style="width: 80px; height: 20px;">
                                      <asp:TextBox ID="tx_date" runat="server" CssClass="inface" Style="width: 80px"  onclick="showcalendarsubmit(event, this);" onfocus="showcalendarsubmit(event, this);" >
                                      </asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td class="td_unline" align="left" width="80" style="width: 80px; height: 20px;">
                                      <asp:TextBox ID="l_tx_date_min" runat="server" CssClass="inface" Style="width: 80px">
                                      </asp:TextBox>
                                    </td>
                                    <td width="5"></td>
                                    <td class="td_unline" align="left" width="60" style="width: 60px">
                                       <asp:Label ID="l_tx_date_day" runat="server" CssClass="infaceText" Width="60"></asp:Label>
                                    </td>
                                    <td width="auto"></td>
                                  </tr>
                                  </table>
                                </td>
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b><asp:Label ID="l_tx_entered_by_name" runat="server" Text="EnteredBy:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td class="td_unline" align="left" width="280" style="width: 280px">
                                    <asp:Label ID="tx_entered_by_name" runat="server" CssClass="infaceText" style="padding-top:5px" Width="180" Height="20">
                                    </asp:Label>
                                    <asp:Label ID="tx_entered_by" runat="server" CssClass="infaceText" style="padding-top:5px"  Width="90"  Height="20"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" height="5">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b><asp:Label ID="l_tx_type" runat="server" Text="Type:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td align="left" width="280" style="width: 280px">
                                    <asp:DropDownList ID="tx_type" runat="server" DataValueField="txty_code" DataTextField="txty_text"
                                        Height="25" Width="260" AutoPostBack="true" OnSelectedIndexChanged="Type_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <b><asp:Label ID="l_tx_rid" runat="server" Text="Consumer Trx:"></asp:Label></b>
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td align="left" width="280" style="width: 280px">
                                    <asp:DropDownList ID="tx_uci" runat="server" DataValueField="c_key" DataTextField="ConsumerName"
                                        Height="25" Width="270">
                                    </asp:DropDownList>
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
                                    <input type="button" value="Select" style="width: 70px" id="select"  runat="server" onclick="javascript:popupDialogWide('../FormList/SearchRTemplate.aspx');" />
                                </td>
                                <td style="width: 120px" align="right" width="120" class="td_label" height="20">
                                    <asp:CheckBox ID="tx_validated_date" runat="server" Text="Validated" Width="130" Font-Bold="true" OnClick="DataChanged()" />                                
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td width="5" height="20">
                                </td>
                                <td align="left" width="280" style="width: 280px">
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
                                    <asp:TextBox ID="tx_minutes" runat="server" CssClass="inface" Width="50" MaxLength="5"></asp:TextBox>
                                </td>
                                <td style="width: 120px" width="120" align="right"  height="20">
                                    
                                </td>
	 			                <td width="5" height="20"></td>
	 			                <td  align="left" width="280" style="width: 280px">
	 				                
	 			                </td>
                            </tr>
                        </table>
                    </td>                   
                </tr>
                <tr id="countclock">
                    <td  style="width: 100%; height: 40px" align="left">
                        <b>Timer:</b> <span id="cntup" runat="server" 
                            style="background-color: #FFFFFF; color: #008000;">00
                            Days, 00 Hours, 00 Minutes, 00 Seconds.</span> <b>Total:&nbsp;&nbsp;<span id="total">0</span>&nbsp;&nbsp;Seconds</b>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" name="start" id="start" value="Start" runat="server" onclick="javascript:StartClock();" />
                        <input type="button" name="end" id="end" value="Stop" runat="server"  onclick="javascript:EndClock();" />
                        <input type="button" name="reset" id="reset" value="Reset" runat="server" onclick="javascript:ResetClock();" />
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
                        <asp:TextBox ID="tx_id_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" MaxLength="256"
                            runat="server" width="99%" Height="80"></asp:TextBox><br />
                        <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="tx_id_notes" ShowModal="true" runat="server" visible=false>
                        </cc1:UltimateSpell>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 25px" align="center" class="td_label" height="25">
                        <b>
                            <asp:Label ID="l_tx_cm_notes" runat="server" Text="NOTES"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 200px" valign="top" height="200">
                        <asp:TextBox ID="tx_cm_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" Width="99%" Height="200"></asp:TextBox><br />
                        <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="tx_cm_notes" ShowModal="true" runat="server" Visible=false>
                        </cc1:UltimateSpell>
                    </td>
                </tr>
                <tr>
                    <td  style="height: 5px">
                    </td>
                </tr>
            </table>         
        </div>
    </form>
</body>
</html>
