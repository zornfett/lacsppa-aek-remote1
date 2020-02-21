<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.WebMessageSent" Codebehind="WebMessageSent.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" /> 
    <title>:::Sent Message:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    function PopupList()
    { 
      var NameValue = document.getElementById(<%= "'" + ToName.ClientID + "'" %>);        
      popupDialogSmall("../FormList/SearchUser.aspx?ToNameList="+NameValue.value);
    }
    </script> 
</head>
<body style="background-color: ButtonFace;">
    <form id="form1" runat="server">
        <div>
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="height: 60px;" valign="middle">
                        <asp:Panel ID="Panel_replay_function" runat="server">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                           <tr>
                               <td style="width:20px"></td>
                               <td align="center"><asp:ImageButton ID="btnReplay" runat="server" ImageUrl="../img/Message_passOther.GIF" Width="32" Height="32" OnClick="btnReplay_Click" /><br /><asp:Label ID="Label2" runat="server" Text="Forward"></asp:Label>                                   
                               </td>
                               <td style="width:40px"></td>
                               <td align="center"><asp:ImageButton ID="btnPrint" runat="server" ImageUrl="../img/Message_Print.GIF" Width="32" Height="32"  /><br /><asp:Label ID="Label11" runat="server" Text="Print"></asp:Label></td>
                               <td style="width:40px"></td>
                               <td align="center"><asp:ImageButton ID="btnClose1" runat="server" ImageUrl="../img/Message_Exit.GIF" Width="32" Height="32" /><br /><asp:Label ID="Label13" runat="server" Text="Close"></asp:Label></td> 
                               <td style="width:76%"></td>                
                           </tr>
                        </table>   
                        </asp:Panel>
                        <asp:Panel ID="Panel_Sent_function" runat="server" Visible="false">
                            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                               <td style="width:20px"></td>
                               <td align="center"><asp:ImageButton ID="btnSent" runat="server" ImageUrl="../img/Message_Sent_Email.GIF" Width="32" Height="32" OnClick="btnSent_Click"  /><br /><asp:Label ID="Label4" runat="server" Text="Send"></asp:Label></td>                               
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
                        <asp:Panel ID="Panel_display" runat="server">                   
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2" style="height:5px;"></td>
                            </tr>
                            <tr>
                                <td style="width: 10%; height: 20px;" valign="top">
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnAddToList" runat="server" Text="To:" Style="width: 40px; font-weight:bold"
                                        CssClass="buttonbluestyle" OnClientClick="javascript:PopupList();"></asp:Button>
                                </td>
                                <td style="width: 90%;height: 20px">
                                    <asp:Textbox ID="ToName" runat="server" Width="600px" TextMode="MultiLine" Wrap="true"></asp:Textbox>
                                </td>
                            </tr>
<!--
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="UCI:" ></asp:Label></b></td>
                                <td style="width: 90%;height: 20px">
                                <asp:DropDownList ID="m_uci" runat="server" DataValueField="c_key" DataTextField="uci_name"  Width="600px" Height="20">
                                </asp:DropDownList>
                                </td>
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

