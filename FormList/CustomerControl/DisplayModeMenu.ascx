<%@ control language="C#" classname="DisplayModeMenuCS"%>
<script language="javascript">
    function Restore_Click() {
        if (confirm("Are you sure you want to restore default dash board?")) {
            return true;
        }
        else {          
            return false;
        }
    }

</script>
<script runat="server">
  
 // Use a field to reference the current WebPartManager control.
  WebPartManager _manager;

  void Page_Init(object sender, EventArgs e)
  {
    Page.InitComplete += new EventHandler(InitComplete);
  }

  void InitComplete(object sender, System.EventArgs e)
  {
      _manager = WebPartManager.GetCurrentWebPartManager(Page);
  }

  // Reset all of a user's personalization data for the page.
  protected void btnRestore_Click(object sender, EventArgs e)
  {
      _manager.Personalization.ResetPersonalizationState();
  }

  protected void btnAddModule_Click(object sender, EventArgs e)
  {
      // Change the page display mode.
      _manager.DisplayMode = _manager.SupportedDisplayModes["Catalog"];
  }

  protected void btnModify_Click(object sender, EventArgs e)
  {
      // Change the page display mode.
      string str = "alert('You can change the modules layout by moving the mouse to the module header and relocate to the place you like.');";
         
      Page.ClientScript.RegisterClientScriptBlock(Type.GetType("System.String"), "ModifyParts", str, true);
      _manager.DisplayMode = _manager.SupportedDisplayModes["Design"];
  }
    
</script>
<div>
<table border="0" cellpadding="0">
<tr valign="bottom">   
   <td bgcolor="#EFF1F1"> 
      <asp:LinkButton ID="btnRestore" runat="server" Text="Restore" Font-Size="13px" ForeColor="Blue" Font-Underline="true" OnClick="btnRestore_Click" OnClientClick="javascript:return Restore_Click();"  />        
      &nbsp;&nbsp; | &nbsp;&nbsp; 
      <asp:LinkButton ID="btnAddModules" runat="server" Text="Add" Font-Size="13px" ForeColor="Blue" Font-Underline="true" OnClick="btnAddModule_Click"  />   
      &nbsp;&nbsp; | &nbsp;&nbsp; 
      <asp:LinkButton ID="btnModify" runat="server" Text="Modify" Font-Size="13px" ForeColor="Blue" Font-Underline="true" OnClick="btnModify_Click"  />   

      &nbsp;&nbsp;&nbsp;&nbsp;
  </td>
</tr>
</table> 
</div>

