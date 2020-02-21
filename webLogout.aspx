<%@ Page Language="C#" Inherits="Virweb2.webLogout" Codebehind="webLogout.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::Virtual eChart Logout:::...</title>
    <script type="text/javascript" src="./js/common.js"></script>
    <script type="text/javascript">
        function ValOwnIDNotes() {
            //if (confirm("Would you like to validate all your Un-validated ID Notes ?"))
            var DspStr = "Would you like to validate all your Un-validated ID Notes ?";
            //var saveflag = window.showModalDialog("webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
            var saveflag = PromptSaveChangeUplevel(1, DspStr);
            if (saveflag == "1")
                window.top.document.location.replace('Logout.aspx?ValIDNotes=1');
            else
                window.top.document.location.replace('Logout.aspx?ValIDNotes=0');
        }
    </script>
</head>
<body id="body" runat="server">
    <form id="Logout" method="post" runat="server">
    </form>
</body>
</html>
