<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ChangeForm101Cmd.aspx.cs" Inherits="Virweb2.FormList.ChangeForm101Cmd" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head >    
     <base target="_self" />
     <title>::Change Form 101 Comments::</title>
	 <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script type="text/JavaScript" src="../js/common.js"></script>      
     <script language="javascript">
		<!--
         function PassChangeInfo() {
             var comments = document.getElementById("comments").value;
             var opener = window.dialogArguments;
             if (isIE()) {
                 opener.addComments(comments);
             }
             else {
                 window.opener.addComments(comments);
             }
             //self.close();
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
            <tr style=" height:30px">          
               <td colspan=4>
                  <asp:label id="Label1" runat="server" Font-Size="10pt" Font-Bold="True" ForeColor="Black" Text='Additional Comments for Intake'></asp:label>
               </td>
            </tr>
            <tr style="height:5px;">
                <td colspan=4>
                </td>
            </tr>
            <tr class="tr_common">
                <td class="td_label" style="width:200px" align="right">
	                <asp:Label ID="Label96" runat="server" Text="Comments:"></asp:Label>						   						    
                </td>
                <td width="5"></td>
                <td>&nbsp;</td>
                <td style="width:auto"></td>
            </tr>
            <tr style="height:5px;">
                <td colspan=4>
                </td>
            </tr>
            <tr>
                <td colspan=4 style="width: 550px">
		           <asp:textbox id="comments" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="150">
                   </asp:textbox><br />
                   <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="comments" ShowModal="true" runat="server">
                   </cc1:UltimateSpell>
                </td>
            </tr>
            <tr style="height:30px;">
                <td colspan=4>
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width:200px" align="right">		
                    <asp:Button ID="btnAdd" runat="server" Text="Add Comments" Style="width: 120px"
                        CssClass="buttonbluestyle" OnClick="btnAddCmd_Click" OnClientClick="PassChangeInfo();"></asp:Button>		   						    
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
