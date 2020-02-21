<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.ReportList.ReportConsumerEmployment" Codebehind="ReportConsumerEmployment.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
		<title>:::Client Employment Report:::...</title>		
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrytalRptResourceList" runat="server" AutoDataBind="true" />
    </div>
    </form>
</body>
</html>
