<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResourceList.aspx.cs" Inherits="Virweb2.FormList.SearchResourceList" %>

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
		    function SaveConsumer(SelCon) {
		        var opener = window.dialogArguments;
		        if (isIE()) {
		            opener.AddMulti(SelCon);
		        }
		        else {
		            window.opener.AddMulti(SelCon);
		        }
		        self.close();
		    }
		//-->
		</script>
</head>
<body>
    <form id="SearchResourcListForm" runat="server">
        <div align="center">
        <br />
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr align="center">
                <td colspan="2" valign="top">
		            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue" Height="18px">VENDOR LIST</asp:label>
                    <br /><br />
                </td>
            </tr>
            <tr align="center">
                <td colspan="2" valign="top">
                    <asp:Button ID="btnSelect" runat="server" Text="Submit Selection" Style="width: 200px" CssClass="buttonbluestyle" OnClick="btnSelect_Click"></asp:Button>
                </td>
            </tr>
		    <tr>
                <td height="15">
                </td>
            </tr>
		</table> 
		</div>
        <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto">
            <table class="table_maindiv" style="width: 100%;">
                <tr>
                    <td align="left" style="width: 60%;">
                        <div id="div1" align="left" style="position: relative; width: 100%; height: 450px; overflow: auto">
                        <table class="table_common" cellspacing="0" cellpadding="0" style="width: 100%;">
                            <tr class="tr_common">
                                <td valign="top" align="left">
                                    <asp:CheckBoxList ID="ResourceCheckList" runat="server" DataValueField="r_resource_id" DataTextField="ResourceName">
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                        </table>
                        </div>
                    </td>
                    <td align="left" valign="top" style="width: 40%;">
                        <div id="div2" align="left" style="position: relative; width: 100%;  overflow: auto">
                        <table class="table_common" cellspacing="0" cellpadding="0" style="width: 100%;">
                            <tr class="tr_common">
                                <td valign="top">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td colspan="3" align="left" class="td_label">
                                                <b><asp:Label ID="l_search_title" runat="server" Text="Search Vendor By:"></asp:Label></b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" height="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b><asp:Label ID="Label1" runat="server" Text="Vendor Number:"></asp:Label></b>
                                            </td>
                                            <td style="width: 5px;"></td>
                                            <td class="td_unline" align="left" style="width: 150px">
                                                <asp:TextBox ID="vendor_number" runat="server" CssClass="inface" Style="width: 180px"
                                                    MaxLength="12"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" height="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b><asp:Label ID="Label2" runat="server" Text="Vendor Name:"></asp:Label></b>
                                            </td>
                                            <td style="width: 5px;"></td>
                                            <td class="td_unline" align="left" style="width: 150px">
                                                <asp:TextBox ID="resource_name" runat="server" CssClass="inface" Style="width: 180px"
                                                    MaxLength="40"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" height="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td style="width: 100px;" align="left" class="td_label">
                                                <b><asp:Label ID="Label3" runat="server" Text="Service Code:"></asp:Label></b>
                                            </td>
                                            <td style="width: 5px;"></td>
                                            <td class="td_unline" align="left" style="width: 150px">
                                                <asp:TextBox ID="service_code" runat="server" CssClass="inface" Style="width: 180px"
                                                    MaxLength="4"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" height="5">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3" valign="top" align="center">
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" Style="width: 150px" CssClass="buttonbluestyle" OnClick="btnSearch_Click"></asp:Button>
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
