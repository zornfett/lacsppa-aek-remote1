<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmSetIDNotesTypeInfo.aspx.cs" Inherits="Virweb2.WebList.AdmSetIDNotesTypeInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <base target="_self" />
		<title>:::Case Notes Type Info:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>

        <script type="text/javascript">
        function save_click()
        {
           NoConfirmExit();
           var str="WARNING !!\nMaking any changes to this ID NOTE TYPE could permanently affect your transaction data and historical information.\n"+  
                   "If you are sure you want to make changes, please make note of warning above and select 'OK' below.";
           if (confirm(str))
             return true;
           else  
             return false;
        }     
        </script>

    </head>
	<body  runat="server" id="body">
		<form id="IDNotesTypeInfo" method="post" runat=server>
		<input id="NoConfirm" type=hidden value="0" />
		<div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	      <tr style="height: 25px;" align=center valign=bottom>
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">CASE NOTES TYPE INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align=left valign=middle>
	        <td width=500px>
			</td>
			<td width=300px>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="javascript:return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="NoConfirmExit();" onclick="btnAdd_Click"></asp:button>
			  <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" OnClick="javascript:window.print();"  runat="server" /> 
			  <input type="button" id="btnHelp" value="Help" style="width:60px;" class="buttonbluestyle" onclick="winhref('../HelpFile/.html','help')" runat="server" /> 
			  <asp:Label ID="lbl_err" Runat="server" ForeColor="Blue"></asp:Label>
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
		<div align=center style="position:relative;WIDTH:100%; height:650px; overflow: auto " >
			<table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 98%">
				<tr>
				  <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Type Code:</b>
				  </td>
				  <td width="10" height="20"></td>
				  <td align="left" class="td_unline" width="600" height="20">
					  <asp:textbox id="txty_code" runat="server" CssClass="inface" MaxLength="1" Width="30px"></asp:textbox>
				  </td>
				</tr>
				<tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
				<tr>
				  <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Description:</b>
				  </td>
				  <td width="10" height="20"></td>
				  <td align="left" class="td_unline" width="600" height="20" style="width: 600px" >
					  <asp:textbox id="txty_text" runat="server" CssClass="inface" MaxLength=128></asp:textbox>
				  </td>
				</tr> 
                <tr>
                  <td colspan="3" height="5">
                  </td>
                </tr>
                <tr>
                  <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Attach Addendum:</b>
				  </td>
				  <td width="10" height="20"></td>
                  <td width="600" height="20" align="left" >
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RadioButton ID="txty_bill_0" GroupName="txty_bill" runat="server" Text="None" Width="100" />
				      <asp:RadioButton ID="txty_bill_1" GroupName="txty_bill" runat="server" Text="Billing" Width="100" />
				      <asp:RadioButton ID="txty_bill_2" GroupName="txty_bill" runat="server" Text="Attendance" Width="100" />
				      <asp:RadioButton ID="txty_bill_3" GroupName="txty_bill" runat="server" Text="POS" Width="100" />
				  </td>
                </tr>
			</table>		
		</div>													  
		</form>
	</body>
</html>


