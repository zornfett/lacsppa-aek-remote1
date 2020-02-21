<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webBridgedIDNotesList.aspx.cs" Inherits="Virweb2.WebList.webBridgedIDNotesList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self" />
		<title>:::Client Bridged ID Note List:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/javaScript" src="../js/common.js"></script> 
        <script type="text/javascript">
        <!--
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';    
          window.document.IDNotesList.submit(); 
          window.focus();   
        }
        function print_click()
        {
           var c_uci = document.IDNotesList.c_uci.value.toString();
           var orderby = document.IDNotesList.orderby.value.toString();
           var UserAct = document.IDNotesList.UserAct.value.toString();
           var url = "PrintWebBridgedIDNotesList.aspx?c_uci=" + c_uci + "&orderby="+ orderby +"&UserAct=" + UserAct;
           winhref(url, 'PrintWebBridgedIDNotesList');
        }

        function Add_click()
        {
           document.location.replace("webBridgedIDNotesInfo.aspx?type=add");
        }
         
        //-->
        </script>        
	</head>
<body onload="onloadsizechg(120);" onresize="onloadsizechg(120);">
    <form id="IDNotesList" method="post" runat="server">
	    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
        <input type="hidden" name="validated" id="validated" value="" runat="server" />
        <input type="hidden" name="c_uci" id="c_uci" value="" runat="server" />
        <input type="hidden" name="userid" id="userid" value="" runat="server" />
        <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
        <input type="hidden" name="orderby" id="orderby" value="" runat="server" />
        <div align="left" style="WIDTH:100%; height: auto">
		    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                        src="../img/add.ico" title="New"
                        onclick="javascript:Add_click();return false;" />
                &nbsp;
                <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                    src="../img/print.ico" title="Print" visible="true"
                    onclick="javascript:print_click();return false;" />
                &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                    src="../img/back.ico" title="Back"
                    onclick="javascript:document.location.replace('webForms.aspx');return false;" />    
		        </td>
                <td align="left" valign="middle" width="60%">
                <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Case Note for</asp:label>
		        </td>
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
            <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
                <tr>
		            <td height="10px" ></td>
		        </tr>
                <tr style="height: 22px;">
                    <td>
                        <table>
                            <tr class="tr_common">
                                <td width="10" ></td>
                                <td class="td_label" style="width: 150px">	                 
		                            <asp:Label ID="TitleGroup" runat="server"><b>Please Enter UCI Number:</b></asp:Label>
				                </td>
                                <td width="5" ></td>
                                <td class="td_unline" align="left" style="width:150px">
                                    <asp:TextBox ID="searchUCI" Width="150" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                                </td>
                                <td width="5" style="width:125px">
                                    <asp:button id="btnSearchUCI" Runat="server" Text="Search" Width="125" CssClass="buttonbluestyle" 
                                        onclick="btnSearchUCI_Click"></asp:button>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr> 
                <tr>
		            <td height="10px" ></td>
		        </tr>              
            </table>
		</div>
		<div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
	        <asp:datagrid id="dg_idnotes" runat="server" AllowPaging="false" CssClass="grd_body"
				Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="tx_date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="tx_date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="txty_text" HeaderText="Type" SortExpression="txty_text" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="tx_minutes" HeaderText="Minutes" SortExpression="tx_minutes" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
				    <asp:BoundColumn DataField="tx_validated_date" HeaderText="Validated Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="tx_validated_date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="cm_notes_yn" HeaderText="Notes" SortExpression="cm_notes_yn" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="tx_id_notes" HeaderText="Description" SortExpression="tx_id_notes" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="ConsumerUCI" HeaderText="Client" SortExpression="ConsumerUCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="tx_entered_by_name" HeaderText="Entered By" SortExpression="tx_entered_by_name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:BoundColumn DataField="tx_entered_by" HeaderText="ID" SortExpression="tx_entered_by" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="View/Edit">
						<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
						<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
						<ItemTemplate>
							<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="tx_date" HeaderText="Service Date"  Visible="false"></asp:BoundColumn>
					<asp:BoundColumn DataField="tx_uci" HeaderText="UCI"  Visible="false"></asp:BoundColumn>
				</Columns>
			</asp:datagrid>
		</div>
    </form>
</body>
</html>
