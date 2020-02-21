<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.FormTransPRRS" Codebehind="FormTransPRRS.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base target="_self" />
    <title>:::SCLARC Transfer PRRS:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
       function submit_click() {
           if ((document.TransPRRS.UCI.value == "") && (document.TransPRRS.NameLast.value == "") &&
               (document.TransPRRS.NameFirst.value == ""))
           {
               alert("Please enter data into UCI/Last/First Name.");
               return false;
           }
           return true;
       }       
    //-->
    </script>
</head>
<body>
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="TransPRRS" runat="server">
        <input id="RiskFactor" type="hidden" value="" runat="server" />    
        <div align="center" style="WIDTH:100%;">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Transfer Info</asp:Label>
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
            <tr valign="top" style="height: 30px">
               <td colspan="8" align="center">
                   <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SCLARC Transfer PRRS</asp:Label>
               </td>
            </tr>
            <tr style="height:5px;">
               <td colspan="8"></td>
            </tr>
            <tr class="tr_common">      
               <td style="width:150px"  class="td_label"><b>Last Name:</b></td>  
               <td style="width:5px"></td>
               <td class="td_unline" style="width: 200px;">
                   <asp:textbox id="NameLast" runat="server" CssClass="inface"></asp:textbox>
               </td>  
               <td style="width:20px"></td>
               <td style="width:150px"  class="td_label"><b>First Name:</b></td>    
               <td style="width:5px"></td>
               <td class="td_unline" style="width: 200px;">
                   <asp:textbox id="NameFirst" runat="server" CssClass="inface"></asp:textbox>
               </td> 
               <td style="width:75px"></td>
            </tr> 
            <tr style="height:5px;">
               <td colspan="8"></td>
            </tr>
            <tr class="tr_common">
               <td style="width:150px" class="td_label"><b>Or UCI#:</b></td>
               <td style="width:5px"></td>
               <td class="td_unline" style="width: 200px;">
                   <asp:textbox id="UCI" runat="server" CssClass="inface"></asp:textbox>
               </td> 
               <td style="width:20px"></td>
               <td style="width:150px"  class="td_label">
                    <b><asp:Label ID="l_Submit" runat="server" Text="" Visibe="false"></asp:Label></b></td>                                        
               </td>    
               <td style="width:5px"></td>
               <td class="td_unline" style="width: 200px;">
                   <asp:textbox id="SubmittedBy" runat="server" CssClass="inface" Visible="false" Width="120px"></asp:textbox>&nbsp;
                   <asp:TextBox ID="SubmittedDate" runat="server" CssClass="inface" Visible="false" Width="80px" 
                                         onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:TextBox>
               </td> 
               <td style="width:75px"></td>
            </tr>
            <tr style="height:5px;">
               <td colspan="8"></td>
            </tr>
            <tr class="tr_common" >
               <td style="width:150px"  class="td_label"><b>Transfer To:</b></td>    
               <td style="width:5px"></td>
               <td style="width: 200px;">
			      <asp:DropDownList ID="TransTo" runat="server" DataValueField="ID" DataTextField="Name"
                                Width="180px">
                  </asp:DropDownList>
               </td> 
               <td style="width:20px"></td>
               <td style="width:150px"  class="td_label">
                    <b><asp:Label ID="l_transfrom" runat="server" Text="" Visibe="false"></asp:Label></b>                                                        
               </td>    
               <td style="width:5px"></td>
               <td style="width: 200px;">
                   <asp:textbox id="TrsFrom" runat="server" CssClass="inface" Visible="false"></asp:textbox>			      
               </td> 
            </tr> 
            <tr style="height:5px;">
               <td colspan="8"></td>
            </tr>
            <tr class="tr_common" >
               <td style="width:150px"  class="td_label"><b>Transfer Reason:</b></td>    
               <td style="width:5px"></td>
               <td colspan="3" style="width: 370px;">
			      <asp:DropDownList ID="TransReason" runat="server" 
                       DataValueField="tb_entry_name" DataTextField="tb_entry_text" Width="300px">
                  </asp:DropDownList>
               </td> 
               <td style="width:5px"></td>
               <td colspan="2" style="width:275px"></td>
            </tr>  
            <tr style="height:5px;">
               <td colspan="8"></td>
            </tr>
            <tr class="tr_common" >
               <td style="width:150px"  class="td_label" valign="top"><b>Factors of Risk:</b></td>    
               <td style="width:5px"></td>
               <td colspan="5" valign="top">
                  <input type="button" name="btnRisk" id="btnRisk"  value="Risk" class="buttonbluestyle" size="80px" 
                       runat="server" onclick="Javascript:popupDialogSmall('SearchEsrRisk.aspx');" />                         
                  <asp:TextBox ID="RiskFactorTxt" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" Width="92%" Height="160" ReadOnly="true"></asp:TextBox>             
               </td> 
               <td style="width:75px"></td>
            </tr>  
            <tr style="height:5px;">
               <td colspan="8"></td>
            </tr>
            <tr class="tr_common" >
               <td style="width:150px" valign="top" class="td_label"><b>Comments:</b></td>    
               <td style="width:5px"></td>
               <td colspan="5">
                   <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" Width="99%" Height="60"></asp:TextBox>    
               </td> 
               <td style="width:75px"></td>
            </tr>  
            <tr>
               <td colspan="7" align="center">
            	   <asp:button id="btnSubmit" Runat="server" Text="Transfer" style="width:150px" CssClass="buttonbluestyle" 
			               OnClientClick="return submit_click();" onclick="btnSubmit_Click"></asp:button>
               </td>
               <td style="width:75px"></td>
            </tr>                            
        </table>
        </div>        
    </form>
</body>
</html>
