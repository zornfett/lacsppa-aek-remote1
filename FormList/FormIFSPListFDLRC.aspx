<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIFSPListFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormIFSPListFDLRC" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
        <base target="_self" />
		<title>:::INDIVIDUALIZED FAMILY SERVICE PLAN (IFSP):::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
        <script type="text/JavaScript" src="../js/common.js"></script>
        <script type="text/javascript">
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.IFSP.submit(); 
          window.focus();   
        }

        function add_click(uci)
        {
            window.showModalDialog("FormIFSPSelPlanTypeFDLRC.aspx?ifspexist="+document.IFSP.ifspexist.value, self, 
                   "status:no;dialogWidth:500px;dialogHeight:200px;help:no;scroll:no;resizable:yes;");
        }
        
        function print_click()
        {
           var uci=document.IFSP.consumer_key.value.toString();
           winhref("PrintFormIFSPListFDLRC.aspx?uci="+uci, "PrintFormIFSPList");
        }

        function back_click() {
          document.location.replace('../weblist/webConsumerList.aspx');
        }
        </script>        
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="IFSP" method="post" runat="server">
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />                
        <input type="hidden" name="ifspexist" id="ifspexist" value="" runat="server" />
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
                       src="../img/print.ico" title="Print"
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
		<div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:200px;  overflow: auto ">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                <tr style="height:15px;">
                    <td>
                    </td>
                </tr>
                <tr style="height: 30px;" valign="middle">
                    <td align="center">
                        <asp:Label ID="Label42" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                            Height="18px">IFSP List</asp:Label>
                    </td>
                </tr>
            </table>  
            <div id="IFSPDiv" align="center" style="position: relative; width: 95%; 
                overflow:auto">   
                <asp:datagrid id="dg_FormIFSP" runat="server" AllowPaging="false" CssClass="grd_body"
					    Visible="True" AutoGenerateColumns="False" AllowSorting="true" >
				    <HeaderStyle CssClass="grd_head"></HeaderStyle>
				    <ItemStyle CssClass="grd_item"></ItemStyle>
				    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
				    <Columns>
					    <asp:BoundColumn DataField="IFSPID" HeaderText="IFSPID" Visible="false">
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
                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="Meeting Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="IFSPMeetingDate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" SortExpression="IFSPType_desc">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	    
                        <asp:BoundColumn DataField="SignaturedBy" HeaderText="Signed By" SortExpression="SignaturedBy">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>	 
                        <asp:BoundColumn DataField="LockName" HeaderText="Transferred Offline By" SortExpression="LockName">
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
                        <asp:BoundColumn DataField="approved" HeaderText="approved" Visible="false" ></asp:BoundColumn>									
				    </Columns>
				    <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
			    </asp:datagrid>
            </div>
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                <tr style="height:15px;">
                    <td>
                    </td>
                </tr>
                <tr style="height: 30px;" valign="middle">
                    <td align="center">
                        <asp:Label ID="Label41" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                            Height="18px">Transition Plan List</asp:Label>
                    </td>
                </tr>
            </table> 
            <div id="TransitionDiv" align="center" style="position: relative; width: 95%;
                overflow:auto">  
                <asp:datagrid id="dg_TransPlan" runat="server" AllowPaging="false" CssClass="grd_body"
					    Visible="True" AutoGenerateColumns="False" AllowSorting="true" >
				    <HeaderStyle CssClass="grd_head"></HeaderStyle>
				    <ItemStyle CssClass="grd_item"></ItemStyle>
				    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
				    <Columns>
					    <asp:BoundColumn DataField="TransID" HeaderText="TransID" Visible="false">
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
                        <asp:BoundColumn DataField="MeetingDate" HeaderText="MeetingDate" DataFormatString="{0:MM/dd/yyyy}" SortExpression="MeetingDate">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>  
                        <asp:BoundColumn DataField="SignaturedBy" HeaderText="Signed By" SortExpression="Sign">
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
				    </Columns>
				    <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
			    </asp:datagrid>
            </div>
		</div>
    </form>
</body>
</html>