﻿<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPReviewFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPReviewFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base TARGET="_self" /> 
    <title>IFSP Periodic Review</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>         
    <script type="text/JavaScript">     
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshReviewData();                 
        }
        else
        {
            window.opener.RefreshReviewData();  
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
        return true;
    }

    function submit_click() 
    {
        return confirm("Do you want to submit this form? it will be readonly after submit.");
    }

    function print_click() {
        var entry_key = document.IFSPReview.entry_key.value.toString();
        var ifsp_key = document.IFSPReview.ifsp_key.value.toString();
        var consumer_key = document.IFSPReview.consumer_key.value.toString();
        var UserAct = document.IFSPReview.UserAct.value.toString();
        var url = "PrintFormIFSPReviewFDLRC.aspx?ID=" + entry_key + "&IFSPID=" + ifsp_key + "&ClientID=" + consumer_key + "&UserAct=" + UserAct;
        window.open(url);
    }
    
    function RefreshParticipantList()
    {          
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '1';        
        window.document.IFSPReview.submit();
        window.focus();   
    }

    function add_participant() {
        var consumer_key = document.IFSPReview.consumer_key.value.toString();
        var ifsp_key = document.IFSPReview.ifsp_key.value.toString();
        popupDialogShort("FormIFSPParticipantsInfo.aspx?IFSPID=" + ifsp_key + "&ClientID=" + consumer_key + "&type=add");
    }

    </script> 
</head>
<body  id="body"  runat="server" >  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="IFSPReview" runat="server"> 
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="ifsp_key" id="ifsp_key" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_key" id="entry_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <input id="NoConfirm" type="hidden" value="0" />
    <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 35px;" align="center" valign="bottom">
	        <td style="width:600px">
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">IFSP PERIODIC REVIEW</asp:label> 
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
                        <td class="td_label" style="width: 150px">
                            <asp:Label ID="lblconsumername" runat="server" Font-Bold="True" Text="Client Name:"></asp:Label>
                        </td>
                        <td  width="5">
                        </td>
                        <td class="td_unline" style="width: 300px">
                            <asp:TextBox ID="consumername" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                        </td>
                        <td style="width: 30px">
                        </td>
                        <td class="td_label" style="width: 100px">
                            <asp:Label ID="lblUCI" runat="server" Font-Bold="True" Text="UCI #:"></asp:Label>
                        </td>
                        <td  width="5">
                        </td>
                        <td class="td_unline" style="width: 100px;">
                            <asp:Label ID="uci" runat="server" CssClass="infaceText" ></asp:Label>
                        </td>
                        <td style="width: 30px">
                        </td>
                        <td class="td_label" style="width: 100px">
                            <asp:Label ID="lblCaseMgr" runat="server" Font-Bold="True" Text="Assigned SC:"></asp:Label>
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
          <tr height="15px">
            <td colspan="2">
                <hr />
            </td>
          </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; overflow: auto; top: 0px; left: 0px;" >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%;">
          <tr class="tr_common">
             <td class="td_label">
                <asp:Radiobutton ID="prtype_1" groupname="prtype" runat="server" Font-Bold=true Text=""></asp:Radiobutton>
                    <b>Monthly/Quarterly</b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Radiobutton ID="prtype_2" groupname="prtype" runat="server" Font-Bold=true Text=""></asp:Radiobutton>
                    <b>Semi-Annual</b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Radiobutton ID="prtype_3" groupname="prtype" runat="server" Font-Bold=true Text=""></asp:Radiobutton>
                    <b>Annual</b>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>
          <tr>
             <td>
                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                  <tr class="tr_common">
                    <td align="left" style="width: 180px" class="td_label" >
                       <asp:Label ID="lbl_createdate" runat="server" Font-Bold="True" Text="Date of the Periodic:"></asp:Label>
                    </td>
                    <td width="10">
                    </td>
                    <td style="width: 150px" align="left" class="td_unline">
                       <asp:Textbox ID="createdate" runat="server" CssClass="inface" width="100px" onclick="DataChanged();showcalendar(event, this);" 
                            onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
                       <asp:CompareValidator ControlToValidate="createdate" Operator="DataTypeCheck" Type="Date" 
                            Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="createdate_dt"></asp:CompareValidator>
                    </td>
                    <td width="300">
                    </td>
                    <td align="left" style="width: 180px" class="td_label" >
                       <asp:Label ID="lbl_reviewdate" runat="server" Font-Bold="True" Text="Review of IFSP Dated:"></asp:Label>
                    </td>
                    <td width="10">
                    </td>
                    <td style="width: 150px" align="left" class="td_unline">
                       <asp:Textbox ID="reviewdate" runat="server" CssClass="inface" width="100px" onclick="DataChanged();showcalendar(event, this);" 
                            onfocus="DataChanged();showcalendar(event, this);" ></asp:Textbox>
                       <asp:CompareValidator ControlToValidate="reviewdate" Operator="DataTypeCheck" Type="Date" 
                            Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="reviewdate_dt"></asp:CompareValidator>
                    </td>
                  </tr>
                </table>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>
          <tr>
             <td>
                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                  <tr class="tr_common">
                    <td align="left" style="width: 120px" class="td_label" >
                       <asp:Label ID="lbl_contact" runat="server" Font-Bold="True" Text="Type of Contact:"></asp:Label>
                    </td>
                    <td width="10">
                    </td> 
                    <td class="td_label">
                       <asp:Radiobutton ID="contacttype_1" groupname="contacttype" runat="server" Font-Bold=true Text=""></asp:Radiobutton>
                         <b>Face to Face</b>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Radiobutton ID="contacttype_2" groupname="contacttype" runat="server" Font-Bold=true Text=""></asp:Radiobutton>
                         <b>Telephone</b>
                    </td>
                    <td width="auto"></td>         
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
          <tr style="height: 30px">
            <td>
                <table class="table_inside" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                  <tr class="tr_common">
                    <td  align="left" style="width:30px;height:25">
			           <asp:ImageButton ID="BtnAddPT" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" OnClientClick="javascript:add_participant();return false;" ToolTip="Add" />
                    </td>
                    <td class="td_label">
                      <center><b>PERIODIC REVIEW PARTICIPANTS</b></center>
                    </td>
                  </tr>
                </table>
            </td>
          </tr>
          <tr class="tr_common">
             <td class="td_label">
                  <center>The following individuals/agencies participated in the development of the IFSP by either attending the meeting or giving input:</center>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>       	
          <tr>
             <td align="center">		  
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
          <tr style="height:5px">
             <td></td>
          </tr>
          <tr>
             <td class="td_thicksepline"></td>
          </tr>    
          <tr style="height:5px">
             <td></td>
          </tr>             
          <tr class="tr_common">
             <td class="td_label">
                 <center><u>REVIEW OF FAMILY CONCERNS AND PRIORITIES (These statements are voluntary):</u></center>
             </td>
          </tr>
          <tr style="height:5px">
             <td>
             </td>
          </tr>                         
          <tr class="tr_common">
             <td align="left" class="td_unline">
               <asp:Textbox ID="Review" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                      runat="server" Width="98%" Height="80"></asp:TextBox>
               <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Review" ShowModal="true"
                      runat="server">
               </cc1:UltimateSpell>
            </td>
          </tr>   

          <tr class="tr_common">
            <td>
               <asp:datagrid id="dg_outcome" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
				  AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			   <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			      <ItemStyle CssClass="grd_itemborder"></ItemStyle>
				  <AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
				  <FooterStyle CssClass="grd_fsitem"></FooterStyle>
				  <Columns>
				     <asp:BoundColumn DataField="ifspid" HeaderText="ifspid" Visible="false"></asp:BoundColumn>
				     <asp:BoundColumn DataField="outcomeno" HeaderText="outcomeno" Visible="false"></asp:BoundColumn>
					 <asp:TemplateColumn HeaderText="">
					    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
					    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
					    <ItemTemplate>
                           <table class="table_inside" cellspacing="0" cellpadding="0">
                             <tr style="height:5px">
                                <td>
                                </td>
                             </tr>
                             <tr>
                                <td class="td_thicksepline">
                                </td>
                             </tr>
                             <tr style="height:20px">
                                <td>
                                </td>
                             </tr>
                             <tr>
                                <td class="td_label" valign="top">
                                   <asp:Label ID="outcomeno" runat="server" Font-Bold="True" Text='<%# DataBinder.Eval(Container.DataItem, "outcomeno") %>'></asp:Label>#&nbsp;
                                   <asp:Label ID="l_outcome" runat="server" Font-Bold="True" Text="OUTCOMES / STRATEGIES / SERVICES:"></asp:Label>
                                </td>
                             </tr>
                             <tr>
                                <td class="td_unline">
                                   <asp:Textbox ID="outcome" runat="server" CssClass="infaceText" Height="100px" Width="98%" ReadOnly=true
                                       TextMode="MultiLine" Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "outcome") %>'></asp:Textbox>
                                </td>
                             </tr>
                             <tr style="height:5px">
                                <td>
                                </td>
                             </tr>
                             <tr>
                                <td class="td_label" valign="top">
                                   <asp:Label ID="l_review" runat="server" Font-Bold="True" Text="PERIODIC REVIEW:"></asp:Label>
                                </td>
                             </tr>
                             <tr>
                                <td class="td_unline">
                                   <asp:Textbox ID="reviewoutcome" runat="server" CssClass="inface" Height="100px" Width="98%"
                                       TextMode="MultiLine" Style="overflow:auto" text='<%# DataBinder.Eval(Container.DataItem, "reviewoutcome") %>'></asp:Textbox>
                                </td>
                             </tr>
                           </table>
                        </ItemTemplate>
					</asp:TemplateColumn>
                  </Columns>
				</asp:datagrid>
            </td>
          </tr>

          <tr style="height:15px">
             <td>
             </td>
          </tr> 
          <tr class="tr_common">
             <td>             
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