<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchUserControl.ascx.cs"
    Inherits="Virweb2.CustomerControl.SearchUserControl" %>
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
            <asp:Label ID="TitleInfo" runat="server" Text="CLIENT LIST"></asp:Label>
        </td>
    </tr>
    <tr><td style="height:5px"></td></tr>
    <tr>
        <td>
            <table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
                <tr>
                    <td align="left" style="width:120px">
                        <asp:Label ID="SelClientFor" runat="server" Text="Select Clients for:"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="cm_type" runat="server" style="width:150px"
			                     DataTextField="search_name">          
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="left">
                        <asp:Label ID="SelClientBy" runat="server" Text="Select Clients by:"></asp:Label>
                    </td>
                </tr>
                <tr><td colspan="2" style="height:3px"></td></tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="ClientID" runat="server" Text="Client ID:"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="s_uci" runat="server" Style="width: 140px" Width="140px" MaxLength="8" ></asp:TextBox>
                    </td>
               </tr>
               <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="ClientLast" runat="server" Text="Last Name:"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:TextBox ID="s_lastname" runat="server" Style="width: 140px" Width="140px" MaxLength="25"></asp:TextBox>
                  </td>
               </tr>
                <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="ClientFirst" runat="server" Text="First Name:"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:TextBox ID="s_firstname" runat="server" Style="width: 140px" Width="140px" MaxLength="25"></asp:TextBox>
                  </td>
               </tr>
               <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="l_status" runat="server" Text="Status:"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:DropDownList ID="s_status" runat="server" Width="150px" Height="20px" 
                                  DataValueField="tb_entry_name" DataTextField="tb_entry_text"></asp:DropDownList>
                  </td>
               </tr>
               <tr><td colspan="2" style="height:3px"></td></tr>
               <tr>
                  <td align="left">
                        <asp:Label ID="l_category" runat="server" Text="Category:" Visible="false"></asp:Label>
                  </td>
                  <td align="left">
                        <asp:DropDownList ID="s_category" runat="server" Width="150px" Height="20px" 
                                  DataValueField="tb_entry_name" DataTextField="tb_entry_text" Visible="false"></asp:DropDownList>
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