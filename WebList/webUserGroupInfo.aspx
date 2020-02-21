<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webUserGroupInfo.aspx.cs" Inherits="Virweb2.WebList.webUserGroupInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Group Permissions:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">

    <script type="text/javascript" src="../js/common.js"></script>
    <script language="javascript">
      <!--       
         
         function submit_click()
         {
            var str_GroupName=JTrim(document.getElementById("GroupName").value);
            if (str_GroupName=="")
            {
               alert("Please input Group Name!");
               document.getElementById("GroupName").focus();
               return false;
            }
            
            var str_GroupID=JTrim(document.getElementById("GroupID").value);
            if (str_GroupID=="")
            {
               alert("Please Input Group ID!");
               document.getElementById("GroupID").focus();
               return false;
            }
            
            var str=JTrim(document.getElementById("GroupDesc").value);
            if (str=="")
            {
               alert("Please Input Group Description!");
               document.getElementById("GroupDesc").focus();
               return false;
            }
            return true;
         }
         
         function Refresh_Data(flag)
        {         
           alert("Update Successful!");
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.RefreshMyData();                 
           }
           else
           {
               window.opener.RefreshMyData();  
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
      //-->
    </script>
</head>
<body  runat="server" id="body">
    <form id="form1" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <center>
        <div align="left" style="width: 100%">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 25px;" align="center" valign="bottom">
                    <td colspan="2">
                        <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">GROUP PERMISSIONS</asp:Label>
                    </td>
                </tr>
                <tr style="height: 30px;" align="left" valign="middle">
                    <td style="width:60%">
                    </td>
                    <td style="width:40%">
                        <asp:Button ID="btnSave" runat="server" Text="Save"  Style="width: 60px"
                            CssClass="buttonbluestyle" OnClick="btnSave_Click" >
                        </asp:Button>                       
                        <asp:Button ID="btnPrint" runat="server" Text="Print" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle" >
                        </asp:Button>                                                   
                        <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"  runat="server" />
                    </td>
                </tr>
                <tr valign="top" style="height:2px;">
                   <td bgcolor="#006600" colspan="2"></td>
                </tr>
            </table>
        </div>
        <div align="center" style="position: relative; width: 100%; height: 600px; overflow: auto" valign="top">
			<table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 90%">
				<tr class="tr_common">
				      <td style="width:5%"></td>     
				      <td style="WIDTH: 120px" bgColor="#9fb0f4" height="20"><b>Group Name:</b></td>
				      <td class="td_unline" style="width:200px;" height="20" ><asp:textbox id="GroupName" runat="server" CssClass="inface"  MaxLength="50"></asp:textbox></td>	
				       <td style="width:10px"></td>
				       <td style="WIDTH: 100px" bgColor="#9fb0f4" height="20"><b>Group ID:</b></td>
				       <td class="td_unline" style="width:120px;" height="20" ><asp:textbox id="GroupID" runat="server" CssClass="inface"  MaxLength="10" ></asp:textbox></td>
				       <td  style="width:5%"></td>
				</tr>
				 <tr class="tr_common" style="height:5px">
                    <td  colspan="7"></td>
                </tr>
				<tr class="tr_common">
				     <td style="width:5%"></td>     
				     <td style="WIDTH: 120px" bgColor="#9fb0f4" height="20"><b>Group Description:</b></td>
				     <td class="td_unline" width="400" height="20"  colspan="4">
					        <asp:textbox id="GroupDesc" runat="server" CssClass="inface" MaxLength=200 ></asp:textbox>
					 <td style="width:5%"></td>       
				  </td>
				</tr>  
				<tr class="tr_common" style="height:5px">
                    <td  colspan="7"></td>
                </tr>
				<tr class="tr_common">				    
				    <td colspan="7" align="center"><b><label style="background-color:#9fb0f4">Group Permissions</label></b></td>
				</tr>
				<tr class="tr_common" style="height:5px">
                    <td  colspan="7"></td>
                </tr>
                <tr class="tr_common">
                    <td style="width:5%"></td> 
                    <td  colspan="5">
                         <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 100%">
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="ConProfile" runat="server">Consumer Profile</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConProfileR" runat="server" CssClass="inface" Width="80">
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Edit</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConProfileW" runat="server" CssClass="inface" Width="80">
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Delete</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConProfileD" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td colspan=4></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="Label5" runat="server">Drop Down List Box</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="DropListW" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td colspan=4></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="ResProfile" runat="server">Resource Profile</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResProfileR" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Edit</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResProfileW" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Delete</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResProfileD" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td colspan=4></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="ConTrx" runat="server">Consumer Transactions</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConTrxR" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConTrxD" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConTrxW" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ConTrxV" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="ResTrx" runat="server">Resource Transactions</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResTrxR" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResTrxD" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResTrxW" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ResTrxV" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="Label2" runat="server">CDER</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="CderR" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Edit</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="CderW" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="Label4" runat="server">Medical</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="MedR" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Edit</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="MedW" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="Label1" runat="server">General Forms</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View regular forms</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormR1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>View management forms</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormR2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit regular forms</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormW1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Edit management forms</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormW2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Delete regular forms</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormD1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete management forms</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormD2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="Label3" runat="server">General Reports</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View regular reports</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ReportR1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>View management reports</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="ReportR2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr valign="top" style="height:2px;">
                                 <td bgcolor="#006600" colspan="9"></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper1" Visible="false" >
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="l_FormsPer1" runat="server" >Forms Permission group 1</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View Form</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormWS1" runat="server" CssClass="inface" Width="80" >					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete Form</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormDS1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper12" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit Form</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormES1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate Form</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormVS1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper13" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>View Report</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormRS1" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px" colspan="4" ></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper2" Visible="false">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="l_FormsPer2" runat="server">Forms Permission group 2</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormWS2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormDS2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper22" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormES2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormVS2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper23" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>View Report</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormRS2" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px" colspan="4" ></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper3" Visible="false">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="l_FormsPer3" runat="server">Forms Permission group 3</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormWS3" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormDS3" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper32" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormES3" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormVS3" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper33" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>View Report</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormRS3" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px" colspan="4" ></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper4" Visible="false">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="l_FormsPer4" runat="server">Forms Permission group 4</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormWS4" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormDS4" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper42" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormES4" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormVS4" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper43" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>View Report</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormRS4" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px" colspan="4" ></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper5" Visible="false">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="l_FormsPer5" runat="server">Forms Permission group 5</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormWS5" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormDS5" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper52" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormES5" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormVS5" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper53" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>View Report</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormRS5" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px" colspan="4" ></td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper6" Visible="false">
                                  <td style="WIDTH: 140px" bgColor="#9fb0f4" height="20"><b><asp:label id="l_FormsPer6" runat="server">Forms Permission group 6</asp:label></b></td>
                                  <td style="width:10px"></td>
                                  <td>View</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormWS6" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Delete</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormDS6" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper62" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>Edit</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormES6" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px"></td>
					              <td>Validate</td>
					              <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormVS6" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
                             </tr>
                             <tr style="height:10px">
                                <td colspan="9"></td>
                             </tr>
                             <tr style="height:20px" runat="server" id="tr_formper63" Visible="false">
                                  <td></td>
                                  <td style="width:10px"></td>
                                  <td>View Report</td>
                                  <td style="width:10px"></td>
                                  <td>
                                     <asp:dropdownlist id="FormRS6" runat="server" CssClass="inface" Width="80">					 	               
						                <asp:ListItem Value="N">No</asp:ListItem>
						                <asp:ListItem Value="Y">Yes</asp:ListItem>
					                </asp:dropdownlist>
					              </td>
					              <td style="width:10px" colspan="4" ></td>
                             </tr>
                         </table>
                    </td>
                    <td style="width:5%"></td> 
                </tr>
			</table>
		</div>	
		</center>	
    </form>
</body>
</html>
