<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTSelFormType.aspx.cs" Inherits="Virweb2.FormList.FormMTSelFormType" %>

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
                if (tid == 3) {
                   if (document.selectType.DefRegName.value=="FDLRC")
                       strURL = "FormMTDayProgramFDLRC.aspx?rid=" + rid + "&type=add";
                   else
                       strURL = "FormMTDayProgramSCLARC.aspx?rid=" + rid + "&type=add";
                }
                //if (tid == 7)
                //    strURL = "FormMTCapFDLRC.aspx?rid=" + rid + "&type=add";
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
    <asp:HiddenField ID="DefRegName" runat="server" Value="" />
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
                        <b>Unannounced Annual Review</b>
                    <br /> 
                    <asp:Radiobutton ID="mt_2" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Corrective Action Plan (CAP)</b>
                    <br />        
                    <asp:Radiobutton ID="mt_3" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Annual Day Program Review</b>
                    <br />        
                    <asp:Radiobutton ID="mt_4" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Unannounced Visit</b>
                    <br /> 
                    <asp:Radiobutton ID="mt_5" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Work Program Compliance Review</b>
                    <br />        
                    <asp:Radiobutton ID="mt_6" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>SLS Quality Assurance Evaluation Report</b>
                    <br />        
                    <asp:Radiobutton ID="mt_7" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton>
                        <b>Independent Living Program Review</b>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
