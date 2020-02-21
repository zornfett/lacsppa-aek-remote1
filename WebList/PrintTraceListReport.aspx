
<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="PrintTraceListReport.aspx.cs" Inherits="Virweb2.PrintPage.PrintTraceListReport" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
		<title>:::Print Trace Info:::...</title>
</head>
<body>
    <form id="form" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrytalRpt" runat="server" AutoDataBind="true" />    
    </div>
    </form>
</body>
</html>
