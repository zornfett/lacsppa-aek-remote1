<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.PrintConsumerSANDIS" Codebehind="PrintConsumerSANDIS.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
		<title>:::Print Client Info:::...</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrytalRpt1" runat="server" AutoDataBind="true" 
        PrintMode="ActiveX"
        DisplayToolbar="True"
        EnableDatabaseLogonPrompt="False"
        HasCrystalLogo="False"
        HasDrillUpButton="False"
        HasPrintButton="True"
        HasToggleGroupTreeButton="False"
        HasExportButton="false"
       />    
    </div>
    </form>


    <script type="text/javascript">
        $(document).ready(function () {
             
            <%-- remove built-in print button behavior --%>
            $('#<%=CrytalRpt1.ClientID%>_toptoolbar_print').prop("onclick", null).attr("onclick", null);
            <%-- add our own print button behavior --%>
            $('#<%=CrytalRpt1.ClientID%>_toptoolbar_print').click(function() {
                jsWebClientPrint.print('printerName=' + $('#ddlClientPrinters').val()); 
            });
 
 
            $('#<%=CrytalRpt1.ClientID%>_toptoolbar_print').parent().parent().prepend('<select name="ddlClientPrinters" id="ddlClientPrinters" class="comboEditable" title="Select Printer"><option>Loading printers...</option></select>');
             
 
            <%-- load client printers through WebClientPrint --%>
            jsWebClientPrint.getPrinters();
 
             
        });
 
        <%-- Time delay we'll wait for getting client printer names --%>
        var wcppGetPrintersDelay_ms = 5000; //5 sec
 
        function wcpGetPrintersOnSuccess(){
            <%-- Display client installed printers --%>
            if(arguments[0].length > 0){
                var p=arguments[0].split("|");
                var options = '<option>Default Printer</option>';
                for (var i = 0; i < p.length; i++) {
                    options += '<option>' + p[i] + '</option>';
                }
                $('#ddlClientPrinters').html(options);                                            
            }else{
                alert("No printers are installed in your system.");
            }
        }
 
        function wcpGetPrintersOnFailure() {
            <%-- Do something if printers cannot be got from the client --%>
            alert("No printers are installed in your system.");
        }
 
    </script>
 

</body>
</html>