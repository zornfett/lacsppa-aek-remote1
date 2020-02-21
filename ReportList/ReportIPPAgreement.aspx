<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.ReportList.ReportIPPAgreement" Codebehind="ReportIPPAgreement.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
		<title>:::Individual Program Plan Addendum Agreement:::...</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" /> 
    </div>
    </form>
</body>
</html>