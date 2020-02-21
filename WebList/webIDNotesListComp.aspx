<%@ Page Language="C#" Inherits="Virweb2.WebList.webIDNotesList" CodeBehind="webIDNotesListComp.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <base target="_self" />
    <title>:::Client Case Note List:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javaScript" src="../js/common.js"></script>

<script language="javascript" type="text/javascript">
/*
       var sessionTimeoutWarning = "<%= System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()%>";
       var sessionTimeout = "<%= Session.Timeout %>";
       
       var sTimeout = (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning)) * 60 * 1000;
       setTimeout('SessionWarning()', sTimeout);

       function SessionWarning() {
         var message = "Your session will expire in another " + 
            parseInt(sessionTimeoutWarning) + 
            " mins! Please Save the data before the session expires";
         alert(message);
       }
*/
</script>

    <script type="text/javascript">
        <!--
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';    
          window.document.IDNotesList.submit(); 
          window.focus();   
        }

        function Add_click()
        {
           document.location.replace("webIDNotesInfoComp.aspx?type=add");
        }
        
        function history_click() 
        {
	       var url="PrintPropertryHis.aspx";
           winhref(url, 'PrintPropertryHis');
        }
        //-->
    </script>
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);">
    <form id="IDNotesList" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px; height: 25px"
                        visible="false" src="../img/add.ico" title="New" onclick="javascript:Add_click();return false;" />
                    &nbsp;
                    <asp:ImageButton ID="btnDesc" runat="server" AlternateText="Description" Style="width: 25px;
                        height: 25px" ImageUrl="../img/information.gif" ToolTip="Description" OnClick="BtnDesc_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:document.location.replace('webConsumerList.aspx');return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Case Note for</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px"
                        src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
            <tr style="height: 8px">
                <td colspan="3">
                </td>
            </tr>
        </table>
    </div>
    <div align="right" style="width: 100%">
        &nbsp;&nbsp;&nbsp;
	    <input type="button" id="btnHis" value="Property History" style="width:150px;"  class="buttonbluestyle" 
           onclick="javascript:history_click();" visible="false" runat="server" /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; height: 450px;
        overflow: auto">
        <asp:DataGrid ID="dg_idnotes" runat="server" AllowPaging="false" CssClass="grd_body"
            Visible="True" AutoGenerateColumns="False" AllowSorting="True">
            <HeaderStyle CssClass="grd_head"></HeaderStyle>
            <ItemStyle CssClass="grd_item"></ItemStyle>
            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
            <Columns>
                <asp:BoundColumn DataField="tx_date" HeaderText="Service Date" DataFormatString="{0:MM/dd/yyyy}"
                    SortExpression="tx_date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="day_name" HeaderText="Day" SortExpression="day_name"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="txty_text" HeaderText="Type" SortExpression="txty_text"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_template" HeaderText="Template" SortExpression="tx_template"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_minutes" HeaderText="Minutes" SortExpression="tx_minutes"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_createdate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}"
                    SortExpression="tx_createdate" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="tx_validated_date" HeaderText="Final Date" DataFormatString="{0:MM/dd/yyyy}"
                    SortExpression="tx_validated_date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="tx_verified_xix" HeaderText="Verify Date" DataFormatString="{0:MM/dd/yyyy}"
                    SortExpression="tx_verified_xix" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="txd_miles" HeaderText="Miles" SortExpression="txd_miles"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="txd_SFC" HeaderText="Spent For Client" SortExpression="txd_SFC"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="txd_misc_hour" HeaderText="Billing Hour" SortExpression="txd_misc_hour"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="txd_misc_min" HeaderText="Billing Minute" SortExpression="txd_misc_min"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="View/Edit">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                    <ItemTemplate>
                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                            BorderWidth="0"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="DELETE">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                    <ItemTemplate>
                        <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                            ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Img">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                    <ItemTemplate>
                        <asp:Image runat="server" ID="imgExist" Width="15px" Height="15px" ImageUrl="../img/star.gif"
                            BorderWidth="0"></asp:Image>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="tx_id_notes" HeaderText="Description" SortExpression="tx_id_notes"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_date" HeaderText="Service Date" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="txty_bill" HeaderText="TypeBill" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="tx_createdate" HeaderText="Create Date" Visible="false"></asp:BoundColumn>
            </Columns>
        </asp:DataGrid>
    </div>
    </form>
</body>
</html>
