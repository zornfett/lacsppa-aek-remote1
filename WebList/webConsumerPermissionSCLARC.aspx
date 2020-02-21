<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerPermissionSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerPermissionSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Client Permission Assign Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var formid = document.ConsumerPerm.FormID.value.toString();
       var url = "PrintConsumerPermissionSCLARC.aspx?FormID=" + formid ;
       window.open(url);               
    }
    
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshPermissionData();                 
        }
        else
        {
            window.opener.RefreshPermissionData();  
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

    </script> 
</head>
<body  id="body"  runat="server" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerPerm" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="formid" id="formid" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">PERMISSION ASSIGNMENT INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Permission For</asp:label>
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
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_accounttype" runat="server" Text="Select Account Type:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 500px" align="left" width="600" class="td_unline" height="20">
                 <asp:DropDownList ID="AccountType" runat="server" CssClass="infaceDrop" OnChange="DataChanged();">
                        <asp:ListItem Value="Consultant">Consultant</asp:ListItem>
                 </asp:DropDownList>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_assigntoid" runat="server" Text="Select Account Name:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 500px" align="left" width="600" class="td_unline" height="20">
                 <asp:DropDownList ID="AssignToID" runat="server" CssClass="infaceDrop" DataValueField="employeeID" DataTextField="employeeName" 
                        OnChange="DataChanged()">
                 </asp:DropDownList>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_assigndate" runat="server" Text="Permission Assigned Date:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td>
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
                        </tr>
                    </table>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3" class="td_label" align="left" height="20">
                   <asp:Label ID="Label1" runat="server" Text="Comments:"></asp:Label>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="3">
               </td>
            </tr>
            <tr style="height:60px;">
               <td colspan="3">
                   <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="60">
                   </asp:TextBox>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="3">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="3" align="left">
                   Entered By:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="EnteredBy" runat="server" CssClass="infaceText"></asp:Label> 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Entered Date:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="createdate" runat="server" CssClass="infaceText"></asp:Label>
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
