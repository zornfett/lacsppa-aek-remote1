<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTSelFormTypeSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormMTSelFormTypeSCLARC" %>

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
            function newform(tid, rid) {
                var strURL = "";
                if (tid == 1) {
                    strURL = "FormMTDayProgramSCLARC.aspx?rid=" + rid + "&type=add";
                }
                else if (tid == 2) {
                    strURL = "FormMTDayProgramInfantSCLARC.aspx?rid=" + rid + "&type=add";
                }
                else if (tid == 3) {
                    strURL = "FormMTResidentialSCLARC.aspx?rid=" + rid + "&type=add";
                }
                else if (tid == 4) {
                    strURL = "FormMTCAPSCLARC.aspx?rid=" + rid + "&type=add";
                }
                else if (tid == 5)
                    strURL = "FormMTTransportationSCLARC.aspx?rid=" + rid + "&type=add";
                var opener = window.dialogArguments;
                if (isIE()) {
                    opener.location.replace(strURL);
                }
                else {
                    window.opener.location.replace(strURL);
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
       
                    <asp:Radiobutton ID="mt_1" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Annual Adult Day Program Review</b>
                    <br />
                    <asp:Radiobutton ID="mt_2" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Annual Infant Day Program Review</b>
                    <br /> 
                    <asp:Radiobutton ID="mt_3" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Residential Facility Monitoring</b>
                    <br /> 
                    <asp:Radiobutton ID="mt_4" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Corrective Action Plan (CAP)</b>
                    <br />
                    <asp:Radiobutton ID="mt_5" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Transportation Monitoring</b>
                    <br />  
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
