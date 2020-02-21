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
	<script type="text/javascript">
	   
		function HoverParents(id, parentSnake) {
			Menu_HoverDynamic(document.getElementById(id));
			var parents = parentSnake.toString().split(',');
			for (i = 0; i < parents.length; i++) { 
				if (parents[i] != '') {
					Menu_HoverDynamic(document.getElementById(parents[i]));
				}
			}
		}

		function UnhoverParents(id, parentSnake) {
			Menu_Unhover(document.getElementById(id));

			var parents = parentSnake.toString().split(',');
			for (i = 0; i < parents.length; i++) {
				if (parents[i] != '') {
					Menu_Unhover(document.getElementById(parents[i]));
				}
			}
		}

		var menuon = 1;
		function bg_all_open() {
			for (var i = 0; i <= 10; i++) {
				whichEl = eval("title" + i);
				whichEl.style.backgroundColor = "white";
			}
		}

		function bg_all_close() {
			for (var i = 0; i <= 10; i++) {
				whichEl = eval("title" + i);
				whichEl.style.backgroundColor = "";
			}
		}

		function bg_change(tid) {
			/*
				if (tid == 0)
					bg_all_open();
				else 
				{
					bg_all_close();
		
					whichEl = eval("title" + tid);
					whichEl.style.backgroundColor = "white";
				}
			*/
		}

		function togglemenu() {
			/*
				if (menuon == 0)
					showmenu();
				else
					closemenu();
			*/
		}

		function closemenu() {
			menuon = 0;
			menuimg.style.background = "url('img/menuoff.gif')";
			for (var i = 1; i <= 10; i++) {
				whichEl = eval("title" + i);
				whichEl.style.display = "none";
			}
		}

		function showmenu() {
			menuon = 1;
			menuimg.style.background = "url('img/menuon.gif')";
			for (var i = 1; i <= 10; i++) {
				whichEl = eval("title" + i);
				whichEl.style.display = "";
			}
		}

		function Menu_Click(MenuID) {
			switch (MenuID) {
				case 0: //Home
					//Menu0.style.color="aqua";  // orange, aqua
					document.getElementById("mainlist").src = "webPartsMain.aspx";
					//window.mainlist.location.replace("https://www.earlystartcalifornia.org");
					break;
				case 1: //Client list
					//Menu1.style.color="aqua"; 
					document.getElementById("mainlist").src = "weblist/webConsumerList.aspx";
					break;
				case 2: //Client profile
					//Menu2.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webConsumerInfo.aspx";
					//popupDialogWide("weblist/webConsumerInfo.aspx");
					break;
				case 3: //Client casenotes
					//Menu3.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webIDNotesListComp.aspx";
					//window.mainlist.location.replace("weblist/webIDNotesListSCLARC.aspx");
					break;
				case 301: // for xixsrv
					// Menu3.style.color="aqua";
					document.getElementById("mainlist").src = "weblist/webIDNotesInfo.aspx?type=add";
					// window.mainlist.location.replace("weblist/webIDNotesInfoSCLARC.aspx?type=add");
					break;
				case 4: //ToDoList
					//Menu4.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webClewMessage.aspx";
					break;
				case 5: //UserList
					//Menu5.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmUserList.aspx";
					break;
				case 6: //FormList
					//Menu6.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webForms.aspx";
					break;
				case 7: //ReportList
					//Menu7.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webReports.aspx";
					break;
				case 8: //LinkList
					//Menu8.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webLinkList.aspx";
					break;
				case 9: //UserSet
					//Menu9.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webMySetting.aspx";
					break;
				case 10: //Saved Search
					//Menu10.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webSearch.aspx?Searchflag=1";
					break;
				case 11: // user group
					//Menu11.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmUserGroupList.aspx";
					break;
				case 12: // label
					//Menu12.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmSetLabelSetsList.aspx";
					break;
				case 13: // Account setting
					//Menu13.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmAccountSet.aspx";
					break;
				case 14: // CaseNote Type
					//Menu14.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmSetIDNotesType.aspx";
					break;
				case 15: // CaseNote Temp
					//Menu15.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmSetIDNotesTemp.aspx";
					break;
				case 16: // Form setting
					//Menu16.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmFormsSet.aspx";
					break;
				case 17: // Report setting
					//Menu17.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmReportsSet.aspx";
					break;
				case 18: // Message Setting
					//Menu18.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmStatusMessage.aspx";
					break;
				case 19: // Document list IPP List for SCLARC
					//Menu19.style.color="aqua";
					document.getElementById("mainlist").src = "weblist/webImageList.aspx";
					break;
				case 191: // for xixsrv
					// Menu19.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormIPPListSCLARC.aspx";
					break;
				case 192: // for xixsrv
					// Menu19.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormIPPListFDLRC.aspx";
					break;
				case 20: //REport Generator
					//Menu20.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webSearchReport.aspx?Searchflag=1";
					break;
				case 21: //Event List
					//Menu21.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webEventList.aspx";
					break;
				case 22: //Medical Page
					//Menu22.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webMedicalInfo.aspx";
					break;
				case 23: // CaseNote Addendum
					//Menu23.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmSetIDNotesAddendum.aspx";
					break;
				case 24: // User Login Tracking
					//Menu24.style.color="aqua";       
					document.getElementById("mainlist").src = "AdmPage/AdmTraceLogInfo.aspx";
					break;
				case 25: // Tickler
					//Menu25.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webTicklerSCLARC.aspx";
					break;
				case 26: // for xixsrv validated notes
					// Menu26.style.color="aqua";
					//window.mainlist.location.replace("weblist/webIDNotesListSCLARC.aspx?validated=1");
					document.getElementById("mainlist").src = "weblist/webIDNotesList.aspx?validated=1";
					break;
				case 27: // Message page 
					// Menu27.style.color="aqua";
					document.getElementById("mainlist").src = "weblist/webMessager.aspx";
					break;
				case 28: // Billing page 
					// Menu28.style.color="aqua";
					document.getElementById("mainlist").src = "weblist/webBillingReport.aspx";
					break;
				case 29: // POS List 
					// Menu29.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormPosList.aspx";
					break;
				case 30: // SIR List 
					// Menu30.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormSirList.aspx";
					break;
				case 31: //  My Ticket List 
					// Menu31.style.color="aqua";
					document.getElementById("mainlist").src = "webList/webTicklerTaskList.aspx";
					break;
				case 32: //  MWE (DS 3700)  
					// Menu32.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormMWEList.aspx";
					break;
				case 33: //  Resource List  
					// Menu33.style.color="aqua";
					document.getElementById("mainlist").src = "webList/webResourceList.aspx";
					break;
				case 34: //  Intake/ESR  
					// Menu34.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/Form101ListER.aspx";
					break;
				case 35: //  Intake/Lanterman  
					// Menu35.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/Form101List.aspx";
					break;
				case 36: //  Case Transfers 
					// Menu36.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormTransCaseLogList.aspx";
					break;
				case 37: //  Statistics  
					// Menu37.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormSCMonthly.aspx";
					break;
				case 38: //  Exempt Time Card  
					// Menu38.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormTimecardListExempt.aspx";
					break;
				case 39: //  ESR Eligibility  
					// Menu39.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormESREligibilityList.aspx";
					break;
				case 40: //  ESR Psycho Social   
					// Menu40.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormESRPsychoSocialList.aspx";
					break;
					//case 401: //  ESR Psycho Social for FDLRC   
					// Menu40.style.color="aqua";
					//    window.mainlist.location.replace("FormList/FormESRPsychoSocialFDLRC.aspx"); 
					//    break;
				case 41: //  Lanterman Eligibility  (BlueSheet)
					// Menu41.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormBLUESHEETList.aspx";
					break;
				case 42: //  Lanterman Psycho Social 
					// Menu42.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormPsychoSocialList.aspx";
					break;
					//case 421: //  Lanterman Psycho Social For FDLRC 
					//    // Menu42.style.color="aqua";
					//    window.mainlist.location.replace("FormList/FormPsychoSocialFDLRC.aspx");
					//    break;
				case 43: //  Unit Case Transfers  
					// Menu43.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormTransCaseLogListUnit.aspx";
					break;
				case 44: //  Non-Exempt Time Card  
					// Menu44.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormTimecardList.aspx";
					break;
				case 45: //  EForm PDF  
					// Menu45.style.color="aqua";
					//window.mainlist.location.replace("PdfFormFrame.aspx");
					break;
				case 46: //  Image Appxtender  
					// Menu46.style.color="aqua";
					winhref("http://ax/AppXtender/Login.aspx", "ImageLink");
					break;
				case 47: //  Resource Profile  
					// Menu47.style.color="aqua";
					document.getElementById("mainlist").src = "webList/webResourceInfo.aspx";
					break;
				case 48: //  Resource casenotes  
					// Menu48.style.color="aqua";
					document.getElementById("mainlist").src = "webList/webResIDNotesInfo.aspx?type=add";
					break;
				case 49: //  Milage  
					// Menu49.style.color="aqua";
					winhref("file:///S:/Template Folder/Travel Expense Form version11 010608.xsn", "Milage");
					break;
				case 50: // Vendor Tickler SCLARC
					//Menu50.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webTicklerResSCLARC.aspx";
					break;
				case 501: // Vendor Tickler FDLRC
					//Menu50.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webTicklerResFDLRC.aspx";
					break;
				case 51: // Access List
					//Menu51.style.color="aqua";       
					document.getElementById("mainlist").src = "weblist/webAccessList.aspx";
					break;
				case 52: // for IFSP List
					// Menu52.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormIFSPListSCLARC.aspx";
					break;
				case 521: // for IFSP List
					// Menu52.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormIFSPListFDLRC.aspx";
					break;
				case 53: // for MT/CAP List
					// Menu53.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormMTList.aspx";
					break;
				case 54: // for ES turning
					// Menu54.style.color="aqua";
					document.getElementById("mainlist").src = "FormList/FormESRTurning3List.aspx";
					break;
				case 55: // client template records
					// Menu54.style.color="aqua";
					//document.getElementById("mainlist").src = "ReportList/ReportClientTemplateRecord.aspx";

					popupDialogWide("ReportList/ReportClientTemplateRecord.aspx");
					break;
				default: // do nothing
					break;
			}
		}

		function submitforframe() {
			var frame = window.frames["mainlist"];
			var form = frame.document.forms[0];
			if (form != null) {
				var a = form.hdtoSaveData;
				if (a != null) {
					if (frame.SubmitOnClose()) {
						if (a.value == "") {
							return "You have made changes on this page that you have not yet confirmed. If you navigate away from this page you will lose your unsaved changes";
						}
						else {
							form.submit();
							if (a.value != "DeleteDraft")
								alert("Update Successful!");
							else
								alert("Draft IDNote has been deleted");
						}
					}
				}
			}
		}

		function outsidelinks(type) {
			if (type == 1)
				//winhref("http://keasystems.kayako.com", "Support");
				winhref("http://www.kea-live.com/knowledgebase", "Support");
			else if (type == 2) {
				//winhref("../HelpFile/VIRTUALeCHARTUsersManual.pdf", "Help");
				var strUserType = document.frmMain.UserType.value;
				var DivNameStr = "";
				var DivName = window.frames["mainlist"].document.getElementById('now_div_flag');
				if (DivName != null) {
					DivNameStr = DivNameStr + "_" + DivName.value;
					var DivConsumer = window.frames["mainlist"].document.getElementById('now_div_name');
					if (DivConsumer != null) {
						if (DivName.value == "2") {
							var DivSubLFName = window.frames["mainlist"].document.getElementById('now_div_LF_flag');
							if (DivSubLFName != null) DivNameStr = DivNameStr + "_" + DivSubLFName.value;
						}
						if (DivName.value == "11") {
							var DivSubAFName = window.frames["mainlist"].document.getElementById('now_div_AF_flag');
							if (DivSubAFName != null) DivNameStr = DivNameStr + "_" + DivSubAFName.value;
						}
					}
				}
				var HelpStr = "../HelpFile/" + window.top.document.getElementById('pagetitle').innerHTML + DivNameStr + ".docx";
				var HelpDoc = window.top.document.getElementById('pagetitle').innerHTML + DivNameStr + ".docx";
				if (strUserType == "A") {
					popupDialogTiny("webAdmHelpPage.aspx?IsAdmin=1&HelpUrl=" + HelpDoc);
				}
				else {
					//winhref(HelpStr, "Help");
					popupDialogTiny("webAdmHelpPage.aspx?IsAdmin=0&HelpUrl=" + HelpDoc);
				}
			}
			else if (type == 3)
				winhref("./HelpFile/VIRTUALeCHARTUsersManual.pdf", "Help");
		}
		function showdiv() {
			document.getElementById("bg").style.display = "block";
			document.getElementById("OnCallTrxDiv").style.display = "block";
		}
		function hidediv() {
			document.getElementById("bg").style.display = 'none';
			document.getElementById("OnCallTrxDiv").style.display = 'none';
		}


	</script>
	<style type="text/css">
		#bg {
			display: block;
			position: absolute;
			top: 0%;
			left: 0%;
			width: 100%;
			height: 100%;
			background-color: black;
			z-index: 1001;
			-moz-opacity: 0.7;
			opacity: 0.7;
			filter: alpha(opacity=70);
		}

		#OnCallTrxDiv {
			display: block;
			position: absolute;
			top: 10%;
			left: 10%;
			width: 80%;
			height: 80%;
			padding: 8px;
			border: 8px solid #E8E9F7;
			background-color: white;
			z-index: 1002;
			overflow: auto;
		}
	</style>
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
		<iframe src="WebList/webOnCallTrxList.aspx" style="width: 100%; height: 100%;" />
	</div>
	<script type="text/javascript">
		$(document).ready(function () {
			onloadsizechg(75);
		});

		function onloadsizechg(spaceline) {
			var myWidth = 0, myHeight = 0;
			if (typeof (window.innerWidth) == 'number') {
				//Non-IE
				myWidth = window.innerWidth;
				myHeight = window.innerHeight;
			}
			else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
				//IE 6+ in 'standards compliant mode'
				myWidth = document.documentElement.clientWidth;
				myHeight = document.documentElement.clientHeight;
			}
			else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
				//IE 4 compatible
				myWidth = document.body.clientWidth;
				myHeight = document.body.clientHeight;
			}

			//document.getElementById('maindiv').style.height = myHeight - spaceline + 300;
			document.getElementById('maindiv').style.height = myHeight;

		}
	</script>
</body>
</html>
