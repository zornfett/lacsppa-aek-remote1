<%@ page language="C#" inherits="Virweb2.FormList.FormConsumerMap" Codebehind="FormConsumerMap.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
      <base target="_self"></base>
      <title>:::Consumer Map Search:::...</title>
	  <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	  <script type="text/JavaScript" src="../js/common.js"></script>
	  <script type="text/javascript">
		<!--
		   function show_map()
		   {  
		      //var zip1=JTrim(document.getElementById("zip1").value);
		      //var zip2=JTrim(document.getElementById("zip2").value);
		      //var zip3=JTrim(document.getElementById("zip3").value);
		      //var zip4=JTrim(document.getElementById("zip4").value);
		      //var zip5=JTrim(document.getElementById("zip5").value);
		      //var zip6=JTrim(document.getElementById("zip6").value);
		      //popupDialogWithWindow("FormConsumerShowMap.aspx?zip1="+zip1.toString()+"&zip2="+
		      //    zip2.toString()+"&zip3="+zip3.toString()+"&zip4="+zip4.toString()+"&zip5="+zip5.toString()+"&zip6="+zip6.toString());
		       var select_consumer=document.getElementById("select_c_key").value;           
               if  (select_consumer=="")
               {
                   alert("Consumer Not Exist!");
                   return;
               }
               else
               {
                    winhref("../WebList/webConsumerMapInfo.aspx?select_consumer="+select_consumer.toString(), "PrintFormConsumerMap");
               }		      
		   }
		   
		   function print_click()
		   {		      
		      var zip1=JTrim(document.getElementById("zip1").value);
		      var zip2=JTrim(document.getElementById("zip2").value);
		      var zip3=JTrim(document.getElementById("zip3").value);
		      var zip4=JTrim(document.getElementById("zip4").value);
		      var zip5=JTrim(document.getElementById("zip5").value);
		      var zip6=JTrim(document.getElementById("zip6").value);
		      var tickler="0";
		      if (document.getElementById("tickler_search").checked == true)
		        tickler="1";
		      var month=JTrim(document.getElementById("month").value);
		      var year=JTrim(document.getElementById("year").value);
		      popupDialogWithWindow("PrintFormConsumerMap.aspx?zip1="+zip1.toString()+"&zip2="+
		          zip2.toString()+"&zip3="+zip3.toString()+"&zip4="+zip4.toString()+"&zip5="+zip5.toString()+"&zip6="+
		          zip6.toString()+"&tickler="+tickler+"&year="+year.toString()+"&month="+month.toString());
		  }

		  function back_click() {
		      document.location.replace('../WebList/WebForms.aspx');
		  }
		//-->
		</script>
</head>
<body onload="onloadsizechg(90);" onresize="onloadsizechg(90);">
    <form id="form1" runat="server">
       <input type="hidden" name="select_c_key" id="select_c_key" value="" runat="server" />	
       <div align="center" style="WIDTH:100%;">
		   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	       <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	         <td align="left" valign="middle" width="25%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" id="btnshow" runat="server" alt="Map" style="width: 25px;height:25px" 
                        src="../img/map.gif" title="Map"
                   onclick="javascript:show_map();" />
                &nbsp;
                <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                   src="../img/print.ico" title="Print" visible="false"
                   onclick="javascript:print_click();return false;" />
                &nbsp;
                <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                    src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />    
             </td>  
             <td align="left" width="60%">
		        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Consumer Search:</asp:label>
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
             <tr style="height:5px">
                 <td colspan="4"></td>
             </tr>
             <tr style="height:22px">
                <td colspan="4">
                <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
                <tr>
                  <td style="WIDTH:45px;background-color:#9fb0f4"><b>Zip1:</b></td>
                  <td style="width:2px"></td>
                  <td align="left" style="width: 80px">
                      <asp:TextBox ID="zip1" runat="server" Style="width: 80px"   MaxLength=5></asp:TextBox>                                   
                  </td>
                  <td style="width:5px"></td>
                  <td style="WIDTH:45px;background-color:#9fb0f4"><b>Zip2:</b></td>
                  <td style="width:2px"></td>
                  <td align="left" style="width: 80px">
                      <asp:TextBox ID="zip2" runat="server" Style="width: 80px"   MaxLength=5></asp:TextBox>    
                  </td>
                  <td style="width:5px"></td>
                  <td style="WIDTH:45px;background-color:#9fb0f4"><b>Zip3:</b></td>
                  <td style="width:2px"></td>
                  <td align="left" style="width: 80px">
                      <asp:TextBox ID="zip3" runat="server" Style="width: 80px"   MaxLength=5></asp:TextBox>    
                  </td>
                  <td style="width:5px"></td>
                  <td style="WIDTH:45px;background-color:#9fb0f4"><b>Zip4:</b></td>
                  <td style="width:2px"></td>
                  <td align="left" style="width: 80px">
                      <asp:TextBox ID="zip4" runat="server" Style="width: 80px"   MaxLength=5></asp:TextBox>                                   
                  </td>
                  <td style="width:5px"></td>
                  <td style="WIDTH:45px;background-color:#9fb0f4"><b>Zip5:</b></td>
                  <td style="width:2px"></td>
                  <td align="left" style="width: 80px">
                      <asp:TextBox ID="zip5" runat="server" Style="width: 80px"   MaxLength=5></asp:TextBox>    
                  </td>
                  <td style="width:5px"></td>
                  <td style="WIDTH:45px;background-color:#9fb0f4"><b>Zip6:</b></td>
                  <td style="width:2px"></td>
                  <td align="left" style="width: 80px">
                      <asp:TextBox ID="zip6" runat="server" Style="width: 80px"   MaxLength=5></asp:TextBox>    
                  </td>
                </tr>
                </table>
                </td>
             </tr>
             <tr style="height:5px">
                <td colspan="4"></td>
             </tr>
             <tr style="height:22px">
                <td colspan="4">
                <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
                <tr>
                  <td style="WIDTH: 200px" align="right" bgColor="#9fb0f4" height="20">
		             <b><asp:CheckBox ID="tickler_search" runat="server" Text="Tickler Due within Month/Year:" /></b>
                  </td>
                  <td width="20" height="20"></td>
		          <td width="400" height="20" style="width: 570px">
		             <b style="color: blue">Month:</b>
				     <asp:dropdownlist id="month" runat="server" Width="100" >
                       <asp:ListItem Value="1">January</asp:ListItem>
                       <asp:ListItem Value="2">February</asp:ListItem>
                       <asp:ListItem Value="3">March</asp:ListItem>
                       <asp:ListItem Value="4">April</asp:ListItem>
                       <asp:ListItem Value="5">May</asp:ListItem>
                       <asp:ListItem Value="6">June</asp:ListItem>
                       <asp:ListItem Value="7">July</asp:ListItem>
                       <asp:ListItem Value="8">August</asp:ListItem>
                       <asp:ListItem Value="9">September</asp:ListItem>
                       <asp:ListItem Value="10">October</asp:ListItem>
                       <asp:ListItem Value="11">November</asp:ListItem>
                       <asp:ListItem Value="12">December</asp:ListItem>
		             </asp:dropdownlist>
		             &nbsp;&nbsp;&nbsp;<b>Year</b>
		             <asp:dropdownlist id="year" runat="server" Width="80" >  
					   <asp:ListItem Value="2009">2009</asp:ListItem>
					   <asp:ListItem Value="2010" Selected>2010</asp:ListItem>
					   <asp:ListItem Value="2011">2011</asp:ListItem>
					   <asp:ListItem Value="2012">2012</asp:ListItem>
					   <asp:ListItem Value="2013">2013</asp:ListItem>
					   <asp:ListItem Value="2014">2014</asp:ListItem>
					   <asp:ListItem Value="2000">2015</asp:ListItem>
					   <asp:ListItem Value="2001">2016</asp:ListItem>
					   <asp:ListItem Value="2002">2017</asp:ListItem>
					   <asp:ListItem Value="2003">2018</asp:ListItem>
					   <asp:ListItem Value="2004">2019</asp:ListItem>
					   <asp:ListItem Value="2005">2020</asp:ListItem>
					   <asp:ListItem Value="2006">2021</asp:ListItem>
					   <asp:ListItem Value="2007">2022</asp:ListItem>
					   <asp:ListItem Value="2008">2023</asp:ListItem>
					   <asp:ListItem Value="2007">2024</asp:ListItem>
					   <asp:ListItem Value="2008">2025</asp:ListItem>
		             </asp:dropdownlist>
		          </td> 
                  <td style="width:200px">
                     <asp:button id="btnSearch" Runat="server" Text="List Consumers" style="width:120px" CssClass="buttonbluestyle" onClick="btnSearch_Click">
                     </asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>  
		        </tr>
		   </table>
		</div>	
        <br />
		<div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
           <asp:datagrid id="dg_consumerinfo" runat="server" PageSize="10" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
					<HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
					    <asp:BoundColumn DataField="c_key" HeaderText="c_key" Visible="False" ></asp:BoundColumn>
						<asp:BoundColumn DataField="c_name_last" HeaderText="Last Name" SortExpression="c_name_last"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_name_first" HeaderText="First Name" SortExpression="c_name_first"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_uci" HeaderText="Client ID" SortExpression="c_uci"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" SortExpression="c_dob" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="address" HeaderText="Address" SortExpression="address" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="c_phone_1" HeaderText="Phone #" SortExpression="c_phone_1" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                        <asp:BoundColumn DataField="contact" HeaderText="Contact" SortExpression="contact" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>           			
					</Columns>
					<PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				</asp:datagrid>
        </div>
    </form>
</body>
</html>
