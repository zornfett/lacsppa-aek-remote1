<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTrxVerifyByManager.aspx.cs" Inherits="Virweb2.FormList.FormTrxVerifyByManager" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
    <base target="_self"></base>
    <title>:::ID notes Verify by Managers:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
        function back_click() {
            if (Confirm_Page())
                document.location.replace('../WebList/WebForms.aspx');
        }
        function setScrollPositionGrid(pos) {
            document.getElementById("maindiv").scrollTop = pos * 1.25;
        }
        function save_click() {
            PopupMessage(0);
        }
    </script>
</head>
<body  onload="onloadsizechg(255);" onresize="onloadsizechg(255);">
    <form id="TrxVfyForm" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="criteria" id="criteria" value="" runat="server" />
    <input type="hidden" name="tx_entered_by" id="tx_entered_by" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
    <table  border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
        <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
            <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save" OnClientClick="return save_click();"
                ></asp:ImageButton>
                &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                    src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
            </td>
            <td align="left" valign="middle" width="60%">
                <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">ID notes Verify by Managers</asp:Label>
            </td>
            <td align="left" width="15%">
                <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height: 25px" 
                    src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                &nbsp;
                <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                    src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                &nbsp;
                <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;
                    height: 25px" src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                &nbsp;
            </td>
        </tr>
        <tr style="height: 2px">
            <td colspan="3" style="background-color: #137AC5">
            </td>
        </tr>
        <tr>
		    <td colspan="3" height="5px" ></td>
	    </tr>
        <tr>
            <td colspan="3">
                <table class="table_inside" style="width:auto">
                    <tr class="tr_common">
                        <td style="width: 300px;" align="left" class="td_label">
                            <b>Please Select Transaction Status:</b>
                        </td>
                        <td style="width: 5px">
                        </td>
                        <td class="td_label" style="width: auto;" colspan="9">
                            <asp:CheckBox ID="unverified" runat="server" Text=""  Checked="true"/><b>Unverified</b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="verified" runat="server" Text="" /><b>Verified</b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="onhold" runat="server" Text="" /><b>On Hold</b>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="returned" runat="server" Text="" /><b>Returned</b>
                        </td>
                    </tr>
                    <tr style="height: 5px">
                        <td colspan="11">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 300px;" align="left" class="td_label">
                            <b>Please Select a time Period:</b>
                        </td>
                        <td style="width: 5px">
                        </td>
                        <td class="td_label" colspan="9" style="width: auto;">
                            <asp:RadioButton Text="" ID="PriorMonths" GroupName="period" runat="server" /><b>Prior Months</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton Text="" ID="ThisMonths" GroupName="period" runat="server" /><b>This Months</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton Text="" ID="all" GroupName="period" runat="server" Checked="true"/><b>All</b>
                        </td>
                    </tr>
                    <tr style="height: 5px">
                        <td colspan="11">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 300px;" align="left" class="td_label">
                            <b>Please Select a Group:</b>
                        </td>
                        <td style="width: 5px">
                        </td>
                        <td style="width: 150px;" class="td_unline">
                            <asp:DropDownList ID="grouplist" runat="server" Width="150px" DataValueField="GroupID" DataTextField="GroupName"
                                    OnClick="DataChanged()" AutoPostBack="true" OnSelectedIndexChanged="grouplist_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 15px">
                        </td>
                        <td colspan="6">
                           <table class="table_inside">
                              <tr class="tr_common">
                                 <td style="width: 150px;" align="left" class="td_label">
                                    <b>Case Managers:</b>
                                 </td>
                                 <td style="width: 5px">
                                 </td>
                                 <td style="width: 100px;" class="td_unline">
                                    <asp:Label ID="totalgroupcasemgr" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                 </td>
                                 <td style="width: 50px">
                                 </td>
                                 <td style="width: 120px;" align="left" class="td_label">
                                    <b>Consumers:</b>
                                 </td>
                                 <td style="width: 5px">
                                 </td>
                                 <td style="width: 100px;" class="td_unline">
                                    <asp:Label ID="totalgroupconsumer" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                 </td>
                                 <td style="width:auto"></td>
                              </tr>
                           </table>
                        </td>
                        <td style="width: 250px;">
                        </td>
                    </tr>
                    <tr style="height: 5px">
                        <td colspan="11">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 300px;" align="left" class="td_label">
                        </td>
                        <td style="width: 5px">
                        </td>
                        <td colspan="9">
                           <table class="table_inside">
                              <tr class="tr_common">
                                 <td style="width: 50px;" align="left" class="td_label">
                                    <b>User:</b>
                                 </td>
                                 <td style="width: 5px">
                                 </td>
                                 <td style="width: 250px;" class="td_unline">
                                    <asp:DropDownList ID="userlist" Width="250px" runat="server" DataValueField="EmployeeID" DataTextField="employeeIDName"
                                        OnClick="DataChanged()" AutoPostBack="true" OnSelectedIndexChanged="userlist_SelectedIndexChanged">
                                    </asp:DropDownList>
                                 </td>
                                 <td style="width: 15px">
                                 </td>
                                 <td style="width: 50px;" align="left" class="td_label">
                                    <b>Client:</b>
                                 </td>
                                 <td style="width: 5px">
                                 </td>
                                 <td style="width: 250px;" class="td_unline">
                                    <asp:DropDownList ID="clientlist" Width="250px" runat="server" DataValueField="c_key" DataTextField="UCIName"
                                        OnClick="DataChanged()" AutoPostBack="true" OnSelectedIndexChanged="clientlist_SelectedIndexChanged">
                                    </asp:DropDownList>
                                 </td>
                                 <td style="width:auto">
                                    <asp:Button ID="btnSearch" runat="server" Style="width: 100px" CssClass="buttonbluestyle" Text="Search" 
                                        OnClick="btnSearch_Click"></asp:Button>
                                 </td>
                              </tr>
                           </table>
                        </td>
                    </tr>
                    <tr style="height: 5px">
                        <td colspan="11">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td colspan="11">
                            <table class="table_inside">
                                <tr class="tr_common"> 
                                    <td style="width: 130px;" align="right" class="td_label">
                                        <b><asp:Label ID="l_sc" runat="server" Text="Service Coordinator:"></asp:Label></b>
                                    </td>
                                    <td style="width: 5px">
                                    </td>
                                    <td style="width: 180px;" class="td_unline">
                                        <asp:Label ID="CaseMgrName" runat="server" CssClass="infaceText" Text="-"></asp:Label>
                                    </td>
                                    <td style="width: 15px">
                                    </td>
                                    <td style="width: 50px;" align="right" class="td_label">
                                        <b><asp:Label ID="l_type" runat="server" Text="Type:"></asp:Label></b>
                                    </td>
                                    <td style="width: 5px">
                                    </td>
                                    <td class="td_unline" style="width: 100px">
                                        <asp:Label ID="type" runat="server" CssClass="infaceText" Text="-"></asp:Label>
                                    </td>
                                    <td style="width: 15px">
                                    </td>
                                    <td style="width: 80px;" align="right" class="td_label">
                                        <b><asp:Label ID="l_consumer" runat="server" Text="Consumer:"></asp:Label></b>
                                    </td>
                                    <td style="width: 5px">
                                    </td>
                                    <td class="td_unline" style="width: 100px">
                                        <asp:Label ID="totalconsumers" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                    </td>
                                    <td style="width:auto"></td>
                                </tr>
                                <tr style="height: 5px">
                                    <td colspan="12">
                                    </td>
                                </tr>
                                <tr class="tr_common"> 
                                    <td colspan="3" align="right" class="td_label">
                                        <table class="table_inside">
                                            <tr class="tr_common">
                                                <td style="width: 30px;" align="right" class="td_label">
                                                    <b><asp:Label ID="Label1" runat="server" Text="U = "></asp:Label></b>
                                                </td>
                                                <td style="width: 5px">
                                                </td>
                                                <td class="td_unline" style="width: 30px">
                                                    <asp:Label ID="Ustatus" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                                </td>
                                                <td style="width: 15px">
                                                </td>
                                                <td style="width: 30px;" align="right" class="td_label">
                                                    <b><asp:Label ID="Label2" runat="server" Text="V = "></asp:Label></b>
                                                </td>
                                                <td style="width: 5px">
                                                </td>
                                                <td class="td_unline" style="width: 30px">
                                                    <asp:Label ID="Vstatus" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                                </td>
                                                <td style="width: 15px">
                                                </td>
                                                <td style="width: 30px;" align="right" class="td_label">
                                                    <b><asp:Label ID="Label8" runat="server" Text="H = "></asp:Label></b>
                                                </td>
                                                <td style="width: 5px">
                                                </td>
                                                <td class="td_unline" style="width: 30px">
                                                    <asp:Label ID="Hstatus" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                                </td>
                                                <td style="width: 15px">
                                                </td>
                                                <td style="width: 30px;" align="right" class="td_label">
                                                    <b><asp:Label ID="Label10" runat="server" Text="R = "></asp:Label></b>
                                                </td>
                                                <td style="width: 5px">
                                                </td>
                                                <td class="td_unline" style="width: 30px">
                                                    <asp:Label ID="Rstatus" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                                </td>
                                                <td style="width:auto"></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 15px">
                                    </td>
                                    <td style="width: 50px;" align="right" class="td_label">
                                        <b><asp:Label ID="l_totalminutes" runat="server" Text="Hrs&Mins:"></asp:Label></b>
                                    </td>
                                    <td style="width: 5px">
                                    </td>
                                    <td class="td_unline" style="width: 100px">
                                        <asp:Label ID="totalminutes" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                    </td>
                                    <td style="width: 15px">
                                    </td>
                                    <td style="width: 80px;" align="right" class="td_label">
                                        <b><asp:Label ID="l_avgmin" runat="server" Text="Avg Min:"></asp:Label></b>
                                    </td>
                                    <td style="width: 5px">
                                    </td>
                                    <td class="td_unline" style="width: 100px">
                                        <asp:Label ID="avgmins" runat="server" CssClass="infaceText" Text="0"></asp:Label>
                                    </td>
                                    <td style="width:auto"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 15px">
                        <td colspan="11">
                        </td>
                    </tr>
                    <tr class="tr_common">
                        <td style="width: 300px;" align="left" class="td_label">
                            <b>Global Status Change:</b>
                        </td>
                        <td style="width: 5px">
                        </td>
                        <td class="td_label" colspan="9" style="width: auto;">
                            <asp:RadioButton Text="" ID="globalstat_1" GroupName="globalstat" runat="server" /><b>UnVerify</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton Text="" ID="globalstat_2" GroupName="globalstat" runat="server" /><b>Verify</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton Text="" ID="globalstat_3" GroupName="globalstat" runat="server" /><b>Hold</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton Text="" ID="globalstat_4" GroupName="globalstat" runat="server" /><b>Return</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSubmit" runat="server" Style="width: 100px" CssClass="buttonbluestyle" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                        </td>
                    </tr>
                    <tr style="height: 5px">
                        <td colspan="11">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:250px;  overflow: auto ">
        <asp:datagrid id="dg_IDNotes" runat="server" AllowPaging="false" CssClass="grd_body"
			Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
			<HeaderStyle CssClass="grd_head"></HeaderStyle>
			<ItemStyle CssClass="grd_item"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
                <asp:BoundColumn DataField="tx_uci" HeaderText="Client ID"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_date" HeaderText="tx_date"  Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="ConsumerName" HeaderText="Client Name"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn  DataField="tx_date" HeaderText="Time" DataFormatString="{0:T}">
                    <ItemStyle HorizontalAlign="Left"  VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="tx_type" HeaderText="Type">
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="tx_minutes" HeaderText="Minutes">
                    <ItemStyle HorizontalAlign="Left"   VerticalAlign="Middle" />
                </asp:BoundColumn>	
                <asp:BoundColumn DataField="tx_id_notes" HeaderText="Description">
                    <ItemStyle HorizontalAlign="Left"  VerticalAlign="Middle" />
                </asp:BoundColumn>
                <asp:BoundColumn DataField="tx_suffix" HeaderText="tx_suffix"  Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Status">
					<HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle"></HeaderStyle>
					<ItemStyle HorizontalAlign="Left"   VerticalAlign="Middle"></ItemStyle>
					<ItemTemplate>
                        <asp:DropDownList ID="statuslist" Width="100px" runat="server" OnSelectedIndexChanged="statuslist_SelectedIndexChanged" AutoPostBack="true" >
                            <asp:ListItem Value="0">Unverified</asp:ListItem>
                            <asp:ListItem Value="1">Verified</asp:ListItem>
                            <asp:ListItem Value="2">On Hold</asp:ListItem>
                            <asp:ListItem Value="3">Returned</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
				</asp:TemplateColumn>		          									
				<asp:TemplateColumn HeaderText="View/Edit">
					<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
					<ItemTemplate>
						<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>									
			</Columns>
		</asp:datagrid>
    </div>
    </form>
</body>
</html>
