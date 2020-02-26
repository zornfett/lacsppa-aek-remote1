<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchFullText.ascx.cs" Inherits="Virweb2.CustomerControl.SearchFullText" %>
<script type="text/javascript">
<!--
    
//-->
</script>
<div align="center" style="WIDTH:100%; overflow: auto ">
<table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
<asp:Panel ID="Panel1" DefaultButton="btnSearch" runat="server">
    <tr>
        <td align="center">
            Full Text Search
        </td>
    </tr>
    <tr><td style="height:5px"></td></tr>
    <tr>
        <td>
            <table border="0" cellpadding="0" style="border-collapse: collapse;" width="100%">
                <tr>
                    <td align="left" style="width:100px">Search Text:</td>
                    <td align="left">
                        <asp:TextBox ID="s_txt" runat="server" Style="width: 150px" Width="150px" MaxLength="25" >
                        </asp:TextBox></td>
                    <td style="width:auto"></td>
               </tr>
               <tr><td colspan="3" style="height:3px"></td></tr>
              
               <tr>
                  <td align="left" style="width:100px">
                    <asp:Label ID="l_searchfrom" runat="server" Text="Search From:"></asp:Label>
                  </td>
                  <td align="left" style="width:150px; height:20px">
                   <asp:dropdownlist id="s_from" runat="server" Height="20" Width="160">
                        <asp:ListItem Value="Profile">Profile</asp:ListItem>
	                </asp:dropdownlist>
                  </td>
                  <td style="width:auto"></td>
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
