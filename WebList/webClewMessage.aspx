<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.WebList.webClewMessage" Codebehind="webClewMessage.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <base target="_self" />
    <title>:::Status Messages:::...</title>
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
	
	  
       function display_ticklers(obj,tk_key,taskxh)
       {
       /*
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webTicklerInfo.aspx?tickler_key="+tk_key+"&message=1") 
       */  
       }
       
       function display_IDNotes(obj,tx_uci,tx_date)
       {
       /*
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webIDNotesInfo.aspx?c_key=" + tx_uci + "&txdate=" + tx_date + "&type=edit&message=1");
       */
       }
       
       function display_PosTerm(obj,c_key,auth,svc_code,sub_code)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            //document.location.replace("FormPosInfo.aspx?uci=" + c_key + "&p_key=" + p_key+"&type=edit");
            document.location.replace("../FormList/FormPosUfsInfo.aspx?uci=" + c_key+
                "&rap_auth="+auth+"&rap_svc_code="+svc_code+"&rap_sub_code="+sub_code); 
       }
       
       function display_SirFollow(obj,c_key,s_key)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormSirInfo.aspx?uci=" + c_key + "&s_key=" + s_key + "&type=edit");
       }
       
       function display_SirOverdue(obj, c_key, s_key)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormSirInfo.aspx?uci=" + c_key + "&s_key=" + s_key + "&type=edit");
       }
       
       /*
       function display_SirOutcomp(obj, c_key, s_key)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            popupDialog("webSirInfo.aspx?c_key=" + c_key + "&s_key=" + s_key);
       }
       */
       
       function display_Message(obj,m_to_cm_id,Send_dt)
       {          
           if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
           var url="WebMessageReceived.aspx?m_to_cm_id="+m_to_cm_id+"&Sent_Date="+Send_dt+"&newflag=1&displayflag=1&message=1";            
           window.showModalDialog(url, self,'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes'); 
       }        
     
       function display_statusmessage(obj,MessageID)
       {                  
           if ( obj.rowIndex > 0 )
           {     
                obj.style.backgroundColor = '#A4d4d4';    
           }   
           
           window.showModalDialog("webStatusMessageDisp.aspx?messageid="+MessageID.toString(), self,'status:no;dialogWidth:600px;dialogHeight:570px;help:no;scroll:no;resizable:no');	        
       }

       function display_eligreview(obj,key,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormBLUESHEETInfo.aspx?EntryKey=" + key + "&c_key=" + uci + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_esreligreview(obj,key,uci,sForm)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/"+sForm+"?EntryKey=" + key + "&c_key=" + uci + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }
       
       function display_turnreview(obj,key,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormESRTurning3Info.aspx?EntryKey=" + key + "&c_key=" + uci + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_ippnotif(obj,ippid,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            if (document.form1.DefRegName.value=="FDLRC")
                document.location.replace("../FormList/FormIPPInfoFDLRC.aspx?IPPID=" + ippid + "&uci=" + uci + 
                     "&type=edit&goback=../weblist/webClewMessage.aspx");
            else
                document.location.replace("../FormList/FormIPPInfoSCLARC.aspx?IPPID=" + ippid + "&uci=" + uci + 
                     "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_annualnotif(obj,entereddate,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormIPPAnnualContactInfoSCLARC.aspx?entereddate=" + entereddate + "&uci=" + uci + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_quarterlynotif(obj,id,clientid)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormIPPQuarterlyInfoSCLARC.aspx?ID=" + id + "&ClientID=" + clientid + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_addendumnotif(obj,id,clientid)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormIPPAddendumInfoSCLARC.aspx?ID=" + id + "&ClientID=" + clientid + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_nvradue(obj,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webConsumerInfo.aspx?c_key=" + uci + "&tabflag=11&tabAFflag=5");
       }

       function display_fcppdue(obj,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webConsumerInfo.aspx?c_key=" + uci + "&tabflag=2&tabLFflag=5");
       }

       function display_afpfdue(obj,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webConsumerInfo.aspx?c_key=" + uci + "&tabflag=2&tabLFflag=5");
       }

       function display_notapprovedtime(obj,timecardid,execpt)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  

            if (execpt==1)
               document.location.replace("../FormList/FormTimecardInfoExempt.aspx?TimecardID=" + timecardid + "&type=edit");
            else
               document.location.replace("../FormList/FormTimecardInfo.aspx?TimecardID=" + timecardid + "&type=edit");
       }

       function display_newintake(obj,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webConsumerInfo.aspx?c_key=" + uci + "&tabflag=3");
       }

       function display_casetransfer(obj,createdate,uci,IsUnit)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  

            if (IsUnit==1)
               document.location.replace("../FormList/FormTransCaseLogUnit.aspx?uci=" + uci + "&createdate=" + createdate + "&type=edit");
            else
               document.location.replace("../FormList/FormTransCaseLog.aspx?uci=" + uci + "&createdate=" + createdate + "&type=edit");
       }

       function display_eligdue(obj,entrykey,uci,sForm,IsEsr)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  

            if (IsEsr==1)
               document.location.replace("../FormList/"+sForm+"?entrykey=" + entrykey +
                            "&c_key=" + uci + "&type=edit");
            else
               document.location.replace("../FormList/FormBLUESHEETInfo.aspx?entrykey=" + entrykey +
                            "&c_key=" + uci + "&type=edit"); 
       }

       function display_psychoreview(obj,entrykey,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormPsychoSocialInfo.aspx?EntryKey=" + entrykey + 
                 "&c_key=" + uci + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_esrpsychoreview(obj,entrykey,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../FormList/FormESRPsychoSocialInfo.aspx?EntryKey=" + entrykey + 
                 "&c_key=" + uci + "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_ticklerdue(obj,key,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../WebList/WebTicklerSCLARC.aspx?goback=../weblist/webClewMessage.aspx");
       }

       function display_referred(obj,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("webConsumerInfo.aspx?c_key=" + uci + "&tabflag=1");
       }

       function display_ifspnotif(obj,exit,ifspid,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            if (document.form1.DefRegName.value=="FDLRC")
                document.location.replace("../FormList/FormIFSPInfoFDLRC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
            else
            {
                if (exit == 1)
                   document.location.replace("../FormList/FormIFSPExitSCLARC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
                else
                   document.location.replace("../FormList/FormIFSPInfoSCLARC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
            }
       }

       function display_ifspaddendum(obj,ifspoutid,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            if (document.form1.DefRegName.value=="FDLRC")
                popupDialog("../FormList/FormIFSPPlanAmendmentFDLRC.aspx?IFSPOUTID=" + ifspoutid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
            else
                popupDialog("../FormList/FormIFSPPlanAmendmentSCLARC.aspx?IFSPOUTID=" + ifspoutid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_ifspreview(obj,ifspid,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            if (document.form1.DefRegName.value=="FDLRC")
                document.location.replace("../FormList/FormIFSPReviewFDLRC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
            else
                document.location.replace("../FormList/FormIFSPReviewSCLARC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_ifsptransition(obj,ifspid,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            if (document.form1.DefRegName.value=="FDLRC")
                document.location.replace("../FormList/FormIFSPTransitionFDLRC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
            else
                document.location.replace("../FormList/FormIFSPTransitionSCLARC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_ifsprmreview(obj,exit,ifspid,uci)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            // if (document.form1.DefRegName.value=="FDLRC")
                document.location.replace("../FormList/FormIFSPInfoFDLRC.aspx?IFSPID=" + ifspid + "&uci=" + uci + 
                         "&type=edit&goback=../weblist/webClewMessage.aspx");
       }

       function display_resource(obj,resourceid)
       {
            if ( obj.rowIndex > 0 )
            {     
                obj.style.backgroundColor = '#A4d4d4';    
            }  
            document.location.replace("../WebList/webResourceInfo.aspx?r_resource_id=" + resourceid + 
                         "&goback=../weblist/webClewMessage.aspx");
       }

       function RefreshMyData()    
       {         
           var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
           myHdnRefreshData.value = '1';        
           window.document.form1.submit(); 
           window.focus();   
       }    
       
       function RefreshAmendmentData() {
           var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
           myHdnRefreshData.value = "3";        
           window.document.form1.submit();
           window.focus();
           //return true;
       }   
    //-->
    </script>

</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="form1" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:HiddenField ID="DefRegName" runat="server" Value="" />
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">To Do List:</asp:label>
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
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: scroll ">
        <table class="table_maindiv">
            <asp:Panel ID="Panel_agency" runat="server" Visible="false">
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                        <tr>
                            <td id="message0" class="td_expendmark" align="center"
                                onclick="showsubmenu(0);bg_change(0)">+</td>
                            <td align="left">
                                    <asp:Label ID="statusmessage" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Announcement</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu0" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_statusMessage" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_statusMessage_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="MessageID" Visible="False">
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                        </asp:BoundColumn>
                                        <asp:BoundColumn>
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="20px" />
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="AnnounceDate" HeaderText="Announced Date" DataFormatString="{0:MM/dd/yyyy}" >
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="100px" />
                                        </asp:BoundColumn>
                                        <asp:BoundColumn DataField="Description" HeaderText="Description">
                                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                        </asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
            <asp:Panel ID="Panel_tickler" runat="server" Visible="false">
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message1" class="td_expendmark" align="center"
                                onclick="showsubmenu(1);bg_change(1)">+</td>
                            <td align="left">
                                    <asp:Label ID="Label1" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Your Ticklers</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu1" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ticklers" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ticklers_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                       <asp:BoundColumn DataField="tk_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                       <asp:BoundColumn DataField="taskxh" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                       <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>                            
                                       <asp:BoundColumn DataField="Client" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                       <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                       <asp:BoundColumn DataField="TASKTYPE" HeaderText="Task" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                       <asp:BoundColumn DataField="STARTDATE" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="80px"></asp:BoundColumn>
                                       <asp:BoundColumn DataField="DUEDATE" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="80px"></asp:BoundColumn>                          
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   
            <asp:Panel ID="Panel_IDNotes" runat="server" Visible="false">
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message2" class="td_expendmark" align="center"
                                onclick="showsubmenu(2);bg_change(2)">+</td>
                            <td align="left"><asp:Label ID="lbl_IDNotes" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu2" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_IDNotes" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_IDNotes_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                       <asp:BoundColumn DataField="tx_uci" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                       <asp:BoundColumn DataField="tx_date" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                       <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>                            
                                       <asp:BoundColumn DataField="tx_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                       <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                       <asp:BoundColumn DataField="service_date" HeaderText="Service Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="80px"></asp:BoundColumn>
                                       <asp:BoundColumn DataField="txty_text" HeaderText="Type"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                          
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>    
            </asp:Panel>   
            <asp:Panel ID="Panel_All_IDNotes" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message3" class="td_expendmark" align="center"
                                onclick="showsubmenu(3);bg_change(3)" >+</td>
                            <td align="left"><asp:Label ID="lbl_All_IDNotes" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu3" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_all_idnotes" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_all_idnotes_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="tx_uci" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="tx_date" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="tx_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="service_date" HeaderText="Service Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="80px"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="txty_text" HeaderText="Type"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                          
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   
            <asp:Panel ID="Panel_Message" runat="server" Visible="false">
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message4" class="td_expendmark" align="center"
                                onclick="showsubmenu(4);bg_change(4)">+</td>
                            <td align="left"><asp:Label ID="Label2" runat="server" Font-Size="Larger" Font-Bold="True" 
                                        ForeColor="navy">Unread Messages</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu4" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_message" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_message_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="m_to_cm_id" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Send_dt" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="From_Name" HeaderText="From" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Send_dt" HeaderText="Send Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" HeaderStyle-Width="80px" ItemStyle-Width="80px"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="m_subject" HeaderText="Subject"  ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                          
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>           
            <asp:Panel ID="Panel_PosTerm" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message5" class="td_expendmark" align="center"
                                onclick="showsubmenu(5);bg_change(5)" >+</td>
                            <td align="left"><asp:Label ID="Label3" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">POS terminating in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu5" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_posterm" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_posterm_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_auth" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="rap_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="rap_vid" HeaderText="Vendor#" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_vid_name" HeaderText="Vendor Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_svc_code" HeaderText="Service Code" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="rap_sub_code" HeaderText="Sub Code" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="SvcCodeName" HeaderText="Service" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                        <asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            <asp:Panel ID="Panel_PosTermMonth" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message15" class="td_expendmark" align="center"
                                onclick="showsubmenu(15);bg_change(15)" >+</td>
                            <td align="left"><asp:Label ID="l_menu15" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">POS terminating in the next month</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu15" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_postermmonth" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_postermmonth_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_auth" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="rap_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="rap_vid" HeaderText="Vendor#" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_vid_name" HeaderText="Vendor Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_svc_code" HeaderText="Service Code" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="rap_sub_code" HeaderText="Sub Code" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="SvcCodeName" HeaderText="Service" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                        <asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            <asp:Panel ID="Panel_Sirfollow" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message6" class="td_expendmark" align="center"
                                onclick="showsubmenu(6);bg_change(6)" >+</td>
                            <td align="left"><asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">SIR follow ups due in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu6" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_sirfollow" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_sirfollow_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="s_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="s_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="sa_rpt_dt" HeaderText="Addendum Date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                        <asp:BoundColumn DataField="sa_due_dt" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="s_incident_type" HeaderText="Incident Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            <asp:Panel ID="Panel_Siroverdue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message7" class="td_expendmark" align="center"
                                onclick="showsubmenu(7);bg_change(7)" >+</td>
                            <td align="left"><asp:Label ID="Label5" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">SIR follow ups overdue</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu7" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_siroverdue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_siroverdue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="s_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="s_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="sa_rpt_dt" HeaderText="Addendum Date" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                        <asp:BoundColumn DataField="sa_due_dt" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="s_incident_type" HeaderText="Incident Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  
            
            <asp:Panel ID="Panel_ippnotif" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message14" class="td_expendmark" align="center"
                                onclick="showsubmenu(14);bg_change(14)" >+</td>
                            <td align="left"><asp:Label ID="Label14" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu14" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ippnotif" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ippnotif_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ippid" DataField="ippid" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ipp_verify" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ipp_verify_date" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ipp_view_date" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   

            <asp:Panel ID="Panel_ippannualnotif" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message24" class="td_expendmark" align="center"
                                onclick="showsubmenu(24);bg_change(24)" >+</td>
                            <td align="left"><asp:Label ID="Label32" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Annual Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu24" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ippannualnotif" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ippannualnotif_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="IPPAnnualID" DataField="IPPAnnualID" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ipp_verify" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ipp_verify_date" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ipp_view_date" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   

            <asp:Panel ID="Panel_annualnotif" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message24" class="td_expendmark" align="center"
                                onclick="showsubmenu(24);bg_change(24)" >+</td>
                            <td align="left"><asp:Label ID="Label24" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Annual Contact Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu24" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_annualnotif" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_annualnotif_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="entereddate" DataField="entereddate" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ContactDate" HeaderText="Contact Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SCsignature" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SCsigndate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="PMSigndate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   

            <asp:Panel ID="Panel_quarterlynotif" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message25" class="td_expendmark" align="center"
                                onclick="showsubmenu(25);bg_change(25)" >+</td>
                            <td align="left"><asp:Label ID="Label25" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Quarterly Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu25" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_quarterlynotif" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_quarterlynotif_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ID" DataField="ID" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="clientid" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="VerifyBy" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="VerifyBydate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SignatureBydate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  

            <asp:Panel ID="Panel_addendumnotif" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message26" class="td_expendmark" align="center"
                                onclick="showsubmenu(26);bg_change(26)" >+</td>
                            <td align="left"><asp:Label ID="Label26" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPP Addendum Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu26" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_addendumnotif" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_addendumnotif_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ID" DataField="ID" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="clientid" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ReviewDate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="VerifyBy" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="VerifyBydate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SignatureBydate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  

            <asp:Panel ID="Panel_Siroutcomp" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message8" class="td_expendmark" align="center"
                                onclick="showsubmenu(8);bg_change(8)" >+</td>
                            <td align="left"><asp:Label ID="Label6" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IPPs/ACs out of compliance (over 45 days) in the last 12 months</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu8" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_siroutcomp" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_siroutcomp_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="tk_report" HeaderText="Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="tk_date_meeting" HeaderText="Meeting" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                        <asp:BoundColumn DataField="tk_date_report_complete" HeaderText="Completed" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>    
            <asp:Panel ID="Panel_Cderexp" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message9" class="td_expendmark" align="center"
                                onclick="showsubmenu(9);bg_change(9)" >+</td>
                            <td align="left"><asp:Label ID="Label7" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">CDER expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu9" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_cderexp" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_cderexp_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="c_review_cder_exp_date" HeaderText="Review" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                        
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
            <asp:Panel ID="Panel_ticklerdue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message10" class="td_expendmark" align="center"
                                onclick="showsubmenu(10);bg_change(10)" >+</td>
                            <td align="left"><asp:Label ID="Label8" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Tickler Due in the current month</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu10" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ticklerdue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ticklerdue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_uci" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="ReportName" HeaderText="Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            <asp:Panel ID="Panel_ticklerface" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message11" class="td_expendmark" align="center"
                                onclick="showsubmenu(11);bg_change(11)" >+</td>
                            <td align="left"><asp:Label ID="Label9" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Tickler Face-To-Face meetings needed in the last 12 month</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu11" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ticklerface" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ticklerface_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="c_key" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible=false></asp:BoundColumn>
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="tk_date_next_due" HeaderText="DueDate" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>     
            
            <asp:Panel ID="Panel_NVRADue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message16" class="td_expendmark" align="center"
                                onclick="showsubmenu(16);bg_change(16)" >+</td>
                            <td align="left"><asp:Label ID="Label16" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">NVRA due in the next 90 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu16" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_nvradue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_nvradue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="CreateDate" HeaderText="CreateDate" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_key" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DueDate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  
 
            <asp:Panel ID="Panel_AFPFDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message17" class="td_expendmark" align="center"
                                onclick="showsubmenu(17);bg_change(17)" >+</td>
                            <td align="left"><asp:Label ID="Label17" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">AFPF due in the next 90 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu17" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_afpfdue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_afpfdue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="CreateDate" HeaderText="CreateDate" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_key" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DueDate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            
            <asp:Panel ID="Panel_FCPPDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message18" class="td_expendmark" align="center"
                                onclick="showsubmenu(18);bg_change(18)" >+</td>
                            <td align="left"><asp:Label ID="Label18" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">FCPP due in the next 90 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu18" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_fcppdue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_fcppdue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="CreateDate" HeaderText="CreateDate" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_key" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DueDate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 

            <asp:Panel ID="Panel_NotApprovedTime" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message19" class="td_expendmark" align="center"
                                onclick="showsubmenu(19);bg_change(19)" >+</td>
                            <td align="left"><asp:Label ID="Label19" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Not Approved Time Cards</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu19" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_notapprovedtime" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_notapprovedtime_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="TimecardID" HeaderText="TimecardID" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="employeeID" HeaderText="Employee ID" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="EmployeeName" HeaderText="Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="EndDate" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="StatusStr" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="StatusDate" HeaderText="Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Execept" HeaderText="Except" Visible="false"></asp:BoundColumn>                                     
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 

            <asp:Panel ID="Panel_NewIntake" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message20" class="td_expendmark" align="center"
                                onclick="showsubmenu(20);bg_change(20)" >+</td>
                            <td align="left"><asp:Label ID="Label20" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">New Case for Intake Workers</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu20" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_newintake" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_newintake_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="c_key" HeaderText="c_key" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="CMName" HeaderText="Intake CM" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="inquirydate" HeaderText="Initial Inquiry Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="duedate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="c_date09" HeaderText="Psychological Held On Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="c_date13" HeaderText="Medical Held On Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 

            <asp:Panel ID="Panel_CaseTransferPM" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message21" class="td_expendmark" align="center"
                                onclick="showsubmenu(21);bg_change(21)" >+</td>
                            <td align="left"><asp:Label ID="Label21" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">New Transfer Cases for Program Manager</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu21" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_casetransferpm" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_casetransferpm_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="createdate" HeaderText="createdate" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DateCaseTrans" HeaderText="Transferred Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="CaseTransferFrom" HeaderText="Transfered From" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CaseTransferTo" HeaderText="Transfered To" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="IsUnit" HeaderText="IsUnit" Visible="false"></asp:BoundColumn>                                     
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            
            <asp:Panel ID="Panel_CaseTransferSC" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message22" class="td_expendmark" align="center"
                                onclick="showsubmenu(22);bg_change(22)" >+</td>
                            <td align="left"><asp:Label ID="Label22" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">New Transfer Cases for SC</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu22" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_casetransfersc" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_casetransfersc_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="createdate" HeaderText="createdate" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Consumer" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DateCaseTrans" HeaderText="Transferred Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="CaseTransferFrom" HeaderText="Transfered From" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CaseTransferTo" HeaderText="Transfered To" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="IsUnit" HeaderText="IsUnit" Visible="false"></asp:BoundColumn>                                     
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
            
            <asp:Panel ID="Panel_EligDue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message23" class="td_expendmark" align="center"
                                onclick="showsubmenu(23);bg_change(23)" >+</td>
                            <td align="left"><asp:Label ID="Label23" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Next Eligibility Due in the one year</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu23" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_eligdue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_eligdue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="EntryKey" HeaderText="EntryKey" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_key" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="eligreviewdate" HeaderText="Review Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IsEsr" HeaderText="IsEsr" Visible="false"></asp:BoundColumn> 
                                        <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" Visible="false">
                                        </asp:BoundColumn>                                                                        
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
                     
            <asp:Panel ID="Panel_eligreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message12" class="td_expendmark" align="center"
                                onclick="showsubmenu(12);bg_change(12)" >+</td>
                            <td align="left"><asp:Label ID="Label12" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Lanterman Eligibility Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu12" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_eligreview" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_eligreview_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DueDate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="" HeaderText="Recommendations" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SpecialistCheck" HeaderText="SpecialistCheck" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible="false"></asp:BoundColumn>                                                                
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  
            
            <asp:Panel ID="Panel_esreligreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message13" class="td_expendmark" align="center"
                                onclick="showsubmenu(13);bg_change(13)" >+</td>
                            <td align="left"><asp:Label ID="Label13" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">ES Eligibility Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu13" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_esreligreview" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" AllowSorting="true"
                                    Width="100%" OnItemDataBound="dg_esreligreview_ItemDataBound" OnSortCommand="dg_esreligreview_SortCommand">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" SortExpression="c_uci"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" SortExpression="ConsumerName"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" SortExpression="c_dob"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="DueDate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="DueDate"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="" HeaderText="Recommendations"
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>   
                                        <asp:BoundColumn DataField="sign_comments" HeaderText="Comments" 
                                                ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" Visible="false"></asp:BoundColumn>                         
                                        <asp:BoundColumn DataField="SpecialistCheck" HeaderText="SpecialistCheck" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible="false"></asp:BoundColumn>                                                                
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  
   
            <asp:Panel ID="Panel_psychoreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message27" class="td_expendmark" align="center"
                                onclick="showsubmenu(27);bg_change(27)" >+</td>
                            <td align="left"><asp:Label ID="Label27" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Lanterman Psycho-Social Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu27" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_psychoreview" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_psychoreview_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_key" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SCSignature" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SCSignatureDate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
            
            <asp:Panel ID="Panel_esrpsychoreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message28" class="td_expendmark" align="center"
                                onclick="showsubmenu(28);bg_change(28)" >+</td>
                            <td align="left"><asp:Label ID="Label28" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">ES Psycho-Social Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu28" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_esrpsychoreview" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_esrpsychoreview_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SCSignature" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SCSignatureDate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Imaged" HeaderText="Imaged" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>         
                   
            <asp:Panel ID="Panel_turnreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message41" class="td_expendmark" align="center"
                                onclick="showsubmenu(41);bg_change(41)" >+</td>
                            <td align="left"><asp:Label ID="Label41" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">ES Turning 3 Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu41" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_turnreview" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_turnreview_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="c_uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="" HeaderText="Recommendations" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SpecialistCheck" HeaderText="SpecialistCheck" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" Visible="false"></asp:BoundColumn>                                                                
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  

            <asp:Panel ID="Panel_Referred" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message29" class="td_expendmark" align="center"
                                onclick="showsubmenu(29);bg_change(29)" >+</td>
                            <td align="left"><asp:Label ID="Label29" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Referred Consumers</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu29" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_referred" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_referred_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>                                   
                                        <asp:BoundColumn DataField="FormID" HeaderText="c_key" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="AssignClient" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="EndDate" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                    
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 

            <asp:Panel ID="Panel_ifspnotif" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message30" class="td_expendmark" align="center"
                                onclick="showsubmenu(30);bg_change(30)" >+</td>
                            <td align="left"><asp:Label ID="Label30" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu30" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ifspnotif" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ifspnotif_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ifspid" DataField="ifspid" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="IFSPMeetingDate" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifyby" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifybydate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SignaturedDate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
            
            <asp:Panel ID="Panel_ifspaddendum" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message31" class="td_expendmark" align="center"
                                onclick="showsubmenu(31);bg_change(31)" >+</td>
                            <td align="left"><asp:Label ID="Label10" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Addendum Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu31" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ifspaddendum" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ifspaddendum_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ifspoutid" DataField="ifspoutid" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="IFSPMeetingDate" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifyby" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifybydate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SignaturedDate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   

            <asp:Panel ID="Panel_ifspreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message32" class="td_expendmark" align="center"
                                onclick="showsubmenu(32);bg_change(32)" >+</td>
                            <td align="left"><asp:Label ID="Label11" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Periodic Review Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu32" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ifspreview" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ifspreview_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ifspid" DataField="ifspid" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="IFSPMeetingDate" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifyby" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifybydate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SignaturedDate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>   

            <asp:Panel ID="Panel_ifsptransition" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message33" class="td_expendmark" align="center"
                                onclick="showsubmenu(33);bg_change(33)" >+</td>
                            <td align="left"><asp:Label ID="Label15" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP Transition Notification</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu33" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ifsptransition" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_ifsptransition_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ifspid" DataField="ifspid" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="IFSPMeetingDate" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="Sign" HeaderText="Status" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifyby" HeaderText="Signed By SC" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="verifybydate" HeaderText="SC Signed Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="SignaturedDate" HeaderText="PM Returned Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>  
            
            <asp:Panel ID="Panel_ifsprmreview" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message42" class="td_expendmark" align="center"
                                onclick="showsubmenu(42);bg_change(42)" >+</td>
                            <td align="left"><asp:Label ID="Label31" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">IFSP RM Review</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu42" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_ifsprmreview" runat="server" AllowPaging="false" AllowSorting="true" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" 
                                    OnItemDataBound="dg_ifspnotif_ItemDataBound" OnSortCommand="dg_ifspnotif_SortCommand">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn HeaderText="ifspid" DataField="ifspid" Visible="false"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" 
                                                 ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px" SortExpression="ifspid"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="uci" HeaderText="UCI" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" SortExpression="uci"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ConsumerName" HeaderText="Client" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" SortExpression="ConsumerName"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="c_cm_id" HeaderText="SC#" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" SortExpression="c_cm_id"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="CMName" HeaderText="SC Name" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" SortExpression="CMName"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="CMUnit" HeaderText="SC Unit" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" SortExpression="CMUnit"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPMeetingDate" HeaderText="IFSPMeetingDate" DataFormatString="{0:MM/dd/yyyy}" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" SortExpression="IFSPMeetingDate"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="IFSPType_desc" HeaderText="IFSP Type" 
                                                 ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>

            <asp:Panel ID="Panel_monitordue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message34" class="td_expendmark" align="center"
                                onclick="showsubmenu(34);bg_change(34)" >+</td>
                            <td align="left"><asp:Label ID="l_monitordue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Monitoring Due in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu34" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_monitordue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_monitordue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_evaluation_date" HeaderText="Evaluation Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel> 
            
            <asp:Panel ID="Panel_followupdue" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message35" class="td_expendmark" align="center"
                                onclick="showsubmenu(35);bg_change(35)" >+</td>
                            <td align="left"><asp:Label ID="l_followupdue" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Following-up Due in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu35" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_followupdue" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_followupdue_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_eval_exit" HeaderText="Follow-up Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
            
            <asp:Panel ID="Panel_paymentexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message36" class="td_expendmark" align="center"
                                onclick="showsubmenu(36);bg_change(36)" >+</td>
                            <td align="left"><asp:Label ID="l_paymentexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Payment Agreements expiring within the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu36" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_paymentexpire" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_paymentexpire_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_sanction_date_start" HeaderText="Expire Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>           

            <asp:Panel ID="Panel_contactsexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message37" class="td_expendmark" align="center"
                                onclick="showsubmenu(37);bg_change(37)" >+</td>
                            <td align="left"><asp:Label ID="l_contactsexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Contacts expiring within the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu37" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_contactsexpire" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_contactsexpire_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_monitor_date" HeaderText="Monitor Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>

            <asp:Panel ID="Panel_insuranceexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message38" class="td_expendmark" align="center"
                                onclick="showsubmenu(38);bg_change(38)" >+</td>
                            <td align="left"><asp:Label ID="l_insuranceexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Liability Insurance expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu38" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_insuranceexpire" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_insuranceexpire_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_rate_effective_date" HeaderText="Expire Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>

            <asp:Panel ID="Panel_compensationexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message39" class="td_expendmark" align="center"
                                onclick="showsubmenu(39);bg_change(39)" >+</td>
                            <td align="left"><asp:Label ID="l_compensationexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Worker's Compensation expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu39" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_compensationexpire" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_compensationexpire_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_unannounced_visit_1" HeaderText="Expire Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>

            <asp:Panel ID="Panel_licensesexpire" runat="server" Visible="false">            
            <tr>
               <td></td>
            </tr>
            <tr style="height: 22px;">
                <td>
                    <table cellspacing="0" cellpadding="0" align="center" border="0" style="width: 100%">
                        <tr>
                            <td id="message40" class="td_expendmark" align="center"
                                onclick="showsubmenu(40);bg_change(40)" >+</td>
                            <td align="left"><asp:Label ID="l_licensesexpire" runat="server" Font-Size="Larger" Font-Bold="True"
                                        ForeColor="navy">Business licenses expiring in the next 30 days</asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="submenu40" align="center"  style="display:none;">
                    <table cellspacing="0" cellpadding="0"  border="0" style="width: 100%">
                        <tr>
                            <td style="width: 24px;">
                            </td>
                            <td align="center">
                                <asp:DataGrid ID="dg_licensesexpire" runat="server" AllowPaging="false" CssClass="grd_body"
                                    ShowFooter="false" AutoGenerateColumns="False" Width="100%" OnItemDataBound="dg_licensesexpire_ItemDataBound">
                                    <HeaderStyle CssClass="grd_head_fix"></HeaderStyle>
                                    <ItemStyle CssClass="grd_item"></ItemStyle>
                                    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                    <Columns>
                                        <asp:BoundColumn DataField="r_resource_id" HeaderText="Resource ID" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                                     
                                        <asp:BoundColumn DataField="" HeaderText="" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="20px"></asp:BoundColumn>    
                                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_unannounced_visit_2" HeaderText="Expire Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                        <asp:BoundColumn DataField="r_qa_monitor" HeaderText="QA Monitor" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>                            
                                    </Columns>
                                </asp:DataGrid>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </asp:Panel>
        </table>
    </div>
    </form>
</body>
</html>
