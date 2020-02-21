<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPPlanAmendmentSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPPlanAmendmentSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base TARGET="_self" /> 
    <title>IFSP OUTCOMES ADDENDUM</title>
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
    
    function RefreshParticipantList()
    {          
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '1';        
        window.document.IFSPPlan.submit();
        window.focus();   
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

    function add_participant() {
        var consumer_key = document.IFSPPlan.consumer_key.value.toString();
        var ifspid = document.IFSPPlan.linkifspid.value.toString();
        popupDialogShort("FormIFSPParticipantsInfo.aspx?IFSPID=" + ifspid + "&ClientID=" + consumer_key + "&type=add");
    }

    function print_click() {
        var ifspid = document.IFSPPlan.ifspid.value.toString();
        var ifspoutid = document.IFSPPlan.ifspoutid.value.toString();
        winhref("PrintFormIFSPPlanAmendmentSCLARC.aspx?IFSPOUTID=" + ifspoutid + "&IFSPID=" + ifspid, "PrintFormIFSPPlanAmendmentSCLARC");
    }

    function Sign(UserName) {
        var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
        mySignUserName.value = UserName;  
        window.document.IFSPPlan.submit();
        window.focus();
    }

    function Verify() {
        var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
        mySignVerify.value = "1";  
        window.document.IFSPPlan.submit();
        window.focus();
    }

    function UnLock() {
        var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
        mySignVerify.value = "3";  
        window.document.IFSPPlan.submit();
        window.focus();
    }

    function Lock() {
        var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
        mySignVerify.value = "4";  
        window.document.IFSPPlan.submit();
        window.focus();
    }

    function CheckPwd() {
        if ((!document.getElementById("<%=approved_yes.ClientID %>").checked) && 
            (!document.getElementById("<%=approved_no.ClientID %>").checked))
        {
           alert("Please select either 'Approval' or 'Return' first");
           return;
        }

        if (document.getElementById("<%=approved_yes.ClientID %>").checked)  
           window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
        else 
        {
           var mySignVerify = document.getElementById(<%= "'" + SignVerify.ClientID + "'" %>);        
           mySignVerify.value = "2";  
           window.document.IFSPPlan.submit();
           window.focus();
        }
    } 
    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="IFSPPlan" runat="server"> 
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="addplanid" runat="server" value="0" />
    <asp:hiddenfield id="ifspoutid" runat="server" value="" />
    <asp:hiddenfield id="ifspid" runat="server" value="" />
    <asp:hiddenfield id="linkifspid" runat="server" value="" />
    <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />     
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />  
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" /> 
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignVerify" id="SignVerify" value="" runat="server" />
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
          <tr>
              <td colspan="2" style="height:10px;"></td>
          </tr>
          <tr>                                                                                                                                                              
              <td colspan=2>
                  <table class="table_inside">
                      <tr style="height:30px;">
                          <td width="30%" align="left">
                          <asp:Label ID="Title11" runat="server" Font-Size="Smaller"></asp:Label>
                          </td>
                          <td width="40%" align="center">
                          <asp:Label ID="Title12" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">EARLY START</asp:Label>
                          </td>
                          <td width="30%" align="right">
                          <asp:Label ID="Title13" runat="server" Font-Size="Smaller"></asp:Label>
                          </td>
                      </tr>
                      <tr style="height:20px;">
                          <td width="30%" align="left">
                          <asp:Label ID="Title21" runat="server" Font-Size="Smaller"></asp:Label>
                          </td>
                          <td width="40%" align="center">
                          <asp:Label ID="Title22" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="blue">INDIVIDUALIZED FAMILY SERVICE PLAN (IFSP)- ADDENDUM</asp:Label>
                          </td>
                          <td width="30%" align="right">
                          <asp:Label ID="Title23" runat="server" Font-Size="Smaller"></asp:Label>
                          </td>
                      </tr>
                      <tr style="height:20px;">
                          <td width="30%" align="left">
                          <asp:Label ID="Title31" runat="server" Font-Size="Smaller"></asp:Label>
                          </td>
                          <td width="40%" align="center">
                          <asp:Label ID="Title32" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue"></asp:Label>
                          </td>
                          <td width="30%" align="right">
                          <asp:Label ID="Title33" runat="server" Font-Size="Smaller"></asp:Label>
                          </td>
                      </tr>    
                  </table>
              </td>
          </tr>
	      <tr style="height: 35px;" align="center" valign="bottom">
	        <td style="width:600px">
	        </td>
			<td valign="bottom">
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:button>
              <asp:button id="btnPrint" Runat="server" Text="Print" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return print_click();"></asp:button>
		    </td>
		  </tr>	
          <tr height="5px">
            <td colspan="2">
            </td>
          </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; overflow: auto; top: 0px; left: 0px;" >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%;">
          <tr style="height:5px">
            <td></td>
          </tr>
          <tr>
            <td class="td_thicksepline"></td>
          </tr>    
          <tr style="height:5px">
            <td></td>
          </tr> 
          <tr>
            <td>
              <table class="table_inside">
                 <tr class="tr_common">
                     <td style="width: 200px"  class="td_label" >
                         <b><asp:Label ID="l_ClientName" runat="server" Text="Child's Name:" ></asp:Label></b></td>
                     <td style="width: 5px">
                     </td>
                     <td  style="width: 280px" class="td_unline"  >
                         <asp:TextBox ID="ClientName" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                     </td>
                     <td width="5" >
                     </td>
                     <td style="width: 120px"  class="td_label" >
                         <b><asp:Label ID="l_dob" runat="server" Text="DOB:" ></asp:Label></b></td>
                     <td width="5" >
                     </td>
                     <td style="width: 180px" class="td_unline"  >
                         <asp:TextBox ID="ClientDOB" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                          onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                     </td>
                     <td style="width: 120px"  class="td_label" >
                         <b><asp:Label ID="Label4" runat="server" Text="UCI:" ></asp:Label></b></td>
                     <td width="5" >
                     </td>
                     <td style="width: 220px" class="td_unline"  >
                         <asp:Label ID="UCI" runat="server" CssClass="infaceText" ></asp:Label>
                     </td>
                 </tr>
              </table>
            </td>
          </tr>	
          <tr height="5px">
            <td>
            </td>
          </tr>
          <tr>
            <td>
              <table class="table_inside">
                 <tr class="tr_common">
                    <td style="width: 150px"  class="td_label" >
                       <b><asp:Label ID="l_annualdate" Width="200px" runat="server" Text="Review of the IFSP Dated:" ></asp:Label></b>
                    </td>
                    <td style="width: 5px">
                    </td>
                    <td  style="width: 150px" class="td_unline" >
                          <asp:Label ID="AnnualDate" Width="120px" runat="server" CssClass="infaceText"></asp:Label>
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 150px"  class="td_label" >
                       <b><asp:Label ID="l_ifspmeetingdate" Width="150px" runat="server" Text="Today's Meeting Date:" ></asp:Label></b>
                    </td>
                    <td style="width: 5px">
                    </td>
                    <td  style="width: 150px" class="td_unline" >
                          <asp:TextBox ID="IFSPMeetingDate" Width="120px" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                 onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                    </td>
                 </tr>
              </table>
            </td>
          </tr>
          <tr style="height:5px">
              <td></td>
          </tr>
          <tr>
              <td class="td_thicksepline"></td>
          </tr>    
          <tr style="height:5px">
              <td></td>
          </tr> 
          <tr style="height:20px;">
              <td><b>ADDENDUM PARTICIPANTS</b></td>
          </tr>
          <tr style="height:10px">
              <td></td>
          </tr> 
          <tr style="height: 30px;" valign="middle">
              <td  align="left" style="width:30px;height:25">
			        <asp:ImageButton ID="BtnAddPT" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" OnClientClick="javascript:add_participant();return false;" ToolTip="Add" />
              </td>
          </tr>
          <tr class="tr_common">
              <td>
			      <asp:datagrid id="dg_participantList" runat="server" AllowPaging="False" CssClass="grd_body"
			                      AutoGenerateColumns="False" AllowSorting="False">
			        <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			        <ItemStyle CssClass="grd_item"></ItemStyle>
			        <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			        <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			      <Columns>
			      <asp:BoundColumn DataField="id" HeaderText="id" Visible="False"></asp:BoundColumn>
                  <asp:BoundColumn DataField="ClientID" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
			        <asp:BoundColumn DataField="Name" HeaderText="Name">
                      <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                  </asp:BoundColumn>
                  <asp:BoundColumn DataField="Title" HeaderText="Title">
                      <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                  </asp:BoundColumn>
                  <asp:BoundColumn DataField="Agency" HeaderText="Agency">
                      <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                  </asp:BoundColumn>
                  <asp:BoundColumn DataField="Phone" HeaderText="Phone">
                      <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                  </asp:BoundColumn>
                  <asp:BoundColumn DataField="Email" HeaderText="Email">
                      <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                  </asp:BoundColumn>
                  <asp:TemplateColumn HeaderText="Present">
			            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			            <ItemTemplate>
                          <asp:Checkbox ID="Present" runat="server" Text="" Enabled="false"
                              Checked='<%# (DataBinder.Eval(Container.DataItem, "Present").ToString().TrimEnd() =="Y") ? true : false %>' >
                          </asp:Checkbox> 
                      </ItemTemplate>
                  </asp:TemplateColumn>
                  <asp:TemplateColumn HeaderText="Consult">
			            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			            <ItemTemplate>
                          <asp:Checkbox ID="Consult" runat="server" Text="" Enabled="false"
                              Checked='<%# (DataBinder.Eval(Container.DataItem, "Consult").ToString().TrimEnd() =="Y") ? true : false %>' >
                          </asp:Checkbox> 
                      </ItemTemplate>
                  </asp:TemplateColumn>
                  <asp:TemplateColumn HeaderText="Report">
			            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			            <ItemTemplate>
                          <asp:Checkbox ID="Report" runat="server" Text="" Enabled="false"
                              Checked='<%# (DataBinder.Eval(Container.DataItem, "Report").ToString().TrimEnd() =="Y") ? true : false %>' >
                          </asp:Checkbox> 
                        </ItemTemplate>
                  </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="Edit">
			            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			            <ItemTemplate>
				            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
			            </ItemTemplate>
			      </asp:TemplateColumn>
			      <asp:TemplateColumn HeaderText="DELETE">
			            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			            <ItemTemplate>
				            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
					            BorderWidth="0" Visible='<%# (DataBinder.Eval(Container.DataItem, "AutoCreated").ToString().TrimEnd() =="1") ? true : false %>'></asp:ImageButton>
			            </ItemTemplate>
			      </asp:TemplateColumn>
			      </Columns>
			      </asp:datagrid> 
			    </td>
			</tr>
            <tr style="height:10px">
              <td></td>
            </tr> 
            <tr style="height:20px;">
                <td>
                    <b>MY FAMILY'S CONCERNS  &  PRIORITIES</b><br />
                    Concerns I have about my child's health and development. Information, resources and supports I need or want for my child. The most important things for my child and/or family at this time.
                </td>
            </tr>
            <tr style="height:10px">
                <td></td>
            </tr> 
            <tr class="tr_common">
                <td style="width: 99%" class="td_unline" >
                    <asp:TextBox ID="Concerns" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                        runat="server" Width="99%" Height="80"></asp:TextBox>
                    <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Concerns" ShowModal="true"
                        runat="server">
                    </cc1:UltimateSpell>
                </td>
            </tr>
        </table>
        <br />
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%;">
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
            <td colspan="3" class="td_label">
              <asp:Radiobutton ID="outcome_new" groupname="outcomesel" runat="server" Font-Bold=true Text="" Checked=true
               AutoPostBack=true OnCheckedChanged="outcome_checkedchanged"></asp:Radiobutton>
              <b>Create a new outcome</b>
            </td>
          </tr>
          <tr class="tr_common">
            <td colspan="3" class="td_label">
              <asp:Radiobutton ID="outcome_copy" groupname="outcomesel" runat="server" Font-Bold=true Text="" Checked=false
              AutoPostBack=true OnCheckedChanged="outcome_checkedchanged"></asp:Radiobutton>
              <b>Modify an outcome</b>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Outcome#&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="OriginalSeqno" Width="100px" OnClick="DataChanged()" runat="server" DataValueField="ifspoutid" DataTextField="seqno"
                 CssClass="infaceDrop" AutoPostBack=true OnSelectedIndexChanged="OriginalSeqNo_SelectedIndexChanged">
              </asp:DropDownList>
            </td>
          </tr>		
		  <tr style="height:15px">
		    <td colspan=3>
		      <hr />
		    </td>
		  </tr>
          <tr>
             <td align="left" style="width: 150px" class="td_label" valign="top">
               <asp:Label ID="l_desiredoutcome" runat="server" Font-Bold="True" Text="Desired Outcome:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
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
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Service Type:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
               <asp:Textbox ID="ServiceType" runat="server" CssClass="inface" MaxLength="100"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label33" runat="server" Font-Bold="True" Text="Method:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
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
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Service Length/Frequency:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
               <asp:Textbox ID="ServiceLength" runat="server" CssClass="inface" MaxLength="100"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Agency Name/Phone Number:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
               <asp:Textbox ID="MethodIndividual" runat="server" CssClass="inface" MaxLength="100"></asp:Textbox>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" style="width: 150px" class="td_label" >
               <asp:Label ID="l_periodstart" runat="server" Font-Bold="True" Text="Duration of Service:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px" align="left" class="td_label">
               <asp:Textbox ID="PeriodStart" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
               <asp:CompareValidator ControlToValidate="PeriodStart" Operator="DataTypeCheck" Type="Date" 
                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="PeriodStart_dt"></asp:CompareValidator>
               <asp:Label ID="To" runat="server" CssClass="infaceText" Font-Bold="True" Text='   To   ' Width="100px" ></asp:Label>
               <asp:Textbox ID="PeriodEnd" runat="server" CssClass="inface" width="80px" onclick="DataChanged();showcalendar(event, this);" 
                        onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
               <asp:CompareValidator ControlToValidate="PeriodEnd" Operator="DataTypeCheck" Type="Date" 
                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="PeriodEnd_dt"></asp:CompareValidator>
               &nbsp;&nbsp;&nbsp;
               <b><asp:Checkbox ID="Required" runat="server" Text="" /></asp:Checkbox>
                        Medical Clearance Required:</b>
             </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Funding Agency:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
                <asp:DropDownList ID="FundingAgency" OnClick="DataChanged()" Width="225" runat="server" CssClass="infaceDrop">
                    <asp:ListItem Value="" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="1">Generic</asp:ListItem>
                    <asp:ListItem Value="2">Health Insurance</asp:ListItem>
                    <asp:ListItem Value="3">SCLARC</asp:ListItem>
                </asp:DropDownList>
            </td>
          </tr>
          <tr style="height:5px">
             <td colspan="3">
             </td>
          </tr>
          <tr class="tr_common">
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="If no generic resource available, explain:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
               <asp:Textbox ID="NoGenericExplain" runat="server" CssClass="inface" MaxLength="100"></asp:Textbox>
            </td>
          </tr>
        <tr style="height:5px">
            <td colspan="3">
            </td>
        </tr>
        <tr class="tr_common">
             <td align="left" style="width: 150px" class="td_label">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Location of Service:"></asp:Label>
             </td>
             <td width="10">
             </td>
             <td style="width: 900px;" align="left" class="td_unline">
                <asp:DropDownList ID="ServiceLocation" OnClick="DataChanged()" Width="225" runat="server" CssClass="infaceDrop">
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
                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Discuss" ShowModal="true"
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
                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Describe" ShowModal="true"
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

        </table>
        </br>
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%;">
         <tr>
            <td>
             <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                 <tr>
                     <td width="50%" style="border: medium solid #CC99CC;">
                         <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                             <tr class="tr_common">
                                 <td colspan="5" align=center>
                                     <input type="button" id="btnVerify" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                         onclick="javascript:Verify();return false;" /> 
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="5" height="5px">
                                 </td>
                             </tr>
                             <tr class="tr_common">
                                 <td colspan="5"></td>
                             </tr>
                             <tr class="tr_common">
                                 <td width=10px"></td>
                                     <td width="120px" class="td_label">
                                         <asp:Label ID="l_verify" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                     </td>
                                 <td width="5px">
                             </td>
                             <td class="td_unline" align="left" style="width: 300px">
                                 <asp:Label ID="VerifyBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                 </asp:Label>
                             </td>
                             <td width="auto"></td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td colspan="3">
                             </td>
                             <td class="td_label">
                                 <asp:Label ID="l_verifytitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Service Coordinator"></asp:Label>
                             </td>
                             <td>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td width="10px">
                             </td>
                             <td class="td_label" style="width: 120px">
                                 <asp:Label ID="l_verify_date" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                             </td>
                             <td width="5px">
                             </td>
                             <td class="td_unline">
                                 <asp:Label ID="VerifyByDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                 </asp:Label>
                             </td>
                             <td width="auto"></td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                     </table>
                 </td>
                 <td width="50%">
                     <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                         <tr class="tr_common">
                             <td colspan="5" align=center>
                                 <input type="button" id="btnSign" runat="server" value="Submit" style="width: 80px; height: 25px"  
                                     onclick="javascript:CheckPwd();return false;" />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <input type="button" id="btnUnLock" runat="server" value="UnLock" style="width: 80px; height: 25px"  
                                     onclick="javascript:UnLock();return false;" />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <input type="button" id="btnLock" runat="server" value="Lock" style="width: 80px; height: 25px"  
                                     onclick="javascript:Lock();return false;" /> 
                             </td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td width=10px"></td>
                             <td colspan=3 class="td_label">
                                 <asp:Radiobutton ID="approved_yes" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Approve</b>
                                 &nbsp;&nbsp;
                                 <asp:Radiobutton ID="approved_no" groupname="approved" runat="server" Text=""></asp:Radiobutton><b>Return</b>
                             </td>	
                             <td width="auto"></td>
                         </tr> 
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td width=10px"></td>
                             <td width="120px" class="td_label">
                                 <asp:Label ID="l_signature" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                             </td>
                             <td width="5px">
                             </td>
                             <td class="td_unline" align="left" style="width: 300px">
                                 <asp:Label ID="SignaturedBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
                                 </asp:Label>
                             </td>
                             <td width="auto">
                                 <asp:hiddenfield id="SignaturedBy_ID" runat="server" value="" />
                             </td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td colspan="3">
                             </td> 
                             <td class="td_label">
                                 <asp:Label ID="l_signtitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Program Manager"></asp:Label>
                             </td>
                             <td width="auto"></td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td width="10px">
                             </td>
                             <td class="td_label" style="width: 120px">
                                 <asp:Label ID="l_signatureddate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                             </td>
                             <td width="5px">
                             </td>
                             <td class="td_unline">
                                 <asp:Label ID="SignaturedDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                 </asp:Label>
                             </td>
                             <td width="auto"></td>
                         </tr>
                         <tr>
                             <td colspan="5" height="5px">
                             </td>
                         </tr>
                         <tr class="tr_common">
                             <td width="10px">
                             </td>
                             <td valign="top" class="td_label">
                             <b><asp:Label ID="l_comments" runat="server" Text="Comments:" ></asp:Label></b>
                             </td>
                             <td width="5px">
                             </td>
                             <td colspan=2 class="td_unline" >
                                <asp:TextBox ID="sign_comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="60" CssClass="inface"></asp:TextBox>
                             </td>
                         </tr>
                         <tr><td colspan="5" height="5px">
                         </td></tr>
                     </table>
                 </td>
             </tr>
             </table>
            </td>
            </tr>
            <tr style="height:5px;">
             <td>
             </td>
            </tr>
            <tr class="tr_common">
             <td class="td_label">
              <b><asp:Label ID="l_logs" runat="server" Text="Logs:" ></asp:Label></b>
             </td>
            </tr>
            <tr class="tr_common">
             <td tyle="height: 80px" valign="top">
              <asp:TextBox ID="Logs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                 runat="server" Width="99%" Height="80" ReadOnly="true" CssClass="infaceText"></asp:TextBox>
             </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
