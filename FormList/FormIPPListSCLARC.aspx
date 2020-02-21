﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormIPPListSCLARC.aspx.cs" Inherits="Virweb2.FormList.FormIPPListSCLARC" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
        <base target="_self" />
		<title>:::Individual Program Plan(IPP):::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript" src="../js/common.js"></script>

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
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.IPPList.submit(); 
          window.focus();   
        }

        function add_click(uci)
        {
            if (document.IPPList.ippexist.value == "1")
            {
               var DspStr = "Do you want to bring over your previous IPPs outcomes?";
               //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
               var saveflag = PromptSaveChange(1, DspStr);
               if (saveflag == "1")
                   document.location.replace("FormIPPInfoSCLARC.aspx?uci="+uci+"&type=add&Prefill=1");
               else if (saveflag == "0")
                   document.location.replace("FormIPPInfoSCLARC.aspx?uci="+uci+"&type=add");
            }
            else
               document.location.replace("FormIPPInfoSCLARC.aspx?uci="+uci+"&type=add");
        }
        
        function print_click()
        {
          //PopupMessage(10);
        }

        function back_click() {
          document.location.replace('../weblist/webConsumerList.aspx');
        }
        </script>        
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="IPPList" method="post" runat="server">
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
        <input type="hidden" name="ippexist" id="ippexist" value="" runat="server" />
        <input type="hidden" name="IsAdminPM" id="IsAdminPM" value="" runat="server" />
        <div algin="left" style="WIDTH:100%;">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	           <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                       src="../img/add.ico" title="New" />
                    <input type="image" id="btnEdit" runat="server" alt="Modify" style="width: 25px;height:25px" visible="false" 
                       src="../img/edit.ico" title="Modify" />           
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                       src="../img/print.ico" title="Print" visible="false"
                       onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                        src="../img/back.ico" title="Back"
                        onclick="javascript:back_click();return false;" />          
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Client:</asp:label>
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
		<div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:600px;  overflow: auto ">
			<asp:datagrid id="dg_FormIPP" runat="server" AllowPaging="false" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="true" >
				<HeaderStyle CssClass="grd_head"></HeaderStyle>
				<ItemStyle CssClass="grd_item"></ItemStyle>
				<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				<FooterStyle CssClass="grd_fsitem"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="IPPID" HeaderText="IPPID" Visible="false">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="uci" HeaderText="uci" Visible="false">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
					<asp:BoundColumn DataField="createdate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="createdate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
					<asp:BoundColumn DataField="enteredby" HeaderText="Entered By" SortExpression="enteredby">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="ReviewDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ReviewPurpose_desc" HeaderText="Purpose of Review" SortExpression="ReviewPurpose_desc">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="Sign" HeaderText="Status" SortExpression="Sign">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	          									
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
                    <asp:BoundColumn DataField="ipp_verify" HeaderText="ipp_verify" Visible="false">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>									
				</Columns>
				<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
			</asp:datagrid>
		</div>
    </form>
</body>
</html>
