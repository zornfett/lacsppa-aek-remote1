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

<link rel="stylesheet" href="css/style-2020.css">
<div class="RAM-controls">
	<ul>
		<li>
			<a class="nav-link" href="#">Restore</a>
		</li>
		<li>
			<a class="nav-link" href="#">Add</a>
		</li>
		<li>
			<a class="nav-link" href="#"></i>Modify</a>
		</li>
	</ul>
</div>
