<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="PrintWebSupManageRpt.aspx.cs" Inherits="Virweb2.PrintPage.PrintWebSupManageRpt" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
		<title>:::Print Management Crystal Reports for Support Team:::...</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrytalRpt1" runat="server" AutoDataBind="true" />    
    </div>
    </form>
</body>
</html>

