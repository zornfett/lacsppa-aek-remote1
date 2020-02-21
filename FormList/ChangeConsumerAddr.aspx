<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeConsumerAddr.aspx.cs" Inherits="Virweb2.FormList.ChangeConsumerAddr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head >    
     <base target="_self" />
     <title>::Change Consumer Address::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script type="text/JavaScript" src="../js/common.js"></script>      
     <script language="javascript">
		<!--
         function PassChangeInfo() {
             var changedate = document.getElementById("ChangeDate").value;
             var changereason = document.getElementById("Reason").value;
             var opener = window.dialogArguments;
             if (isIE()) {
                 opener.addRecord(changedate, changereason);
             }
             else {
                 window.opener.addRecord(changedate, changereason);
             }
             self.close();
         }
        //-->
	</script>	 
</head>
<body>
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <div>
        <table class="table_common" cellspacing="0" cellpadding="0">
            <tr style="height:5px;">
                <td colspan=4>
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width:200px" align="right">
	                <asp:Label ID="Label96" runat="server" Text="Moved Out Date:"></asp:Label>						   						    
                </td>
                <td width="5"></td>
                <td class="td_unline" align="left" width="200">
                    <asp:TextBox ID="ChangeDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" width="200" ></asp:TextBox>
                </td>
                <td style="width:auto"></td>
            </tr>
            <tr style="height:5px;">
                <td colspan=4>
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width:200px" align="right">
	                <asp:Label ID="Label1" runat="server" Text="Reason for Leaving:"></asp:Label>						   						    
                </td>
                <td width="5"></td>
                <td class="td_unline" align="left" width="200">
                    <asp:DropDownList ID="Reason" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Width="205" OnClick="DataChanged()">
                    </asp:DropDownList>
                </td>
                <td style="width:auto"></td>
            </tr>
            <tr style="height:5px;">
                <td colspan=4>
                </td>
            </tr>
            <tr class="tr_common">
                <td  style="width:200px" align="right">	
                    <input type="button" name="btnOK" id="btnOK" runat="server" value="Change Address"  class="buttonbluestyle" style="width:120px"  onclick="PassChangeInfo();" />				   						    
                </td>
                <td width="5"></td>
                <td align="left" width="200">
                    <input type="button" name="btnCancel" id="btnCancel" runat="server" value="Cancel"  class="buttonbluestyle" style="width:80px"  onclick="javascript:self.close();" />
                </td>
                <td style="width:auto"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
