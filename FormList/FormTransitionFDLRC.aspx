<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTransitionFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormTransitionFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>

<html>
<head>
    <base target="_self" />
    <title>:::TRANSITION REVIEW:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>         
    <script type="text/javascript">
    <!--
        function RefreshParticipantList()
        {          
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            window.document.TransInfo.submit();
            window.focus();   
        }
        function print_click() 
        {
            //PopupMessage(10);
            var entrykey = document.TransInfo.entrykey.value.toString();
            var UserAct = document.TransInfo.UserAct.value.toString();
            var url = "PrintFormTransitionFDLRC.aspx?TransID=" + entrykey + "&UserAct=" + UserAct;
            winhref(url, 'PrintFormTransitionFDLRC');
        }

        function save_click() {
            return true;
        }
        function back_click() {
            if (Confirm_Page())
                document.location.replace('FormIFSPListFDLRC.aspx');
        }
        function add_participant() {
            var consumer_key=document.TransInfo.consumer_key.value.toString();
            var entrykey=document.TransInfo.entrykey.value.toString();
            popupDialogShort("FormIFSPParticipantsInfo.aspx?IFSPID=" + entrykey + "&ClientID=" + consumer_key + "&type=add");
        }

        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.TransInfo.submit();
            window.focus();
       }

        function CheckPwd() {  
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
       }
    //-->
    </script>
</head>
<body runat="server" id="body">
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="TransInfo" runat="server">
    <input id="NoConfirm" type="hidden" value="0" />
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />  
    <input type="hidden" name="cm_id" id="cm_id" value="" runat="server" />           
    <input type="hidden" name="entrykey" id="entrykey" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="submitted" id="submitted" value="0" runat="server" />
    <div align="left" style="WIDTH:100%; height:auto">
        <table id="headericon" runat="server" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
          <tr valign="middle" style="height:30px; background-color: #EAF4FF">
            <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
                <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                    ImageURL="../img/save.ico" ToolTip="Save"
                    OnClientClick="return save_click();" OnClick="btnEdit_Click" >
                </asp:ImageButton>
                <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                    ImageURL="../img/save.ico" ToolTip="Save"
                    OnClientClick="return save_click();" OnClick="btnAdd_Click" >
                </asp:ImageButton>
                &nbsp;      
                <input type="image" id="btnPrint" runat="server" alt="Print" Visible="false" style="width: 25px;height:25px"  
                    src="../img/print.ico" title="Print"
                    onclick="javascript:print_click();return false;" />             
                &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                    src="../img/back.ico" title="Back"
                    onclick="javascript:back_click();return false;" /> 
                </td>
            <td align="left" width="60%">
                <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Transition For</asp:Label></td>
            <td align="left" width="15%">
                <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                    src="../img/supportdesk.ico" title="Support"
                    onclick="javascript:window.top.outsidelinks(1);return false;" />             
                &nbsp;
                <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                    src="../img/help.ico" title="Help"
                    onclick="javascript:window.top.outsidelinks(2);return false;" />             
                &nbsp;
                <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                    src="../img/logout.jpg" title="Logout"
                    onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                &nbsp;
            </td>
          </tr>
          <tr style="height:2px">
            <td colspan="3" style="background-color:#137AC5"></td> 
          </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:480px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab_IFSP">
                    <table class="table_common" cellspacing="0" cellpadding="0"  border="0" style="width:97%">  
                        <tr>
                            <td style="height:10px;"></td>
                        </tr>
                        <tr>                                                                                                                                                              
                            <td>
                                <table class="table_inside">
                                    <tr style="height:30px;">
                                        <td width="30%" align="left">
                                        <asp:Label ID="Title11" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                        <td width="40%" align="center">
                                        <asp:Label ID="Title12" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Transition Plan / Meeting</asp:Label>
                                        </td>
                                        <td width="30%" align="right">
                                        <asp:Label ID="Title13" runat="server" Font-Size="Smaller"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:10px">
                            <td></td>
                        </tr> 
                        <tr>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                            <td>
                                <table class="table_inside">
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="l_ConsumerName" runat="server" Text="Child's Name:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline"  >
                                            <asp:Label ID="ConsumerName" runat="server" CssClass="infaceText"></asp:Label>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label1" runat="server" Text="DOB:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline"  >
                                            <asp:Label ID="c_dob" runat="server" CssClass="infaceText" ></asp:Label>
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label2" runat="server" Text="UCI:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 220px" class="td_unline"  >
                                            <asp:Label ID="c_uci" runat="server" CssClass="infaceText" ></asp:Label>
                                        </td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan="10">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td style="width: 200px"  class="td_label" >
                                            <b><asp:Label ID="Label3" runat="server" Text="Date of Meeting:" ></asp:Label></b></td>
                                        <td style="width: 5px">
                                        </td>
                                        <td  style="width: 280px" class="td_unline" >
                                            <asp:TextBox ID="MeetingDate" Width="120px" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                             onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 120px"  class="td_label" >
                                            <b><asp:Label ID="Label5" runat="server" Text="School District:" ></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td style="width: 180px" class="td_unline">
                                            <asp:DropDownList ID="SchoolDistrict" Width="180px" OnClick="DataChanged()" runat="server" DataValueField="Title" DataTextField="Name"
                                                 CssClass="infaceDrop">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width: 120px">
                                        <td width="5" >
                                        </td>
                                        <td style="width: 220px">
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
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label37" runat="server" Text="Description of Child: (diagnosis, on-going concerns and needs):" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="ChildDesc" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="ChildDesc" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label4" runat="server" Text="Current services and programming provided:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="CurrentServices" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="CurrentServices" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label6" runat="server" Text="Family Concerns and Priorities in the Transition Process:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="FamilyConcerns" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="FamilyConcerns" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label7" runat="server" Text="Equipment / Interventions / transportation necessary for child in future program settings:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="Equipment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Equipment" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label8" runat="server" Text="Placement options considered (least restrictive environment) : (community preschool, Head Start, self -contained school program, regular preschool program with related services, etc.):" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="PlacementOptions" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="PlacementOptions" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td></td>
                        </tr> 
                        <tr class="tr_common">
                            <td class="td_label">
                                <b><asp:Label ID="Label9" runat="server" Text="Future Transition Steps:" ></asp:Label></b></td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 99%" class="td_unline" >
                                <asp:TextBox ID="FurtureTransSteps" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="FurtureTransSteps" ShowModal="true"
                                    runat="server">
                                </cc1:UltimateSpell>
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
                            <td><b>MEETING DATE(S) AND PARTICIPANTS</b></td>
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
                                <asp:BoundColumn DataField="PrgSvcAgy" HeaderText="Program/ Service /Agency">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Address" HeaderText="Address">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Phone" HeaderText="Phone">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
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
								            BorderWidth="0"></asp:ImageButton>
						            </ItemTemplate>
					            </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid> 
				            </td>
			            </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <table class="table_inside" border="1"  cellspacing="1" cellpadding="1" style="border: medium solid #CC99CC;">
                                <tr>
                                    <td width="50%" style="border: medium solid #CC99CC;">
                                        <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                                            <tr class="tr_common">
                                                <td colspan="5" align="center">
                                                        <asp:Button ID="btnSign" runat="server" Text="Submit"  Style="width: 80px;height:25px" Enabled="false"
                                                        OnClientClick="javascript:CheckPwd();return false;" />
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
                                                <td width="10px"></td>
                                                <td width="120px" class="td_label">
                                                    <asp:Label ID="l_SignaturedBy" runat="server" Text="Signature:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline" align="left" style="width: 300px">
                                                    <asp:Label ID="SignaturedBy" runat="server" CssClass="infaceText" Font-Names="Comic Sans MS">
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
                                                    <asp:Label ID="l_Signaturedtitle" runat="server" Text="&nbsp;&nbsp;&nbsp;Regional Manager"></asp:Label>
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
                                                    <asp:Label ID="l_SignaturedDate" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td width="5px">
                                                </td>
                                                <td class="td_unline">
                                                    <asp:Label ID="SignaturedDate" runat="server"  CssClass="infaceText" Width="140px" Font-Names="Comic Sans MS">
                                                    </asp:Label>
                                                </td>
                                                <td width="auto"></td>
                                            </tr>
                                            <tr><td colspan="5" height="5px"></td></tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
