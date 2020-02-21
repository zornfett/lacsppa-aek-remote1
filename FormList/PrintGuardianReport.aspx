<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.PrintGuardianReport" Codebehind="PrintGuardianReport.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
		<title>:::Print Colorado Court Report:::...</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrytalRptGuardian" runat="server" AutoDataBind="true" />    
    </div>
    </form>
</body>
</html>
