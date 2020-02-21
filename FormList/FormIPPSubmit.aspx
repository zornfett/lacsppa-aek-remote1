<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.FormIPPSubmit" Codebehind="FormIPPSubmit.aspx.cs" %>

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
		<tr ID="CderD_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>CDER Deficits:</b>
          </td>
        </tr>
        <tr ID="CderD_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderDList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderD_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

		<tr ID="CderH_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>CDER Historical MW Qualifier Narrative:</b>
          </td>
        </tr>
        <tr ID="CderH_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderHList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderH_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr ID="CderC_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>Chronic Major Medical Conditions:</b>
          </td>
        </tr>
        <tr ID="CderC_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderCList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderC_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr ID="CderS_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>Special Health Care Requirements:</b>
          </td>
        </tr>
        <tr ID="CderS_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderSList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderS_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr ID="CderB_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>Special Conditions or Behaviors:</b>
          </td>
        </tr>
        <tr ID="CderB_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderBList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderB_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr ID="CderM_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>Behavior Modifying Drugs:</b>
          </td>
        </tr>
        <tr ID="CderM_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderMList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderM_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr ID="CderL_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>Special Legal Conditions</b>
          </td>
        </tr>
        <tr ID="CderL_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderLList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderL_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr ID="CderP_label" runat="server" class="tr_common">
          <td class="td_label">
            <b>POS Authorization:</b>
          </td>
        </tr>
        <tr ID="CderP_list" runat="server" align="left">
          <td>
             <asp:CheckBoxList ID="CderPList" runat="server" DataTextField="ListField" DataValueField="ListFieldID">
                <asp:ListItem Value="PosAuth">Outcome for POS Authorization</asp:ListItem>
             </asp:CheckBoxList>
          </td>
        </tr>
        <tr ID="CderP_space" runat="server" style="height:5px">
          <td>
          </td>
        </tr>

        <tr>
          <td align=left>
            <asp:Radiobutton ID="agree_yes" groupname="agree" runat="server" Font-Bold=true ForeColor=Red  
                 Text="By checking the boxes above, I confirm that I developed outcomes for all deficits/historical narratives/POS Authorizations identified above" 
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
            <asp:Radiobutton ID="agree_no" groupname="agree" runat="server" Font-Bold=true ForeColor=Red  
                 Text="By checking the box, I confirm that an outcome is not needed/required for this section" 
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
