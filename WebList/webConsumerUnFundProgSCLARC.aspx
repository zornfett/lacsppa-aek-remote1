<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerUnFundProgSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerUnFundProgSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Client UnFunded Program Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.ConsumerPgU.consumer_key.value.toString();
       var UserAct = document.ConsumerPgU.UserAct.value.toString();
       var entry_date = document.ConsumerPgU.entry_date.value.toString();
       var url = "PrintConsumerUnFundProgSCLARC.aspx?consumer_key=" + consumer_key + "&entry_date=" + entry_date + "&UserAct=" + UserAct;
       window.open(url);               
    }
    
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshUnFundData();                 
        }
        else
        {
            window.opener.RefreshUnFundData();  
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
        return true;
    }

    function SelectResource(VendorNumber,SvcCode,SubCode,Rate)
    {
        var myVendorNumber = document.getElementById(<%= "'" + hdnVendorNumber.ClientID + "'" %>);        
        myVendorNumber.value = VendorNumber;  
                  
        window.document.ConsumerPgU.submit(); 
        window.focus();   
    }

    function ResetResource() 
    {
        document.getElementById(<%= "'" + employer.ClientID + "'"%>).value = "";
        document.getElementById(<%= "'" + city.ClientID + "'"%>).value = "";
    }

    </script> 
</head>
<body  id="body"  runat="server" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerPgU" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input type="hidden" name="hdnVendorNumber" id="hdnVendorNumber" value="" runat="server" />
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">UNFUNDED PROGRAM INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Program For</asp:label>
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
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:400px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_employer" runat="server" Text="Program Name:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="employer" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
               </td>
               <td align="left">
                    <input type="button" value="Select" style="width: 60px" id="btnResource" onclick="javascript:popupDialogWide('../FormList/SearchResource.aspx');" />
                    
                    <input type="button" id="btnReset" style="width: 60px;" value="Reset" onclick="javascript:ResetResource();DataChanged();" />
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
                 <asp:Label ID="l_employmenttype" runat="server" Text="Type of Program:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="employmenttype" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
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
                 <asp:Label ID="l_jobtype" runat="server" Text="Transportation Provider:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="jobtype" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>

            <tr class="tr_common">
                <td colspan="4">
                    <table align="left" cellspacing="0" cellpadding="0" border="0" width="100%">
                        <tr class="tr_common">
                            <td align="left" style="width: 130px" class="td_label" >
                             <asp:Label ID="Label2" runat="server" Text="Start Date:"></asp:Label>
                           </td>
                           <td width="10" height="20">
                           </td>
                           <td style="width: 100px" align="left" width="100" class="td_unline" height="20">
                             <asp:TextBox ID="StartDate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                CssClass="inface" Width="95"></asp:TextBox>
                           </td>
                           <td width="20" height="20">
                           </td>
                           <td align="left" style="width: 130px" class="td_label" >
                             <asp:Label ID="Label3" runat="server" Text="End Date:"></asp:Label>
                           </td>
                           <td width="10" height="20">
                           </td>
                           <td style="width: 100px" align="left" width="100" class="td_unline" height="20">
                             <asp:TextBox ID="EndDate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                CssClass="inface" Width="95"></asp:TextBox>
                           </td>
                           <td width="20" height="20">
                           </td>
                           <td align="left" style="width: 130px" class="td_label" >
                             <asp:Label ID="Label4" runat="server" Text="IPP section:"></asp:Label>
                           </td>
                           <td width="10" height="20">
                           </td>
                           <td class="td_unline" align="left" style="width: 350px" >
                                <asp:DropDownList ID="IPPsection" runat="server" DataTextField="tb_entry_text" DataValueField="tb_entry_name"
                                    OnClick="DataChanged()" Width="300px">
                                </asp:DropDownList>
                            </td>
                           <td>
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
               <td colspan="4" class="td_label" align="left" height="20">
                   <asp:Label ID="Label1" runat="server" Text="Comments:"></asp:Label>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr style="height:60px;">
               <td colspan="4">
                   <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="60">
                   </asp:TextBox>
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
