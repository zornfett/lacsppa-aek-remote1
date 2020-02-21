<%@ Page Language="c#" Inherits="Virweb2.webMenuControl" Codebehind="webMenuControl.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <title>Management Crystal Reports for Menu Control</title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />		
    <script type="text/JavaScript" src="js/common.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div align="center" style="width: 100%; height: 55px">
              <table border="0" cellpadding="0" style="border-collapse: collapse" width="60%">
                  <tr valign="top" style="height: 15px"> 
                      <td></td>
                  </tr>
                  <tr valign="top" style="height: 20px">
                       <td align="center">
                           <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">Config the menu items for account</asp:Label>
                        </td>
                   </tr>                   
                   <tr valign="top" >
                        <td  style="background-color:black;height:2px;"></td>
                   </tr>
                  <tr valign="top" style="height: 15px"> 
                      <td></td>
                  </tr>
               </table> 
         </div>
         <div align="center" style="width: 100%;" >
               <table border="0" cellpadding="0" style="border-collapse: collapse" width="80%"  >
                    <tr align="left"  valign="top">
                        <td valign="top">
                             <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
                                 <tr style="height: 30px">
                                     <td colspan=3 valign="top">Please check the menu items for this account:</td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu1" runat="server" Text="Client" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu1Text" runat="server" Text="Client"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu1Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu2" runat="server" Text="Profile" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu2Text" runat="server" Text="Profile"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                        &nbsp;<asp:CheckBox ID="Menu2Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu3" runat="server" Text="Case Notes" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu3Text" runat="server" Text="Case Notes"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu3Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu25" runat="server" Text="Medical" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu25Text" runat="server" Text="Medical"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu25Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu36" runat="server" Text="Medicaid Waiver" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu36Text" runat="server" Text="Medicaid Waiver"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu36Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu33" runat="server" Text="POS List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu33Text" runat="server" Text="POS List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu33Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu34" runat="server" Text="SIR List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu34Text" runat="server" Text="SIR List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu34Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu4" runat="server" Text="Document List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu4Text" runat="server" Text="Document List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu4Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu60" runat="server" Text="IFSP List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu60Text" runat="server" Text="IFSP List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu60Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu37" runat="server" Text="Resource" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu37Text" runat="server" Text="Resource"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu37Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu55" runat="server" Text="Res Profile" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu55Text" runat="server" Text="Profile"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu55Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu56" runat="server" Text="Res Case Notes" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu56Text" runat="server" Text="Case Notes"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu56Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu61" runat="server" Text="Monitoring Tools/CAP" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu61Text" runat="server" Text="Monitoring Tools/CAP"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu61Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>  
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu5" runat="server" Text="To Do List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu5Text" runat="server" Text="To Do List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu5Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu6" runat="server" Text="Form List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu6Text" runat="server" Text="Form List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu6Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu38" runat="server" Text="ESR" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu38Text" runat="server" Text="ESR"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu38Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu43" runat="server" Text="ESR Intake" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu43Text" runat="server" Text="Intake"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu43Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu44" runat="server" Text="ESR Eligibility" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu44Text" runat="server" Text="Eligibility"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu44Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu45" runat="server" Text="ESR Psycho Social" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu45Text" runat="server" Text="Pscho Social"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu45Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu62" runat="server" Text="ESR Turning 3" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu62Text" runat="server" Text="Turning 3"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu62Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu39" runat="server" Text="Lanterman" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu39Text" runat="server" Text="Lanterman"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu39Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu46" runat="server" Text="Intake" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu46Text" runat="server" Text="Intake"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu46Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu47" runat="server" Text="Eligibility" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu47Text" runat="server" Text="Eligibility"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu47Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu48" runat="server" Text="Psycho Social" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu48Text" runat="server" Text="Pscho Social"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu48Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu40" runat="server" Text="Transfer" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu40Text" runat="server" Text="Transfer"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu40Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu49" runat="server" Text="Case Transfer" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu49Text" runat="server" Text="Case Transfer"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu49Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu50" runat="server" Text="Unit Case Transfer" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu50Text" runat="server" Text="Unit Case Transfer"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu50Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu41" runat="server" Text="Statistics" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu41Text" runat="server" Text="Statistics"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu41Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu42" runat="server" Text="Time Card" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu42Text" runat="server" Text="Time Card"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu42Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu51" runat="server" Text="Exempt Time Card" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu51Text" runat="server" Text="Exempt Time Card"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu51Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu52" runat="server" Text="Non-Exempt Time Card" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu52Text" runat="server" Text="Non-Exempt Time Card"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu52Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu53" runat="server" Text="Imaging" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu53Text" runat="server" Text="Imaging"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu53Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu54" runat="server" Text="E-Forms" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu54Text" runat="server" Text="E-Forms"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu54Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu7" runat="server" Text="Report List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu7Text" runat="server" Text="Report List"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu7Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu29" runat="server" Text="Tickler" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu29Text" runat="server" Text="Tickler"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu29Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu57" runat="server" Text="Client Tickler" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu57Text" runat="server" Text="Client Tickler"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu57Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu58" runat="server" Text="Vendor Tickler" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu58Text" runat="server" Text="Vendor Tickler"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu58Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu30" runat="server" Text="Validate" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu30Text" runat="server" Text="Validate"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu30Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu31" runat="server" Text="Messages" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu31Text" runat="server" Text="Messages"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu31Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu8" runat="server" Text="Web Links" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu8Text" runat="server" Text="Web Links"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu8Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu9" runat="server" Text="My Settings" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu9Text" runat="server" Text="My Settings"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu9Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu32" runat="server" Text="My Billing" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu32Text" runat="server" Text="My Billing"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu32Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu35" runat="server" Text="My Tickler" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu35Text" runat="server" Text="My Tickler"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu35Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu10" runat="server" Text="Search" /> 
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu10Text" runat="server" Text="Search"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu10Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu11" runat="server" Text="Report Generator" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu11Text" runat="server" Text="Report Generator"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu11Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu12" runat="server" Text="Administration" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu12Text" runat="server" Text="Administration"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu12Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu13" runat="server" Text="Users" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu13Text" runat="server" Text="Users"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu13Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu14" runat="server" Text="User List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu14Text" runat="server" Text="User List"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu14Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>  
                                 <tr style="height: 20px">
                                     <td  align="left">     
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu15" runat="server" Text="User Group" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu15Text" runat="server" Text="User Group"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu15Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu16" runat="server" Text="Labels" /> 
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu16Text" runat="server" Text="Labels"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu16Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu17" runat="server" Text="Account Settings" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu17Text" runat="server" Text="Account Settings"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu17Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">       
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu18" runat="server" Text="Tools" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu18Text" runat="server" Text="Tools"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu18Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr> 
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu19" runat="server" Text="CaseNote Type" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu19Text" runat="server" Text="CaseNote Type"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu19Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu20" runat="server" Text="CaseNote Template" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu20Text" runat="server" Text="CaseNote Template"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu20Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu21" runat="server" Text="CaseNote Addendum" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu21Text" runat="server" Text="CaseNote Addendum"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu21Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu22" runat="server" Text="Forms Management" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu22Text" runat="server" Text="Forms Management"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu22Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu23" runat="server" Text="Report Management" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu23Text" runat="server" Text="Report Management"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu23Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">      
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu24" runat="server" Text="Announcement" /> 
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu24Text" runat="server" Text="Announcement"></asp:TextBox> 
                                     </td>     
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu24Vendor" runat="server" Text="Vendor Enable" />
                                     </td>                                 
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Menu27" runat="server" Text="Tracking" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu27Text" runat="server" Text="Tracking"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu27Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>
                                 <tr style="height: 20px">
                                     <td  align="left">  
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu28" runat="server" Text="User Login" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu28Text" runat="server" Text="User Login"></asp:TextBox> 
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu28Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>     
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu26" runat="server" Text="Event List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu26Text" runat="server" Text="Event List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu26Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>   
                                 <tr style="height: 20px">
                                     <td  align="left"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:CheckBox ID="Menu59" runat="server" Text="Access List" />
                                     </td>
                                     <td>Display:&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="Menu59Text" runat="server" Text="Access List"></asp:TextBox>
                                     </td>
                                     <td  align="left"> 
                                         &nbsp;<asp:CheckBox ID="Menu59Vendor" runat="server" Text="Vendor Enable" />
                                     </td>
                                 </tr>                           
                             </table>
                        </td>
                    </tr>
                    <tr style="height: 30px" align="center">
                       <td>
                         <asp:Button ID="btnSave" runat="server" Text="Save" style="width:60px" CssClass="buttonbluestyle" 
                              OnClick="btnSave_Click"></asp:Button>

                       </td>
                    </tr>
               </table>
         </div>
    </form>
</body>
</html>
