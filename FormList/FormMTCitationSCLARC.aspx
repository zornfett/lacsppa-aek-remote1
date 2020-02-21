<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormMTCitationSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormMTCitationSCLARC" %>

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
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>     
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

    function doseltdbyflag(flag) {
        DivC56053.style.display = "none";
        DivC56054.style.display = "none";

        switch (flag) {
            case 1:
                DivC56053.style.display = "";
                document.Citation.CTypeFlag.value = "1";
                break;
            case 2:
                DivC56054.style.display = "";
                document.Citation.CTypeFlag.value = "2";
                break;
        }
    }

    function SelectCType() {
        var ddl = document.activeElement;
        var index = ddl.selectedIndex;
        var Value = ddl.options[index].value;

        DivC56053.style.display = "none";
        DivC56054.style.display = "none";

        switch (Value) {
            case "T17 56053":
                DivC56053.style.display = "";
                document.Citation.CTypeFlag.value = "1";
                break;
            case "T17 56054":
                DivC56054.style.display = "";
                document.Citation.CTypeFlag.value = "2";
                break;
        }
        return false;
    }

    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="Citation" runat="server"> 
    <input type="hidden" name="CTypeFlag" id="CTypeFlag" value="1" runat="server" />
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="CitationID" runat="server" value="" />
    <asp:hiddenfield id="FormType" runat="server" value="" />
    <asp:hiddenfield id="MTID" runat="server" value="" />
    <asp:hiddenfield id="QNo" runat="server" value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="99%" >
	        <tr style="height: 25px;" align="center" valign="bottom">
	            <td style="width:600px">
	                <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">CITATION(S)</asp:label> 
	            </td>
			    <td>
		  	        <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle"  onclick="btnEdit_Click"></asp:button>
			        <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle"  onclick="btnAdd_Click"></asp:button>
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
            <tr>
                <td>
                    <table class="table_inside">
                        <tr style="height:5px">
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 100px" class="td_label">
                                <asp:Label ID="l_C" runat="server" Width="100px" Font-Bold="True" Text="Citation:"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td style="width: 250px;" class="td_unline">
                                <asp:DropDownList ID="CType" onchange="SelectCType();"  runat="server" Width="250px" CssClass="infaceDrop">
                                    <asp:ListItem Value="T17 56053">Immediate Danger T17 56053</asp:ListItem>
                                    <asp:ListItem Value="T17 56054">Substantial Inadequacy T17 56054</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width:auto"></td>
                        </tr>
                    </table>
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
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label">
                                <div id="DivC56053">
                                    <b><asp:Checkbox ID="Ca0" runat="server" Text=""></asp:Checkbox>(a) Situations which come to the attention of, or are reported to, the regional center and which appear to constitute an immediate danger shall be investigated immediately following the notification. Situations which shall be investigated include but are not limited to:</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca1" runat="server" Text=""></asp:Checkbox>(1) Life threatening structural conditions</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca2" runat="server" Text=""></asp:Checkbox>(2) Suspicion or allegations of abuse of a consumer</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca3" runat="server" Text=""></asp:Checkbox>(3) A consumer(s) in the facility with no direct supervision unless there is an IPP objective and waiver or exception, approved pursuant to Title 22, California Code of Regulations, Section 80024</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca4" runat="server" Text=""></asp:Checkbox>(4) Failure to provide a consumer(s) with a medically prescribed special diet(s); or</b><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ca5" runat="server" Text=""></asp:Checkbox>(5) The presence of an individual exhibiting aggressive or assaultive behavior which is life threatening to self or others.</b><br />
                                    <b><asp:Checkbox ID="Cb" runat="server" Text=""></asp:Checkbox>(b) When the regional center determines that the purpose of the visit would be thwarted if advance notice were given, the regional center shall have the authority to make an unannounced visit to the facility to verify the existence of the immediate danger.</b><br />     
                                    <b><asp:Checkbox ID="Cc0" runat="server" Text=""></asp:Checkbox>(c) In cases of alleged consumer abuse, the regional center shall</b><br />                          
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cc1" runat="server" Text=""></asp:Checkbox>(1) Immediately forward any allegations regarding consumer abuse to the applicable protective services agency; and</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cc2" runat="server" Text=""></asp:Checkbox>(2) Cooperate with the investigating agency as requested</b><br />                   
                                    <b><asp:Checkbox ID="Cd0" runat="server" Text=""></asp:Checkbox>(d) Immediately after verifying that a situation exists which constitutes an immediate danger, the regional center shall take the following actions:</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cd1" runat="server" Text=""></asp:Checkbox>(1) Meet with the administrator to describe the situation(s) which constitutes the immediate danger; and</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Cd2" runat="server" Text=""></asp:Checkbox>(2) Notify the Department of Social Service's Community Care Licensing Division district office of the conditions which constitute the immediate danger.</b><br />                   

                                    <b><asp:Checkbox ID="Ce0" runat="server" Text=""></asp:Checkbox>(e) The regional center shall determine whether the immediate danger can be corrected within 24 hours of verification.</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ce1" runat="server" Text=""></asp:Checkbox>(1) When the immediate danger cannot be corrected within 24 hours of verification, the regional center shall initiate the emergency relocation of the consumer(s) subject to the immediate danger.</b><br />                   
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Checkbox ID="Ce2" runat="server" Text=""></asp:Checkbox>(2) When the immediate danger can be corrected within 24 hours of verification, and the safety of the consumer(s) can be assured, the regional center shall verify that the correction of the immediate danger has occurred.</b><br />                   
                                    <b><asp:Checkbox ID="CA" runat="server" Text=""></asp:Checkbox>(A) The regional center shall verify the correction of the immediate danger within 24 hours of notification by the facility that the immediate danger has been corrected.</b><br />                   
                                    <b><asp:Checkbox ID="Cf" runat="server" Text=""></asp:Checkbox>(f) The regional center shall document all actions taken pursuant to subsections (a) through (e) above.</b><br />                   
                                </div>
                                <div id="DivC56054" style="display:none;">
                                    <b><asp:Checkbox ID="C1" runat="server" Text=""></asp:Checkbox>(1)Conditions posing a threat to the health and safety of any consumer, that are not considered an immediate danger as specified in Section 56053 ;</b><br />
                                    <b><asp:Checkbox ID="C2" runat="server" Text=""></asp:Checkbox>(2) Provision of fewer direct care staff hours than are required by the facility's approved service level;</b><br />
                                    <b><asp:Checkbox ID="C3" runat="server" Text=""></asp:Checkbox>(3) Violations of consumer's rights as defined in Section 56002 (a)(8);</b><br />
                                    <b><asp:Checkbox ID="C4" runat="server" Text=""></asp:Checkbox>(4) Failure to provide consumer services as specified in the consumer's IPP</b><br />
                                    <b><asp:Checkbox ID="C5" runat="server" Text=""></asp:Checkbox>(5) Failure to comply with the terms of the consumer's Admission Agreement</b><br />
                                    <b><asp:Checkbox ID="C6" runat="server" Text=""></asp:Checkbox>(6) Deficiencies or irregularities in the handling of the consumer's cash resources, personal property, and valuables;</b><br />
                                    <b><asp:Checkbox ID="C7" runat="server" Text=""></asp:Checkbox>(7) Failure to comply with the requirements for administrator and staff qualifications and/or administrator and staff training;</b><br />
                                    <b><asp:Checkbox ID="C8" runat="server" Text=""></asp:Checkbox>(8) Failure of a Service Level 4 facility to utilize the instructional methods and techniques which are specified in the facility's program design;</b><br />
                                    <b><asp:Checkbox ID="C9" runat="server" Text=""></asp:Checkbox>(9) Failure of a Service Level 4 facility to utilize the methodology for measurement of consumer progress toward achievement of IPP objectives which is specified in the facility's program design;</b><br />
                                    <b><asp:Checkbox ID="C10" runat="server" Text=""></asp:Checkbox>(10) Failure to take a required action pursuant to Section 56052 within the specified timeframe;</b><br />
                                    <b><asp:Checkbox ID="C11" runat="server" Text=""></asp:Checkbox>(11) Failure to (A) File an accurate and complete report verifying the use of rate increase funds authorized by Welfare and Institutions Code Section 4681.4(a) or (b) as required by Title 17, California Code of Regulations, Section 56934(a) ;</b><br />
                                    <b><asp:Checkbox ID="C11b" runat="server" Text=""></asp:Checkbox>(11) Failure to (B) Utilize Welfare and Institutions Code Section 4681.4 (a) or (b) rate increase funds for the purposes specified in Title 17, California Code of Regulations, Section 56932 (a)(1) through (3);</b><br />
                                    <b><asp:Checkbox ID="C11c" runat="server" Text=""></asp:Checkbox>(11) Failure to (C) UtilizeWelfare and Institutions Code Section 4681.4 (a) or (b) rate increase funds for a purpose which has been approved by the Department pursuant to Title 17, California Code of Regulations, Section 56932(a)(4)</b><br />
                                    <b><asp:Checkbox ID="C12" runat="server" Text=""></asp:Checkbox>(12) Failure to ensure that a direct care staff (A) Completes the competency-based training and testing required by Section 56033 (a)(1) or (2);</b><br />
                                    <b><asp:Checkbox ID="C12b" runat="server" Text=""></asp:Checkbox>(12) Failure to ensure that a direct care staff (B) Completes any additional training required by Section 56033 (d)(2);</b><br />
                                    <b><asp:Checkbox ID="C12c" runat="server" Text=""></asp:Checkbox>(12) Failure to ensure that a direct care staff complies with Section 56033 (f)(1) or (2) when the direct care staff has failed to satisfactorily complete the competency-based training and competency testing.</b><br />
                                    <b><asp:Checkbox ID="C13" runat="server" Text=""></asp:Checkbox>(13) Failure to report special incidents pursuant to Section 54327 (b) When the regional center receives a report that there are substantial inadequacies in the services of a facility, or when the regional center discovers that there are substantial inadequacies in the services of a facility, the regional center shall have the authority to make an unannounced visit(s) to the facility.</b><br />
                                </div>
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
                                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Recommendations" ShowModal="true"
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
                                    <tr class="tr_common">
                                        <td style="width: 99%" class="td_unline" >
                                            <asp:TextBox ID="ActionTaken_notes" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="ActionTaken_notes" ShowModal="true"
                                                runat="server">
                                            </cc1:UltimateSpell>
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
