<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.webMessager" Codebehind="webMessager.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>Messages</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">

    <script type="text/JavaScript" src="../js/common.js"></script>

    <script language="javascript">
    <!--        
       function RefreshMyData()    
       {
           window.document.form1.submit(); 
           window.focus();   
       }
                     
       function display_receivedinfo(m_to_cm_id,Date_Sent,Newflag,displayflag)
       {
            document.form1.m_to_cm_id.value="";
            document.form1.m_to_list.value="";
            document.form1.m_sent_dt.value="";
            var url="WebMessageReceived.aspx?m_to_cm_id="+m_to_cm_id+"&Sent_Date="+Date_Sent+"&newflag="+Newflag+"&displayflag="+displayflag;            
            window.showModalDialog(url, self,'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');            
       }       
       
       function display_sentinfo(m_to_cm_id,m_to_list,Date_Sent,displayflag)
       {
            document.form1.m_to_cm_id.value="";
            document.form1.m_to_list.value="";
            document.form1.m_sent_dt.value="";
            var url="WebMessageSent.aspx?to_cm_id="+m_to_cm_id+"&to_cm_list="+m_to_list+"&Sent_Date="+Date_Sent+"&displayflag="+displayflag;           
            window.showModalDialog(url, self,'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');          
       }
         
       var preRow = null;        
       var preBkcolor = '#fff';
        
       function show_message(row,m_to_cm_id,m_to_list,Date_Sent,Newflag)
       {
           if (isIE()) {
             var obj = row.parentNode;
             if ( obj.rowIndex > 0 )
             {
                 if (preRow != null)
                {
                     for(i=0; i<preRow.cells.length; i++)
                        preRow.cells(i).style.backgroundColor = preBkcolor;
                }
                
                preRow = obj;
                preBkcolor = obj.cells(0).style.backgroundColor;

                for(i=0; i<obj.cells.length; i++)
                {
                    obj.cells(i).style.backgroundColor = '#A4d4d4';
                    if (Newflag=="1")
                    {                      
                       obj.cells(i).style.fontWeight = "";                        
                    }
               }

               if ((m_to_list == "") && (Newflag==0)) {
                   var today = new Date();
                   obj.cells[1].innerHTML = padStr(1 + today.getMonth()) + "/" + padStr(today.getDate()) + "/" + padStr(today.getFullYear()) + " "
                   + today.toLocaleTimeString();
               } 
             }
           }
           
            
            document.form1.m_to_cm_id.value=m_to_cm_id;
            document.form1.m_to_list.value=m_to_list;
            document.form1.m_sent_dt.value=Date_Sent;
            var url="webMessageShow.aspx?m_to_cm_id="+m_to_cm_id+"&m_to_list="+m_to_list+"&Sent_Date="+Date_Sent+"&newflag="+Newflag;
            document.all.iframe1.src = url;
            // window.document.form1.submit(); 
       }
              
       function new_email()
       {
            document.form1.m_to_cm_id.value="";
            document.form1.m_to_list.value="";
            document.form1.m_sent_dt.value="";
            var url="WebMessageNew.aspx";            
            window.showModalDialog(url, self,'status:yes;dialogWidth:700px;dialogHeight:500px;help:yes;scroll:yes;resizable:yes');          
       }
     
       function Print_Email(UserAct)
       {        
          var m_to_cm_id=document.form1.m_to_cm_id.value;
          var m_to_list=document.form1.m_to_list.value;
          var Date_Sent=document.form1.m_sent_dt.value;
          if ((m_to_cm_id=="") && (m_to_list==""))
          {
            alert("Please select a message first!");
            return;
          }
          else
          {
               NoConfirmExit();
               var newwin;
	           newwin=window.open("PrintMessage.aspx?m_to_cm_id="+m_to_cm_id+"&m_to_list="+m_to_list+"&Sent_Date="+Date_Sent+"&UserAct="+UserAct,"PrintEmail","toolbar=0,location=yes,top=0,left=0,directories=0,status=0,menubar=yes,width=900px,height=700px,scrollbars=yes,moveable=auto,resizable=yes");
	           newwin.focus();             
          }          
       }
    //-->
    </script>

</head>
<body id="body" runat="server" style="background-color: ButtonFace;">
    <form id="form1" runat="server" method="post">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="email_flag" id="email_flag" runat="server" value="0" />
    <input type="hidden" name="m_to_cm_id" id="m_to_cm_id" runat="server" value="" />
    <input type="hidden" name="m_to_list" id="m_to_list" runat="server" value="" />
    <input type="hidden" name="m_sent_dt" id="m_sent_dt" runat="server" value="" />
    <div algin="left" style="WIDTH:100%;">
	   <table id="headericon" runat="server" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Message:</asp:label>
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
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="height: 60px;" valign="middle" align="left">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 20px">
                                </td>
                                <td style="width: 150px" align="center">
                                    <asp:ImageButton ID="btnNew" runat="server" ImageUrl="../img/Message_New.GIF" Width="32"
                                        Height="32" /><br />
                                    <asp:Label ID="Label3" runat="server" Text="Create Mail"></asp:Label></td>
                                <td style="width: 40px"></td>
                                <td  style="width: 120px" align="center">
                                <asp:ImageButton ID="btnReplay" runat="server" ImageUrl="../img/Message_Replay.GIF" Width="32" Height="32" OnClick="btnReplay_Click"  />
                                <br /><asp:Label ID="lbl_reply" runat="server" Text="Reply"></asp:Label>
                                </td>
                                <td style="width: 40px"></td>
                                 <td style="width: 120px" align="center">
                                 <asp:ImageButton ID="btnForward_inbox" runat="server" ImageUrl="../img/Message_passOther.GIF" Width="32" Height="32" OnClick="btnForward_Click"  />
                                 <br /><asp:Label ID="Label6" runat="server" Text="Forward"></asp:Label>
                                 </td>
                                <td style="width: 40px"></td>
                                <td style="width: 120px" align="center">
                                    <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="../img/Message_Delete.GIF"
                                        Width="32" Height="32" OnClick="btnDelete_Click" /><br />
                                    <asp:Label ID="lbl_delete" runat="server" Text="Delete"></asp:Label></td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 120px" align="center">
                                    <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="../img/Message_Print.GIF" Width="32" 
                                        Height="32" /><br />
                                    <asp:Label ID="Label5" runat="server" Text="Print"></asp:Label></td>
                                <td style="width: 40px">
                                </td>
                                <td style="width: 120px" align="center">
                                    <asp:ImageButton ID="btnClose" runat="server" ImageUrl="../img/Message_Exit.GIF" Width="32"
                                        Height="32" visible="false" /><br />
                                    <asp:Label ID="Label16" runat="server" Text="Close" Visible="false"></asp:Label></td>
                                <td style="width: 60%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <div style="border-style:none;">
                            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 10%; background-color: #A6A6A6" valign="top">
                                        <div >
                                            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td align="center" valign="top">
                                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                                                            <tr>
                                                                <td style="height: 20px" valign="top">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" align="center" style="height: 70px">
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../img/Message_GetBox.GIF"
                                                                        Width="36" Height="36" OnClick="ImageButton1_Click" /><br />
                                                                    <asp:Label ID="Label1" runat="server" Text="Inbox"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" align="center">
                                                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../img/Message_SentedBox.GIF"
                                                                        Width="36" Height="36" OnClick="ImageButton2_Click" /><br />
                                                                    <asp:Label ID="Label2" runat="server" Text="Sent Items" ForeColor="black"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td>
                                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td align="center">
                                                    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: White">
                                                        <tr>
                                                            <td valign="top">
                                                                <div style="border-style: ridge; border-width:thin; position: relative; width: 99%; height: 380px; overflow: auto">
                                                                    <asp:Panel ID="Panel_received" runat="server" Width="100%">
                                                                        <asp:DataGrid ID="dg_receiver" runat="server" CssClass="grd_body" AutoGenerateColumns="False"
                                                                            AllowSorting="true" OnItemDataBound="dg_receiver_ItemDataBound" OnSortCommand="dg_receiver_SortCommand">
                                                                            <HeaderStyle CssClass="grd_head"></HeaderStyle>
                                                                            <ItemStyle CssClass="grd_item"></ItemStyle>
                                                                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                                                            <Columns>
                                                                                <asp:BoundColumn DataField="m_sent_dt" HeaderText="Sent Date" ItemStyle-HorizontalAlign="left"
                                                                                    ItemStyle-VerticalAlign="Middle" ItemStyle-Width="140" SortExpression="m_sent_dt"></asp:BoundColumn>
                                                                                <asp:BoundColumn DataField="m_read_dt" HeaderText="Read Date" ItemStyle-HorizontalAlign="Left"
                                                                                    ItemStyle-VerticalAlign="Middle" ItemStyle-Width="140" SortExpression="m_read_dt"></asp:BoundColumn>
                                                                                <asp:BoundColumn DataField="Sent_Name" HeaderText="From" ItemStyle-HorizontalAlign="Left"
                                                                                    ItemStyle-VerticalAlign="middle" ItemStyle-Width="160" SortExpression="Sent_Name"></asp:BoundColumn>
                                                                                <asp:BoundColumn DataField="m_subject" HeaderText="Subject" ItemStyle-HorizontalAlign="Left"
                                                                                    ItemStyle-VerticalAlign="middle" SortExpression="m_subject"></asp:BoundColumn>   
                                                                                <asp:BoundColumn DataField="m_priority" HeaderText="Priority" Visible="false"></asp:BoundColumn> 
                                                                                <asp:BoundColumn DataField="m_uci" HeaderText="UCI" Visible="false"></asp:BoundColumn> 
                                                                                <asp:BoundColumn DataField="m_task" HeaderText="Task" Visible="false"></asp:BoundColumn> 
                                                                                <asp:BoundColumn DataField="m_process" HeaderText="Process" Visible="false"></asp:BoundColumn> 
                                                                                <asp:TemplateColumn HeaderText="Link">
							                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							                                                        <ItemTemplate>
								                                                         <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							                                                        </ItemTemplate>
						                                                        </asp:TemplateColumn>                                                                             
                                                                            </Columns>
                                                                        </asp:DataGrid>
                                                                    </asp:Panel>
                                                                    <asp:Panel ID="Panel_sent" runat="server" Width="100%">
                                                                        <asp:DataGrid ID="dg_sent" runat="server" CssClass="grd_body" AutoGenerateColumns="False"
                                                                            AllowSorting="true" OnItemDataBound="dg_sent_ItemDataBound" OnSortCommand="dg_sent_SortCommand">
                                                                            <HeaderStyle CssClass="grd_head"></HeaderStyle>
                                                                            <ItemStyle CssClass="grd_item"></ItemStyle>
                                                                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                                                                            <Columns>
                                                                                <asp:BoundColumn DataField="m_sent_dt" HeaderText="Sent Date" ItemStyle-HorizontalAlign="left"
                                                                                    ItemStyle-VerticalAlign="Middle" ItemStyle-Width="140" SortExpression="m_sent_dt"></asp:BoundColumn>
                                                                                <asp:BoundColumn DataField="Accept_Name" HeaderText="To" ItemStyle-HorizontalAlign="Left"
                                                                                    ItemStyle-VerticalAlign="middle" ItemStyle-Width="160" SortExpression="Accept_Name"></asp:BoundColumn>
                                                                                <asp:BoundColumn DataField="m_subject" HeaderText="Subject" ItemStyle-HorizontalAlign="Left"
                                                                                    ItemStyle-VerticalAlign="middle" SortExpression="m_subject"></asp:BoundColumn>     
                                                                                <asp:BoundColumn DataField="m_priority" HeaderText="Priority" Visible="false"></asp:BoundColumn>  
                                                                                <asp:BoundColumn DataField="m_uci" HeaderText="UCI" Visible="false"></asp:BoundColumn> 
                                                                                <asp:BoundColumn DataField="m_task" HeaderText="Task" Visible="false"></asp:BoundColumn> 
                                                                                <asp:BoundColumn DataField="m_process" HeaderText="Process" Visible="false"></asp:BoundColumn> 
                                                                                <asp:TemplateColumn HeaderText="Link">
							                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							                                                        <ItemTemplate>
								                                                         <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							                                                        </ItemTemplate>
						                                                        </asp:TemplateColumn>                                                                               
                                                                            </Columns>
                                                                        </asp:DataGrid>
                                                                    </asp:Panel>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top">
                                                                <div style="border-style: ridge; border-width:thin; position: relative; width: 99%; height: 244px; overflow: auto">
                                                                    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: ButtonFace">
                                                                        <tr>
                                                                            <td valign="top">
                                                                                <iframe id="iframe1" name="iframe1" width="100%" frameborder="no" align="left" height="100%" src="">
                                                                                </iframe>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
