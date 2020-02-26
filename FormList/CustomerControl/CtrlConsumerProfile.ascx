<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="CtrlConsumerProfile.ascx.cs" Inherits="Virweb2.CustomerControl.CtrlConsumerProfile" %>
<script type="text/javascript">
<!--
    function MaximumMyData2() 
    {
       //window.top.bg_change(2);
       window.top.Menu_Click(2);
       return false;
    }          
          
       function bg_change(tid)
	   {		
		  whichEl = eval("message"+tid);
		  if(!isIE())  //firefox
		  { 		     
		     if (JTrim(whichEl.textContent)=="+")
		     {
		         whichEl.textContent="-";
		     }
		     else
		     {
		         whichEl.textContent="+";
		     }
		  }
		  else
		  {	 
		     if (JTrim(whichEl.innerText)=="+")
		     {
		        whichEl.innerText="-";
		     }
		     else
		     {
		        whichEl.innerText="+";
		     }
		  }
	   }
						
	  function showsubmenu(sid)
	  {		
		 whichEl = eval("submenu" + sid);
		 if (whichEl.style.display == "none")
		 {			
			eval("submenu" + sid + ".style.display=\"\";");
		 }
		 else
		 {
			 eval("submenu" + sid + ".style.display=\"none\";");
		 }
	  }

	  function edit_click(menuflag) {
	      var c_key = document.getElementById(<%= "'" + uci.ClientID + "'" %>).value;
	      switch (menuflag) {
	          case '0': //face sheet                 
	              popupDialog("./WebList/WebConsumerFaceSheet.aspx?c_key=" + c_key.toString());
	              break;
	          case '1': //Legal
	              popupDialog("./WebList/WebConsumerLegal.aspx?c_key=" + c_key.toString());
	              break;
	          case '2': //Dates/Comments
	              popupDialog("./WebList/WebConsumerComments.aspx?c_key=" + c_key.toString());
	              break;
	          case '3': //Administration
	              popupDialog("./WebList/WebConsumerAdmi.aspx?c_key=" + c_key.toString());
	              break;
	          case '4': //referrals
	              popupDialog("./WebList/WebConsumerRefer.aspx?c_key=" + c_key.toString());
	              break;
	      }
	  }

      function link_click(menuflag) {
	      switch (menuflag) {
	          case '0': //face sheet                 
	              //window.top.mainlist.location.replace("./WebList/WebConsumerInfo.aspx?tabflag=1");
                  window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=1";
	              break;
	          case '1': //Legal
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=2";
	              break;
	          case '2': //Dates/Comments
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=3";
	              break;
	          case '3': //Administration
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=4";
	              break;
	          case '4': //referrals
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=5";
	              break;
              case '5': //Background
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=6";
	              break;
	          case '6': //Contacts
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=7";
	              break;
	          case '7': //Group/Program
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=8";
	              break;
              case '8': //xixsrv POS Auths
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=9";
	              break;
              case '9': //xixsrv Contacts
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=10";
	              break;
              case '10': //xixsrv AFPF
	              window.top.document.getElementById("mainlist").src="./WebList/WebConsumerInfo.aspx?tabflag=11";
	              break;
	      }

	  }

      function RefreshMyData()    
      {                  
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          //window.document.ConsumerProfile.submit(); 
          //window.focus();   
      }
    //-->
    
    </script>
    <div align="center" style="WIDTH:100%; overflow: auto ">
       <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
       <input type="hidden" name="uci" id="uci" value="" runat="server" />
       <div id="GeneAll" runat="server" visible=true >
         <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">
                <tr>
                    <td id="submenu0" align="left" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 10px;">
                                </td>
                                <td align="left">
                                  <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                   <tr><td>
                                      <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                                         <tr style="height:24px">
                                             <td  align="left" style="width:130px" ><asp:Label ID="Label2" runat="server" Font-Size="8pt">Last Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td width="200px"><asp:Label ID="lbl_lastname" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label4" runat="server" Font-Size="8pt">First Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td width="200px"><asp:Label ID="lbl_firstname" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label3" runat="server" Font-Size="8pt">DOB:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_dob" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label10" runat="server" Font-Size="8pt">Gender:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_gender" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label12" runat="server" Font-Size="8pt">Ethnicity:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_ethnicity" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label14" runat="server" Font-Size="8pt">Language:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_language" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                      </table>                                      
                                   </td>
                                   <td width="10px"></td>
                                   <td width="100px">

                                   <asp:ImageButton ID="viewphoto" runat="server" Height="100px" 
                                    ImageUrl="../weblist/ImageThumbeNail.aspx?height=100&width=100" 
                                    OnClientClick="popupDialogSmall('./WebList/ConsumerIMG.aspx');" />

                                   </td></tr>
                                  </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 10px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">                    
                                         <tr style="height:24px">
                                             <td align="left" width="100px"><asp:Label ID="Label24" runat="server" Font-Size="8pt">HomePhone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td align="left" width="180px"><asp:Label ID="lbl_homephone" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td align="left" width="100px"><asp:Label ID="Label18" runat="server" Font-Size="8pt">Height:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td align="left" width="100px"><asp:Label ID="lbl_height" runat="server" Font-Size="8pt"></asp:Label>&nbsp;inch</td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td align="left"><asp:Label ID="Label26" runat="server" Font-Size="8pt">CellPhone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_cellphone" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:10px"></td>
                                             <td  align="left"><asp:Label ID="Label20" runat="server" Font-Size="8pt">Weight:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_weight" runat="server" Font-Size="8pt"></asp:Label>&nbsp;lbs</td>
                                         </tr> 
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label22" runat="server" Font-Size="8pt">Email:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_email" runat="server" Font-Size="8pt"></asp:Label></td>  
                                             <td style="width:10px"></td>
                                             <td  align="left"><asp:Label ID="Label16" runat="server" Font-Size="8pt">Marital Status:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_marital" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="left"><asp:Label ID="Label28" runat="server" Font-Size="8pt">Address:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td colspan="4"><asp:Label ID="lbl_address" runat="server" Font-Size="8pt"></asp:Label></td>   
                                         </tr>
                                     </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <!-- <td id="message0" class="td_expendmark" align="center"
                                    onclick="showsubmenu(0);bg_change(0)">-</td> -->
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_facesheet" runat="server" Font-Bold="True" Text="Face Sheet"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('0');">
                                    </asp:HyperLink>
                                </td>
                                <!--<td><input type="button"  id="btnedit0" name="btnedit0" value="Edit" style="width:80px;height:20px" runat="server" visible="false" onclick="javascript:edit_click('0');"/></td>-->
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <!-- <td id="message1" class="td_expendmark" align="center"
                                    onclick="showsubmenu(1);bg_change(1)">+</td>-->
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_financial" runat="server" Font-Bold="True" Text="Legal/Financial"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('1');">
                                    </asp:HyperLink>
                                </td>
                                <!-- <td><input type="button"  id="btnedit1" name="btnedit1" value="Edit" style="width:80px;height:20px" runat="server" visible="false" onclick="javascript:edit_click('1');" /></td>-->
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu1" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 10px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                          <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label6" runat="server" Font-Size="8pt">Confidentiality:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_confiden" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label7" runat="server" Font-Size="8pt">SSN:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_ssn" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label8" runat="server" Font-Size="8pt">SSA:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_ssa" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>                                       
                                     </table>
                                </td>                   
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_afpfrc" runat="server" Font-Bold="True" Text="Legal" Visible="false"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('10');">
                                    </asp:HyperLink>
                                </td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>  
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <!-- <td id="message2" class="td_expendmark" align="center"
                                    onclick="showsubmenu(2);bg_change(2)">+</td> -->
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_comments" runat="server" Font-Bold="True" Text="Dates/Comments"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('2');">
                                    </asp:HyperLink>
                                </td>
                                <!-- <td><input type="button"  id="btnedit2" name="btnedit2" value="Edit" style="width:80px;height:20px" runat="server" visible="false" onclick="javascript:edit_click('2');" /></td> -->
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu2" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 10px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label27" runat="server" Font-Size="8pt">Frequency of Contact:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_frequency" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>   
                                          <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label31" runat="server" Font-Size="8pt">Tickler Base Month:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_tickler" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>    
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label33" runat="server" Font-Size="8pt">Report Agency:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_reportagency" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>    
                                        
                                     </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <!-- <td id="message3" class="td_expendmark" align="center"
                                    onclick="showsubmenu(3);bg_change(3)">+</td> -->
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_admin" runat="server" Font-Bold="True" Text="Administration"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('3');">
                                    </asp:HyperLink>
                                </td>
                                <!-- <td><input type="button"  id="btnedit3" name="btnedit3" value="Edit" style="width:80px;height:20px" runat="server" visible="false" onclick="javascript:edit_click('3');" /></td> -->
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu3" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 10px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label21" runat="server" Font-Size="8pt">Area/Group:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_area" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>    
                                        <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label25" runat="server" Font-Size="8pt">Supervisor:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_supervisor" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>   
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label29" runat="server" Font-Size="8pt">Current Status:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_currentstatus" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr> 
                                        
                                     </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <!-- <td id="message4" class="td_expendmark" align="center"
                                    onclick="showsubmenu(4);bg_change(4)">+</td> -->
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_referrals" runat="server" Font-Bold="True" Text="Referrals"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('4');">
                                    </asp:HyperLink>
                                </td>
                                <!-- <td><input type="button"  id="btnedit4" name="btnedit4" value="Edit" style="width:80px;height:20px" runat="server" visible="false" onclick="javascript:edit_click('4');" /></td> -->
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu4" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 10px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 95%">
                                          <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label11" runat="server" Font-Size="8pt">1.&nbsp;&nbsp;Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_contactname1" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"><asp:Label ID="Label13" runat="server" Font-Size="8pt">Phone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"><asp:Label ID="lbl_contactphone1" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr> 
                                         <tr style="height:20px">
                                             <td  align="left" style="width:160px" ><asp:Label ID="Label15" runat="server" Font-Size="8pt">2.&nbsp;&nbsp;Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_contactname2" runat="server" Font-Size="8pt"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="left" style="width:160px"><asp:Label ID="Label19" runat="server" Font-Size="8pt">Phone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"><asp:Label ID="lbl_contactphone2" runat="server" Font-Size="8pt"></asp:Label></td>
                                         </tr> 
                                     </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_background" runat="server" Font-Bold="True" Text="Background"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('5');">
                                    </asp:HyperLink>
                                </td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_contacts" runat="server" Font-Bold="True" Text="Contacts"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('6');">
                                    </asp:HyperLink>
                                </td>
                                 <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>  
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_program" runat="server" Font-Bold="True" Text="Group/Program"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('7');">
                                    </asp:HyperLink>
                                </td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr> 
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_posrc" runat="server" Font-Bold="True" Text="POS Auths" Visible="false"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('8');">
                                    </asp:HyperLink>
                                </td>
                                 <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>  
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 20px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr class="tr_head">
                                <td style="width:200px;" align="left">
                                    <asp:HyperLink ID="t_contactsrc" runat="server" Font-Bold="True" Text="Contacts" Visible="false"
                                       style="cursor:hand;text-decoration:underline;" onclick="javascript:link_click('9');">
                                    </asp:HyperLink>
                                </td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>                    
         </table>
       </div>
       <div id="BSPart" runat="server" visible="false">
         <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">                    
                <tr>
                    <td colspan="3">
                     <asp:ImageButton ID="viewphoto1" runat="server" Height="100px" 
                       ImageUrl="../weblist/ImageThumbeNail.aspx?height=100&width=100" 
                       OnClientClick="popupDialogSmall('./WebList/ConsumerIMG.aspx');" />
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label100" runat="server" Font-Size="8pt">Property Name:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_attention" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label101" runat="server" Font-Size="8pt">Owner Name:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_lastname" runat="server" Font-Size="8pt"></asp:Label>&nbsp;,&nbsp;
                       <asp:Label ID="br_firstname" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label102" runat="server" Font-Size="8pt">Contact Name:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_name_maiden_last" runat="server" Font-Size="8pt"></asp:Label>&nbsp;,&nbsp;
                       <asp:Label ID="br_name_maiden_first" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label103" runat="server" Font-Size="8pt">Property Address:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_address_line_2" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label104" runat="server" Font-Size="8pt">Contact Phone#:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_phone_1" runat="server" Font-Size="8pt"></asp:Label>&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="br_phone_2" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label105" runat="server" Font-Size="8pt">APN Number:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_mis" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label106" runat="server" Font-Size="8pt">Category:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_eyecolordesc" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label107" runat="server" Font-Size="8pt">Status:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_currentstatus" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
                <tr style="height:24px">
                    <td align="left" width="170px"><asp:Label ID="Label108" runat="server" Font-Size="8pt">Next Contact Date:</asp:Label></td>
                    <td style="width:5px"></td>
                    <td align="left" width="300px">
                       <asp:Label ID="br_date" runat="server" Font-Size="8pt"></asp:Label>
                    </td>
                </tr>
         </table>
       </div>
    </div>
