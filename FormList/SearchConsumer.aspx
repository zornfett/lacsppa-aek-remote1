<%@ Page Language="C#" AutoEventWireup="True" Inherits="Virweb2.FormList.SearchConsumer" Codebehind="SearchConsumer.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
        <base target="_self"></base>    
		<title>:::Select Client:::...</title>
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
		<script type="text/JavaScript"  src="../js/common.js"></script>
		<script language="javascript">
		<!--
		  function SaveConsumer(SelCon)
		  {		      
		      var opener=window.dialogArguments;
              if (isIE())
              {
                  opener.AddMulti(SelCon);                
              }
              else
              {
                  window.opener.AddMulti(SelCon);  
              }
              self.close();
		  }
		//-->
		</script>
</head>
<body>
    <form id="SearchConsumerForm" runat="server">
        <div align="center">
        <br />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr align="center">
                <td colspan="2" valign="top">
		            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">CLIENT LIST</asp:label>
                    
                </td>
            </tr>
            <tr>
                <td height="10px" colspan="2"></td>
            </tr>
            <tr align="center">
                <td colspan="2" valign="top">
                    <asp:Button ID="btnSelect" runat="server" Text="Submit Selection" Style="width: 200px" CssClass="buttonbluestyle" OnClick="btnSelect_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td height="15px" colspan="2"></td>
            </tr>
		    <tr align="left">
                <td valign="top" align="left" style="width:45%">
                    <asp:CheckBoxList ID="ClientCheckList" runat="server" DataTextField="ConsumerUCIName">
                    </asp:CheckBoxList>
                </td>
                <td align="left" valign="top"  style="width:55%">
                    <table class="table_inside">
                        <tr class="tr_common" align="center">
                            <td colspan="3">
                                <asp:label id="l_searchclientby" runat="server" Font-Size="Small" Font-Bold="True" ForeColor="Blue" Height="16px">Search Client By:</asp:label>
                            </td>
                        </tr>
                        <tr>
                            <td height="5px" colspan="3"></td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" style="width: 70px">
                                <b><asp:label id="l_uci" runat="server" Text="UCI:"></asp:label></b>
                            </td>
                            <td style="width: 5px"></td>
                            <td class="td_unline" style="width: 150px">
							    <asp:textbox id="s_uci" runat="server" CssClass="inface"></asp:textbox>
							</td>
                        </tr>
                        <tr>
                            <td height="5px" colspan="3"></td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" style="width: 70px">
                                <b><asp:label id="l_lastname" runat="server" Text="Last Name:"></asp:label></b>
                            </td>
                            <td style="width: 5px"></td>
                            <td class="td_unline" style="width: 150px">
							    <asp:textbox id="s_lastname" runat="server" CssClass="inface"></asp:textbox>
							</td>
                        </tr>
                        <tr>
                            <td height="5px" colspan="3"></td>
                        </tr>
                        <tr class="tr_common">
                            <td class="td_label" style="width: 70px">
                                <b><asp:label id="l_firstname" runat="server" Text="First Name:"></asp:label></b>
                            </td>
                            <td style="width: 5px"></td>
                            <td class="td_unline" style="width: 150px">
							    <asp:textbox id="s_firstname" runat="server" CssClass="inface"></asp:textbox>
							</td>
                        </tr>
                        <tr>
                            <td height="5px" colspan="3"></td>
                        </tr>
                        <td colspan="3" valign="top">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" Style="width: 100px" CssClass="buttonbluestyle" OnClick="btnSearch_Click"></asp:Button>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAdd" runat="server" Text="Add" Style="width: 100px" CssClass="buttonbluestyle" OnClick="btnAdd_Click"></asp:Button>
                        </td>
                        <tr>
                            <td height="5px" colspan="3"></td>
                        </tr>
                        <tr class="tr_common">
                            <td valign="top" align="left" colspan="3">
                            <asp:Panel runat="server" align="left" width="90%" height="300px" ScrollBars="Auto">
                                <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
                                    <tr>
                                        <td>
                                            <asp:CheckBoxList ID="searchconsumerlist" runat="server">
                                            </asp:CheckBoxList>
                                            <br />
                                            <b><asp:label id="msg" runat="server" Visible="false" Text="No Matches Found!"></asp:label></b>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
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
