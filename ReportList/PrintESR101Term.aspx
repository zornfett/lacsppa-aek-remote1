<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.PrintESR101Term" Codebehind="PrintESR101Term.aspx.cs" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <title>:::ESR 101 Terminated List:::...</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrytalRpt1" runat="server" AutoDataBind="true" />
        </div>
    </form>
</body>
</html>