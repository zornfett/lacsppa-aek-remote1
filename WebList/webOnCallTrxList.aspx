<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webOnCallTrxList.aspx.cs" Inherits="Virweb2.WebList.webOnCallTrxList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base target="_self" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
        function hideself() {
            parent.hidediv();
        }
        function print_click() {
            var userid = document.frmTrxList.userid.value.toString();
            var UserAct = document.frmTrxList.UserAct.value.toString();
            var url = "PrintOnCallTrxList.aspx?&userid=" + userid + "&UserAct=" + UserAct + "&ret=0";
            winhref(url, 'PrintOnCallTrxList');
        }

        function printret_click() {
            var userid = document.frmTrxList.userid.value.toString();
            var UserAct = document.frmTrxList.UserAct.value.toString();
            var url = "PrintOnCallTrxList.aspx?userid=" + userid + "&UserAct=" + UserAct + "&ret=1";
            winhref(url, 'PrintOnCallTrxList');
        }

    </script>
</head>
<body>
    <form id="frmTrxList" runat="server">
    <input type="hidden" name="userid" id="userid" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	    <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan="5">
	            <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Black">ON CALL / MODIFIED TRANSACTIONS</asp:label> 
	        </td>
	    </tr>
        <tr>
		    <td style="height:5px" colspan="5"></td> 
	    </tr>
	    <tr style="width:100%" align="left" valign="middle">
            <td style="width:20px"></td>
            <td style="WIDTH: 120px">
                <b><asp:Label ID="l_nowdate" runat="server" Text=""></asp:Label></b>
			</td>
            <td style="width:120px"></td>
            <td style="WIDTH: 250px">
                <b><asp:Label ID="MgrName" runat="server" Text=""></asp:Label></b>
			</td>
			<td align="right">
		  	    <input type="button" id="btnPrint" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:print_click();return false;" runat="server" /> 
			    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:button id="btnClose" runat="server" Text="Close" style="width:60px" CssClass="buttonbluestyle" onclick="btnClose_Click"></asp:button>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
		    <td style="height:5px" colspan="5"></td> 
	    </tr>
        <tr>
            <td colspan="5" align="center">
                <asp:datagrid id="dg_OnCallTrxList" runat="server" AllowPaging="false" CssClass="grd_body"
			    Visible="True" AutoGenerateColumns="False" AllowSorting="false">
			    <HeaderStyle CssClass="grd_head"></HeaderStyle>
			    <ItemStyle CssClass="grd_item"></ItemStyle>
			    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			    <Columns>
                    <asp:BoundColumn DataField="consumername" HeaderText="Consumer" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="tx_id_notes" HeaderText="Description">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="tx_entered_by_name" HeaderText="Entered By">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="tx_date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="tx_type" HeaderText="Ty">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>											
			    </Columns>
		        </asp:datagrid>
            </td>
        </tr>
    </table>
    <br />
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	    <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan="5">
	            <asp:label id="RetTitle" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Black">RETURNED TRANSACTIONS</asp:label> 
	        </td>
	    </tr>
        <tr>
		    <td style="height:5px" colspan="5"></td> 
	    </tr>
	    <tr style="width:100%" align="left" valign="middle">
            <td style="width:20px"></td>
            <td style="WIDTH: 120px">
                <b><asp:Label ID="l_Retnowdate" runat="server" Text=""></asp:Label></b>
			</td>
            <td style="width:120px"></td>
            <td style="WIDTH: 250px">
                <b><asp:Label ID="RetMgrName" runat="server" Text=""></asp:Label></b>
			</td>
			<td align="right">
		  	    <input type="button" id="btnPrintRet" value="Print" style="width:60px;"  class="buttonbluestyle" onclick="javascript:printret_click();return false;" runat="server" /> 
			    &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
		    <td style="height:5px" colspan="5"></td> 
	    </tr>
        <tr>
            <td colspan="5" align="center">
                <asp:datagrid id="dg_OnReturnList" runat="server" AllowPaging="false" CssClass="grd_body"
			    Visible="True" AutoGenerateColumns="False" AllowSorting="false">
			    <HeaderStyle CssClass="grd_head"></HeaderStyle>
			    <ItemStyle CssClass="grd_item"></ItemStyle>
			    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
			    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
			    <Columns>
                    <asp:BoundColumn DataField="consumername" HeaderText="Consumer" >
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="tx_id_notes" HeaderText="Description">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="tx_entered_by_name" HeaderText="Entered By">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="tx_date" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>	
                    <asp:BoundColumn DataField="tx_type" HeaderText="Ty">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>											
			    </Columns>
		        </asp:datagrid>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
