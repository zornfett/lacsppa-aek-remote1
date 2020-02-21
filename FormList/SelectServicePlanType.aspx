<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectServicePlanType.aspx.cs" Inherits="Virweb2.FormList.SelectServicePlanType" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base target="_self" />
        <title>::Choose the Report type::</title>
	    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript"  src="../js/common.js"></script>
        <script language="javascript">
		<!--
            function newform(tid, uci) {
                var opener = window.dialogArguments;
                switch (tid) {
                    case 1:
                        if (isIE()) {
                            opener.location.replace("FormIFSPInfoFDLRC.aspx?uci=" + uci + "&IFSPType=0&type=add");
                        }
                        else {
                            window.opener.location.replace("FormIFSPInfoFDLRC.aspx?uci=" + uci + "&IFSPType=0&type=add");
                        }
                        break;
                    case 2:
                        if (isIE()) {
                            opener.location.replace("FormIFSPInfoFDLRC.aspx?uci=" + uci + "&IFSPType=1&type=add");
                        }
                        else {
                            window.opener.location.replace("FormIFSPInfoFDLRC.aspx?uci=" + uci + "&IFSPType=1&type=add");
                        }
                        break;
                    case 3:
                        if (isIE()) {
                            opener.location.replace("FormTransitionFDLRC.aspx?uci=" + uci + "&type=add");
                        }
                        else {
                            window.opener.location.replace("FormTransitionFDLRC.aspx?uci=" + uci + "&type=add");
                        }
                        break;
                }
                self.close();
            }
		//-->
    </script>	 
</head>
<body>
    <form id="selectType" runat="server">
    <div>
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr class="tr_common">
                <td style="width: 200px"  class="td_label">
                    <b><asp:Label ID="Label3" runat="server" Text="Please select the Form Type you want to create:" ></asp:Label></b>
                </td>
            </tr>
            <tr  style="height:5px;">
                <td></td>
            </tr>
            <tr class="tr_common">
                <td class="td_label">
                    <asp:Radiobutton ID="ifsp_1" groupname="type" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>IFSP / Initial</b>
                    <br /> 
                    <asp:Radiobutton ID="ifsp_2" groupname="type" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>IFSP / Annual</b>
                    <br />        
                    <asp:Radiobutton ID="transition" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Transition Review</b>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
