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
		};

// BOTTOM OF PAGE
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