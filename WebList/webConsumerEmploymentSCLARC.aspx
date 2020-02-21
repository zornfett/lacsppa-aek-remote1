<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerEmploymentSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerEmploymentSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Client Employment Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.ConsumerAm.consumer_key.value.toString();
       var UserAct = document.ConsumerAm.UserAct.value.toString();
       var entry_date = document.ConsumerAm.entry_date.value.toString();
       var url = "PrintConsumerEmploymentSCLARC.aspx?consumer_key=" + consumer_key + "&entry_date=" + entry_date + "&UserAct=" + UserAct;
       window.open(url);     
    }
    
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshEmploymentData();             
        }
        else
        {
            window.opener.RefreshEmploymentData();                           
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
            
    function save_click()
    {
        NoConfirmExit();

        if (document.getElementById("monthyear").value == "")
        {
           alert("The 'For the Month of' field is required.");
           return false;
        }

        if(isNaN(document.getElementById("rate").value))
        {
           alert("Please input correct format for 'Hourly Rate' such as '18.50'");
           return false;
        }

        if(document.getElementById("monthlygross").value =="" )
           return true;
           
        if(isNaN(document.getElementById("monthlygross").value))
        {
           alert("Please input correct monthly gross with value between 0 to 9999999.99");
           return false;
        }

        var val = document.getElementById("monthlygross").value;
        if(val.indexOf(".") > -1)
        {
             if ((val.length - (val.indexOf(".")+1)) > 2)
             {
                alert("Please input only two digits after the decimal point.");
                return false;
             }
             if (val.indexOf(".")>7)
             {
                alert("Please input maximum seven digits before the decimal point.");
                return false;
             }
        }
        else
        {
             if (val.length>7)
             {
                alert("Please input maximum seven digits.");
                return false;
             }
        }

        return true;
    }
    </script> 
</head>
<body  id="body"  runat="server" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerAm" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">EMPLOYMENT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Employment For</asp:label>
			</td>
			<td>
              <asp:ImageButton ID="btnAdd" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:ImageButton>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="image" id="btnPrint" src="../img/print.ico" alt="Print" style="width: 25px;height:25px" 
                  onclick="javascript:print_click();" runat="server" /> 
			  &nbsp;&nbsp;&nbsp;&nbsp;
              <input type="image" id="btnHelp" src="../img/help.ico" alt="Help" style="width: 25px;height:25px" visible="false" 
                  onclick="winhref('./HelpFile/.html','help')" runat="server" />
            </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:500px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_employer" runat="server" Text="Name of Employer:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="employer" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_city" runat="server" Text="Address/Phone:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="city" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_jobtitle" runat="server" Text="Job Title:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="jobtitle" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_jobtype" runat="server" Text="Type of Job:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" height="20">
                 <asp:DropDownList ID="jobtype" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                           Height="20" Width="550" OnClick="DataChanged()">
                 </asp:DropDownList>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_employmenttype" runat="server" Text="Type of Paid Employment:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" height="20">
                 <asp:DropDownList ID="employmenttype" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                           Height="20" Width="550" OnClick="DataChanged()">
                 </asp:DropDownList>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_timeonjob" runat="server" Text="Start Date:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="timeonjob" runat="server" CssClass="inface" Width="120px"
                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr>
               <td colspan="4" class="td_thicksepline">
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td align="left" style="width: 120px" class="td_label">
                       <asp:Label ID="l_monthyear" runat="server" Text="For the Month As of:"></asp:Label>
                     </td>
                     <td width="5" height="20">
                     </td>
                     <td style="width: 80px" align="left" width="80" class="td_unline" height="20">
                       <asp:Textbox ID="monthyear" runat="server" CssClass="inface"
                         onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:Textbox>
                     </td>
                   </tr>
                 </table>
               </td>
               <td width="10" height="20">
               </td>
               <td colspan="2" align="left" height="20">
                  <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td align="left" style="width: 120px" class="td_label">
                       <asp:Label ID="l_rate" runat="server" Text="Hourly Rate:"></asp:Label>
                     </td>
                     <td width="5" height="20"><b>$</b>
                     </td>
                     <td style="width: 80px" align="left" width="80" class="td_unline" height="20">
                       <asp:Textbox ID="rate" runat="server" CssClass="inface" MaxLength="10"></asp:Textbox>
                     </td>
                     <td align="center" style="width: 60px" class="td_label">
                       <asp:Label ID="Label10" runat="server" Text="or:"></asp:Label>
                     </td>
                     <td align="left" style="width: 120px">
                       <asp:Checkbox ID="piecerate" runat="server" Text="Piece Rate">
                       </asp:Checkbox>
                     </td>
                     <td align="right" style="width: 120px" class="td_label">
                       <asp:Label ID="l_hours" runat="server" Text="Total weekly hours worked:"></asp:Label>
                     </td>
                     <td width="5" height="20">
                     </td>
                     <td style="width: 80px" align="left" width="80" class="td_unline" height="20">
                       <asp:Textbox ID="hours" runat="server" CssClass="inface" MaxLength="10"></asp:Textbox>
                     </td>
                   </tr>
                 </table>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td align="left" style="width: 50px">
                     </td>
                     <td style="width: 160px" align="left" width="160" class="td_label" height="20">
                       <asp:Label ID="l_monthlygross" runat="server" Text="Total Gross Wages:"></asp:Label>
                     </td>
                   </tr>
                 </table>
               </td>
               <td width="10" height="20">
               </td>
               <td colspan="2" align="left" height="20">
                  <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td style="width: 150px" align="left" width="150" class="td_unline" height="20">
                       <asp:Textbox ID="monthlygross" runat="server" CssClass="inface" MaxLength="10"></asp:Textbox>
                     </td>
                     <td style="width: 150px">
                     </td>
                     <td align="right" style="width: 200px" class="td_label">
                       <asp:Label ID="l_nonworkhours" runat="server" Text="Total Hours of Non-Work Activities:"></asp:Label>
                     </td>
                     <td width="5" height="20">
                     </td>
                     <td style="width: 80px" align="left" width="80" class="td_unline" height="20">
                       <asp:Textbox ID="nonworkhours" runat="server" CssClass="inface" MaxLength="10"></asp:Textbox>
                     </td>
                   </tr>
                 </table>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td align="left" style="width: 50px">
                     </td>
                     <td style="width: 160px" align="left" width="160" class="td_label" height="20">
                       <asp:Label ID="Label11" runat="server" Text="Current Benefits Received:"></asp:Label>
                     </td>
                   </tr>
                 </table>
               </td>
               <td width="10" height="20">
               </td>
               <td colspan="2" align="left" height="20">
                  <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td style="width: 150px" align="left" width="150" height="20">
                       <asp:Checkbox ID="vacation" runat="server" Text="Paid Vacation">                                              
                       </asp:Checkbox>                                              
                     </td>
                     <td style="width: 10px">
                     </td>
                     <td style="width: 150px" align="left" width="150" height="20">
                       <asp:Checkbox ID="sicktime" runat="server" Text="Paid Sick Time">
                       </asp:Checkbox>                                              
                     </td>
                     <td style="width: 10px">
                     </td>
                     <td style="width: 150px" align="left" width="150" height="20">
                       <asp:Checkbox ID="holidays" runat="server" Text="Paid Holidays">
                       </asp:Checkbox>                                              
                     </td>
                     <td style="width: 10px">
                     </td>
                     <td style="width: 150px" align="left" width="150" height="20">
                       <asp:Checkbox ID="insurance" runat="server" Text="Health Ins.">
                       </asp:Checkbox>                                              
                     </td>
                   </tr>
                 </table>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
               </td>
               <td width="10" height="20">
               </td>
               <td colspan="2" align="left" height="20">
                  <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td style="width: 100px" align="left" width="100" height="20">
                       <asp:Checkbox ID="nothing" runat="server" Text="None">
                       </asp:Checkbox>                                              
                     </td>
                     <td style="width: 10px">
                     </td>
                     <td style="width: 200px" align="left" width="200" height="20">
                       <asp:Checkbox ID="other" runat="server" Text="Other(Please Specify):">
                       </asp:Checkbox>                                              
                     </td>
                     <td style="width: 10px">
                     </td>
                     <td style="width: 300px" align="left" width="300" class="td_unline" height="20">
                       <asp:Textbox ID="othertext" runat="server" CssClass="inface" MaxLength="100" ></asp:Textbox>                                              
                     </td>
                   </tr>
                 </table>
               </td>
            </tr>
            <tr style="height:5px;">
               <td colspan="4">
               </td>
            </tr>
            <tr>
               <td colspan="4" class="td_thicksepline">
               </td>
            </tr>
            <tr style="height:8px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" class="td_label" align="left" height="20">
                   <asp:Label ID="Label1" runat="server" Text="Comments:"></asp:Label>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr style="height:60px;" align="left">
               <td colspan="4">
                   <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="60" >
                   </asp:TextBox>
                   <br />
				   <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="comments" ShowModal=true  runat="server">
                   </cc1:UltimateSpell>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" align="left">
                   Entered By:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="EnterBy" runat="server" CssClass="infaceText"></asp:Label> 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Last Mod By:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lastmodby" runat="server" CssClass="infaceText"></asp:Label>
                   
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" align="left">
                   Entered Date:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="entrydate" runat="server" CssClass="infaceText"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Modify Date:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lastmoddate" runat="server" CssClass="infaceText"></asp:Label>
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
