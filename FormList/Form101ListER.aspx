<%@ Page Language="C#" Inherits="Virweb2.FormList.Form101ListER" Codebehind="Form101ListER.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head id="Head1" runat="server">
    <base target="_self" />
    <title>:::ES Intake List:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    <!--
        function RefreshMyData()    
        {         
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.Form101.submit(); 
          window.focus();   
        }
        
        function print_click(FDLRC)
        {         
          var SeeFlag=document.Form101.SeeFlag.value.toString();
          var UserAct=document.Form101.UserAct.value.toString();  
          var PrintFlag=window.showModalDialog("Form101PrintDiag.aspx?SeeFlag="+SeeFlag.toString(), self,"status:no;dialogWidth:350px;dialogHeight:300px;help:no;scroll:no;resizable:yes;");            
          if(PrintFlag=="2"){              
               var startdate=document.getElementById("PrintStarDate").value;
               var enddate=document.getElementById("PrintEndDate").value;
               if (FDLRC==1)
                   winhref("PrintForm101ERFDLRC.aspx?startdate="+startdate+"&enddate="+enddate+"&SeeFlag="+SeeFlag+"&erstart=1&UserAct="+UserAct,"PrintForm101ERFDLRC"); 
               else           
                   winhref("PrintForm101ER.aspx?startdate="+startdate+"&enddate="+enddate+"&SeeFlag="+SeeFlag+"&erstart=1&UserAct="+UserAct,"PrintForm101ER");            
          }
          else if (PrintFlag=="1") 
          {
              return;
          }
        }

        function back_click() {
          document.location.replace('../WebList/WebForms.aspx');
        }
     //-->   
    </script>
</head>
	<body onload="onloadsizechg(110);" onresize="onloadsizechg(110);">
        <script type="text/JavaScript" src="../js/calendar.js"></script>
		<form id="Form101" method="post" runat="server">
            <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
            <asp:HiddenField ID="SeeFlag" runat="server" Value="0" />
            <asp:HiddenField ID="PrintStarDate" runat="server" Value="" />
            <asp:HiddenField ID="PrintEndDate" runat="server" Value="" />       
            <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" /> 
            <div align="center" style="WIDTH:100%">  
	        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
	          <tr style="height: 30px; background-color: #EAF4FF" valign="middle">
	             <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px;height:25px" visible="false" 
                       src="../img/add.ico" title="New" />
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px" visible="false"  
                       src="../img/print.ico" title="Print" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                 </td>  
                 <td align="left" width="60%">
			        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">ES Intake List:</asp:label>
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
		            <td colspan="2" height="5px" ></td>
		       </tr>
               <tr style="height: 30px;" valign="middle">
                    <td align="center">
                         <asp:Label ID="TitlePos" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                            Height="18px">ES INTAKE LIST </asp:Label>
                    </td>
                    <td align="left" style="width:430px">
                          <asp:Button ID="btnSeeAll" runat="server" Text="See All" CssClass="buttonbluestyle"
                            Style="width: 100px" OnClick="btnSeeAll_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="btnSeeSumbit" runat="server" Text="Un-Submitted " CssClass="buttonbluestyle"
                            Style="width: 100px" OnClick="btnSeeSumbit_Click"></asp:Button> 
                    </td>
               </tr>   
               <tr>
		            <td colspan="2" height="2px"></td>
		       </tr>
               </table>
               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;"  width="100%">
               <tr style="height: 22px;"> 
                    <td align="left" style="width:800px">
		               &nbsp;&nbsp;&nbsp;&nbsp;<b>
		               <asp:label ID="SearchTitle" runat="server">Search ES Intake by</asp:label>
		               </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                   Last Name:&nbsp;&nbsp;&nbsp; 		            
                          <asp:TextBox ID="s_lastname" runat="server" Style="width: 150px" Width="150px" MaxLength="25"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="s_firstname" runat="server" Style="width: 150px" Width="150px" MaxLength="25"></asp:TextBox> 
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DOB:&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="s_dob" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                runat="server" Style="width: 80px" Width="80px" MaxLength="25"></asp:TextBox> 
                    </td>
                    <td width="200px">
				       <asp:Button ID="btnSearch" Runat="server" Text="Search" CssClass="buttonbluestyle"  Width="90px"  OnClick="btnSearch_Click" ></asp:Button>                    
                    </td>
               </tr>           
		       <tr>
		            <td colspan="2" height="2px"></td>
		       </tr>
               </table>
		    </div>	
		    <div  id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
            <asp:DataGrid ID="dg_Form101" runat="server" AllowPaging="False" CssClass="grd_body"
                    Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                <HeaderStyle CssClass="grd_head" BackColor="LightSkyBlue" BorderColor="LightSkyBlue">
                </HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>              
                    <asp:BoundColumn DataField="id" HeaderText="id" Visible="False" ></asp:BoundColumn>     
                    <asp:BoundColumn DataField="ref_date" HeaderText="Call Date" SortExpression="ref_date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="mis" HeaderText="MIS number" SortExpression="mis">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="client_name" HeaderText="Consumer Name" SortExpression="client_name">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ref_screener_name" HeaderText="Screener" SortExpression="ref_screener_name">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="ref_source_name" HeaderText="Referred by" SortExpression="ref_source_name">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="submitdate" HeaderText="SubmitDate" SortExpression="submitdate" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="servsc_name" HeaderText="SC Name" SortExpression="servsc_name">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="terminated_date" HeaderText="TerminatedDate" SortExpression="terminated_date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="center" VerticalAlign="Middle" />
                    </asp:BoundColumn>
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
                    <asp:BoundColumn DataField="submittedby" HeaderText="Submittedby" SortExpression="submittedby" Visible=false>
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>                  
                </Columns>
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
