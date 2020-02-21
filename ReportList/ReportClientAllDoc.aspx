<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportClientAllDoc" Codebehind="ReportClientAllDoc.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Transfer Client Documents:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function print_report() {
            var c_key = document.form1.consumer_key.value;
            var caseval = 0;
            if (document.form1.all_document_yes.checked) {
                caseval = 0;
            }
            else if (document.form1.all_document_no.checked) 
            {
                if (document.form1.client.checked)
                   caseval = caseval | 1;
                else 
                {
                   if (document.form1.client_facesheet.checked)
                       caseval = caseval | 2;
                   if (document.form1.client_financial.checked)
                       caseval = caseval | 4;
                   if (document.form1.client_legal.checked)
                       caseval = caseval | 8;
                   if (document.form1.client_status.checked)
                       caseval = caseval | 0x10;
                   if (document.form1.client_admin.checked)
                       caseval = caseval | 0x20;
                   if (document.form1.client_refer.checked)
                       caseval = caseval | 0x40;
                   if (document.form1.client_employment.checked)
                       caseval = caseval | 0x80;
                   if (document.form1.client_school.checked)
                       caseval = caseval | 0x100;
                   if (document.form1.client_programs.checked)
                       caseval = caseval | 0x200;
                   if (document.form1.client_posauth.checked)
                       caseval = caseval | 0x400;
                   if (document.form1.client_contacts.checked)
                       caseval = caseval | 0x800;
               }

               if (document.form1.medical.checked)
                   caseval = caseval | 0x1000;
               if (document.form1.cder.checked)
                   caseval = caseval | 0x2000;
               if (document.form1.pos.checked)
                   caseval = caseval | 0x4000;
               if (document.form1.tsr.checked)
                   caseval = caseval | 0x8000;
               if (document.form1.sir.checked)
                   caseval = caseval | 0x10000;
               if (document.form1.mwe.checked)
                   caseval = caseval | 0x20000;
            }

            winhref("PrintClientAllDoc.aspx?c_key="+c_key+"&caseval=" + caseval.toString(), "PrintClientAllDoc");
        }

        function print_ipp() {
            var c_key = document.form1.consumer_key.value;
            var caseval = 0x1000000;
            winhref("PrintClientAllDoc.aspx?c_key=" + c_key + "&caseval=" + caseval.toString(), "PrintClientAllDoc");
        }

        function print_ifsp() {
            var c_key = document.form1.consumer_key.value;
            var caseval = 0x2000000;
            winhref("PrintClientAllDoc.aspx?c_key=" + c_key + "&caseval=" + caseval.toString(), "PrintClientAllDoc");
        }

    </script>
</head>
<body style="font-size: 9pt">
    <form id="form1" runat="server">
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" /> 
        <center>
        <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 80%">
             <tr style="height:30px">
                 <td colspan="2" align="center" style="font-family: Arial"><h3>
                    <asp:Label ID="l_title" runat="server" Text="Transfer Documents"></asp:Label></h3>
                 </td>
             </tr>            
             <tr style="height:30px">
                 <td colspan="2"></td>
             </tr>
             <tr class="tr_common">
                 <td colspan="2" class="td_label">
                    <asp:RadioButton Text="" ID="all_document_yes" GroupName="all_document" runat="server" /><b>Transfer All Documents</b>
                 </td>
             </tr>    
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td colspan="2" class="td_label">
                    <b>OR</b>
                 </td>
             </tr>  
             <tr style="height:10px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td colspan="2" class="td_label">
                    <asp:RadioButton Text="" ID="all_document_no" GroupName="all_document" runat="server" checked="true" /><b>Transfer Checked Documents</b>
                 </td>
             </tr>  
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="client" runat="server" Text="" /><b>All Client Profile Pages</b>
                 </td>
             </tr>
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>             
                 <td class="td_label">
                    <b>OR Select Below Pages</b>
                 </td>
             </tr>   
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_facesheet" runat="server" Text="" /><b>Face Sheet</b>
                 </td>
             </tr>  
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_financial" runat="server" Text="" /><b>Financial</b>
                 </td>
             </tr>  
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_legal" runat="server" Text="" /><b>Legal</b>
                 </td>
             </tr>  
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_status" runat="server" Text="" /><b>Status</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_admin" runat="server" Text="" /><b>Administration</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_refer" runat="server" Text="" /><b>Referrals</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_employment" runat="server" Text="" /><b>Employment</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_school" runat="server" Text="" /><b>School</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_programs" runat="server" Text="" /><b>Programs</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_posauth" runat="server" Text="" /><b>POS Auth</b>
                 </td>
             </tr> 
             <tr style="height:5px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td class="td_label">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="client_contacts" runat="server" Text="" /><b>Contacts</b>
                 </td>
             </tr> 
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="medical" runat="server" Text="" /><b>Medical Information</b>
                 </td>
             </tr>  
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="cder" runat="server" Text="" /><b>CDER Information</b>
                 </td>
             </tr> 
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="pos" runat="server" Text="" /><b>POS Information</b>
                 </td>
             </tr>  
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="tsr" runat="server" Text="" /><b>TSR Information</b>
                 </td>
             </tr>  
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="sir" runat="server" Text="" /><b>SIR Information</b>
                 </td>
             </tr>   
             <tr style="height:20px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td width="30"></td>
                 <td width="auto" class="td_label">
                    <asp:CheckBox ID="mwe" runat="server" Text="" /><b>Medical Waivers</b>
                 </td>
             </tr>    
             <tr style="height:25px">
                 <td colspan="2" align="center" >
                     <input type="button" name="btn_ok" id="btn_ok" value="Submit" class="buttonbluestyle" style="width:80px;"   runat="server"  onclick="javascript:print_report();" />
                 </td>
             </tr>
             <tr style="height:30px">
                 <td colspan="2"></td>
             </tr> 
             <tr class="tr_common">
                 <td colspan="2" class="td_label">
                    <b>Please click 'IPP' button to retrieve all IPP related documents</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" name="btn_ipp" id="btn_ipp" value="IPP" class="buttonbluestyle" style="width:80px;"   runat="server"  
                    onclick="javascript:print_ipp();" />
                 </td>
             </tr> 
             <tr style="height:100px">
                 <td colspan="2"></td>
             </tr> 
        </table>
        </center>        
    </form>
</body>
</html>

