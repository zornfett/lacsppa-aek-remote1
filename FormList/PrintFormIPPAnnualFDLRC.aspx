<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.PrintFormIPPAnnualFDLRC" Codebehind="PrintFormIPPAnnualFDLRC.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
		<title>:::Print Individual Program Plan:::...</title>
</head>
<body>
    <form id="formIPP" runat="server">
    <div>
         <CR:CrystalReportViewer ID="CrytalRpt" runat="server" AutoDataBind="true" />    
    </div>
    </form>
</body>
</html>

