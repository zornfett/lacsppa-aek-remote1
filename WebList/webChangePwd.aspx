<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webChangePwd.aspx.cs" Inherits="Virweb2.WebList.webChangePwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <title>Change Password</title>
    <script type="text/javascript" src="Scripts/common.js"></script>
	<link href="css/style.css" type="text/css" rel="stylesheet" />
    <script language="javascript">
    <!--
        function submit_click() {
            if (JTrim(document.getElementById("txt_oldpassword").value) == "") {
                alert("Please enter your old password!");
                return false;
            }
            if (JTrim(document.getElementById("txt_newpassword").value) == "") {
                alert("Please enter your new password!");
                return false;
            }
            if (JTrim(document.getElementById("txt_valipassword").value) == "") {
                alert("Please enter your new password again to confirm!");
                return false;
            }
            var newpassword=JTrim(document.getElementById("txt_newpassword").value);
            if (newpassword.length < 6) {
                alert("The new password must have at least 6 characters");
                return false;
            }
            if (JTrim(document.getElementById("txt_newpassword").value) != JTrim(document.getElementById("txt_valipassword").value)) {
                alert("The confirming password does not match the new password you entered");
                return false;
            }
            return true;
         
        }

    //-->
    </script>
</head>
<body >
    <form id="form1" runat="server">
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align=center valign=bottom>
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Change User Password</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align=left valign=middle>
	        <td width=500px>
			</td>
			<td width=300px>
		  	  <asp:button id="btnEdit" Runat="server" Text="Change Password" 
                    CssClass="buttonbluestyle" Width="159px" onclick="btnEdit_Click"></asp:button>			 
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
        <div align=center style="position:relative;WIDTH:100%; height:300px; overflow: auto " >
             <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 70%">
				<tr style="height:30px">
				   <td><b>Login Name:</b></td>
                   <td align="left"><asp:label id="loginname" runat="server" CssClass="infaceText"></asp:label></td>
			    </tr>
               <tr style="height:30px">
                    <td><b>Old Password:</b></td>
                     <td align="left"><asp:textbox id="txt_oldpassword" runat="server" Width="200" TextMode="password" ></asp:textbox></td>
                </tr>
               <tr style="height:30px">
                    <td><b>New Password:</b></td>
                     <td align="left"><asp:textbox id="txt_newpassword" runat="server" Width="200" TextMode="password" ></asp:textbox></td>
                </tr>
                <tr style="height:30px">
                    <td><b>Confirm New Password:</b></td>
                     <td align="left"><asp:textbox id="txt_valipassword" runat="server" Width="200" TextMode="password" ></asp:textbox></td>
                </tr>
                
        </div>
    </form>
</body>
</html>
