<%@ Page Language="C#" Inherits="Virweb2.AdmPage.AdmAccountSet" Codebehind="AdmAccountSet.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
		<title>:::Account Settings:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/javascript" src="../js/common.js"></script>
		<script type="text/JavaScript">
	 <!--
	    function RefreshMyData()    
        {         
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.AccountSetting.submit(); 
          window.focus();   
        }
        
	   function doseltd(obj)
       {
          /*
          if (isIE())
          {            
             for(var i=0;i<tr_info.childNodes.length;i++)
	         {
		        var e=tr_info.childNodes[i];		        	   
			    e.style.color="#000000";
			    e.style.cursor="hand";		        	        
	          }
	         obj.style.color="#990066";
	         obj.style.cursor="auto";
          }
          else
          */
          {
             ACT_SEC.style.color="";
             //ACT_SEC.style.cursor="pointer";
             ACT_POS.style.color="";
             //ACT_POS.style.cursor="pointer";
             Act_Holiday.style.color="";
             //Act_Holiday.style.cursor="pointer";
             Act_Schedule.style.color="";
             //Act_Schedule.style.cursor="pointer";
             
	         obj.style.color="#990066";	
             //obj.style.cursor="auto";          
          } 

          Act_Security.style.display="none";
	      Act_Position.style.display="none";
	      Div_Holiday.style.display="none";
	      Div_Schedule.style.display="none";
	      
	      //document.getElementById("btnEdit").Visible   =   true; 
	      switch(obj.id)
	      {	         
	          case "ACT_SEC":
	               Act_Security.style.display="";
	               //document.getElementById("btnEdit").Visible   =   false;
	               document.AccountSetting.now_div_flag.value = "1";
	               break;
	          case "ACT_POS":
	               Act_Position.style.display="";
	               //document.getElementById("btnEdit").Visible   =   false;
	               document.AccountSetting.now_div_flag.value = "2";
	               break;  
	         case "Act_Holiday":
	               Div_Holiday.style.display="";
	               //document.getElementById("btnEdit").Visible   =   true;
	               document.AccountSetting.now_div_flag.value = "3";
	               break; 
	         case "Act_Schedule":
	               Div_Schedule.style.display="";
	               //document.getElementById("btnEditSch").Visible   =   true;
	               document.AccountSetting.now_div_flag.value = "4";
	               break;         
	      }
	   }

       function doseltdbyflag(flag) {
          /*
          if (isIE())
          {            
             for(var i=0;i<tr_info.childNodes.length;i++)
	         {
		        var e=tr_info.childNodes[i];		        	   
			    e.style.color="#000000";
			    e.style.cursor="hand";		        	        
	          }
	         obj.style.color="#990066";
	         obj.style.cursor="auto";
          }
          else
          */
          {
             ACT_SEC.style.color="";
             //ACT_SEC.style.cursor="pointer";
             ACT_POS.style.color="";
             //ACT_POS.style.cursor="pointer";
             Act_Holiday.style.color="";
             //Act_Holiday.style.cursor="pointer";
             Act_Schedule.style.color="";
             //Act_Schedule.style.cursor="pointer";        
          } 

          Act_Security.style.display="none";
	      Act_Position.style.display="none";
	      Div_Holiday.style.display="none";
	      Div_Schedule.style.display="none";

	      switch (flag) {
	          case 1:
	              Act_Security.style.display = "";
	              ACT_SEC.style.color = "#990066";
	              //ACT_SEC.style.cursor="auto";
	              document.AccountSetting.now_div_flag.value = "1";
	              break;
	          case 2:
	              Act_Position.style.display = "";
	              ACT_POS.style.color = "#990066";
	              //ACT_POS.style.cursor="auto";
	              document.AccountSetting.now_div_flag.value = "2";
	              break;
	          case 3:
	              Div_Holiday.style.display = "";
	              Act_Holiday.style.color = "#990066";
	              //Act_Holiday.style.cursor="auto";
	              document.AccountSetting.now_div_flag.value = "3";
	              break;
	          case 4:
	              Div_Schedule.style.display = "";
	              Act_Schedule.style.color = "#990066";
	              //Act_Schedule.style.cursor="auto";
	              document.AccountSetting.now_div_flag.value = "4";
	              break;
	      }
	   }

       function save_click() {
           var ucistart=JTrim(document.getElementById("UCI_Start").value);
           var ucistop=JTrim(document.getElementById("UCI_Stop").value);
           var ucilast=JTrim(document.getElementById("UCI_Last").value);
           var uciwarning=JTrim(document.getElementById("UCI_Warning").value);

           if (ucistart.length > 0 || ucistop.length > 0 || ucilast.length > 0 || uciwarning.length > 0)
           {
             if ((ucistart.length<7) || (!IsInteger(ucistart)))
             {
               alert("Please enter a 7 digits integer for UCI Start Number. Update failed.");
               return false;
             }
	       
             if ((ucistop.length<7) || (!IsInteger(ucistop)))
             {
               alert("Please enter a 7 digits integer for UCI Stop Number. Update failed.");
               return false;
             }

             if (!IsInteger(uciwarning))
             {
               alert("Please enter a integer for UCI Warning Number. Update failed.");
               return false;
             }
             
             if (parseInt(ucistart)>=parseInt(ucistop))
             {
               alert("The UCI Stop Number must be larger than UCI Start Number. Update failed.");
               return false;
             }
           }
           /*
           if (ucilast == '') 
           {
               ucilast='0';
               document.getElementById("UCI_Last").value = '0';
           }
           */

           var sirstart=JTrim(document.getElementById("SIR_Start").value);
           var sirstop=JTrim(document.getElementById("SIR_Stop").value);
           var sirlast=JTrim(document.getElementById("SIR_Last").value);
           var sirwarning=JTrim(document.getElementById("SIR_Warning").value);

           if (sirstart.length > 0 || sirstop.length > 0 || sirlast.length > 0 || sirwarning.length > 0)
           {
             if ((sirstart.length<10) || (!IsInteger(sirstart)))
             {
               alert("Please enter a 10 digits integer for Incident Start Number. Update failed.");
               return false;
             }
	       
             if ((sirstop.length<10) || (!IsInteger(sirstop)))
             {
               alert("Please enter a 10 digits integer for Incident Stop Number. Update failed.");
               return false;
             }

             if (!IsInteger(sirwarning))
             {
               alert("Please enter a integer for Incident Warning Number. Update failed.");
               return false;
             }

             if (parseInt(sirstart)>=parseInt(sirstop))
             {
               alert("The Incident Stop Number must be larger than Incident Start Number. Update failed.");
               return false;
             }
           }

           return true;
	    }
	   	 //-->
	</script>
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);">
    <form id="AccountSetting" method="post" runat="server">
      <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
      <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
      <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Style="width:25px;height:25px"
                      ImageURL="../img/save.ico" ToolTip="Save" 
                      OnClientClick="return save_click();" OnClick="btnEdit_Click" >
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px" visible="false" 
                        src="../img/back.ico" title="Back"
                        onclick="return false;" />    
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue"></asp:Label>
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
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                      <tr id="tr_info">
                        <td id="ACT_SEC" style="color: #990066" class="tab_sel" onclick="doseltd(this);"
                          width="200">
                           <b><u>Security Settings</u></b>
                        </td>
                        <td id="ACT_POS" class="tab_sel" onclick="doseltd(this);"
                          width="200">
                           <b><u>Misc. Settings</u></b>
                        </td>
                        <td id="Act_Holiday" class="tab_sel" onclick="doseltd(this);"
                          width="200">
                           <b><u>Holiday Settings</u></b>
                        </td>
                        <td id="Act_Schedule" class="tab_sel" onclick="doseltd(this);"
                          width="200">
                           <b><u>Working Schedules</u></b>
                        </td>
                      </tr>
                    </table>
                </td>
            </tr>
        </table>  
      </div>
      <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <div id="Act_Security" align="left"> 
		<TABLE align="left" cellSpacing="0" cellPadding="0" width="80%" border="0">
			<TR height="40px">
				<TD colspan=2></TD>
			</TR>
            <TR>
				<TD width="20"></TD>
				<TD><asp:checkbox ID="PwdExp" runat="server" Text="Password expires in " />&nbsp;&nbsp;&nbsp;
				    <asp:textbox id="PwdExpDay" Runat="server" Width="36px"></asp:textbox>&nbsp;&nbsp;&nbsp;
				    Days
				</TD>
			</TR>
			<TR>
			    <TD width="20"></TD>
				<TD>Minimum password length (can't be less than 6):&nbsp;&nbsp;&nbsp;  
				    <asp:textbox id="MinPwdLen" Runat="server" Width="36px"></asp:textbox>
				</TD>
			</TR>
			<TR>
			    <TD width="20"></TD>
				<TD>Maximum password length (can't be more than 32):&nbsp;&nbsp;&nbsp;  
				    <asp:textbox id="MaxPwdLen" Runat="server" Width="36px"></asp:textbox>
				</TD>
			</TR>
			<TR>
				<TD width="20"></TD>
			    <TD><asp:checkbox id="NoHisPwd" Runat="server" Text="Do not allow the use of prior passwords." ></asp:checkbox>
				</TD>
			</TR>
			<TR>
				<TD width="20"></TD>
			    <TD><asp:checkbox id="SpecChars" Runat="server" Text="Password must contain at least one letter and one digit" ></asp:checkbox>
				</TD>
			</TR>
			<TR>
				<TD width="20"></TD>
				<TD><asp:checkbox ID="Locks" runat="server" Text="Account locked after " />&nbsp;&nbsp;&nbsp;
				    <asp:textbox id="LockTimes" Runat="server" Width="36px"></asp:textbox>&nbsp;&nbsp;&nbsp;
				    failed login attempts.
				</TD>
			</TR>
			<TR>
				<TD width="20"></TD>
				<TD><asp:checkbox ID="Unlock" runat="server" Text="Auto unlock account after " />&nbsp;&nbsp;&nbsp;
				    <asp:textbox id="UnlockHours" Runat="server" Width="36px"></asp:textbox>&nbsp;&nbsp;&nbsp;
				    hours
				</TD>
			</TR>
			<TR height="20px">
				<TD colspan=2></TD>
			</TR>
			<tr valign="top" style="height:2px;">
                  <td bgcolor="#006600" colspan="2"></td>
            </tr>
            <TR height="20px">
				<TD colspan=2></TD>
			</TR>
			<TR>
				<TD width="20" style="height: 21px"></TD>
				<TD style="height: 21px">Default Group: <asp:DropDownList ID="Default_GroupID" runat="server" DataValueField="GroupID" DataTextField="GroupName"
                             Height="20" Width="200">
                      </asp:DropDownList></TD>
			</TR>
		</TABLE>
		</div>
        <div id="Act_Position" style="DISPLAY: none">
        <TABLE cellSpacing="0" cellPadding="0" width="80%" border="0">
			<TR height="40px">
				<TD colspan=5></TD>
			</TR>
            <TR>
                <TD width="20"></TD>
			    <TD width="400" align="left">
                    <asp:checkbox id="Tickler_NoFinal" Runat="server" Text="Do not need to create Final IFSP." >
                    </asp:checkbox>
                </TD>
				<TD width="20"></TD>
				<TD colspan=2 align="left">	
                    POS Balance Warning Threshold: &nbsp;&nbsp;&nbsp;
				    &nbsp;&nbsp;<asp:textbox id="PosBalThreshold" Runat="server" Width="60px"></asp:textbox>&nbsp;Percent
                </TD>
            </TR>
			<TR height="20px">
				<TD colspan=5></TD>
			</TR>
			<tr valign="top" style="height:2px;">
                  <td bgcolor="#006600" colspan="5"></td>
            </tr>
            <TR height="20px">
				<TD colspan=5></TD>
			</TR>
            <TR>
                <TD width="20"></TD>
			    <TD width="400" align="left">
                  <TABLE cellSpacing="0" cellPadding="0" width="80%" border="0">
                    <tr height="25px">
                     <td colspan=2>
                       <b>SIR Incident Number Range:</b>
                     </td>
                    </tr>
                    <tr height="25px">
                     <td width="200">
                       Start Number:
                     </td>
                     <td width="150">
                       <asp:textbox id="SIR_Start" Runat="server" Width="100px" MaxLength="10"></asp:textbox>
                     </td>
                    </tr> 
                    <tr height="25px">
                     <td width="200">
                       Stop Number:
                     </td>
                     <td width="150">
                       <asp:textbox id="SIR_Stop" Runat="server" Width="100px" MaxLength="10"></asp:textbox>
                     </td>
                    </tr> 
                    <tr height="25px">
                     <td width="200">
                       Last Number Used:
                     </td>
                     <td width="150">
                       <asp:TextBox id="SIR_Last" Runat="server" Width="100px" CssClass="infaceText" ReadOnly="true" Enabled="false"></asp:TextBox>
                     </td>
                    </tr> 
                    <tr height="25px">
                     <td width="200">
                       Warning Number: 
                     </td>
                     <td width="150">
                       <asp:textbox id="SIR_Warning" Runat="server" Width="100px" MaxLength="10"></asp:textbox>
                     </td>
                    </tr>
                  </TABLE> 	
				</TD>
				<TD width="20"></TD>
				<TD width="300" align="left">	
                  <TABLE cellSpacing="0" cellPadding="0" width="80%" border="0">
                    <tr height="25px">
                     <td colspan=2>
                       <b>Range for UCI Number:</b>
                     </td>
                    </tr>
                    <tr height="25px">
                     <td width="200">
                       Start Number:
                     </td>
                     <td width="100">
                       <asp:textbox id="UCI_Start" Runat="server" Width="60px" MaxLength="7"></asp:textbox>
                     </td>
                    </tr> 
                    <tr height="25px">
                     <td width="200">
                       Stop Number:
                     </td>
                     <td width="100">
                       <asp:textbox id="UCI_Stop" Runat="server" Width="60px" MaxLength="7"></asp:textbox>
                     </td>
                    </tr> 
                    <tr height="25px">
                     <td width="200">
                       Last Number Used:
                     </td>
                     <td width="100">
                       <asp:TextBox id="UCI_Last" Runat="server" Width="60px" CssClass="infaceText" ReadOnly="true" Enabled="false"></asp:TextBox>
                     </td>
                    </tr> 
                    <tr height="25px">
                     <td width="200">
                       Warning Number: 
                     </td>
                     <td width="100">
                       <asp:textbox id="UCI_Warning" Runat="server" Width="60px" MaxLength="7"></asp:textbox>
                     </td>
                    </tr>
                  </TABLE> 
				</TD>
                <TD width="auto"></TD>
			</TR>
		</TABLE>
        </div>		
        <div id="Div_Holiday" style="DISPLAY: none">
              <div align="left" style="WIDTH:90%;height:40px">
		       <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	              <tr style="height: 30px;"  valign="middle">	           
			        <td align="right">
				       <asp:Button ID="btnAdd" Runat="server" Text="Add" CssClass="buttonbluestyle"  Style="width:100px" 
                              OnClientClick="popupDialogSmall('AdmHolidaySet.aspx?type=add')"></asp:Button>
                    </td>
		          </tr>	
		       </table>
		      </div>	
              <div style="position:relative;WIDTH:90%;height:450px;  overflow: auto ">
				<asp:datagrid id="dg_Holiday" runat="server" PageSize="20" AllowPaging="True" CssClass="grd_body"
					Visible="True" AutoGenerateColumns="False" AllowSorting="True" >
					<HeaderStyle CssClass="grd_head"></HeaderStyle>
					<ItemStyle CssClass="grd_item"></ItemStyle>
					<AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					<FooterStyle CssClass="grd_fsitem"></FooterStyle>
					<Columns>
						<asp:BoundColumn DataField="ID" HeaderText="HolidayID" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="HolidayDate" HeaderText="Holiday Date" SortExpression="HolidayDate"  DataFormatString="{0:d}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="Desc" HeaderText="Holiday descriptione" SortExpression="Desc">
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
        <div id="Div_Schedule" style="DISPLAY: none">
        <table cellSpacing="0" cellPadding="0" width="98%" border="0">
			<tr height="40px">
				<td colspan="11" align="right">
				  <asp:Button ID="btnEditSch" runat="server" Text="Save Schedule" style="width:150px"  CssClass="buttonbluestyle" OnClick="btnEditSch_Click"></asp:Button>
				</td>

			</tr>
            <tr>
				<td align="right" style="width:150px">User Working Schedule 1:</td>
				<td align="right" style="width:80px">Name:</td>
				<td class="td_unline" align="left" style="width:105px">
				    <asp:textbox id="ScheduleName1" Runat="server" Width="100px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Morning In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="MorningIn1" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
			    <td align="right" style="width:100px">Noon Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonOut1" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Noon In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonIn1" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Night Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NightOut1" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
			</tr>
			<tr height="20px">
				<td colspan=11></td>
			</tr>
            <tr>
				<td align="right" style="width:150px">User Working Schedule 2:</td>
				<td align="right" style="width:80px">Name:</td>
				<td class="td_unline" align="left" style="width:105px">
				    <asp:textbox id="ScheduleName2" Runat="server" Width="100px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Morning In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="MorningIn2" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
			    <td align="right" style="width:100px">Noon Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonOut2" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Noon In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonIn2" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Night Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NightOut2" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
			</tr>
			<tr height="20px">
				<td colspan=11></td>
			</tr>
            <tr>
				<td align="right" style="width:150px">User Working Schedule 3:</td>
				<td align="right" style="width:80px">Name:</td>
				<td class="td_unline" align="left" style="width:105px">
				    <asp:textbox id="ScheduleName3" Runat="server" Width="100px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Morning In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="MorningIn3" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
			    <td align="right" style="width:100px">Noon Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonOut3" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Noon In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonIn3" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Night Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NightOut3" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
			</tr>
			<tr height="20px">
				<td colspan=11></td>
			</tr>
            <tr>
				<td align="right" style="width:150px">User Working Schedule 4:</td>
				<td align="right" style="width:80px">Name:</td>
				<td class="td_unline" align="left" style="width:105px">
				    <asp:textbox id="ScheduleName4" Runat="server" Width="100px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Morning In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="MorningIn4" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
			    <td align="right" style="width:100px">Noon Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonOut4" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Noon In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonIn4" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Night Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NightOut4" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
			</tr>
		    <tr height="20px">
				<td colspan=11></td>
			</tr>
            <tr>
				<td align="right" style="width:150px">User Working Schedule 5:</td>
				<td align="right" style="width:80px">Name:</td>
				<td class="td_unline" align="left" style="width:105px">
				    <asp:textbox id="ScheduleName5" Runat="server" Width="100px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Morning In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="MorningIn5" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
			    <td align="right" style="width:100px">Noon Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonOut5" Runat="server" Width="60px" CssClass="inface" maxlength="8"></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Noon In:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NoonIn5" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
				<td align="right" style="width:100px">Night Out:</td>
				<td class="td_unline" align="left" style="width:65px">
				    <asp:textbox id="NightOut5" Runat="server" Width="80px" CssClass="inface" ></asp:textbox>	    
				</td>
			</tr>
		</TABLE>
        </div>
	  </div>	
    </form>
</body>
</html>
