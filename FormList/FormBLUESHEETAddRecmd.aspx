<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormBLUESHEETAddRecmd.aspx.cs" Inherits="Virweb2.FormList.FormBLUESHEETAddRecmd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"  TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base target="_self"></base>
    <title>:::BLUESHEET -- Recommendations:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
    <script language="javascript">
	<!--
        function save_click() {
            if (!isMaxLength(document.getElementById("recommendation"), 1500)) {
                document.getElementById("recommendation").focus();
                return false;
            }

            NoConfirmExit();
            return true;
        }  		
	//-->
	</script>
</head>
<body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="RecmdInfo" method="post" runat="server">
		<input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />
        <input type="hidden" name="EligibilityKey" id="EligibilityKey" value="" runat="server" />
        <input type="hidden" name="ClientID" id="ClientID" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan="2">
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Recommendations</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="right" valign="middle">
	        <td style="width:auto">
			  <br/>
			</td>
			<td align="right">
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:button>
			  
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
	    <table class="table_maindiv" cellspacing="0" cellpadding="0">
		    <tr  class="tr_common">
				<td class="td_unline" style="width: 120px;" align="left">
					<asp:label id="employeetype" runat="server" CssClass="infaceText"></asp:label>
				</td>                
                <td style="width: auto"></td>
                <td class="td_unline" align="right" style="width: 120px">
					<asp:label id="employeeid" runat="server" CssClass="infaceText"></asp:label>
				</td>
                <td style="width: 5px"></td>
				<td class="td_unline" style="width: 200px;" align="left">
					<asp:label id="employeename" runat="server" CssClass="infaceText"></asp:label>
				</td>
            </tr> 
            <tr style="height:5px"><td colspan="5"></td></tr>
            <tr  class="tr_common">
                <td class="td_label" align="right" style="width: 120px"><b>Recommendation</b>
				</td>
                <td style="width: auto"></td>
                <td class="td_label" align="right" style="width: 120px"><b>Entrydate:</b>
				</td>
                <td style="width: 5px"></td>
				<td class="td_unline" style="width: 200px;" align="left">
					<asp:label id="entrydate" runat="server" CssClass="infaceText"></asp:label>
				</td>
            </tr>
            <tr style="height:5px"><td colspan="5"></td></tr>
            <tr>
                <td colspan="5">
                    <asp:textbox id="recommendation" TextMode="MultiLine" Wrap="true"  BorderStyle="Solid" runat="server" width="99%" height="150px">
                    </asp:textbox><br />
                    <asp:RegularExpressionValidator ID="regRecommendation" runat="server" ControlToValidate="recommendation" 
                            ValidationExpression="^[\s\S]{0,1500}$" ErrorMessage="Maximum of 1500 characters allowed" Text="" ></asp:RegularExpressionValidator>
			        <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="recommendation" ShowModal="true" runat="server">
                    </cc1:UltimateSpell>
                </td>
            </tr>           
		</table>		
		</div>													  
		</form>
	</body>
</html>
