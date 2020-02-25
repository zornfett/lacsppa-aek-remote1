<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webMain.aspx.cs" Inherits="Virweb2.webMain" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<html>
<head runat="server">

	<title>::Kea Live:::.....</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/flag-icon.min.css">
	<link rel="stylesheet" href="css/cs-skin-elastic.css">

	<link href="css/style.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" href="../css/style-2020a.css">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
   <%-- <script>
		function resizeIframe(obj) {
			alert(obj.contentWindow.document.body.scrollHeight);
			obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
		}
	</script>--%>
	<script type="text/JavaScript" src="js/common.js"></script>
	<script type="text/JavaScript" src="js/WebMain.js"></script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" style="overflow: hidden;"
	onbeforeunload="return submitforframe();" onkeydown="cancelBack();">
	<form id="frmMain" runat="server">
		<input type="hidden" name="UserType" id="UserType" runat="server" value="" />
		<table border="0" cellpadding="0" style="border-collapse: collapse; width: 100%;">
			<tr align="left" style="height: 30px;">
				<td colspan="2">
					<table border="0" cellpadding="0" style="border-collapse: collapse; width: 100%; height: 100%">
						<tr height="30px">
							<td width="1%"></td>
							<td align="left" width="79%">
								<asp:Image ID="titlelogo" runat="server" ImageUrl="img/logo/kea-live_text.jpg" Height="30px" Width="150px"></asp:Image>
							</td>
							<td width="17%" align="right">
								<asp:Image ID="poweredby" runat="server" ImageUrl="img/logo/pweredbykea.png" Height="25px" Width="200px" Visible="false"></asp:Image>
							</td>
							<td width="3%"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr align="left" style="height: 20px;">
				<td colspan="2">
					<table border="0" cellpadding="0" style="border-collapse: collapse; width: 100%; height: 100%">
						<tr height="20px">
							<td width="1%"></td>
							<td align="left" width="69%">&nbsp;&nbsp;  
							  <font color="#006FC0"><b>Account:</b>
								  <asp:Label ID="accountdesc" runat="server" Font-Bold="true"></asp:Label>
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>User:</b>
								  <asp:Label ID="username" runat="server" Font-Bold="true"></asp:Label>
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <asp:Label ID="clientinfo" runat="server" Font-Bold="True" ForeColor="#006666"></asp:Label>
							  </font>
							</td>
							<td width="25%" align="right">
								<font color="#006FC0">
									<asp:Label ID="pagetitle" runat="server" Font-Bold="true" Font-Size="Small" ForeColor="#660033" Text=""></asp:Label>
								</font>
							</td>
							<td width="5%"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr style="height: 2px">
				<td colspan="2" style="background-color: #137AC5"></td>
			</tr>
			<tr id="maindiv" valign="top" align="center" style="height: 850px; width: 100%;">
				<td valign="top" align="left" style="width: 10%; background-color: #EAF4FF">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
						<tr>
							<td style="height: 30px;"></td>
						</tr>
						<tr>
							<td>
								<table class="table_menu" style="width: 100%; height: 100%">
									<tr>
										<td width="20px"></td>
										<td style="vertical-align: top">

											<asp:Menu ID="mainMenu" runat="server"
												StaticMenuItemStyle-CssClass="MenuItem"
												StaticHoverStyle-CssClass="MenuItemHover"
												StaticSelectedStyle-CssClass="MenuItemSelected"
												DynamicMenuItemStyle-CssClass="DynamicMenuItem"
												DynamicHoverStyle-CssClass="MenuItemHover"
												StaticSubMenuIndent="0"
												StaticDisplayLevels="1" Width="100%" BackColor="#EAF4FF" DynamicMenuItemStyle-Width="180px" DynamicHoverStyle-Width="180px">
												<Items>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;HOME" NavigateUrl="javascript:Menu_Click(0);" ImageUrl="./img/home.ico"></asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client" NavigateUrl="javascript:Menu_Click(1);" ImageUrl="./img/clientlist.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Profile" NavigateUrl="javascript:Menu_Click(2);" ImageUrl="./img/profile.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client Record Template " NavigateUrl="javascript:Menu_Click(55);" ImageUrl="./img/profile.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Case Notes" NavigateUrl="javascript:Menu_Click(3);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Medical" NavigateUrl="javascript:Menu_Click(22);" ImageUrl="./img/medical.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Medicaid Waiver" NavigateUrl="javascript:Menu_Click(32);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;POS List" NavigateUrl="javascript:Menu_Click(29);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;SIR List" NavigateUrl="javascript:Menu_Click(30);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Document List" NavigateUrl="javascript:Menu_Click(19);" ImageUrl="./img/Documents.png" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;IFSP List" NavigateUrl="javascript:Menu_Click(52);" ImageUrl="./img/Documents.png" />
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;To Do List" NavigateUrl="javascript:Menu_Click(4);" ImageUrl="./img/tickler.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Form List" NavigateUrl="javascript:Menu_Click(6);" ImageUrl="./img/forms.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;ESR" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Intake" NavigateUrl="javascript:Menu_Click(34);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Psycho Social" NavigateUrl="javascript:Menu_Click(40);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Eligibility" NavigateUrl="javascript:Menu_Click(39);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Turning 3" NavigateUrl="javascript:Menu_Click(54);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Lanterman" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Intake" NavigateUrl="javascript:Menu_Click(35);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Psycho Social" NavigateUrl="javascript:Menu_Click(42);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Eligibility" NavigateUrl="javascript:Menu_Click(41);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Transfer" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Case Transfer" NavigateUrl="javascript:Menu_Click(36);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Unit Case Transfer" NavigateUrl="javascript:Menu_Click(43);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Statistics" NavigateUrl="javascript:Menu_Click(37);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Time Card" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Exempt Time Card" NavigateUrl="javascript:Menu_Click(38);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Non-Exempt Time Card" NavigateUrl="javascript:Menu_Click(44);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Mileage" NavigateUrl="javascript:Menu_Click(49);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Imaging" NavigateUrl="javascript:Menu_Click(46);" ImageUrl="./img/tickler.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;E-Forms" NavigateUrl="javascript:Menu_Click(45);" ImageUrl="./img/quicklinks2.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report List" NavigateUrl="javascript:Menu_Click(7);" ImageUrl="./img/reports.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tickler" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/admin.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client Tickler" NavigateUrl="javascript:Menu_Click(25);" ImageUrl="./img/tickler.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Vendor Tickler" NavigateUrl="javascript:Menu_Click(50);" ImageUrl="./img/tickler.ico" />
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Validate" NavigateUrl="javascript:Menu_Click(26);" ImageUrl="./img/IDNotes.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Resource" NavigateUrl="javascript:Menu_Click(33);" ImageUrl="./img/clientlist.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Profile" NavigateUrl="javascript:Menu_Click(47);" ImageUrl="./img/profile.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;ID Notes" NavigateUrl="javascript:Menu_Click(48);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Monitoring Tools/CAP" NavigateUrl="javascript:Menu_Click(53);" ImageUrl="./img/IDNotes.ico" />
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Messages" NavigateUrl="javascript:Menu_Click(27);" ImageUrl="./img/message.jpg" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Web Links" NavigateUrl="javascript:Menu_Click(8);" ImageUrl="./img/quicklinks2.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Settings" NavigateUrl="javascript:Menu_Click(9);" ImageUrl="./img/mysettings.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Billing" NavigateUrl="javascript:Menu_Click(28);" ImageUrl="./img/IDNotes.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Tickler" NavigateUrl="javascript:Menu_Click(31);" ImageUrl="./img/tickler.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Search" NavigateUrl="javascript:Menu_Click(10);" ImageUrl="./img/search.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report Generator" NavigateUrl="javascript:Menu_Click(20);" ImageUrl="./img/search.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Administration" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/admin.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Users" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/users.ico">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User List" NavigateUrl="javascript:Menu_Click(5);" ImageUrl="./img/users.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User Group" NavigateUrl="javascript:Menu_Click(11);" ImageUrl="./img/groups.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Labels" NavigateUrl="javascript:Menu_Click(12);" ImageUrl="./img/labels.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Account Settings" NavigateUrl="javascript:Menu_Click(13);" ImageUrl="./img/accountsettings.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tools" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/tools.ico">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Type" NavigateUrl="javascript:Menu_Click(14);" ImageUrl="./img/notetypes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Template" NavigateUrl="javascript:Menu_Click(15);" ImageUrl="./img/notetemplates.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Addendum" NavigateUrl="javascript:Menu_Click(23);" ImageUrl="./img/notetypes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Forms Management" NavigateUrl="javascript:Menu_Click(16);" ImageUrl="./img/formsmanagement.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report Management" NavigateUrl="javascript:Menu_Click(17);" ImageUrl="./img/reportsmanagement.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Announcement" NavigateUrl="javascript:Menu_Click(18);" ImageUrl="./img/announcements.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tracking" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/audit.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User Login" NavigateUrl="javascript:Menu_Click(24);" ImageUrl="./img/groups.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Event List" NavigateUrl="javascript:Menu_Click(21);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Access List" NavigateUrl="javascript:Menu_Click(51);" ImageUrl="./img/announcements.ico" />
														</asp:MenuItem>
													</asp:MenuItem>
												</Items>
											</asp:Menu>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td valign="top" align="center" style="width: 90%;">
					<!--TONY FIX IFRAME FOR CROSS Browser style="height:calc(100% - 10px); width: 100%" -->
					<iframe frameborder="1"  src="webPartsMain.aspx" marginwidth="5"
						marginheight="2" scrolling="yes" id="mainlist" runat="server" ></iframe>
				</td>
			</tr>
			<tr style="height: 20px">
				<td colspan="2" bgcolor="#99CCFF" align="center">KeaSystems</td>
			</tr>
		</table>
	</form>
	<div id="bg" runat="server">
	</div>
	<div id="OnCallTrxDiv" style="overflow: auto;" runat="server">
		<iframe src="WebList/webOnCallTrxList.aspx" style="width: 100%; height: 100%; OUTLINE: 2PX DOTTED BLUE;" />
	</div>
</body>
</html>
