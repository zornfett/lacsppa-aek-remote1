<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPPlanAmendmentFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPPlanAmendmentFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base TARGET="_self" /> 
    <title>IFSP OUTCOMES AMENDMENT</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>          
    <script type="text/JavaScript">     
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshAmendmentData();                 
        }
        else
        {
            window.opener.RefreshAmendmentData();  
        }
        if (flag==1)
        {
            window.close();
        }
        else
        {
           window.focus();
        }
    }
       
    function save_click()
    {
        if (IsDate(document.getElementById("PeriodStart").value, false) != "true") 
		{
           alert("Please input Start Date!");
           document.IFSPPlan.PeriodStart.focus();
           return false;          
        }

        if (IsDate(document.getElementById("PeriodEnd").value, false) != "true") 
		{
           alert("Please input End Date!");
           document.IFSPPlan.PeriodEnd.focus();
           return false;          
        }

        return true;
    }

    function submit_click() {
        return confirm("Do you want to submit this form? it will be readonly after submit.");
    }

    function print_click() {
        var ifspoutid = document.IFSPPlan.ifspoutid.value.toString();
        var url = "PrintFormIFSPPlanAmendmentFDLRC.aspx?IFSPOUTID=" + ifspoutid;
        window.open(url);
    }

    </script> 
</head>
<body  id="body" runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="IFSPPlan" runat="server"> 
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="addplanid" runat="server" value="0" />
    <asp:hiddenfield id="ifspoutid" runat="server" value="" />
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%;">
		<table class="table_common" border="0" cellSpacing="0" cellPadding="0" width="98%" >
	      <tr style="height: 35px;" align="center" valign="bottom">
	        <td style="width:600px">
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">IFSP OUTCOMES AMENDMENT</asp:label> 
	        </td>
			<td valign="bottom">
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:button>
              <asp:button id="btnPrint" Runat="server" Text="Print" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return print_click();"></asp:button>
              <asp:button id="btnSubmit" Runat="server" Text="Submit" style="width:100px" CssClass="buttonbluestyle" OnClientClick="return submit_click();" onclick="btnSubmit_Click"></asp:button>
		    </td>
		  </tr>	
          <tr height="5px">
            <td colspan="2">
            </td>
          </tr>
          <tr>
            <td colspan="2">
                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                    <tr class="tr_common">
                        <td class="td_label" style="width: 120px">
                            <asp:Label ID="lblconsumername" runat="server" Font-Bold="True" Text="Client Name:"></asp:Label>
                        </td>
                        <td  width="5">
                        </td>
                        <td class="td_unline" style="width: 280px">
                            <asp:TextBox ID="consumername" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                        </td>
                        <td style="width: 10px">
                        </td>
                        <td class="td_label" style="width: 100px">
                            <asp:Label ID="lblUCI" runat="server" Font-Bold="True" Text="UCI #:"></asp:Label>
                        </td>
                        <td  width="5">
                        </td>
                        <td class="td_unline" style="width: 100px;">
                            <asp:Label ID="UCI" runat="server" CssClass="infaceText" >
                            </asp:Label>
                        </td>
                        <td style="width: 10px">
                        </td>
                        <td class="td_label" style="width: 100px">
                            <asp:Label ID="lblCaseMgr" runat="server" Font-Bold="True" Text="Assigned CM:"></asp:Label>
                        </td>
                        <td   width="5">
                        </td>
                        <td class="td_unline" style="width: 200px;">
                            <asp:TextBox ID="CaseMgrName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td style="width:auto"></td>
                    </tr>
                </table>
            </td>
          </tr>	
          <tr height="5px">
            <td colspan="2">
            </td>
          </tr>
          <tr class="tr_common">
            <td colspan="2" class="td_label">
              <asp:Radiobutton ID="outcome_new" groupname="outcomesel" runat="server" Font-Bold=true Text="" Checked=true
               AutoPostBack=true OnCheckedChanged="outcome_checkedchanged" Width="30px"></asp:Radiobutton>
              <b>Create a new outcome</b>
            </td>
          </tr>
          <tr class="tr_common">
            <td colspan="2" class="td_label">
              <asp:Radiobutton ID="outcome_copy" groupname="outcomesel" runat="server" Font-Bold=true Text="" Checked=false
              AutoPostBack=true OnCheckedChanged="outcome_checkedchanged" Width="30px"></asp:Radiobutton>
              <b>Modify an outcome</b>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Outcome#&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="OriginalSeqno" Width="100px" OnClick="DataChanged()" runat="server" DataValueField="ifspoutid" DataTextField="seqno"
                 CssClass="infaceDrop" AutoPostBack=true OnSelectedIndexChanged="OriginalSeqNo_SelectedIndexChanged">
              </asp:DropDownList>
            </td>
          </tr>		
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; overflow: auto; top: 0px; left: 0px;">
	    <table class="table_common" cellSpacing="0" cellPadding="0" border="0" style="width: 98%;">
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr>
             <td align="left" style="width: 100px" class="td_label" valign="top">
               <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Text="Desired Outcome:"></asp:Label>
             </td>
             <td width="10px">
             </td>
             <td style="width: 700px;" align="left" class="td_unline">
               <div>
               <asp:Textbox ID="desiredoutcome" runat="server" CssClass="inface" Height="60px" Width="98%"
                   TextMode="MultiLine" Style="overflow:auto"></asp:Textbox>
               </div>
             </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label" >
               <asp:Label ID="l_periodstart" runat="server" Font-Bold="True" Text="Period of Service:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
               <asp:Textbox ID="PeriodStart" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
               <asp:CompareValidator ControlToValidate="PeriodStart" Operator="DataTypeCheck" Type="Date" 
                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="PeriodStart_dt"></asp:CompareValidator>
               <asp:Label ID="To" runat="server" CssClass="infaceText" Font-Bold="True" Text='   To   ' Width="100px" ></asp:Label>
               <asp:Textbox ID="PeriodEnd" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
               <asp:CompareValidator ControlToValidate="PeriodEnd" Operator="DataTypeCheck" Type="Date" 
                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="PeriodEnd_dt"></asp:CompareValidator>
             </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr>
            <td colspan="3">
                <table class="table_inside" cellspacing="0" cellpadding="0">
                    <tr class="tr_common">
                        <td class="td_label">
                            <b><asp:Label ID="Label9" runat="server" Text="Criteria:" ></asp:Label></b></td>
                    </tr>
                    <tr style="height:5px;">
                        <td>
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 99%" class="td_unline" >
                            <asp:TextBox ID="Criteria" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                runat="server" Width="99%" Height="80"></asp:TextBox>
                            <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="Criteria" ShowModal="true"
                                    runat="server">
                            </cc1:UltimateSpell>
                        </td>
                    </tr>
                </table>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Service Type:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
               <asp:Textbox ID="ServiceType" runat="server" CssClass="inface" MaxLength="500"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label33" runat="server" Font-Bold="True" Text="Method:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
                <asp:DropDownList ID="Method" OnClick="DataChanged()" Width="225" runat="server" CssClass="infaceDrop">
                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="Individual">Individual</asp:ListItem>
                    <asp:ListItem Value="Group">Group</asp:ListItem>
                </asp:DropDownList>
             </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Method (Professional):"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
               <asp:Textbox ID="MethodIndividual" runat="server" CssClass="inface" MaxLength="500"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Service Length/Frequency:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
               <asp:Textbox ID="ServiceLength" runat="server" CssClass="inface" MaxLength="500"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common"> 
             <td align="left" class="td_label">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Provider:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
               <asp:Textbox ID="Provider" runat="server" CssClass="inface" MaxLength="500"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Funding Agency:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
                <asp:DropDownList ID="FundingAgency" OnClick="DataChanged()" Width="225" runat="server" CssClass="infaceDrop">
                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="1">Generic</asp:ListItem>
                    <asp:ListItem Value="2">Health Insurance</asp:ListItem>
                    <asp:ListItem Value="3">FDLRC</asp:ListItem>
                    <asp:ListItem Value="4">School District</asp:ListItem>
                </asp:DropDownList>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Type of Service Funding:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
                <table>
                    <tr>
                        <td style="width: 200px;" align="left" class="td_label">
                            <b><asp:Radiobutton ID="Required_yes" groupname="Required" runat="server" Text="Required"></asp:Radiobutton></b>
                            <b><asp:Radiobutton ID="Required_no" groupname="Required" runat="server" Text="Not Required"></asp:Radiobutton></b>
                        </td>
                        <td style="width: 10px">
                        </td>
                        <td align="right" style="width: 50px" class="td_label">
                            <asp:Label ID="Label46" runat="server" Font-Bold="True" Text="Other:"></asp:Label>
                        </td>
                        <td style="width: 400px;" align="left" class="td_unline">
                            <asp:Textbox ID="ServiceFundingType" runat="server" CssClass="inface" MaxLength="500"></asp:Textbox>
                        </td>
                    </tr>
                </table>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" class="td_label">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Location of Service:"></asp:Label>
             </td>
             <td>
             </td>
             <td align="left" class="td_unline">
                <asp:DropDownList ID="ServiceLocation" OnClick="DataChanged()" Width="225" runat="server" CssClass="infaceDrop"
                     OnSelectedIndexChanged="ServiceLocation_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="1">Home </asp:ListItem>
                    <asp:ListItem Value="2">Community</asp:ListItem>
                    <asp:ListItem Value="3">Other</asp:ListItem>
                </asp:DropDownList>
             </td>
          </tr>
          <tr style="height:5px">
              <td colspan="3">
              </td>
          </tr>
          <tr>
              <td colspan="3" class="td_thicksepline">
              </td>
          </tr>
          <tr style="height:5px">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_label">
                  <b><asp:Checkbox ID="Justification" runat="server" Text=""></asp:Checkbox>Justification for Service(s) not Provided in the Natural Environmnet</b>
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_label">
                  <b>(if this box is checked, please answer following question:)</b>
              </td>
          </tr>
          <tr style="height:5px">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_label">
                  <b><asp:Label ID="Label65" runat="server" Text="Discuss Why Service Cannot be Provided in Natural Environmnet:" ></asp:Label></b>
              </td>
          </tr>
          <tr style="height:5px;">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_unline" >
                  <asp:TextBox ID="Discuss" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                      runat="server" Width="98%" Height="80"></asp:TextBox>
                  <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Discuss" ShowModal="true"
                      runat="server">
                  </cc1:UltimateSpell>
              </td>
          </tr>
          <tr style="height:5px">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_label">
                  <b><asp:Label ID="Label66" runat="server" Text="Describe How the Intervention will be Generalized into Child's and Family's Daily Activities:" ></asp:Label></b>
              </td>
          </tr>
          <tr style="height:5px;">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_unline" >
                  <asp:TextBox ID="Describe" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                      runat="server" Width="98%" Height="80"></asp:TextBox>
                  <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Describe" ShowModal="true"
                      runat="server">
                  </cc1:UltimateSpell>
              </td>
          </tr>
          <tr style="height:5px">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_label">
                  <b><asp:Label ID="Label67" runat="server" Text="Identify Steps for a Plan to Move into a Natural Environmnet:" ></asp:Label></b>
               </td>
          </tr>
          <tr style="height:5px;">
              <td colspan="3">
              </td>
          </tr>
          <tr class="tr_common">
              <td colspan="3" class="td_unline" >
                  <asp:TextBox ID="IdentifySteps" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                      runat="server" Width="98%" Height="80"></asp:TextBox>
                  <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="IdentifySteps" ShowModal="true"
                      runat="server">
                  </cc1:UltimateSpell>
              </td>
          </tr>

          <tr style="height:15px">
             <td colspan="3">
             </td>
          </tr> 
          <tr class="tr_common">
             <td colspan="3">             
                <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                   <tr class="tr_common">
                      <td width="150px" align=center>
                      </td>
                      <td width="120px" class="td_label">
                          <asp:Label ID="l_submitby" runat="server" Text="Submit By:" Font-Bold="True"></asp:Label>
                      </td>
                      <td width="5px">
                      </td>
                      <td class="td_unline" align="left" style="width: 300px">
                          <asp:Label ID="Submitby" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                          </asp:Label>
                      </td>
                      <td width="100px">
                      </td>
                      <td class="td_label" style="width: 120px">
                          <asp:Label ID="l_submitdate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                      </td>
                      <td width="5px">
                      </td>
                      <td class="td_unline">
                         <asp:Label ID="Submitdate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                         </asp:Label>
                      </td>
                      <td width="auto"></td>
                   </tr>
                </table>
             </td>
          </tr>
        </table>
        </div>
    </form>
</body>
</html>
