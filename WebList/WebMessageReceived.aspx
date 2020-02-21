<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.WebMessageReceived" Codebehind="WebMessageReceived.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::Received Message:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
        function Close_Win(flag)
        {
           var opener=window.dialogArguments;
           if (isIE())
           {
              if (flag==1)
              {
                opener.document.form1.hdnRefreshData.value='2';
                opener.RefreshMyData();
              }  
              else if (flag==2)
              {
                 alert('Message Sent!')
                 opener.document.form1.hdnRefreshData.value='1';
                 opener.RefreshMyData();
              }
              else if (flag==3)
              {
                 alert('Delete successful!')
                 opener.document.form1.hdnRefreshData.value='2';
                 opener.RefreshMyData();
              }
           }
           else
           {  if (flag==1)
              {
                 window.opener.document.form1.hdnRefreshData.value='2';
                 window.opener.RefreshMyData();
              }   
              else if (flag==2)
              {
                 alert('Message Sent!')
                 window.opener.document.form1.hdnRefreshData.value='1';
                 window.opener.RefreshMyData();
              }
              else if (flag==3)
              {
                 alert('Delete successful!')
                 window.opener.document.form1.hdnRefreshData.value='2';
                 window.opener.RefreshMyData();
              }
           }
           window.close();
        }
      
       
        
        
    //-->
    </script>
</head>
<body style="background-color: ButtonFace;">
    <form id="form1" runat="server">
        <input id="NoConfirm" type=hidden value="0" />
        <div>
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="height: 60px;" valign="middle">
                        <asp:Panel ID="Panel_replay" runat="server">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                           <tr>
                               <td style="width:20px"></td>
                               <td align="center"><asp:ImageButton ID="btnReplay" runat="server" ImageUrl="../img/Message_Replay.GIF" Width="32" Height="32" OnClick="btnReplay_Click" /><br /><asp:Label ID="Label9" runat="server" Text="Reply"></asp:Label></td>
                               <td style="width:40px"></td>
                               <td align="center"><asp:ImageButton ID="btnDelete" runat="server" ImageUrl="../img/Message_Delete.GIF" Width="32" Height="32" OnClick="btnDelete_Click"  /><br /><asp:Label ID="Label4" runat="server" Text="Delete"></asp:Label></td>
                               <td style="width:40px"></td>
                               <td align="center"><asp:ImageButton ID="btnPrint" runat="server" ImageUrl="../img/Message_Print.GIF" Width="32" Height="32"  /><br /><asp:Label ID="Label6" runat="server" Text="Print"></asp:Label></td>
                               <td style="width:40px"></td>
                               <td align="center"><asp:ImageButton ID="btnClose1" runat="server" ImageUrl="../img/Message_Exit.GIF" Width="32" Height="32" /><br /><asp:Label ID="Label10" runat="server" Text="Close"></asp:Label></td> 
                               <td style="width:76%"></td>                
                           </tr>
                        </table>   
                        </asp:Panel>
                        <asp:Panel ID="Panel_Sent" runat="server" Visible="false">
                            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                               <td style="width:20px"></td>
                               <td align="center"><asp:ImageButton ID="btnSent" runat="server" ImageUrl="../img/Message_Sent_Email.GIF" Width="32" Height="32" OnClick="btnSent_Click"  /><br /><asp:Label ID="Label2" runat="server" Text="Send"></asp:Label></td>                               
                                <td style="width:40px"></td>
                               <td align="center"><asp:ImageButton ID="btnClose2" runat="server" ImageUrl="../img/Message_Exit.GIF" Width="32" Height="32" /><br /><asp:Label ID="Label16" runat="server" Text="Close"></asp:Label></td>                                                                                
                               <td style="width:88%"></td>
                
                           </tr>
                        </table>   
                        </asp:Panel> 
                    </td>
                </tr>                
                <tr>
                    <td valign="top">
                        <div style="border-style:ridge;border-width:thin;position: relative; width: 690px; height: 386px;overflow:hidden;"> 
                        <asp:Panel ID="Panel_ReceiveEmil" runat="server">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                           <tr>
                                <td colspan="2" style="height:5px;"></td>
                            </tr>    
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="From:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px" align="left">
                                    <asp:Label ID="lbl_from" runat="server" Text=""></asp:Label><asp:Label ID="lbl_from_id" runat="server" Text="" Visible="false"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Date:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px">
                                    <asp:Label ID="lbl_sentdate" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="To:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px">
                                    <asp:Label ID="lbl_to" runat="server" Text=""></asp:Label><asp:Label ID="lbl_to_id" runat="server" Text="" Visible="false"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Subject:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px">
                                    <asp:Label ID="lbl_subject" runat="server" Text=""></asp:Label>
<!--
                                    <asp:Label ID="lbl_uci" runat="server" Text="" Visible="false"></asp:Label>
-->
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top" style="height: 100%">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_text" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="650px" Height="290px" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel_SentEmail" runat="server" Visible="false">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">   
                            <tr>
                                <td colspan="2" style="height:5px;"></td>
                            </tr>                             
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="To:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px"><asp:DropDownList ID="m_to_cm_id" runat="server" DataValueField="EmployeeID" DataTextField="EmployeeName"  Width="600px" Height="20"></asp:DropDownList></td>
                            </tr>
<!--
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="UCI:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px"><asp:DropDownList ID="m_uci" runat="server" DataValueField="c_key" DataTextField="uci_name"  Width="600px" Height="20"></asp:DropDownList></td>
                            </tr>
-->
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="Subject:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px"><asp:TextBox ID="m_subject" runat="server" Width="600px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top" style="height: 100%">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="m_text" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="650px" Height="290px" ></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        </asp:Panel>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
