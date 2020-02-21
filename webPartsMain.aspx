<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webPartsMain.aspx.cs" Inherits="Virweb2.webPartsMain" %>

<%@ Register Src="CustomerControl/CtrlConsumerList.ascx" TagName="CtrlConsumerList" TagPrefix="uc1" %>
<%@ Register Src="CustomerControl/DisplayModeMenu.ascx" TagName="DisplayModeMenu" TagPrefix="uc2" %>
<%@ Register Src="CustomerControl/CtrlIDNotesList.ascx" TagName="CtrlIDNotesList" TagPrefix="uc3" %>
<%@ Register src="CustomerControl/SearchUserControl.ascx" tagname="SearchUserControl" tagprefix="uc4" %>
<%@ Register src="CustomerControl/LinkToWeather.ascx" tagname="LinkToWeather" tagprefix="uc5" %>
<%@ Register src="CustomerControl/CtrlForms.ascx" tagname="CtrlForms" tagprefix="uc6" %>
<%@ Register src="CustomerControl/CtrlReports.ascx" tagname="CtrlReports" tagprefix="uc7" %>
<%@ Register src="CustomerControl/CtrlUserList.ascx" tagname="CtrlUserList" tagprefix="uc8" %>
<%@ Register src="CustomerControl/CtrlClewMessage.ascx" tagname="CtrlClewMessage" tagprefix="uc9" %>
<%@ Register src="CustomerControl/CtrlConsumerProfile.ascx" tagname="CtrlConsumerProfile" tagprefix="uc10" %>
<%@ Register src="CustomerControl/CtrlLinkList.ascx" tagname="CtrlLinkList" tagprefix="uc11" %>
<%@ Register src="CustomerControl/CtrlUserSet.ascx" tagname="CtrlUserSet" tagprefix="uc12" %>
<%@ Register src="CustomerControl/CtrlOperLog.ascx" tagname="CtrlOperLog" tagprefix="uc13" %>
<%@ Register src="CustomerControl/LinkYahooCalendar.ascx" tagname="LinkYahooCalendar" tagprefix="uc14" %>
<%@ Register src="CustomerControl/LinkGoogleCalendar.ascx" tagname="LinkGoogleCalendar" tagprefix="uc15" %>
<%@ Register src="CustomerControl/LinkASPCalendar.ascx" tagname="LinkASPCalendar" tagprefix="uc16" %>
<%@ Register src="CustomerControl/CtrlEsrTrfList.ascx" tagname="CtrlEsrTrfList" tagprefix="uc17" %>
<%@ Register src="CustomerControl/SearchFullText.ascx" tagname="SearchFullText" tagprefix="uc18" %>
<%@ Register src="CustomerControl/CtrlConsumerMenu.ascx" tagname="CtrlConsumerMenu" tagprefix="uc19" %>
<%@ Register src="CustomerControl/CtrlFormMenu.ascx" tagname="CtrlFormMenu" tagprefix="uc20" %>
<%@ Register src="CustomerControl/SearchResource.ascx" tagname="SearchResource" tagprefix="uc21" %>
<%@ Register src="CustomerControl/CtrlResourceList.ascx" tagname="CtrlResourceList" tagprefix="uc22" %>
<%@ Register src="CustomerControl/CtrlResourceProfile.ascx" tagname="CtrlResourceProfile" tagprefix="uc23" %>
<%@ Register src="CustomerControl/CtrlMonitoringToolReports.ascx" tagname="CtrlMonitoringToolReports" tagprefix="uc24" %>
<%@ Register src="CustomerControl/CtrFinancial.ascx" tagname="CtrFinancial" tagprefix="uc25" %>
<%@ Register src="CustomerControl/CtrlConsultants.ascx" tagname="CtrlConsultants" tagprefix="uc26" %>
<%@ Register src="CustomerControl/CtrlCSDMenu.ascx" tagname="CtrlCSDMenu" tagprefix="uc27" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head runat="server">
    <title></title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/JavaScript" src="js/common.js"></script>  
    <script type="text/javascript" language="javascript">
        function resizeframe(obj) {
            obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
        }
        function disableCheckBox(result) 
        {
            for (var i = 0; i < result.length; i++) 
            {
                  // alert(result[i]);
                  var target = document.getElementById(result[i]);
                  if (target != null) {
                      target.disabled = true;
                      target.checked = true;
                      //target.style.backgroundColor = "lightgray";
                  }
            }

              var zone = document.getElementById("CatalogZone1__zones");
              if (zone != null) {
                  zone.style.display = "none";
              }
        }

        function stopRKey(evt) {
            var evt = (evt) ? evt : ((event) ? event : null);
            var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
            if (evt.keyCode == 13) 
            {
              //if (node.type == "text")) 
              //{
              //    alert(node.id); 
              //}
              //else 
                  return false; 
            }

            /*
            var doPrevent = false;
            alert(evt.keyCode);
            if (evt.keyCode == 8) {
                if ((node.tagName.toUpperCase() === 'INPUT' && (node.type.toUpperCase() === 'TEXT' || node.type.toUpperCase() === 'PASSWORD'))
             || node.tagName.toUpperCase() === 'TEXTAREA') {
                    doPrevent = node.readOnly || node.disabled;
                }
                else {
                    doPrevent = true;
                }
               
                if (doPrevent)
                //event.preventDefault();
                    return false;
            }
            */
        }
        document.onkeypress = stopRKey;
    </script> 
</head>
<body  onload="onloadsizechg(50);" onresize="onloadsizechg(50);" onkeydown="cancelBack();">
    <form id="form1" runat="server" >

    <asp:WebPartManager ID="WebPartManager1" runat="server" 
       DeleteWarning="You are removing the Web Part from the dash board. Are you sure you want to do this? To remove this Web Part, click OK. To Keep this Web Part, click Cancel.">
        <StaticConnections>
        </StaticConnections>
    </asp:WebPartManager>
    <div align="left" style="WIDTH:100%; ">
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr valign="middle" style="height:30px; background-color: #EAF4FF">
        <td align="left" valign="middle" width="25%">
            &nbsp;
        </td>
        <td align="right" width="60%">
            <uc2:DisplayModeMenu ID="DisplayModeMenu1" runat="server" />  
        </td>
        <td align="left" width="15%">
            <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                src="./img/supportdesk.ico" title="Support"
                onclick="javascript:window.top.outsidelinks(1);return false;" />             
            &nbsp;
            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                src="./img/help.ico" title="Help"
                onclick="javascript:window.top.outsidelinks(2);return false;" />             
            &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                src="./img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('./webLogout.aspx');return false;" />             
            &nbsp;
        </td>
      </tr>
      <tr style="height:2px">
        <td colspan="3" style="background-color:#137AC5"></td> <!-- #AAFFC4-->
      </tr>
    </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:850px">
    <table class="table_maindiv">
     <tr>
     <td valign="top"> 
      <table border="0" cellpadding="0">
        <tr>
            <td>
                 <asp:CatalogZone ID="CatalogZone1" runat="server" PartChromePadding="0px" 
                     PartStyle-HorizontalAlign="Left" 
                     Width="250px" height="100%" HeaderText=""  EnableTheming="True" 
                     SelectTargetZoneText="" Padding="10" >
                    <ZoneTemplate>
                        <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server" 
                            ChromeType="TitleOnly" Title="Web Parts Catalog" >
                             <WebPartsTemplate>  
                                 <uc1:CtrlConsumerList ID="CtrlConsumerList1" runat="server" title="CLIENT LIST" TitleIconImageUrl="./img/clientlist.ico" />
                                 <uc10:CtrlConsumerProfile ID="CtrlConsumerProfile1" runat="server" Title="CLIENT PROFILE" TitleIconImageUrl="./img/profile.ico" />
                                 <uc3:CtrlIDNotesList ID="CtrlIDNotesList1" runat="server" title="ID NOTES LIST" TitleIconImageUrl="./img/IDNotes.ico" />
                                 <uc4:SearchUserControl ID="SearchUserControl1" runat="server" Title="SEARCH" TitleIconImageUrl="" />
                                 
                                 <uc22:CtrlResourceList ID="CtrlResourceList1" runat="server" Title="VENDOR LIST" TitleIconImageUrl="./img/clientlist.ico" />
                                 <uc23:CtrlResourceProfile ID="CtrlResourceProfile1" runat="server" Title="VENDOR PROFILE" TitleIconImageUrl="./img/profile.ico" />
                                 <uc21:SearchResource ID="SearchResource1" runat="server" Title="SEARCH VENDOR" TitleIconImageUrl="./img/reports.ico" />   
                                 <uc24:CtrlMonitoringToolReports ID="CtrlMonitoringToolReports1" runat="server" Title="MONITORING TOOL" TitleIconImageUrl="./img/reports.ico" />
                                 <uc25:CtrFinancial ID="CtrFinancial1" runat="server" Title="FINANCIAL" TitleIconImageUrl="./img/reports.ico" />
                                 <uc26:CtrlConsultants ID="CtrlConsultants1" runat="server" Title="CONSULTANTS" TitleIconImageUrl="./img/reports.ico" /> 
                                                                   
                                 <uc6:CtrlForms ID="CtrlForms1" runat="server" Title="FORM LIST" TitleIconImageUrl="./img/forms.ico" />
                                 <uc7:CtrlReports ID="CtrlReports1" runat="server" Title="REPORT LIST" TitleIconImageUrl="./img/reports.ico" />                         
                                 <uc9:CtrlClewMessage ID="CtrlClewMessage1" runat="server" Title="TO DO LIST" TitleIconImageUrl="./img/tickler.ico" />
                                 <uc13:CtrlOperLog ID="CtrlOperLog1" runat="server" Title="LAST ACCESS LIST" TitleIconImageUrl="./img/previous.ico" />
                                 <uc11:CtrlLinkList ID="CtrlLinkList1" runat="server" Title="WEB LINKS" TitleIconImageUrl="./img/quicklinks2.ico" />
                                 
                                 <uc12:CtrlUserSet ID="CtrlUserSet1" runat="server" Title="MY SETTINGS" TitleIconImageUrl="./img/mysettings.ico" /> 
                                 <uc17:CtrlEsrTrfList ID="CtrlEsrTrfList1" runat="server" Title="PRRS TRANSFER" TitleIconImageUrl="./img/tickler.ico" />
                                 <uc18:SearchFullText ID="SearchFullText1" runat="server" Title="SEARCH FULL TEXT" TitleIconImageUrl="./img/reports.ico" />           
                                 <uc19:CtrlConsumerMenu ID="CtrlConsumerMenu1" runat="server" Title="CLIENT MENU" TitleIconImageUrl="./img/IDNotes.ico" />           
                                 <uc20:CtrlFormMenu ID="CtrlFormMenu1" runat="server" Title="FORM MENU" TitleIconImageUrl="./img/forms.ico" /> 
                                 <uc27:CtrlCSDMenu ID="CtrlCSDMenu1" runat="server" Title="CSD MENU" TitleIconImageUrl="./img/reports.ico" />          
                             </WebPartsTemplate>
                        </asp:DeclarativeCatalogPart>
                    </ZoneTemplate>
                    <HeaderCloseVerb Text=" " />
                    <PartStyle HorizontalAlign="Left" BackColor="#DDDDFF" Font-Bold="True" 
                         BorderStyle="Double"></PartStyle>
                    <PartTitleStyle BackColor="#99CCFF" BorderStyle="Solid" Font-Bold="True" 
                         Font-Size="10pt" Height="35px" />
                </asp:CatalogZone>
            </td>
        </tr>
      </table>
     </td>
     <td>
      <table border="0" cellpadding="0" width="100%">
        <tr>
            <td valign="top" style="width:33%;">
                <asp:WebPartZone ID="WebPartZone1" runat="server" HeaderText=" " 
                    Font-Names="Verdana" Width="95%"
                    BorderStyle="None"
                    WebPartVerbRenderMode="TitleBar">
                    <ZoneTemplate>
                    </ZoneTemplate>
                    <CloseVerb Visible="False" ImageUrl="~/img/close.png" />
                    <DeleteVerb ImageUrl="~/img/close.png" />
                    <MinimizeVerb ImageUrl="~/img/min.png" />
                    <RestoreVerb ImageUrl="~/img/maxmin.gif" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" 
                        Width="20px" />
                    <MenuLabelHoverStyle ForeColor="Yellow" />
                    <MenuLabelStyle ForeColor="#333333" />
                    <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <MenuVerbStyle BorderColor="#1C5E55" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <HeaderStyle CssClass="PartZoneHeader" />
                    <PartChromeStyle BorderColor="White" />
                    <PartStyle CssClass="PartStyle" />
                    <PartTitleStyle CssClass="PartTitleStyle" Height="20px" 
                        HorizontalAlign="Left" />
                </asp:WebPartZone>
            </td>
            <td valign="top" style="width:33%">
                <asp:WebPartZone ID="WebPartZone2" runat="server" HeaderText=" " BorderColor="#CCCCCC"
                    Font-Names="Verdana" Padding="1" Style="margin-bottom: 2px" Width="95%" 
                    BorderStyle="None" PartChromePadding="0px"
                    WebPartVerbRenderMode="TitleBar">
                    <ZoneTemplate>
                    </ZoneTemplate>
                    <CloseVerb Visible="False" ImageUrl="~/img/close.png" />
                    <DeleteVerb ImageUrl="~/img/close.png" />
                    <MinimizeVerb ImageUrl="~/img/min.png" />
                    <RestoreVerb ImageUrl="~/img/maxmin.gif" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" 
                        Width="20px" />
                    <MenuLabelHoverStyle ForeColor="Yellow" />
                    <MenuLabelStyle ForeColor="#333333" />
                    <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <MenuVerbStyle BorderColor="#1C5E55" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <HeaderStyle CssClass="PartZoneHeader" />
                    <PartChromeStyle BorderColor="White" />
                    <PartStyle CssClass="PartStyle" />
                    <PartTitleStyle CssClass="PartTitleStyle" Height="20px" 
                        HorizontalAlign="Left" />
                </asp:WebPartZone>
            </td>        
            <td valign="top" style="width:33%">
                 <asp:WebPartZone ID="WebPartZone3" runat="server" HeaderText=" " BorderColor="#CCCCCC"
                    Font-Names="Verdana" Padding="1" Style="margin-bottom: 2px" Width="95%" 
                    BorderStyle="None" PartChromePadding="0px"
                    WebPartVerbRenderMode="TitleBar">
                    <ZoneTemplate>
                    </ZoneTemplate>
                    <CloseVerb Visible="False" ImageUrl="~/img/close.png" />
                    <DeleteVerb ImageUrl="~/img/close.png" />
                    <MinimizeVerb ImageUrl="~/img/min.png" />
                    <RestoreVerb ImageUrl="~/img/maxmin.gif" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" 
                        Width="20px" />
                    <MenuLabelHoverStyle ForeColor="Yellow" />
                    <MenuLabelStyle ForeColor="#333333" />
                    <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <MenuVerbStyle BorderColor="#1C5E55" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <HeaderStyle CssClass="PartZoneHeader" />
                    <PartChromeStyle BorderColor="White" />
                    <PartStyle CssClass="PartStyle" />
                    <PartTitleStyle CssClass="PartTitleStyle" Height="20px" HorizontalAlign="Left" />
                </asp:WebPartZone>
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
