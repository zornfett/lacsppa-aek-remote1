<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.ReportList.PrintFairHearingStat1" Codebehind="PrintFairHearingStat1.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <title>:::Fair Hearing Statistic Report 1:::...</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrytalRpt1" runat="server" AutoDataBind="true" />
        </div>
    </form>
</body>
</html>
