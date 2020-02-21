﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webResIDNotesList.aspx.cs" Inherits="Virweb2.WebList.webResIDNotesList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
	    <base target="_self" />
		<title>:::Resource ID Note List:::...</title>
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
           document.location.replace("webResIDNotesInfo.aspx?type=add");
        }

        function print_click()
        {
           var resid = document.IDNotesList.resid.value.toString();
           var UserAct = document.IDNotesList.UserAct.value.toString();
           var url = "PrintWebResIDNotesList.aspx?resid=" + resid + "&UserAct=" + UserAct;
           winhref(url, 'PrintWebResIDNotesList');
        }
         
        //-->
        </script>        
	</head>
	<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
		<form id="IDNotesList" method="post" runat="server">
		    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
            <input type="hidden" name="resid" id="resid" value="" runat="server" />
            <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
            <input type="hidden" name="validated" id="validated" value="" runat="server" />
		    <div align="center" style="WIDTH:100%;">
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
                        onclick="javascript:document.location.replace('webResourceList.aspx');return false;" />    
		         </td>
                 <td align="left" valign="middle" width="60%">
                    <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">ID Note for</asp:label>
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
               <tr style="height:8px">
                 <td colspan="3"></td> 
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
						<asp:BoundColumn DataField="tx_entered_by_name" HeaderText="Entered By" SortExpression="tx_entered_by_name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
						<asp:BoundColumn DataField="tx_entered_by" HeaderText="ID" SortExpression="tx_entered_by" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Top"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="View/Edit">
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
						<asp:TemplateColumn HeaderText="Img" Visible="false">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:Image Runat="server" ID="imgExist" Width="15px" Height="15px" ImageUrl="../img/star.gif"
									BorderWidth="0"></asp:Image>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="tx_date" HeaderText="Service Date"  Visible="false"></asp:BoundColumn>
					</Columns>
				</asp:datagrid>
			</div>
		</form>
	</body>
</html>
