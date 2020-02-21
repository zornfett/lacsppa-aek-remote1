<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormIDNotesBridgeFile.aspx.cs"
    Inherits="Virweb2.FormList.FormIDNotesBridgeFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::Bridge File Setup:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>  
    <script language="javascript" type="text/javascript">
    <!--
	function RefreshMyData()    
    {         
        var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
        myHdnRefreshData.value = '1';        
        window.document.AccountSetting.submit(); 
        window.focus();   
    }
    function checkformat(s)
    {
        var reDate = /(?:0[1-9]|1[0-2])\/((?:19|20)\d{2})/;

        if(!reDate.test(s)) 
        {
            alert("Format is incorrect");
        }
        return false;
    }
    function setVisiableWaitingTab(flag)
    {
        switch (flag) {
            case 0:
                Tab1.style.display = "";
                showlog.style.display="none";
                waiting.style.display = "none";
                break;
            case 1:
                Tab1.style.display="none";
                showlog.style.display="none";
                waiting.style.display = "";
                break;
            case 3:
                showlog.style.display="";
                Tab1.style.display="none";
                waiting.style.display = "none";
        }
    }
    //-->
    </script>
</head>
<body onload="onloadsizechg(70);" onresize="onloadsizechg(70);">
    <form id="BridgeFileSetup" method="post" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        visible="false" src="../img/back.ico" title="Back" onclick="return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue"></asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;
                        height: 25px" src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <table class="table_maindiv">
            <tr>
                <td valign="top" align="center" width="100%" height="100%">
                    <div id="Tab1">
                        <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr> 
                            <tr style="border: #CC99CC; height: 20px" align="left">
                                <td align="left">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" Text="Download:"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="AS400 'Bridge' File :"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td class="td_unline" style="width: 300px">
                                                <asp:TextBox ID="bridgefilename" runat="server" Text="c:\xixsrvdb\bridge.txt" CssClass="inface" MaxLength="50"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td class="td_label" style="width: 150px">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Last AS400 Download:"></asp:Label>
                                            </td>
                                            <td  width="5">
                                            </td>
                                            <td class="td_unline" style="width: 200px;">
                                                <asp:TextBox ID="lastdownloaddt" runat="server" Width="120px"  CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                    onfocus="showcalendar(event, this);">
                                                </asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 10px;">
                                <td>
                                </td>
                            </tr> 
                            <tr style="border: #CC99CC; height: 20px" align="left">
                                <td align="left">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Download Parameters:"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="table_inside">
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td style="width: 500px" class="td_label">
                                                <asp:RadioButton ID="downloadfrom_1" GroupName="downloadfrom" runat="server" Text="" Checked="true" onclick="javascript:transactionsdt_1.checked=false;transactionsdt_2.checked=false;subs.style.display='none';">
                                                </asp:RadioButton><b>Download From Active Transaction File: </b> 
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 20px"></td>
                                                        <td class="td_label" style="width: 130px">
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Month Year(mm/yyyy):"></asp:Label>
                                                        </td>
                                                        <td  width="5">
                                                        </td>
                                                        <td class="td_unline" style="width: 120px;">
                                                            <asp:TextBox ID="Transfiledt" runat="server" Width="120px"  CssClass="inface" MaxLength="7" onchange="checkformat(this.value);">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td class="td_label" style="width: 200px">
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="(Default is the prior month)"></asp:Label>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td style="width: 500px" class="td_label">
                                                <asp:RadioButton ID="downloadfrom_2" GroupName="downloadfrom" runat="server" Text="" Checked="false" onclick="javascript:subs.style.display='';">
                                                </asp:RadioButton><b>Download From History File: </b>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr id="subs">
                                            <td style="width: 40px"></td>
                                            <td>
                                                <table class="table_inside">
                                                    <tr class="tr_common">
                                                        <td style="width: 20px"></td>
                                                        <td class="td_label" style="width: 150px" colspan="4">
                                                            <asp:RadioButton ID="transactionsdt_1" GroupName="transactionsdt" runat="server" Text="" Checked="false">
                                                            </asp:RadioButton><b>Where Transactions dates were From:  </b> 
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="6"></td>
                                                    </tr>
                                                    <tr  class="tr_common">
                                                        <td style="width: 20px"></td>
                                                        <td class="td_label">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        OR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        </td>
                                                        <td class="td_unline" style="width: 120px;">
                                                            <asp:TextBox ID="transdatefrom" runat="server" Width="120px"  CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                                onfocus="showcalendar(event, this);">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td class="td_label">
                                                        &nbsp;&nbsp;&nbsp;
                                                        To
                                                        </td>
                                                        <td class="td_unline" style="width: 120px;">
                                                            <asp:TextBox ID="transdateto" runat="server" Width="120px"  CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                                                                onfocus="showcalendar(event, this);">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td colspan="6"></td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td style="width: 20px"></td>
                                                        <td class="td_label" style="width: 150px" colspan="4">
                                                            <asp:RadioButton ID="transactionsdt_2" GroupName="transactionsdt" runat="server" Text="" Checked="false">
                                                            </asp:RadioButton><b>Where Download dates were From:   </b> 
                                                        </td>
                                                        <td>&nbsp;</td>
                                                        <td style="width:auto"></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td width="500" class="td_label">
						                        <b><asp:Checkbox ID="overwrite" runat="server" Text="" Checked="true"></asp:Checkbox>Overwrite prior bridge file
                                                </b>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td width="500" class="td_label">
						                        <b><asp:Checkbox ID="unverified" runat="server" Text="" Checked="true"></asp:Checkbox>Include ALL Un-Verified Transactions (This option, when set, by-passes the Verify process; The option is set in 'One Time Functions - General Info')
                                                </b>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 40px"></td>
                                            <td width="500" class="td_label">
						                        <b><asp:Checkbox ID="ValAllIDNotes" runat="server" Text="" Checked="false"></asp:Checkbox>Validate all the un-validated Transactions
                                                </b>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr style="height: 5px;">
                                            <td colspan="6">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="2" align="center">
                                                <asp:button id="btnDownload" Runat="server" Text="Download" style="width:125px" CssClass="buttonbluestyle" OnClientClick="setVisiableWaitingTab(1);" OnClick="btnDownload_Click"></asp:button>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        </table>
                    </div>
                    <div id="waiting" style="display: none; position:absolute; left:25px; top:50px; WIDTH:300px; height:200px; overflow: auto; font-size: medium; vertical-align: middle;" align=center>
                        <img src="../img/loading.gif" height="150px" />
                        <font color="Green">Processing! Please wait !!!</font><br />
                    </div>
                    <div id="showlog" style="display: none;">
                         <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr> 
                            <tr class="tr_common">
                                <td>
                                    <asp:TextBox ID="logcontent" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                     runat="server" Width="100%" Height="450" ReadOnly="true">
                                     </asp:TextBox>
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
