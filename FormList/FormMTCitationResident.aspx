<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTCitationResident.aspx.cs" Inherits="Virweb2.FormList.FormMTCitationResident" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html >
<head id="Head1" runat="server">
    <base TARGET="_self" /> 
    <title>Citation</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript">
        function Refresh_Data(flag) {
            var opener = window.dialogArguments;
            if (isIE()) {
                opener.RefreshCitationData(this.Citation.CitationID.value, this.Citation.QNo.value);
            }
            else {
                window.opener.RefreshCitationData(this.Citation.CitationID.value, this.Citation.QNo.value);
            }
            if (flag == 1) {
                window.close();
            }
            else {
                window.focus();
            }
        }

        function ChkType1() {
            if (document.Citation.Chk_Type1.checked)
                DivC56053.style.display = "";
            else DivC56053.style.display = "none";
            
            return false;
        }

        function ChkType2() {
            if (document.Citation.Chk_Type2.checked)
                DivC56054.style.display = "";
            else DivC56054.style.display = "none";
            
            return false;
        }

        function ChkType3() {
            if (document.Citation.Chk_Type3.checked)
                DivTitle22.style.display = "";
            else DivTitle22.style.display = "none";
            
            return false;
        }

        function ChkType4() {
            if (document.Citation.Chk_Type4.checked)
                DivOther.style.display = "";
            else DivOther.style.display = "none";
            
            return false;
        }
    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="Citation" runat="server"> 
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="CitationID" runat="server" value="" />
    <asp:hiddenfield id="FormType" runat="server" value="" />
    <asp:hiddenfield id="MTID" runat="server" value="" />
    <asp:hiddenfield id="QNo" runat="server" value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="99%" >
            <tr style="height: 10px;">
                <td colspan="2">
                </td>
            </tr>
	        <tr style="height: 25px;" align="center" valign="bottom">
	            <td style="width:600px">
	                <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">CITATION(S)</asp:label> 
	            </td>
			    <td>
		  	        <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnAdd_Click">		        
                    </asp:ImageButton>
                    &nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" 
                    onclick="winhref('./Report/PrintMTCitationResident.pdf','PrintMTCitationResident');return false;" />		        
                </td>
		    </tr>				
		    <tr style="height: 25px;">
                <td colspan="2">
                </td>
            </tr>
		</table>
		</div>
	    <div id="maindiv" runat="server" align="center" valign="top" style="position:relative;WIDTH:99%; " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr>
                <td class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="table_inside">
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <asp:Label ID="Label3" runat="server" Width="100px" Font-Bold="True" Text="Citation:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <b><asp:Checkbox ID="Chk_Type1" runat="server" Text="Immediate Danger T17 56053" onclick="ChkType1();" ></asp:Checkbox></b>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label">
                                <div id="DivC56053" style="display:none;">
                                    <b><asp:Checkbox ID="Ca0" runat="server" Text=""></asp:Checkbox>
                                    (a) Situations which come to the attention of, or are reported to, the regional center and which appear to constitute an immediate danger shall be investigated immediately following the notification. Situations which shall be investigated include but are not limited to:</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca1" runat="server" Text=""></asp:Checkbox>
                                    (1) Life threatening structural conditions</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca2" runat="server" Text=""></asp:Checkbox>
                                    (2) Suspicion or allegations of abuse of a consumer</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca3" runat="server" Text=""></asp:Checkbox>
                                    (3) A consumer(s) in the facility with no direct supervision unless there is an IPP objective and waiver or exception, approved pursuant to Title 22, California Code of Regulations, Section 80024</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca4" runat="server" Text=""></asp:Checkbox>
                                    (4) Failure to provide a consumer(s) with a medically prescribed special diet(s); or</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca5" runat="server" Text=""></asp:Checkbox>
                                    (5) The presence of an individual exhibiting aggressive or assaultive behavior which is life threatening to self or others.</b><br />
                                    <b><asp:Checkbox ID="Cb" runat="server" Text=""></asp:Checkbox>
                                    (b) When the regional center determines that the purpose of the visit would be thwarted if advance notice were given, the regional center shall have the authority to make an unannounced visit to the facility to verify the existence of the immediate danger.</b><br />     
                                    <b><asp:Checkbox ID="Cc0" runat="server" Text=""></asp:Checkbox>
                                    (c) In cases of alleged consumer abuse, the regional center shall</b><br />                          
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cc1" runat="server" Text=""></asp:Checkbox>
                                    (1) Immediately forward any allegations regarding consumer abuse to the applicable protective services agency; and</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cc2" runat="server" Text=""></asp:Checkbox>
                                    (2) Cooperate with the investigating agency as requested</b><br />                   
                                    <b><asp:Checkbox ID="Cd0" runat="server" Text=""></asp:Checkbox>
                                    (d) Immediately after verifying that a situation exists which constitutes an immediate danger, the regional center shall take the following actions:</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cd1" runat="server" Text=""></asp:Checkbox>
                                    (1) Meet with the administrator to describe the situation(s) which constitutes the immediate danger; and</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cd2" runat="server" Text=""></asp:Checkbox>
                                    (2) Notify the Department of Social Service's Community Care Licensing Division district office of the conditions which constitute the immediate danger.</b><br />            
                                    <b><asp:Checkbox ID="Ce0" runat="server" Text=""></asp:Checkbox>
                                    (e) The regional center shall determine whether the immediate danger can be corrected within 24 hours of verification.</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ce1" runat="server" Text=""></asp:Checkbox>
                                    (1) When the immediate danger cannot be corrected within 24 hours of verification, the regional center shall initiate the emergency relocation of the consumer(s) subject to the immediate danger.</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ce2" runat="server" Text=""></asp:Checkbox>
                                    (2) When the immediate danger can be corrected within 24 hours of verification, and the safety of the consumer(s) can be assured, the regional center shall verify that the correction of the immediate danger has occurred.</b><br />                   
                                    <b><asp:Checkbox ID="CA" runat="server" Text=""></asp:Checkbox>
                                    (A) The regional center shall verify the correction of the immediate danger within 24 hours of notification by the facility that the immediate danger has been corrected.</b><br />                   
                                    <b><asp:Checkbox ID="Cf" runat="server" Text=""></asp:Checkbox>
                                    (f) The regional center shall document all actions taken pursuant to subsections (a) through (e) above.</b><br />                   
                                <hr />
                                </div>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <asp:Label ID="Label4" runat="server" Width="100px" Font-Bold="True" Text="Citation:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <b><asp:Checkbox ID="Chk_Type2" runat="server" Text="Substantial Inadequacy T17 56054" onclick="ChkType2();"></asp:Checkbox></b>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label">
                                <div id="DivC56054" style="display:none;">
                                    <b><asp:Checkbox ID="C1" runat="server" Text=""></asp:Checkbox>
                                    (1)Conditions posing a threat to the health and safety of any consumer, that are not considered an immediate danger as specified in Section 56053 ;</b><br />
                                    <b><asp:Checkbox ID="C2" runat="server" Text=""></asp:Checkbox>
                                    (2) Provision of fewer direct care staff hours than are required by the facility's approved service level;</b><br />
                                    <b><asp:Checkbox ID="C3" runat="server" Text=""></asp:Checkbox>
                                    (3) Violations of consumer's rights as defined in Section 56002 (a)(8);</b><br />
                                    <b><asp:Checkbox ID="C4" runat="server" Text=""></asp:Checkbox>
                                    (4) Failure to provide consumer services as specified in the consumer's IPP</b><br />
                                    <b><asp:Checkbox ID="C5" runat="server" Text=""></asp:Checkbox>
                                    (5) Failure to comply with the terms of the consumer's Admission Agreement</b><br />
                                    <b><asp:Checkbox ID="C6" runat="server" Text=""></asp:Checkbox>
                                    (6) Deficiencies or irregularities in the handling of the consumer's cash resources, personal property, and valuables;</b><br />
                                    <b><asp:Checkbox ID="C7" runat="server" Text=""></asp:Checkbox>
                                    (7) Failure to comply with the requirements for administrator and staff qualifications and/or administrator and staff training;</b><br />
                                    <b><asp:Checkbox ID="C8" runat="server" Text=""></asp:Checkbox>
                                    (8) Failure of a Service Level 4 facility to utilize the instructional methods and techniques which are specified in the facility's program design;</b><br />
                                    <b><asp:Checkbox ID="C9" runat="server" Text=""></asp:Checkbox>
                                    (9) Failure of a Service Level 4 facility to utilize the methodology for measurement of consumer progress toward achievement of IPP objectives which is specified in the facility's program design;</b><br />
                                    <b><asp:Checkbox ID="C10" runat="server" Text=""></asp:Checkbox>
                                    (10) Failure to take a required action pursuant to Section 56052 within the specified timeframe;</b><br />
                                    <b><asp:Checkbox ID="C11" runat="server" Text=""></asp:Checkbox>
                                    (11) Failure to (A) File an accurate and complete report verifying the use of rate increase funds authorized by Welfare and Institutions Code Section 4681.4(a) or (b) as required by Title 17, California Code of Regulations, Section 56934(a) ;</b><br />
                                    <b><asp:Checkbox ID="C11b" runat="server" Text=""></asp:Checkbox>
                                    (11) Failure to (B) Utilize Welfare and Institutions Code Section 4681.4 (a) or (b) rate increase funds for the purposes specified in Title 17, California Code of Regulations, Section 56932 (a)(1) through (3);</b><br />
                                    <b><asp:Checkbox ID="C11c" runat="server" Text=""></asp:Checkbox>
                                    (11) Failure to (C) UtilizeWelfare and Institutions Code Section 4681.4 (a) or (b) rate increase funds for a purpose which has been approved by the Department pursuant to Title 17, California Code of Regulations, Section 56932(a)(4)</b><br />
                                    <b><asp:Checkbox ID="C12" runat="server" Text=""></asp:Checkbox>
                                    (12) Failure to ensure that a direct care staff (A) Completes the competency-based training and testing required by Section 56033 (a)(1) or (2);</b><br />
                                    <b><asp:Checkbox ID="C12b" runat="server" Text=""></asp:Checkbox>
                                    (12) Failure to ensure that a direct care staff (B) Completes any additional training required by Section 56033 (d)(2);</b><br />
                                    <b><asp:Checkbox ID="C12c" runat="server" Text=""></asp:Checkbox>
                                    (12) Failure to ensure that a direct care staff complies with Section 56033 (f)(1) or (2) when the direct care staff has failed to satisfactorily complete the competency-based training and competency testing.</b><br />
                                    <b><asp:Checkbox ID="C13" runat="server" Text=""></asp:Checkbox>
                                    (13) Failure to report special incidents pursuant to Section 54327 (b) When the regional center receives a report that there are substantial inadequacies in the services of a facility, or when the regional center discovers that there are substantial inadequacies in the services of a facility, the regional center shall have the authority to make an unannounced visit(s) to the facility.</b><br />
                                <hr />
                                </div>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <asp:Label ID="Label5" runat="server" Width="100px" Font-Bold="True" Text="Citation:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <b><asp:Checkbox ID="Chk_Type3" runat="server" Text="Title 22" onclick="ChkType3();" ></asp:Checkbox></b>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label">
                                <div id="DivTitle22" style="display:none;">
                                    <b><asp:Checkbox ID="T1" runat="server" Text=""></asp:Checkbox>
                                    T22-80072: Clients are treated with respect, afforded dignity and privacy and free from intimidation.</b><br /> 
                                    <b><asp:Checkbox ID="T2" runat="server" Text=""></asp:Checkbox> 
                                    T22-80072: Clients rights to select a facility is honored.</b><br />  
                                    <b><asp:Checkbox ID="T3" runat="server" Text=""></asp:Checkbox>
                                    T22-80072: Clients rights are posted.</b><br />  
                                    <b><asp:Checkbox ID="T4" runat="server" Text=""></asp:Checkbox>
                                    T22-80072: The denial of clients’ rights and SIR’s are properly documented.</b><br /> 
                                    <b><asp:Checkbox ID="T5" runat="server" Text=""></asp:Checkbox> 
                                    T22-80076: Adequate and nutritious meals and snacks are served.</b><br /> 
                                    <b><asp:Checkbox ID="T6" runat="server" Text=""></asp:Checkbox>
                                    T22-83076: Food supply is adequate and free from contamination and spoilage</b><br /> 
                                    <b><asp:Checkbox ID="T7" runat="server" Text=""></asp:Checkbox>
                                    T22-85075: Weight/height records are maintained for each client</b><br /> 
                                    <b><asp:Checkbox ID="T8" runat="server" Text=""></asp:Checkbox>
                                    T22-80076: Residents with prescribed diets receive appropriate foods</b><br />  
                                    <b><asp:Checkbox ID="T9" runat="server" Text=""></asp:Checkbox>
                                    T22-87575, T22-80087, T22-80075: Medications are properly labeled, and administered; and are stored and locked in a central location.</b><br /> 
                                    <b><asp:Checkbox ID="T10" runat="server" Text=""></asp:Checkbox>
                                    T22-80075: Medical and dental care is provided as appropriate, but at least annually.</b><br />    
                                    <b><asp:Checkbox ID="T11" runat="server" Text=""></asp:Checkbox>  
                                    T22-80075: Complete First Aid supplies and manual are available.</b><br /> 
                                    <b><asp:Checkbox ID="T12" runat="server" Text=""></asp:Checkbox>
                                    T22-83087.4, T22-80076: Toxic substances are safely stored</b><br />  
                                    <b><asp:Checkbox ID="T13" runat="server" Text=""></asp:Checkbox>
                                    T22-80075, T22-80076: Adaptive equipment and prosthetic devices are used when appropriate and are regularly maintained</b><br /> 
                                    <b><asp:Checkbox ID="T14" runat="server" Text=""></asp:Checkbox>
                                    T22-80076: Sanitation practices are adequate</b><br /> 
                                    <b><asp:Checkbox ID="T15" runat="server" Text=""></asp:Checkbox>
                                    T22-80023: Staff and residents can participate in a documented and posted evacuation plan.</b><br /> 
                                    <b><asp:Checkbox ID="T16" runat="server" Text=""></asp:Checkbox>  
                                    T22-83076: Facility program design reflects procedures for restrictive health conditions</b><br />     
                                    <b><asp:Checkbox ID="T17" runat="server" Text=""></asp:Checkbox>   
                                    T22-80070: Complete and current records are maintained for each client and are on-site</b><br /> 
                                    <b><asp:Checkbox ID="T18" runat="server" Text=""></asp:Checkbox>
                                    T22-85064: Administrator certification is on file</b><br />  
                                    <b><asp:Checkbox ID="T19" runat="server" Text=""></asp:Checkbox>
                                    T22-80075: Certificates and CEU’S are on file for each DSP</b><br />
                                    <b><asp:Checkbox ID="T20" runat="server" Text=""></asp:Checkbox>
                                    T22-80065: Number of staff/consultant hours meet facility service level requirements</b><br /> 
                                    <b><asp:Checkbox ID="T21" runat="server" Text=""></asp:Checkbox>
                                    T22-80065: Staff have appropriate statutory clearances, education, and/or experiences</b><br />  
                                    <b><asp:Checkbox ID="T22" runat="server" Text=""></asp:Checkbox>
                                    T22-80010: Number of clients does not exceed capacity as reflected on current license</b><br /> 
                                    <b><asp:Checkbox ID="T23" runat="server" Text=""></asp:Checkbox>
                                    T22-80087: Facility is clean, safe, and sanitary  e.g. operative security bars, 2 emergency exits for each room, and bodies of water secured</b><br /> 
                                    <b><asp:Checkbox ID="T24" runat="server" Text=""></asp:Checkbox>      
                                    T22-80088, T22-87576: Room and water temperatures are comfortable and safe</b><br /> 
                                    <b><asp:Checkbox ID="T25" runat="server" Text=""></asp:Checkbox>
                                    T22-80090, T22-80020, T22-87691: Fire Extinguishers</b><br /> 
                                    <b><asp:Checkbox ID="T26" runat="server" Text=""></asp:Checkbox>
                                    T22-80077: Emergency exit plan posted</b><br />
                                    <b><asp:Checkbox ID="T27" runat="server" Text=""></asp:Checkbox>
                                    T22-80075: Emergency phone numbers posted</b><br /> 
                                    <b><asp:Checkbox ID="T28" runat="server" Text=""></asp:Checkbox>
                                    T22-85088: One bathroom for every six consumers</b><br /> 
                                    <b><asp:Checkbox ID="T29" runat="server" Text=""></asp:Checkbox>
                                    T22-87577: Individual personal hygiene supplies available</b><br /> 
                                    <b><asp:Checkbox ID="T30" runat="server" Text=""></asp:Checkbox>
                                    T22-80072, T22: 85088: Provisions for modesty and privacy [doors & windows preclude observation from the outside]</b><br />
                                    <b><asp:Checkbox ID="T31" runat="server" Text=""></asp:Checkbox>
                                    T22-85087, T22-87577: Bedroom is single use room, not for storage, hallway, etc.</b><br /> 
                                    <b><asp:Checkbox ID="T32" runat="server" Text=""></asp:Checkbox>
                                    T22-80026: The income, disbursements and expenditures for each resident are maintained in a record that shows current balance.</b><br /> 
                                    <b><asp:Checkbox ID="T33" runat="server" Text=""></asp:Checkbox>
                                    T22-80026: Receipts are maintained for purchase made for residents</b><br /> 
                                    <b><asp:Checkbox ID="T34" runat="server" Text=""></asp:Checkbox>
                                    T22-80026: Residents funds are separate from facility funds</b><br />
                                    <b><asp:Checkbox ID="T35" runat="server" Text=""></asp:Checkbox>
                                    T22-80026: Clients P.& I monies are not used for basic services</b><br /> 
                                <hr />
                                </div>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <asp:Label ID="Label6" runat="server" Width="100px" Font-Bold="True" Text="Citation:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <b><asp:Checkbox ID="Chk_Type4" runat="server" Text="Other" onclick="ChkType4();"></asp:Checkbox></b>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_label">
                                <div id="DivOther" style="display:none;">
                                    <asp:TextBox ID="ActionTaken_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                         runat="server" Width="99%" Height="60"></asp:TextBox>
                                    <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="ActionTaken_notes" ShowModal="true"
                                         runat="server">
                                    </cc1:UltimateSpell>
                                </div>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Label ID="Label14" runat="server" Text="COMMENTS/DEFICIENCIES:" ></asp:Label></b></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 99%" class="td_unline" >
                                            <asp:TextBox ID="Comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Comments" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Label ID="Label1" runat="server" Text="RECOMMENDATIONS/ CORRECTION:" ></asp:Label></b></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 99%" class="td_unline" >
                                            <asp:TextBox ID="Recommendations" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Recommendations" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="table_inside">
                                                <tr class="tr_common">
                                                    <td  class="td_label" style="width: 80px">
                                                        <asp:Label ID="Label85" runat="server" Text="Timeline:" Font-Bold="true"></asp:Label>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_label">
                                                        <asp:Radiobutton ID="TimeLine_yes" groupname="TimeLine" runat="server"  Text="" Checked="false"></asp:Radiobutton><b>24 Hours</b>
                                                        <asp:Radiobutton ID="TimeLine_no" groupname="TimeLine" runat="server" Text="" Checked="false"></asp:Radiobutton><b>Date:</b>
                                                        <asp:TextBox ID="TimeLine_date" runat="server" Width="120px" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                            onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                                    </td>
                                                    <td style="width: auto"></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label">
                                            <b><asp:Label ID="Label2" runat="server" Text="ACTION TAKEN:" ></asp:Label></b></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label" >
                                            <b><asp:Checkbox ID="ActionTaken_followup" runat="server" Text=""></asp:Checkbox>Facility Liaison to follow up</b>
                                            &nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="ActionTaken_notified" runat="server" Text=""></asp:Checkbox>Licensing to be notified</b>                                                  
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
