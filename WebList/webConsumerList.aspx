<%@ Page language="c#" Inherits="Virweb2.WebList.webConsumerList" Codebehind="webConsumerList.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
	<head>
		<title>::Client List:::...</title>
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
        <!--
        
        function RefreshMyData()    
        {                  
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.ConsumerList.submit(); 
          window.focus();   
        }
        
        function display_consumermap()
        {
            var select_consumer=document.getElementById("select_c_key").value;           
            if  (select_consumer=="")
            {
                alert("Client Not Exist!");
                return;
            }
            else
            {
                popupDialogWithWindow("webConsumerMapInfo.aspx?select_consumer="+select_consumer.toString());
            }
        }

        function print_click()
        {         
            var criteria=document.ConsumerList.criteria.value.toString();   
            var orderby=document.ConsumerList.orderby.value.toString();
            var UserAct=document.ConsumerList.UserAct.value.toString();  
            winhref("PrintConsumerList.aspx?orderby="+orderby+"&criteria="+criteria,"PrintConsumerList");   
        }

        function setScrollPositionGrid(pos) 
        {
            document.getElementById("maindiv").scrollTop = pos*1.25;
        }

        function SetInitSelectedVal(index, color)
        {
           var aa=document.getElementById("dg_consumerinfo");
           lastrow = aa.rows[index+1];
           lastcolor = color;
        }
        
        //-->
        </script> 
	</head>
	<body onload="onloadsizechg(175);" onresize="onloadsizechg(175);">
		<form id="ConsumerList" method="post" runat="server" defaultbutton="btnSearch" action="webConsumerList.aspx">
		    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />	
		    <input type="hidden" name="select_c_key" id="select_c_key" value="" runat="server" />
            <input type="hidden" name="criteria" id="criteria" value="" runat="server" />
            <input type="hidden" name="initcriteria" id="initcriteria" value="" runat="server" />
		    <input type="hidden" name="orderby" id="orderby" value="" runat="server" /> 
		    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" /> 	     
		    <div align="center" style="WIDTH:100%">  
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	           <tr style="height: 30px; background-color: #EAF4FF">
                 <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="Add" style="width: 25px;height:25px" visible="false" 
                            src="../img/add.ico" title="New"
                            onclick="javascript:document.location.replace('webConsumerInfo.aspx?type=add');return false;" />
                    &nbsp;
                    <input type="image" id="btnMap" runat="server" alt="Map" style="width: 25px;height:25px" visible="false"  
                            src="../img/map.gif" title="Map"
                            onclick="javascript:display_consumermap();" />
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                            src="../img/print.ico" title="Print"
                            onclick="javascript:print_click();return false;" />
                 </td>
                 <td align="left" valign="middle" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" >Client</asp:label>
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
                     <!--<input type="button" ID="imgRes" 
                         style="visibility:hidden; border-style: none; background-position: center center; background-image: url('../img/restore.png'); width:20px; height:20px; background-repeat: no-repeat;" value=""
									onclick="javascript:return RestoreMyHome();" visible="false"/> -->
                 </td>
               </tr>
               <tr style="height:2px">
                 <td colspan="3" style="background-color:#137AC5"></td> <!-- #AAFFC4-->
               </tr>         
               </table>
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
               <tr>
		         <td colspan="3" height="5px" ></td>
		       </tr>
               <tr style="height: 22px;">
		         <td style="width:40%" align="left">
		            &nbsp;&nbsp;&nbsp;&nbsp;<b>
		            <asp:label ID="SelClientTitle" runat="server">Select Criteria:</asp:label>
		            </b>&nbsp;&nbsp;&nbsp;&nbsp;	                         
                    <asp:DropDownList ID="cm_type" runat="server" style="width:200px" OnSelectedIndexChanged="CmType_SelectedIndexChanged"
			                     DataTextField="search_name" AutoPostBack="true">          
                    </asp:DropDownList>
                 </td>
                 <td style="width:50%">
                    <b><asp:Label ID="SortBy" runat="server" Text="Sort by:"></asp:Label></b>
                 </td>
                 <td align="left" style="width:10%">
		         </td>
		       </tr>
		       <tr>
		         <td colspan="3" height="2px" ></td>
		       </tr>
		       <tr style="height: 22px;">
		         <td colspan="2"  align="left" >
		            &nbsp;&nbsp;&nbsp;&nbsp;<b>
		            <asp:label ID="SearchTitle" runat="server">Search clients by</asp:label>
		            </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <asp:Label ID="c_uci" runat="server" Text="UCI" ></asp:Label>:&nbsp;&nbsp;&nbsp; 		            
                    <asp:TextBox ID="s_uci" runat="server" Style="width: 100px" Width="100px" MaxLength="8"></asp:TextBox>
		            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name:&nbsp;&nbsp;&nbsp; 		            
                    <asp:TextBox ID="s_lastname" runat="server" Style="width: 110px" Width="110px" MaxLength="25"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="s_firstname" runat="server" Style="width: 110px" Width="110px" MaxLength="25"></asp:TextBox> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="l_status" runat="server" Text="Status:"></asp:Label>&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="s_status" runat="server" Width="120px" Height="20px" 
                                  DataValueField="tb_entry_name" DataTextField="tb_entry_text"></asp:DropDownList>   
                 </td>
                 <td align="left" style="width:10%">
				    <asp:Button ID="btnSearch" Runat="server" Text="Search" CssClass="buttonbluestyle"  Width="90px"  OnClick="btnSearch_Click" ></asp:Button>                      
                 </td>
		       </tr>	
		       <tr>
		         <td colspan="3" height="2px" ></td>
		       </tr>			
		       </table>
            </div>		
			<div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;overflow: auto ">
				<asp:datagrid id="dg_consumerinfo" runat="server" AllowPaging="false" CssClass="grd_body" 
                      OnPageIndexChanging="dg_consumerinfo_PageIndexChanged" PageSize="15" 
					  Visible ="True" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="true"                     
                      PagerStyle-Mode="NextPrev"
                      PagerStyle-Position="Bottom"
                      PagerStyle-HorizontalAlign="Right"
                      PagerStyle-NextPageText="Next Page"
                      PagerStyle-PrevPageText="Prev Page">
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>				
					<Columns>
                    	<asp:BoundColumn DataField="c_key" HeaderText="c_key" Visible="False" ></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_imgg" ID="image_green" Runat="server" ImageUrl="../img/circle-green.png" BorderWidth="0">
                                </asp:HyperLink>
                                <asp:HyperLink NavigateUrl="#herf_imgr" ID="image_red" Runat="server" ImageUrl="../img/circle-red.png" BorderWidth="0">
                                </asp:HyperLink><br />
                                <asp:HyperLink NavigateUrl="#herf_imgb" ID="image_blue" Runat="server" ImageUrl="../img/circle-blue.png" BorderWidth="0">
                                </asp:HyperLink>
                                <asp:HyperLink NavigateUrl="#herf_imgp" ID="image_purple" Runat="server" ImageUrl="../img/circle-purple.png" BorderWidth="0">
                                </asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Image">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_img" ID="hy_image" Runat="server" ImageUrl="../img/star.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
                        <asp:BoundColumn DataField="c_uci" HeaderText="Client ID" SortExpression="c_uci"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_name_last" HeaderText="Client Last Name" SortExpression="c_name_last"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_name_first" HeaderText="Client First Name" SortExpression="c_name_first"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_phone_1" HeaderText="Phone #" SortExpression="c_phone_1" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" SortExpression="c_dob" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Age" HeaderText="Age" SortExpression="Age" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
					    <asp:BoundColumn DataField="MedicaidWaiver" HeaderText="MW" SortExpression="MedicaidWaiver" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="c_cm_id" HeaderText="CM" SortExpression="c_cm_id" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="CaseMgrName" HeaderText="CM Name" SortExpression="CaseMgrName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="c_mis" HeaderText="MIS#" SortExpression="c_mis" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="StatusName" HeaderText="Status" SortExpression="StatusName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="EyeColorName" HeaderText="EyeColor" SortExpression="EyeColorName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="c_address_line_1" HeaderText="Address" SortExpression="c_address_line_1" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ResidenceType" HeaderText="Residence Type" SortExpression="ResidenceType" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="c_residence_number" HeaderText="Vendor#" SortExpression="r_residence_number" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="GroupName" HeaderText="GP" SortExpression="GroupName" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
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
                    	<asp:BoundColumn DataField="c_language" HeaderText="c_language" Visible="False" ></asp:BoundColumn>
                    	<asp:BoundColumn DataField="imaged" HeaderText="imaged" Visible="False" ></asp:BoundColumn>
                    	<asp:BoundColumn DataField="Legal18" HeaderText="Legal18" Visible="False" ></asp:BoundColumn>
                    	<asp:BoundColumn DataField="judicial_inv" HeaderText="judicial_inv" Visible="False" ></asp:BoundColumn>
                        <asp:BoundColumn DataField="porder" HeaderText="porder" Visible="False" ></asp:BoundColumn>
                        <asp:BoundColumn DataField="ImageYN" HeaderText="Image" Visible="false" ></asp:BoundColumn>
                        <asp:BoundColumn DataField="c_offsite_location" HeaderText="Loc" Visible="false" ></asp:BoundColumn>
					</Columns>  
                         
				</asp:datagrid>
            </div>
            <div id="TotalInfo" align="left" runat="server">
            <br />
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Total" runat="server" Text="" Font-Bold="true"></asp:Label>
            <br /><br />	
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Age In <img src="../img/rect-pink.png" alt="Pink" height="12" width="12">&nbsp;--&nbsp;<b>Legal Status Needs Updating</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            UCI In <img src="../img/rect-yellow.png" alt="Yellow" height="12" width="12">&nbsp;--&nbsp;<b>Medicaid Waiver</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            UCI# <img src="../img/rect-red.png" alt="Red" height="12" width="12">&nbsp;--&nbsp;<b>Judicial Involvement</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="../img/circle-red.png" alt="Red" height="12" width="12">&nbsp;--&nbsp;<b>Registered Sex Offender</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="../img/circle-green.png" alt="Green" height="12" width="12">&nbsp;--&nbsp;<b>Confidential Information</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="../img/circle-blue.png" alt="Blue" height="12" width="12">&nbsp;--&nbsp;<b>Conserved/ Legal Guardian</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="../img/circle-purple.png" alt="Purple" height="12" width="12">&nbsp;--&nbsp;<b>Universal Precaution</b>
			<asp:Button ID="btnXML" Runat="server" Text="Create XML File" CssClass="buttonbluestyle"  Width="120px"  OnClick="btnXML_Click" Visible="false">
            </asp:Button> 
            <input type="button" name="btnViewXML" id="btnViewXML" value="View XML File" Width="120px" class="buttonbluestyle"  
                  onclick="winhref('../OutXmlFiles/consumerlist.xml');" style="visibility:hidden;" />
            </div>
		</form>
	</body>
</html>
