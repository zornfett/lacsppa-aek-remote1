<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webConsumerProfile.aspx.cs" Inherits="Virweb2.WebList.webConsumerProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <base target="_self" /> 
    <title>::Client Profile:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javaScript" src="../js/common.js"></script>
     <script type="text/javascript">
    <!--              
          
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
	
        
       function edit_click(menuflag)
       {
          var c_key=document.getElementById("uci").value;          
          /*
          switch(menuflag)
	      {              
	          case '0'://face sheet                 
	              popupDialog("WebConsumerFaceSheet.aspx?c_key=" + c_key.toString());
                  break;
              case '1'://Legal
                  popupDialog("WebConsumerLegal.aspx?c_key=" + c_key.toString());
                  break;                  
              case '2'://Dates/Comments
                  popupDialog("WebConsumerComments.aspx?c_key=" + c_key.toString());
                  break;
              case '3'://Administration
                  popupDialog("WebConsumerAdmi.aspx?c_key=" + c_key.toString());
                  break;              
              case '4'://referrals
                  popupDialog("WebConsumerRefer.aspx?c_key=" + c_key.toString());
                  break;
          }
          */
          popupDialog("WebConsumerInfo.aspx");
      }

       function RefreshMyData()    
       {                  
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.ConsumerProfile.submit(); 
          window.focus();   
        }
      
    //-->
    
    </script>
</head>
<body >
    <form id="ConsumerProfile" runat="server">
       <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
       <input type="hidden" name="uci" id="uci" value="" runat="server" />
       <div align="left" style="position:relative;WIDTH:100%; height:630px; overflow: auto ">
       <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
               <tr>
                   <td align="center"> <asp:Label ID="Label4" runat="server" Font-Size="12pt" Font-Bold="True"
                                            ForeColor="navy">Client Profile</asp:Label></td>
               </tr>
               <tr style="height:20px">
                   <td></td>
                </tr>
                <tr style="height: 22px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr style="background-color: yellow">
                                <td id="message0" style="background-color:#5f9dc5; color:aqua;width: 24px; cursor:pointer; font-size:medium;" align="center"
                                    onclick="showsubmenu(0);bg_change(0)">-</td>
                                <td  style="width:200px">
                                        <asp:Label ID="Label1" runat="server" Font-Size="10pt" Font-Bold="True"
                                            ForeColor="navy">Face Sheet</asp:Label>
                                </td>
                                <td><input type="button"  id="btnedit0" name="btnedit0" value="Edit" style="width:80px" runat="server" onclick="javascript:edit_click('0');"/></td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu0" align="left" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 24px;">
                                </td>
                                <td align="left">
                                  <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                   <tr><td>
                                      <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label2" runat="server" Font-Size="10pt" Font-Bold="True">Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_ConsumerName" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                         <tr>
                                             <td  align="right" style="width:160px"><asp:Label ID="Label3" runat="server" Font-Size="10pt" Font-Bold="True" >Dob:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"><asp:Label ID="lbl_dob" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="right"><asp:Label ID="Label10" runat="server" Font-Size="10pt" Font-Bold="True">Gender:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_gender" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                         <tr>
                                             <td  align="right"><asp:Label ID="Label12" runat="server" Font-Size="10pt" Font-Bold="True">Ethnicity:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_ethnicity" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="right"><asp:Label ID="Label14" runat="server" Font-Size="10pt" Font-Bold="True" >Language:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_language" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                         <tr>
                                             <td  align="right"><asp:Label ID="Label16" runat="server" Font-Size="10pt" Font-Bold="True" >Marital Status:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_marital" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                      </table>                                      
                                   </td>
                                   <td>

                                   <asp:ImageButton ID="viewphoto" runat="server" Height="100px" 
                                    ImageUrl="ImageThumbeNail.aspx?height=100&width=100" 
                                    OnClientClick="popupDialogSmall('ConsumerIMG.aspx');" />

                                   </td></tr>
                                  </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 24px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                         <tr style="height:24px">
                                             <td  align="right"><asp:Label ID="Label18" runat="server" Font-Size="10pt" Font-Bold="True">Height:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_height" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right"><asp:Label ID="Label20" runat="server" Font-Size="10pt" Font-Bold="True">Weight:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_weight" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>                                        
                                         <tr style="height:24px">
                                             <td  align="right"><asp:Label ID="Label24" runat="server" Font-Size="10pt" Font-Bold="True">Home Phone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_homephone" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right"><asp:Label ID="Label26" runat="server" Font-Size="10pt" Font-Bold="True" >Cell Phone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td><asp:Label ID="lbl_cellphone" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="right"><asp:Label ID="Label22" runat="server" Font-Size="10pt" Font-Bold="True" >Email:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td colspan="4"><asp:Label ID="lbl_email" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>  
                                         </tr>
                                          <tr style="height:24px">
                                             <td  align="right"><asp:Label ID="Label28" runat="server" Font-Size="10pt" Font-Bold="True">Address:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td colspan="4"><asp:Label ID="lbl_address" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>   
                                         </tr>
                                     </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height:5px"><td></td></tr>
                <tr style="height: 22px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr style="background-color: yellow">
                                <td id="message1" style="background-color:#5f9dc5; color:aqua;width: 24px; cursor:pointer; font-size:medium;" align="center"
                                    onclick="showsubmenu(1);bg_change(1)">+</td>
                                <td style="width:200px" >
                                        <asp:Label ID="Label5" runat="server" Font-Size="10pt" Font-Bold="True"
                                            ForeColor="navy">Legal/Financial</asp:Label>
                                </td>
                                <td><input type="button"  id="btnedit1" name="btnedit1" value="Edit" style="width:80px" runat="server" onclick="javascript:edit_click('1');" /></td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu1" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 24px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                          <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label6" runat="server" Font-Size="10pt" Font-Bold="True">Confidentiality:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_confiden" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label7" runat="server" Font-Size="10pt" Font-Bold="True">SSN:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_ssn" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label8" runat="server" Font-Size="10pt" Font-Bold="True">SSA:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_ssa" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
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
                <tr style="height: 22px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr style="background-color: yellow">
                                <td id="message2" style="background-color:#5f9dc5; color:aqua;width: 24px; cursor:pointer; font-size:medium;" align="center"
                                    onclick="showsubmenu(2);bg_change(2)">+</td>
                                <td style="width:200px" >
                                        <asp:Label ID="Label23" runat="server" Font-Size="10pt" Font-Bold="True"
                                            ForeColor="navy">Dates/Comments</asp:Label>
                                </td>
                                <td><input type="button"  id="btnedit2" name="btnedit2" value="Edit" style="width:80px" runat="server" onclick="javascript:edit_click('2');"/></td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu2" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 24px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label27" runat="server" Font-Size="10pt" Font-Bold="True">Frequency of Contact:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_frequency" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>   
                                          <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label31" runat="server" Font-Size="10pt" Font-Bold="True">Tickler Base Month:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_tickler" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>    
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label33" runat="server" Font-Size="10pt" Font-Bold="True">Report Agency:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_reportagency" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
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
                <tr style="height: 22px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr style="background-color: yellow">
                                <td id="message3" style="background-color:#5f9dc5; color:aqua;width: 24px; cursor:pointer; font-size:medium;" align="center"
                                    onclick="showsubmenu(3);bg_change(3)">+</td>
                                <td style="width:200px" >
                                        <asp:Label ID="Label17" runat="server" Font-Size="10pt" Font-Bold="True"
                                            ForeColor="navy">Administration</asp:Label>
                                </td>
                                <td><input type="button"  id="btnedit3" name="btnedit3" value="Edit" style="width:80px" runat="server" onclick="javascript:edit_click('3');"/></td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu3" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 24px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label21" runat="server" Font-Size="10pt" Font-Bold="True">Area/Group:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_area" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>    
                                        <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label25" runat="server" Font-Size="10pt" Font-Bold="True">Supervisor:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_supervisor" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"></td>
                                         </tr>   
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label29" runat="server" Font-Size="10pt" Font-Bold="True">Current Status:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_currentstatus" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"></td>
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
                <tr style="height: 22px;">
                    <td>
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                            <tr style="background-color: yellow">
                                <td id="message4" style="background-color:#5f9dc5; color:aqua;width: 24px; cursor:pointer; font-size:medium;" align="center"
                                    onclick="showsubmenu(4);bg_change(4)">+</td>
                                <td style="width:200px" >
                                        <asp:Label ID="Label9" runat="server" Font-Size="10pt" Font-Bold="True"
                                            ForeColor="navy">Referrals</asp:Label>
                                </td>
                                <td><input type="button"  id="btnedit4" name="btnedit4" value="Edit" style="width:80px" runat="server" onclick="javascript:edit_click('4');"/></td>
                                <td style="width:30%"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td id="submenu4" align="left" style="display:none;" >                       
                        <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                            <tr>
                                <td style="width: 24px;">
                                </td>
                                <td align="left">
                                     <table cellspacing="0" cellpadding="0"  border="0" style="width: 90%">
                                          <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label11" runat="server" Font-Size="10pt" Font-Bold="True">1.&nbsp;&nbsp;Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_contactname1" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"><asp:Label ID="Label13" runat="server" Font-Size="10pt" Font-Bold="True">Phone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"><asp:Label ID="lbl_contactphone1" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr> 
                                         <tr style="height:24px">
                                             <td  align="right" style="width:160px" ><asp:Label ID="Label15" runat="server" Font-Size="10pt" Font-Bold="True">2.&nbsp;&nbsp;Name:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td  style="width:200px"><asp:Label ID="lbl_contactname2" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                             <td style="width:50px"></td>
                                             <td  align="right" style="width:160px"><asp:Label ID="Label19" runat="server" Font-Size="10pt" Font-Bold="True">Phone:</asp:Label></td>
                                             <td style="width:5px"></td>
                                             <td style="width:200px"><asp:Label ID="lbl_contactphone2" runat="server" Font-Size="10pt" Font-Bold="True"></asp:Label></td>
                                         </tr> 
                                       
                                     </table>
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
