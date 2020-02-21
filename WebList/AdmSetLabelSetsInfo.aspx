<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmSetLabelSetsInfo.aspx.cs" Inherits="Virweb2.WebList.AdmSetLabelSetsInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <base target="_self" />
    <title>:::Label Setting Info:::...</title>
    <script type="text/javascript" src="../js/common.js"></script>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script language="javascript">
		<!--
		function Refresh_Data()
        {         
           alert("Save successful!");
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.RefreshMyData();                 
           }
           else
           {
               window.opener.RefreshMyData();  
           }
           window.close();          
       }
       
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
                       alert("Label id is integer,please input again!");
                       document.form1.ls_id.focus();
                        return false;
                   }
                }
                else
                {
                   alert("Label id is integer,please input again!");
                   document.form1.ls_id.focus();
                   return false;
                }           
           }
           else
           {
              alert("Please input label id!");
              document.form1.ls_id.focus();
              return false;
           }
           if (JTrim(document.form1.ls_name.value) == "")
           {
              alert("Please input setting name!");
              document.form1.ls_name.focus();
              return false;
           }
           if (JTrim(document.form1.ls_desc.value) == "")
           {
              alert("Please input descriptions!");
              document.form1.ls_desc.focus();
              return false;
           }
           return true;
       }
		
	  //-->		
    </script>

</head>
<body  runat="server" id="body">
    <form id="form1" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="width: 100%">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 25px;" align="center" valign="bottom">
                    <td colspan="2">
                        <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">New Label Setting</asp:Label>
                    </td>
                </tr>
                <tr style="height: 30px;" align="left" valign="middle">
                    <td style="width:50%"></td>
                    <td align="center">
                        <asp:Button ID="btnEdit" runat="server" Text="Save"  Style="width: 60px"
                            CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click" >
                        </asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" name="btnClose" id="btnClose" value="Close" Style="width: 60px" class="buttonbluestyle"  runat="server" onclick="javascript:self.close();" />                              
                                    
                    </td>
                </tr>
                <tr style="height: 15px">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
        <div align=center style="position:relative;WIDTH:98%; height:260px; overflow: auto " >
			<table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
			    <tr>
				    <td width="5" height="20"></td>
				    <td style="WIDTH: 100px" align="right" width="100px" bgColor="#9fb0f4" height="20"><b>Label ID:</b></td>
				    <td width="5" height="20"></td>
				    <td class="td_unline" width="100" height="20" style="width: 100px">
					   <asp:textbox id="ls_id" runat="server" CssClass="inface"></asp:textbox>
				    </td>
				     <td width="15" height="20"></td>
				</tr>
				<tr>
                  <td  colspan="15" height="5">
                  </td>
                </tr>
				<tr>
				    <td width="5" height="20"></td>
				    <td style="WIDTH: 100px" align="right" width="100px" bgColor="#9fb0f4" height="20"><b>Setting Name:</b></td>
				    <td width="5" height="20"></td>
				    <td class="td_unline" width="200" height="20" style="width: 200px">
					   <asp:textbox id="ls_name" runat="server" CssClass="inface" MaxLength=50></asp:textbox>
				    </td>
				     <td width="15" height="20"></td>
				</tr>
				<tr>
                  <td  colspan="15" height="5">
                  </td>
                </tr>
				<tr>
				    <td width="5" height="20"></td>
				    <td style="WIDTH: 100px" align="right" width="100px" bgColor="#9fb0f4" height="20"><b>Description:</b></td>
				    <td width="5" height="20"></td>
				    <td class="td_unline" width="300" height="20" style="width: 300px">
					   <asp:textbox id="ls_desc" runat="server" CssClass="inface" MaxLength=200></asp:textbox>
				    </td>
				     <td width="15" height="20"></td>
				</tr>
			</table>
		</div>		
    </form>
</body>
</html>
