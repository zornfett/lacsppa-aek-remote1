<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.WebList.WebMessageNew" Codebehind="WebMessageNew.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Create Mail:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/javaScript" src="../js/common.js"></script> 
    <script type="text/javascript">
    <!--
    function PopupList()
    { 
       var NameValue = document.getElementById(<%= "'" + ToName.ClientID + "'" %>);        
       popupDialogSmall("../FormList/SearchUser.aspx?ToNameList="+NameValue.value);
    }
    
    function AddMultiUsers(selusers,selIDs) 
    {
       document.form1.ToName.value = selusers;
    }

    function Close_Win(flag)
    {      
        if (flag==2)
        {
           alert('Message sent!');
        }
        var idflag=document.form1.tx_idflag.value.toString();  
        if (idflag=="1")
        {
           var opener=window.dialogArguments;
           if (isIE())
           {             
              opener.document.form1.hdnRefreshData.value='1';
              opener.RefreshMyData();     
                                    
           }
           else
           {  
              window.opener.document.form1.hdnRefreshData.value='1';
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
        <input type="hidden" name="tx_idflag" id="tx_idflag" value="1" runat="server" />
        <div>
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="height: 60px;" valign="middle">
                       
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 20px">
                                </td>
                                <td align="center">
                                    <asp:ImageButton ID="btnSent" runat="server" ImageUrl="../img/Message_Sent_Email.GIF"
                                        Width="32" Height="32" OnClick="btnSent_Click" /><br />
                                    <asp:Label ID="Label2" runat="server" Text="Send"></asp:Label></td>
                                <td style="width: 40px">
                                </td>
                                <td align="center">
                                    <asp:ImageButton ID="btnClose" runat="server" ImageUrl="../img/Message_Exit.GIF"
                                        Width="32" Height="32" /><br />
                                    <asp:Label ID="Label16" runat="server" Text="Close"></asp:Label></td>
                                <td style="width: 88%">
                                </td>
                            </tr>
                        </table>
                      
                    </td>
                </tr>
               
                <tr>
                    <td valign="top">
                        <div style="border-style:ridge;border-width:thin;position: relative; width: 690px; height: 386px; overflow: auto">
                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2" style="height:5px;"></td>
                            </tr>
                            <tr>
                                <td style="width: 10%; height: 20px;" valign=top >
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="button" name="btnAddToList"  value="To:" style="width: 40px; font-weight:bold" class="buttonbluestyle" onclick="javascript:PopupList();" />                                   
                                </td>
                                <td style="width: 90%; height: 20px">
                                    <asp:Textbox ID="ToName" runat="server" TextMode="MultiLine" Width="600px" Wrap="true"></asp:Textbox> 
                                </td>
                            </tr>
<!--
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="UCI#:"></asp:Label></b></td>
                                <td style="width: 90%; height: 20px">
                                    <asp:DropDownList ID="m_uci" runat="server" DataValueField="c_key" DataTextField="uci_name"
                                        Width="600px" Height="20">
                                    </asp:DropDownList>
                                 </td>
                            </tr>
-->
                            <tr>
                                <td style="width: 10%; height: 20px;">
                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="Subject:"></asp:Label></b></td>
                                <td style="width: 90%; height: 20px">
                                    <asp:TextBox ID="m_subject" runat="server" Width="600px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top" style="height: 100%">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="m_text" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                        runat="server" Width="650px" Height="290px"></asp:TextBox>
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
