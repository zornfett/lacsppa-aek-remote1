<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPSelPlanTypeSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPSelPlanTypeSCLARC" %>

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
                var strURL = "FormIFSPInfoSCLARC.aspx?uci=" + uci + "&IFSPType=" + tid + "&type=add";
                if ((tid == 2) || (tid == 6)) {
                    var DspStr = "Do you want to copy the information from previous IFSP ?";
                    //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
                    var saveflag = PromptSaveChange(1, DspStr);
                    if (saveflag == "1")
                        strURL = strURL + "&CopyPrev=1";
                }
                if (tid == 5)
                    strURL = "FormIFSPExitSCLARC.aspx?uci=" + uci + "&IFSPType=" + tid + "&type=add";
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
                    <asp:Radiobutton ID="ifsp_1" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Initial IFSP</b>
                    <br /> 
                    <asp:Radiobutton ID="ifsp_2" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton><b>IFSP Annual 1</b>
                    <br />        
                    <asp:Radiobutton ID="ifsp_3" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton><b>IFSP Annual 2</b>
                    <br />        
                    <asp:Radiobutton ID="ifsp_4" groupname="type" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Exit IFSP</b>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
