<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerSDPInfo.aspx.cs" Inherits="Virweb2.WebList.webConsumerSDPInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1">
    <base TARGET="_self" /> 
    <title>Client SDP Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshSDPData();                 
        }
        else
        {
            window.opener.RefreshSDPData();  
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

    function save_click() {
        if ((document.ConsumerSDP.SVCStartDate.value == "") || (document.ConsumerSDP.ReactReason.value == "0")) {
            alert("Start Date or Active Reason can't be empty!");
            return false;
        }

        if ((document.ConsumerSDP.SVCEndDate.value != "") && (document.ConsumerSDP.ExitReason.value == "0")) {
            alert("Exit Reason can't be empty!");
            return false;
        }

        if ((document.ConsumerSDP.ReactReason.value == "8") && (document.ConsumerSDP.ReactComments.value == "")) {
            alert("Active Comments can't be empty!");
            return false;
        }

        if ((document.ConsumerSDP.ExitReason.value == "8") && (document.ConsumerSDP.ExitComments.value == "")) {
            alert("Exit Comments can't be empty!");
            return false;
        }

        NoConfirmExit();
        return true;
    }
    </script> 
</head>
<body  id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerSDP" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="FormID" id="FormID" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Self Determination Information</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
			<td>
		  	  <asp:ImageButton ID="btnAdd" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:ImageButton>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:ImageButton>
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
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:450px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_svcstartdate" runat="server" Text="Begin Date:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                    <asp:TextBox ID="SVCStartDate" runat="server" Width="120px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                        onfocus="showcalendar(event, this);">
                    </asp:TextBox>
               </td>
               <td style="width:auto">
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_ReactReason" runat="server" Text="Active/Reactive Reason:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:DropDownList ID="ReactReason" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                           CssClass="infaceDrop" Height="20" Width="550" OnClick="DataChanged()">
                 </asp:DropDownList>
               </td>
               <td style="width:auto">
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_reactcomments" runat="server" Text="Active/Reactive Comments:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="ReactComments" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height: 20px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_exitdate" runat="server" Text="Exit Date:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                    <asp:TextBox ID="SVCEndDate" runat="server" Width="120px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                        onfocus="showcalendar(event, this);">
                    </asp:TextBox>
               </td>
               <td style="width:auto">
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_exitreason" runat="server" Text="Exit Reason:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:DropDownList ID="ExitReason" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                           CssClass="infaceDrop" Height="20" Width="550" OnClick="DataChanged()">
                 </asp:DropDownList>
               </td>
               <td style="width:auto">
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_exitcomments" runat="server" Text="Exit Comments:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="ExitComments" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
               </td>
               <td style="width:auto">
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
