<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.FormIPPAnnualSubmitFDLRC" Codebehind="FormIPPAnnualSubmitFDLRC.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self" />    
		<title>:::Submit IPP Form:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script type="text/javascript">
        function PostText(CurTab) {
          var opener = window.dialogArguments;
          if (isIE()) {
              opener.SubmitTab(CurTab);                
          }
          else {
              window.opener.SubmitTab(CurTab);                
          }
          self.close();
        }       
        </script> 
</head>
<body>
    <form id="FormIPPSubmit" runat="server">
      <asp:hiddenfield id="Tab" runat="server" value="" />
      <asp:hiddenfield id="IPPID" runat="server" value="" />
      <asp:hiddenfield id="PosAuth" runat="server" value="" />
	  <div align="center" valign="top" style="position:relative;WIDTH:100%; height:550px; overflow: auto ">
	  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 92%">
		<tr class="tr_common">
		  <td align=center>
            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="24px">Form IPP Submit Confirmation</asp:label>
          </td>
		</tr>
        <tr style="height:20px">
          <td>
          </td>
        </tr>
        <tr class="tr_common">
          <td class="td_label">
            <b><asp:Label ID="Label16" runat="server" Text="Deficit(s):" ></asp:Label></b></td>
        </tr>
        <tr style="height:5px;">
          <td>
          </td>
        </tr>
        <tr class="tr_common">
          <td class="td_unline" >
            <asp:TextBox ID="MWDeficits" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                runat="server" Width="99%" Height="200" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
                        </td>
        </tr>
        <tr>
          <td align=left>
            <asp:Radiobutton ID="agree_1" groupname="agree" runat="server" Font-Bold=true ForeColor=Red  
                 Text="By checking this item, I confirm I developed IPP outcomes for some or all Medicaid Wavier deficits identified above." 
                 Checked="true">
            </asp:Radiobutton>
          </td>
        </tr>
        <tr style="height:10px">
            <td>
            </td>
        </tr>
        <tr>
            <td class="td_thicksepline">
            </td>
        </tr>
        <tr style="height:10px">
            <td>
            </td>
        </tr>
        <tr>
          <td align=left>
            <asp:Radiobutton ID="agree_2" groupname="agree" runat="server" Font-Bold=true ForeColor=Red  
                 Text="By checking this item, I confirm I developed an IPP outcome but do not need to develop an outcome for any Medicaid Waiver deficit identified above." 
                 Checked="false">
            </asp:Radiobutton>
          </td>
        </tr>
        <tr style="height:10px">
            <td>
            </td>
        </tr>
        <tr>
            <td class="td_thicksepline">
            </td>
        </tr>
        <tr style="height:10px">
            <td>
            </td>
        </tr>
        <tr>
          <td align=left>
            <asp:Radiobutton ID="agree_3" groupname="agree" runat="server" Font-Bold=true ForeColor=Red  
                 Text="By checking this item, I confirm that I did not need to develop any IPP outcomes for this section." 
                 Checked="false">
            </asp:Radiobutton>
          </td>
        </tr>
        <tr style="height:10px">
            <td>
            </td>
        </tr>
        <tr>
            <td class="td_thicksepline">
            </td>
        </tr>
        <tr style="height:10px">
            <td>
            </td>
        </tr>
        <tr>
		  <td align=center>
			<asp:button id="btnSubmit" Runat="server" Text="Submit" onclick="btnSubmit_Click" CssClass="buttonbluestyle"></asp:button>
		  </td>
        </tr>
      </table>
      </div> 
    </form>
</body>
</html>
