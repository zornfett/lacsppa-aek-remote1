<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="SearchResource.ascx.cs"
    Inherits="Virweb2.CustomerControl.SearchResource" %>
<script type="text/javascript">
<!--
    function MaximumMyData10() {
        //window.top.bg_change(10);
        window.top.Menu_Click(10);
        return false;
    }
//-->
</script>
<div align="center" style="WIDTH:100%; overflow: auto ">
<table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
<asp:Panel DefaultButton="btnSearch" runat="server">
    <tr>
        <td align="center">
            <asp:Label ID="TitleInfo" runat="server" Text="VENDOR LIST"></asp:Label>
        </td>
    </tr>
    <tr><td style="height:5px"></td></tr>
    <tr>
        <td>
            <table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
                <tr>
                    <td align="left" style="width:120px">
                        <asp:Label ID="SelVendorFor" runat="server" Text="Select Vendors for:"></asp:Label>
                    </td>
                    <td align="left">
                    <asp:DropDownList ID="rs_type" runat="server" Style="width: 200px"
                        CssClass="infaceDrop">
                        <asp:ListItem Value="0">Own</asp:ListItem>
                        <asp:ListItem Value="1" >All</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="left">
                        <asp:Label ID="SelVendorBy" runat="server" Text="Select Vendors by:"></asp:Label>
                    </td>
                </tr>
                <tr><td colspan="2" style="height:3px"></td></tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="Vendor_Num" runat="server" Text="Vendor Number:"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="vendornum" runat="server" Style="width: 140px" Width="140px" MaxLength="16" ></asp:TextBox>
                    </td>
               </tr>
               <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="Vendor_Name" runat="server" Text="Vendor Name:"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:TextBox ID="vendorname" runat="server" Style="width: 140px" Width="140px" MaxLength="40"></asp:TextBox>
                  </td>
               </tr>
               <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="Service_Code" runat="server" Text="Service Code:"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:TextBox ID="servicecode" runat="server" Style="width: 140px" Width="140px" MaxLength="25"></asp:TextBox>
                  </td>
               </tr>
               <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="l_status" runat="server" Text="Status:"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:DropDownList ID="r_status" runat="server" Width="150px" Height="20px" 
                                  DataValueField="tb_entry_name" DataTextField="tb_entry_text"></asp:DropDownList>
                  </td>
               </tr>
           </table>
        </td>
    </tr>
    <tr><td style="height:3px"></td></tr>
    <tr>
       <td align="center"> <asp:Button ID="btnSearch" Runat="server" Text="Search"  
               Width="90px" onclick="btnSearch_Click" ></asp:Button>   </td>
    </tr>
</asp:Panel>
</table>
</div>