<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webMedicalVisit.aspx.cs" Inherits="Virweb2.WebList.webMedicalVisit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="MetaBuilders.WebControls" Namespace="MetaBuilders.WebControls"
    TagPrefix="mb" %>

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Medical Visit Detail</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.MedicalVT.consumer_key.value.toString();
       var UserAct = document.MedicalVT.UserAct.value.toString();
       var entry_date = document.MedicalVT.entry_date.value.toString();
       var url = "PrintMedicalVisit.aspx?consumer_key=" + consumer_key + "&entry_date=" + entry_date + "&UserAct=" + UserAct;
       winhref(url, "PrintMedicalVisit");             
    }

    function save_click() {
        /*if (document.getElementById("eventdate").value == "") {
            alert("Please input Appointment Date !");
            document.MedicalVT.eventdate.focus();
            return false;
        }
        */
        if (IsDate(document.getElementById("eventdate").value, false) != "true") {
            alert("Please input Appointment Date !");
            document.MedicalVT.eventdate.focus();
            return false;
        }

        NoConfirmExit();
        return true;
    }

    function doctorchg(controlid) {
        var docname = document.MedicalVT.doctorname_List;
        if (docname.selectedIndex >=0)
            document.MedicalVT.doctortype.value = docname.value;
        
    }
    </script> 
</head>
<body  id="body"  runat="server" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="MedicalVT" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">MEDICAL VISIT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Medication For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();return false;" runat="server" /> 
			  <input type="button" id="btnHelp" value="Help" Visible="False" style="width:60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" runat="server" />
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan="2">
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:550px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr class="tr_common">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                   <asp:Label ID="l_eventdate" runat="server" Text="Appointment Date:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                   <asp:TextBox ID="eventdate" runat="server" CssClass="inface" Width="120px" onclick="DataChanged();showcalendar(event, this);" 
                          onfocus="DataChanged();showcalendar(event, this);" ></asp:TextBox>
                   (enter appoximate date if unknown)
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                   <asp:Label ID="l_apptype" runat="server" Text="Type of Appointment:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                   <asp:DropDownList ID="appttype" runat="server" DataValueField="tb_entry_text" DataTextField="tb_entry_text"
                           Height="20" Width="550" OnClick="DataChanged()">
                   </asp:DropDownList>
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_doctorname" runat="server" Text="MD/DDS/Lab/Hospital:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" height="20">
                 <mb:ComboBox ID="doctorname" runat="server" DataValueField="Relationship" DataTextField="name"
                        Width="550" OnChange="doctorchg(this);" BorderStyle="Inset" BorderWidth="2px" >
                 </mb:ComboBox>
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 200px" class="td_label" >
                 <asp:Label ID="l_doctortype" runat="server" Text="Type of Doctor:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" height="20">
                 <asp:TextBox ID="doctortype" runat="server" CssClass="inface" Width="550px" MaxLength="100"></asp:TextBox>
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3" align="left" class="td_label" >
                 <asp:Label ID="l_doctorcomments" runat="server" Text="Appointment Frequency/Purpose/Findings/Treatment"></asp:Label>
               </td>
            </tr>
            <tr class="tr_common" style="height:160px;">
               <td colspan="3">
                   <asp:TextBox ID="doctorcomments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="160">
                   </asp:TextBox>
               </td>
            </tr>
            <tr class="tr_common" style="height:15px;">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3" align="left">
                   Entered By:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="EnterBy" runat="server" CssClass="infaceText"></asp:Label> 
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3" align="left">
                   Entered Date:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="entrydate" runat="server" CssClass="infaceText"></asp:Label>
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
