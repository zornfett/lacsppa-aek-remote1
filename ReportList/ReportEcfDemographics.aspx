<%@ page language="C#" inherits="Virweb2.ReportList.ReportEcfDemographics" Codebehind="ReportEcfDemographics.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
      <base target="_self" />
      <title>:::Ecf Demographics Search:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">	
	  <script type="text/JavaScript" src="../js/common.js"></script>	 
</head>
<body >
    <form id="form1" runat="server">
           <center>
           <br />
           <table border="1" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="80%">
                 <tr style="height:25px">
                    <td colspan="2" align="center"><asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">ECF Demograpics Report</asp:Label></td>
                 </tr>
                 <tr>
                     <td>
                        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
                        <tr style="height:25px">
                           <td>1.Number of unduplicated clients served at a point in time</td>
                           <td align="right"> <asp:Button ID="btnPrint11" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">
                           <td>2.Number of clients at a point in time by program</td>
                           <td align="right"> <asp:Button ID="btnPrint12" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px">  
                           <td>3.Number of unduplicated clients served over a period of time (fiscal year)</td>
                           <td align="right"> <asp:Button ID="btnPrint13" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px">
                           <td>4.Number of clients served over a period of time by program</td>
                           <td align="right"> <asp:Button ID="btnPrint14" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px"> 
                           <td>5.Clients served by each Regional Center</td>
                           <td align="right"> <asp:Button ID="btnPrint15" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px"> 
                           <td>7.# of years in ECF programs </td>
                           <td align="right"> <asp:Button ID="btnPrint17" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px"> 
                           <td>8.Age</td>
                           <td align="right"> <asp:Button ID="btnPrint18" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px">   
                           <td>9.Race/ethnicity</td>
                           <td align="right"> <asp:Button ID="btnPrint19" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        </table>
                     </td>
                     <td valign="middle"  align="center"> <asp:Button ID="btnPrint1" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  > </asp:Button></td>
                 </tr>
                 <tr>
                    <td>
                        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
                        <tr style="height:25px">
                           <td>10.Gender</td>
                           <td align="right"> <asp:Button ID="btnPrint20" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px">   
                           <td>11.Education Level (Equal to 'Yrs. Of Schooling' on OO2)</td>
                           <td align="right"> <asp:Button ID="btnPrint21" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                       <tr style="height:25px">  
                           <td>12.Primary Diagnosis</td>
                           <td align="right"> <asp:Button ID="btnPrint22" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px">   
                           <td>13.Secondary Diagnosis</td>
                           <td align="right"> <asp:Button ID="btnPrint23" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr> 
                        <tr style="height:25px">   
                           <td>14.Primary Language/ Bilingual</td>                          
                           <td align="right"> <asp:Button ID="btnPrint24" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">   
                           <td>15.Living Situation (Ex. With family, own apt., group facility)</td>                          
                           <td align="right"> <asp:Button ID="btnPrint25" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">   
                           <td>16.Means of transportation for adults (public, drive, bike, van service, family)</td>                          
                           <td align="right"> <asp:Button ID="btnPrint26" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">   
                           <td>17.# of clients who have left each program in a 12-month period</td>                          
                           <td align="right"> <asp:Button ID="btnPrint27" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">   
                           <td>18.Reason for termination </td>                          
                           <td align="right"> <asp:Button ID="btnPrint28" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">   
                           <td>19.# of clients on medication </td>                          
                           <td align="right"> <asp:Button ID="btnPrint29" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        <tr style="height:25px">   
                           <td>20.# of Early Start children who transition out of RC funded services </td>                          
                           <td align="right"> <asp:Button ID="btnPrint30" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  ></asp:Button></td>
                        </tr>
                        </table>
                     </td>
                     <td valign="middle" align="center"> <asp:Button ID="btnPrint2" runat="server" Text="Print" Style="width: 80px;" CssClass="buttonbluestyle"  > </asp:Button></td>
                 </tr>
           </table>
         </center>  
    </form>
</body>
</html>

