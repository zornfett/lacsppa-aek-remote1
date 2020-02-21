<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmSetLabelSetsInfo.aspx.cs" Inherits="Virweb2.AdmPage.AdmSetLabelSetsInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>:::Label Setting Info:::...</title>
    <script type="text/javascript" src="../js/common.js"></script>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script language="javascript">
	<!--       
       function save_click()
       {
           if (JTrim(document.form1.ls_id.value) != "")
           {
              if (IsInteger(JTrim(document.form1.ls_id.value)))
                {                   
                   if (parseInt(JTrim(document.form1.ls_id.value),10)>0)
                   {                      
                   }
                   else
                   {
                       PopupMessgae(55);
                       document.form1.ls_id.focus();
                        return false;
                   }
                }
                else
                {
                   PopupMessgae(56);
                   document.form1.ls_id.focus();
                   return false;
                }           
           }
           else
           {
              PopupMessgae(57);
              document.form1.ls_id.focus();
              return false;
           }
           if (JTrim(document.form1.ls_name.value) == "")
           {
              PopupMessgae(58);
              document.form1.ls_name.focus();
              return false;
           }
           if (JTrim(document.form1.ls_desc.value) == "")
           {
              PopupMessgae(59);
              document.form1.ls_desc.focus();
              return false;
           }
           return true;
       }
		
	  //-->		
    </script>

</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="form1" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      onclientclick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:document.location.replace('AdmSetLabelSetsList.aspx');return false;" />  
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Label Setting</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                        src="../img/supportdesk.ico" title="Support"
                        onclick="javascript:window.top.outsidelinks(1);return false;" />             
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                        src="../img/help.ico" title="Help"
                        onclick="javascript:window.top.outsidelinks(2);return false;" />             
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                        src="../img/logout.jpg" title="Logout"
                        onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                    &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                 <td colspan="3" style="background-color:#137AC5"></td> 
            </tr>
            <tr style="height:8px">
                 <td colspan="3"></td> 
		    </tr>	
        </table> 
		</div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
			<tr class="tr_common">
			    <td style="width:5px"></td>
			    <td style="width:100px" align="right" class="td_label"><b>Label ID:</b></td>
			    <td style="width:5px"></td>
			    <td class="td_unline" style="width: 100px">
				   <asp:textbox id="ls_id" runat="server" CssClass="inface"></asp:textbox>
			    </td>
			    <td style="width:15px"></td>
			</tr>
			<tr>
              <td  colspan="15" style="height:5px">
              </td>
            </tr>
			<tr class="tr_common">
			    <td style="width: 5px"></td>
			    <td style="width: 100px" align="right" class="td_label"><b>Setting Name:</b></td>
			    <td style="width: 5px"></td>
			    <td class="td_unline" style="width: 200px">
				   <asp:textbox id="ls_name" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
			    </td>
			    <td style="width: 15px"></td>
			</tr>
			<tr>
              <td  colspan="15" style="width: 5px">
              </td>
            </tr>
			<tr class="tr_common">
			    <td style="width: 5px"></td>
			    <td style="width: 100px" align="right" class="td_label"><b>Description:</b></td>
			    <td style="width: 5px"></td>
			    <td class="td_unline" style="width: 300px">
				   <asp:textbox id="ls_desc" runat="server" CssClass="inface" MaxLength=200></asp:textbox>
			    </td>
			    <td style="width: 15px"></td>
			</tr>
		</table>
		</div>		
    </form>
</body>
</html>
