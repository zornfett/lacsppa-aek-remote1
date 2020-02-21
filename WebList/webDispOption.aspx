<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webDispOption.aspx.cs" Inherits="Virweb2.WebList.webDispOption" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html>
 <head>
    <base target="_self" />
	<title>:::Labels:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/JavaScript" src="../js/common.js"></script>		
	<script language="javascript">
    <!--    
    function doseltd(obj)
    {
       /*if (isIE())
       {            
          for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	        var e=tr_info.childNodes[i];		        	   
	 	    e.background="../img/lable_unselect.gif";
		    e.style.color="#000000";
		    e.style.cursor="hand";		        	        
	      }
	      obj.background="../img/lable_select.gif";
	      obj.style.color="#FFFF00";
	      obj.style.cursor="auto";
       }
       else */
       {
          TD_GEN.style.color="#000000";
          TD_GEN.style.cursor="pointer";
          TD_GEN.style.background="url('../img/lable_unselect.gif')";
          TD_COL.style.color="#000000";
          TD_COL.style.cursor="pointer";
          TD_COL.style.background="url('../img/lable_unselect.gif')";
          TD_CUM.style.color="#000000";
          TD_CUM.style.cursor="pointer";
          TD_CUM.style.background="url('../img/lable_unselect.gif')";
          TD_IDN.style.color="#000000";
          TD_IDN.style.cursor="pointer";
          TD_IDN.style.background="url('../img/lable_unselect.gif')";
          TD_CDER.style.color="#000000";
          TD_CDER.style.cursor="pointer";
          TD_CDER.style.background="url('../img/lable_unselect.gif')";
          TD_RESOURCE.style.color="#000000";
          TD_RESOURCE.style.cursor="pointer";
          TD_RESOURCE.style.background="url('../img/lable_unselect.gif')";    
          TD_POS.style.color="#000000";
          TD_POS.style.cursor="pointer";
          TD_POS.style.background="url('../img/lable_unselect.gif')";   
          TD_CDER08.style.color="#000000";
          TD_CDER08.style.cursor="pointer";             
          TD_CDER08.style.background="url('../img/lable_unselect.gif')";     
          TD_BUTTON.style.color="#000000";
          TD_BUTTON.style.cursor="pointer";             
          TD_BUTTON.style.background="url('../img/lable_unselect.gif')";     
  
          obj.style.background="url('../img/lable_select.gif')";
	      obj.style.color="#FFFF00";	         
       }         
       Disp_GEN.style.display="none";
	   Disp_COL.style.display="none";
	   Disp_CUM.style.display="none";
	   Disp_IDN.style.display="none";
	   Disp_CDER.style.display="none";
	   Disp_RESOURCE.style.display="none";
	   Disp_POS.style.display="none";
	   Disp_CDER08.style.display="none";
	   Disp_BUTTON.style.display="none";
	   
	   switch(obj.id)
	   {
	      case "TD_GEN":
	         Disp_GEN.style.display="";		       
		     break;
		  case "TD_COL":    
	    	 Disp_COL.style.display="";   		    	
		     break;
		  case "TD_CUM":    
	    	 Disp_CUM.style.display="";   		    	
		     break;   
		  case "TD_IDN":    
	    	 Disp_IDN.style.display="";   		    	 
		     break;    
		  case "TD_CDER":    
	    	 Disp_CDER.style.display="";   		    	
		     break;    
		  case "TD_RESOURCE":    
	    	 Disp_RESOURCE.style.display="";   		    	
		     break;   	
		  case "TD_POS":    
	    	 Disp_POS.style.display="";   		    	
		     break;  
		  case "TD_CDER08":    
	    	 Disp_CDER08.style.display="";   		    	
		     break;            	
		  case "TD_BUTTON":    
	    	 Disp_BUTTON.style.display="";   		    	
		     break;           	                
	   }
    }
    
    ///set div 
    function doseltdbyid(obj_id)
    {
       /*if (isIE())
       {  
	      for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	   	     var e=tr_info.childNodes[i];
	  	     if((e.id!=obj_id))
		     {
			     e.background="../img/lable_unselect.gif";
		    	 e.style.color="#000000";
			     e.style.cursor="hand";
		     }
		     else
		     {
			    e.background="../img/lable_select.gif";
			    e.style.color="#FFFF00";
			    e.style.cursor="auto";
		     }
	      }
	  }
	  else */
	  {
	      TD_GEN.style.color="#000000";
          TD_GEN.style.cursor="pointer";
          TD_GEN.style.background="url('../img/lable_unselect.gif')";
          TD_COL.style.color="#000000";
          TD_COL.style.cursor="pointer";
          TD_COL.style.background="url('../img/lable_unselect.gif')";
          TD_CUM.style.color="#000000";
          TD_CUM.style.cursor="pointer";
          TD_CUM.style.background="url('../img/lable_unselect.gif')";
          TD_IDN.style.color="#000000";
          TD_IDN.style.cursor="pointer";
          TD_IDN.style.background="url('../img/lable_unselect.gif')";
          TD_CDER.style.color="#000000";
          TD_CDER.style.cursor="pointer";
          TD_CDER.style.background="url('../img/lable_unselect.gif')";
          TD_RESOURCE.style.color="#000000";
          TD_RESOURCE.style.cursor="pointer";
          TD_RESOURCE.style.background="url('../img/lable_unselect.gif')";    
          TD_POS.style.color="#000000";
          TD_POS.style.cursor="pointer";
          TD_POS.style.background="url('../img/lable_unselect.gif')";  
          TD_CDER08.style.color="#000000";
          TD_CDER08.style.cursor="pointer";
          TD_CDER08.style.background="url('../img/lable_unselect.gif')";
          TD_BUTTON.style.color="#000000";
          TD_BUTTON.style.cursor="pointer";
          TD_BUTTON.style.background="url('../img/lable_unselect.gif')";

	  }    
	  Disp_GEN.style.display="none";
	  Disp_COL.style.display="none";
	  Disp_CUM.style.display="none";
	  Disp_IDN.style.display="none";
	  Disp_CDER.style.display="none";
	  Disp_RESOURCE.style.display="none";
	  Disp_POS.style.display="none";
	  Disp_CDER08.style.display="none";
	  Disp_BUTTON.style.display="none";
	 
	  switch(obj_id)
	  {		
	      case "TD_GEN":
		      Disp_GEN.style.display="";		
		      TD_GEN.style.color="#FFFF00";
              TD_GEN.style.cursor="auto";
              TD_GEN.style.background="url('../img/lable_select.gif')";       
		      break;
	      case "TD_COL":    
		  	 Disp_COL.style.display="";   		 
		  	 TD_COL.style.color="#FFFF00";
             TD_COL.style.cursor="auto";
             TD_COL.style.background="url('../img/lable_select.gif')";     	
		     break;
		  case "TD_CUM":    
		  	 Disp_CUM.style.display="";   
		  	 TD_CUM.style.color="#FFFF00";
             TD_CUM.style.cursor="auto";
             TD_CUM.style.background="url('../img/lable_select.gif')"; 		    	
		     break;   
		  case "TD_IDN":    
		  	 Disp_IDN.style.display="";  
		  	 TD_IDN.style.color="#FFFF00";
             TD_IDN.style.cursor="auto";
             TD_IDN.style.background="url('../img/lable_select.gif')"; 	 		    	 
		     break;    
		  case "TD_CDER":    
		  	 Disp_CDER.style.display="";   		
		  	 TD_CDER.style.color="#FFFF00";
             TD_CDER.style.cursor="auto";
             TD_CDER.style.background="url('../img/lable_select.gif')";     	
		     break;    
		  case "TD_RESOURCE":    
		  	 Disp_RESOURCE.style.display="";   		
		  	 TD_RESOURCE.style.color="#FFFF00";
             TD_RESOURCE.style.cursor="auto";
             TD_RESOURCE.style.background="url('../img/lable_select.gif')";     	    	
		     break;   	
		  case "TD_POS":    
		  	 Disp_POS.style.display="";   	
		  	 TD_POS.style.color="#FFFF00";
             TD_POS.style.cursor="auto";
             TD_POS.style.background="url('../img/lable_select.gif')";  	    	
		     break;    
		  case "TD_CDER08":    
		  	 Disp_CDER08.style.display="";   		
		  	 TD_CDER08.style.color="#FFFF00";
             TD_CDER08.style.cursor="auto";
             TD_CDER08.style.background="url('../img/lable_select.gif')";     	
		     break;         
		  case "TD_BUTTON":    
		  	 Disp_BUTTON.style.display="";   		
		  	 TD_BUTTON.style.color="#FFFF00";
             TD_BUTTON.style.cursor="auto";
             TD_BUTTON.style.background="url('../img/lable_select.gif')";     	
		     break;          		
	  }
    }  
    //-->
    </script>
</head>
<body  runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="SetOptions" method="post" runat="server">
      <input type="hidden" name="lbl_labelID" id="lbl_labelID" runat="server" value="" />     
	<div align="center" style="WIDTH:100%; height:65px">
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse;width:100%;">
      <tr vAlign="top">
          <td colspan="2">
              <table class="table_common" cellspacing="0" cellpadding="0" border="0">
                   <tr>
                        <td style="width:40px"></td>
                        <td><asp:Label ID="Label2" runat="server" Text="Label Setting Name:" ForeColor="blue"></asp:Label></td>                       
                        <td class="td_unline" width="160" style="height: 20px">
                            <asp:TextBox ID="label_name" runat="server" CssClass="inface" Style="width: 160px"   ReadOnly ></asp:TextBox>
                         </td>
                         <td style="width:5%"></td>
                         <td><asp:Label ID="Label3" runat="server" Text="Label Setting Description" ForeColor="blue"></asp:Label>:</td>                       
                         <td class="td_unline" width="300" style="height: 20px">
                            <asp:TextBox ID="label_description" runat="server" CssClass="inface" Style="width: 300px"   ReadOnly ></asp:TextBox>
                         </td>                         
                   </tr>
              </table>
          </td>
      </tr>    
	  <tr vAlign="top">
		<td>
			<table id="TABLE_Label">
				<tr id="tr_info">		    
				    <td id="TD_GEN" style="CURSOR: auto; COLOR: #FFFF00; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_select.gif"><b>Global Settings</b>
					</td>
					<td id="TD_COL" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b>Lists</b>
					</td>
					<td id="TD_CUM" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b><asp:Label ID="Tab_Client" runat="server" Text="Client"></asp:Label> Info</b>
					</td>
					<td id="TD_RESOURCE" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b><asp:Label ID="Tab_Resource" runat="server" Text="Resource"></asp:Label></b>
					</td>
					<td id="TD_IDN" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b><asp:Label ID="Tab_CaseNotes" runat="server" Text="Client"></asp:Label></b>
					</td>
					<td id="TD_CDER" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b>CDER</b>
					</td>
					<td id="TD_POS" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b>POS</b>
					</td>
					<td id="TD_CDER08" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b>CDER08</b>
					</td>
					<td id="TD_BUTTON" style="CURSOR: hand; COLOR: #000000; height: 33px;" onclick="doseltd(this);" align="center"
						width="110" background="../img/lable_unselect.gif"><b>Buttons</b>
					</td>
				</tr>
			</table>
		</td>
        <td valign=middle>
            <asp:Label ID="lbl_err" runat="server" ForeColor="Blue"></asp:Label>
        </td>
      </tr>
    </table>  
    </div>
	<div align=center style="width:100%;">	   
	    <div id="Disp_GEN">
		    <div style="width:100%;height:35px;">	
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
				  <tr class="tr_common">
				      <td align="center" style="WIDTH: 570px" width="500" Height="20"><font color="#3366ff"><b>Main Menu</b></font>
				      <td align="left" style="WIDTH: 470px" width="470" Height="20">
				         <asp:Button ID="btnResetGen" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetGen_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				         <asp:Button ID="btnEditGen" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditGen_Click"></asp:Button>
				      </td>   
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			      </tr>
	 		      </table>
	 		</div>
	 		<div style="position:relative;WIDTH:100%; height:570px; overflow: auto " >
	 			  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">			        
	 		        <tr class="tr_common">
	 			      <td style="WIDTH: 180px; height: 26px;" align="right" width="180" bgColor="#9fb0f4"><b>Client:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px; height: 26px;">
	 				      <asp:textbox id="l_consumer" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px; height: 26px;" align="right" width="180" bgColor="#9fb0f4"><b>Resource:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px; height: 26px;">
	 			          <asp:textbox id="l_resource" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Case Manager:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_casemanager" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>UCI:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_uci" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Case Notes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_idnotes" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			      </td>
	 			    </tr>
			      </table> 
	 		</div>
	 	</div>
		<div id="Disp_COL" style="DISPLAY: none">
		    <div style="width:100%; height:55px">	
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
				  <tr class="tr_common">
				      <td colspan="2" align="center" style="WIDTH: 485px" width="485" Height="20"></td>
				      <td colspan="2" align="left" style="WIDTH: 485" width="485" Height="20">
				         <asp:Button ID="btnResetCol" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetCol_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				         <asp:Button ID="btnEditCol" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditCol_Click"></asp:Button>
				      </td>   
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="4" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 		          <td align="center" style="WIDTH: 365px" width="365" Height="20">
	 		              <font color="#3366ff"><b><asp:Label ID="Col_Client" runat="server" Text="Client"></asp:Label> List Column Label</b></font>
	 		          </td>
	 		          <td align="left" style="WIDTH: 120px" width="120"><font color="#3366ff"><b>No Display</b></font></td>
				      <td align="center" style="WIDTH: 365px" width="365" Height="20">
				          <font color="#3366ff"><b><asp:Label ID="Col_Resource" runat="server" Text="Resource"></asp:Label> List Column Label</b></font>
				      </td>
	 			      <td align="left" style="WIDTH: 120px" width="120"><font color="#3366ff"><b>No Display</b></font></td>				      
                  </tr>
                  <tr class="tr_common">
				      <td colSpan="4" height="5"></td>
			      </tr>
	 		      </table>
	 		</div>
	 		<div style="position:relative;WIDTH:100%; height:570px; overflow: auto " >
				  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		      <tr class="tr_common">
	 			      <td style="WIDTH: 180px; height: 26px;" align="right" bgColor="#9fb0f4"><b>Imaged:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px; height: 26px;">
	 				      <asp:textbox id="gic_consumer_col_label_1" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_1" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px; height: 26px;" align="right" bgColor="#9fb0f4"><b>Vendor Number:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px; height: 26px;">
	 			          <asp:textbox id="gic_resource_col_label_1" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_1" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Client ID:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_2" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_2" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_2" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_2" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Client Last Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_3" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_3" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>City:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_3" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_3" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Client First Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_4" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_4" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Phone #:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_4" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_4" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Phone #</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_5" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_5" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_5" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_5" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
	 		      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>DOB:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_6" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_6" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Service Code Description:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_6" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_6" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>MedicaiWaiver:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_7" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_7" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Administrator:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_7" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_7" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>CM:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_8" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_8" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Ins Exp Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 			          <asp:textbox id="gic_resource_col_label_8" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_resource_col_disable_8" runat="server"  Text=""/>
	 			      </td>
	 		      </tr>
	 	          <tr class="tr_common">
				      <td colSpan="8" height="10"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>CaseMgrName:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_consumer_col_label_9" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_consumer_col_disable_9" runat="server"  Text=""/>
	 			      </td>
	 			      <td colspan=4 style="WIDTH: 485px" width="485" Height="20"></td>
	 		      </tr>
	 	          <tr class="tr_common">
				      <td colSpan="8" height="10"></td>
			      </tr>
	 	          <tr>
	 		          <td colspan=4 align="center" style="WIDTH: 485px" width="485" Height="20"><font color="#3366ff"><b>
	 		            <asp:Label ID="Col_CaseNotes" runat="server" Text="Case Notes"></asp:Label> List Column Label</b></font></td>
				      <td colspan=4 align="center" style="WIDTH: 485px" width="485" Height="20"><font color="#3366ff"><b></b></font></td>
                  </tr>
	 		      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Create Date/Time:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_1" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_1" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Day:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_2" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_2" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_3" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_3" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Template:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_4" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_4" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Minutes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_5" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_5" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Service Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_6" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_6" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Final Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_7" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_7" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Verify Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_8" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_8" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Miles:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_9" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_9" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Spent For Client:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_10" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_10" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Billing Hours:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_11" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_11" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 		      <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			      </tr>
			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" bgColor="#9fb0f4" height="20"><b>Billing Minutes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="200" style="width: 200px">
	 				      <asp:textbox id="gic_idnotes_col_label_12" runat="server" CssClass="inface" Width="180"></asp:textbox>
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px; height: 26px;">
	 			          <asp:CheckBox ID="gic_idnotes_col_disable_12" runat="server"  Text=""/>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td align="left" width="200" style="width: 200px">
	 			      </td>
	 			      <td align="left" width="100" style="width: 100px">
	 			      </td>
	 		      </tr>
	 	          </table>
	 	    </div>
	    </div>
	    <div id="Disp_CUM" style="DISPLAY: none">
	        <div style="width:100%; height:55px">
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 	          	<tr class="tr_common">
	 			      <td align="center" style="WIDTH: 345px" width="345" Height="20"></td> 
	 			      <td align="left" style="WIDTH: 140px" width="140"></td>
	 			      <td align="left" style="WIDTH: 345px" width="345" Height="20">
	 			          <asp:Button ID="btnResetCon" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetCon_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btnEditCon" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditCon_Click"></asp:Button>
                      </td>
	 			      <td align="left" style="WIDTH: 140px" width="140"></td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="4" height="5"></td>
			        </tr>
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 345px" width="345" Height="20">
	 			         <font color="#3366ff"><b><asp:Label ID="Field_Client" runat="server" Text="Client"></asp:Label> Fields Display</b></font>
	 			      </td> 
	 			      <td align="left" style="WIDTH: 140px" width="140"><font color="#3366ff"><b>Required</b></font></td>
	 			      <td align="center" style="WIDTH: 345px" width="345" Height="20">
	 			         <font color="#3366ff"><b><asp:Label ID="Field_Client1" runat="server" Text="Client"></asp:Label> Fields Display</b></font>	 			      
                      </td>
	 			      <td align="left" style="WIDTH: 140px" width="140"><font color="#3366ff"><b>Required</b></font></td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="4" height="5"></td>
			        </tr>
			      </table>
			</div>      
			<div style="position:relative;WIDTH:100%; height:570px; overflow: auto ">  
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">			        
	 		        <tr class="tr_common">
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_name_last" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_name_last" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>AKA Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 			          <asp:textbox id="l_c_name_aka_last" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_name_aka_last" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class = "tr_common">  
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Maiden Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_name_maiden_last" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td> 
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_name_maiden_last" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>UCI Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_uci" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_uci" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				       <td colSpan="8" height="5"></td>
			        </tr>  
	 			    <tr class="tr_common"> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Date of Birth:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_dob" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_dob" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Gender:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_gender" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_gender" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Place of Birth:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_birthplace" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_birthplace" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Ethnicity:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ethnicity" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ethnicity" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Marital Status:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_marital_status" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_marital_status" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_language" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_language" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>  
	 			    <tr class="tr_common"> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Height/Weight:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_height_weight" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_height_weight" runat="server" Text="" /> 
	 			      </td> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Hair Color:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_hair_color" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_hair_color" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">    
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Home Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_phone_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_phone_1" runat="server" Text="" /> 
	 			      </td>  
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Eye Color:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_eye_color" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_eye_color" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Work Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_phone_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_phone_2" runat="server" Text="" /> 
	 			      </td>
 	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Email:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_email" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_email" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
  	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Cell Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_phone_3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_phone_3" runat="server" Text="" /> 
	 			      </td>
 	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Fax No:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_fax" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_fax" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_address_line_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_address_line_1" runat="server" Text="" /> 
	 			      </td>    
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Street:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_address_line_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_address_line_2" runat="server" Text="" /> 
	 			      </td>   
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>City and State:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_address_city" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_address_city" runat="server" Text="" /> 
	 			      </td>   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Zip/Mail Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_address_zip" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_address_zip" runat="server" Text="" /> 
	 			      </td>   
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
			        <tr class="tr_common"> 
			          <td style="WIDTH: 150px;" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Physical County:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px; height: 26px;">
	 				      <asp:textbox id="l_c_physical_county" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_physical_county" runat="server" Text="" /> 
	 			      </td>   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Legal County:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_legal_county" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_legal_county" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
			        <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Attention:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_attention" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_attention" runat="server" Text="" /> 
	 			      </td>  
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Day Activity:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_program_primary" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_program_primary" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>School:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_school" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_school" runat="server" Text="" /> 
	 			      </td>   
                      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Residence Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_residence_current" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_residence_current" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
                    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Coordinator:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_cm_id" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_cm_id" runat="server" Text="" /> 
	 			      </td>	 			      
                      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Start Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_residence_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_residence_date" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr style="height:5px">
				      <td colSpan="8"></td>
			        </tr> 			    
	 			    <tr>
                            <td colspan="8" class="td_thicksepline">
                            </td>
                     </tr>
                     <tr style="height:8px">
                            <td colspan="8">
                            </td>
                     </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px; height: 26px;" align="right" width="150" bgColor="#9fb0f4"><b>Confidentiality:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px; height: 26px;">
	 				      <asp:textbox id="l_c_confidentiality" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_confidentiality" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>    
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Legal Status 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_legal_status_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>  
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_legal_status_1" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Legal Staus Date 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_legal_status_date_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_legal_status_date_1" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Legal Staus 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_legal_status_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_legal_status_2" runat="server" Text="" /> 
	 			      </td> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Legal Staus Date 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_legal_status_date_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_legal_status_date_2" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Conservator:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_conservator" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_conservator" runat="server" Text="" /> 
	 			      </td>     
                      <td colspan=4></td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Social Security Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ssn" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>    
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ssn" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Generic Agency 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_generic_agency_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_generic_agency_1" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>SSA Number/Suffix:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ssa" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ssa" runat="server" Text="" /> 
	 			      </td>   
                      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Vendor Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_residence_number" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_residence_number" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">  
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Institutional Deeming:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_inst_deeming" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_inst_deeming" runat="server" Text="" /> 
	 			      </td>   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Generic Agency 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_generic_agency_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_generic_agency_2" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common"> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>EPSDT:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_epsdt" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_epsdt" runat="server" Text="" /> 
	 			      </td>  
	 			      <td colspan=4></td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>  
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>MediCal Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_medi_cal" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>     
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_medi_cal" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>NF:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_nf" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_nf" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>  
	 			    <tr class="tr_common">  
	 			       <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Medicaid Waiver:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_medicaid_waiver" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_medicaid_waiver" runat="server" Text="" /> 
	 			      </td> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Excludability:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_waiver_excludability" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_waiver_excludability" runat="server" Text="" /> 
	 			      </td>   
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">  
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>IHSS:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ihss" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ihss" runat="server" Text="" /> 
	 			      </td>      
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Payee Indicator:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_payee_indicator" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_payee_indicator" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>  
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Gross Income:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_family_income" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_family_income" runat="server" Text="" /> 
	 			      </td> 
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Family Size:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_minors_in_home" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_minors_in_home" runat="server" Text="" /> 
	 			      </td>  
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="8" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">     
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>% of Cost Participation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_family_percentage" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_family_percentage" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>     	 			    
	 			    </tr>
	 			    <tr style="height:5px">
				      <td colSpan="8"></td>
			        </tr>
	 			    <tr>
                            <td colspan="8" style="height: 3px;" class="td_thicksepline">
                            </td>
                    </tr>
                    <tr style="height:8px">
                            <td colspan="8">
                            </td>
                    </tr>
                    <tr class="tr_common">      
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Frequency of Contact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_case_level" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td> 
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_case_level" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Tickler Base Month:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_base_month" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_base_month" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Report Agency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_report_agency" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_report_agency" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Coordinator Agency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_cm_agency" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_cm_agency" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Coordinator Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_cm_type" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_cm_type" runat="server" Text="" /> 
	 			      </td>     
	 			      <td colspan=4></td>     
	 			    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Initial Inquiry Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_initial_inquiry_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_initial_inquiry_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Initial Interview Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_initial_interview_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_initial_interview_date" runat="server" Text="" /> 
	 			      </td> 
	 			    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Case Assign Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_case_assign_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_case_assign_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Eligibility Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_eligibility_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_eligibility_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last PCP/IFSP:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_review_pcp_ifsp_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_review_pcp_ifsp_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last CDER/ESR:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_review_cder_esr_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_review_cder_esr_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last Quarterly 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_review_quarterly1_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_review_quarterly1_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last SA Review:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_review_sar_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_review_sar_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last Quarterly 3:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_review_quarterly3_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_review_quarterly3_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Medicaid Waiver:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_review_mw_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_review_mw_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Consent Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_date_consent" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_date_consent" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>45 Day Waiver Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_date_waiver" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_date_waiver" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Quality of Life:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_qol" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_qol" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>
	 			    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Medical Exam Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_medical_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_medical_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Psych Exam Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_psychological_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_psychological_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Comments 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_comment_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_comment_1" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Comments 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_comment_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
                      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_comment_2" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Comments 3:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_comment_3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_comment_3" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>
                    </tr>
                    <tr style="height:5px">
                            <td colspan="8">
                            </td>
                    </tr>
                    <tr>
                            <td colspan="8" class="td_thicksepline">
                            </td>
                    </tr>
                     
                    <tr style="height:8px">
                            <td colspan="8">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Area/Group:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_unit_area" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_unit_area" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>MIS Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_mis" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_mis" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Supervisor:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_case_assign_manager" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_case_assign_manager" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Current Status:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_status" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_status" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Current Status Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_status_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_status_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Previous Status:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_previous_status" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_previous_status" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Previous Status Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_previous_status_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_previous_status_date" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Chart Storage Location 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_offsite_location" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_offsite_location" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Box Number 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_box_number" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_box_number" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Chart Storage Location 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_chart_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_chart_2" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Box Number 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_box_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_box_2" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Chart Storage Location 3:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_chart_3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_chart_3" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Box Number 3:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_box_3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_box_3" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Chart Storage Location 4:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_chart_4" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_chart_4" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Box Number 4:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_box_4" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_box_4" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr style="height:5px">
                            <td colspan="8">
                            </td>
                    </tr> 
                    <tr>
                            <td colspan="8" class="td_thicksepline">
                            </td>
                    </tr>
                    <tr style="height:8px">
                            <td colspan="8">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Date of Call:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_name_last" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_name_last" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Screener:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_screener" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_screener" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>First Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_name_first" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_name_first" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px; height: 26px;" align="right" width="150" bgColor="#9fb0f4"><b>Referral Source:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px; height: 26px;">
	 				      <asp:textbox id="l_c_ref_source" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_source" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px; height: 26px;" align="right" width="150" bgColor="#9fb0f4"><b>Phone:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px; height: 26px;">
	 				      <asp:textbox id="l_c_ref_phone_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_phone_1" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Relationship:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_relationship" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_relationship" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Date of Call:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_date" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_date" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_name_last" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_name_last" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Screener:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_screener" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_screener" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>First Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_name_first" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_name_first" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Other Referral Source:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_source" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_source" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_phone_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_phone_1" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Relationship:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_relationship" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_relationship" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Agency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_c_ref_2_agency_line_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_c_ref_2_agency_line_1" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr style="height:5px">
                            <td colspan="8">
                            </td>
                    </tr> 
                    <tr>
                            <td colspan="8" class="td_thicksepline">
                            </td>
                    </tr>
                    <tr style="height:8px">
                            <td colspan="8">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Group:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_group" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_group" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Relationship:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_relationship" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_relationship" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Last Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_name_last" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_name_last" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_language" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_language" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>First Name/Init:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_name_first" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_name_first" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Disabled:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_disabled" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_disabled" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
	 			    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Retired:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_retired" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_retired" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>         
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Maiden Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_name_maiden" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_name_maiden" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Deceased:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_deceased" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_deceased" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Date of Birth:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_dob" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_dob" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>SSN:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_ssn" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_ssn" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Custody:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_custody" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_custody" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4></td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Home Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_phone_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_phone_1" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Cell Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_phone_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_phone_2" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Work Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_phone_3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_phone_3" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>EMAIL:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_email" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_email" runat="server" Text="" /> 
	 			      </td>
                    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Current Address:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_address_line_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_address_line_1" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Occupation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_work_address_line_1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_work_address_line_1" runat="server" Text="" /> 
	 			      </td>
                    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Address:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_address_line_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_address_line_2" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Work Address:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_work_address_line_2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_work_address_line_2" runat="server" Text="" /> 
	 			      </td>
                    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>City and State:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_address_city" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_address_city" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>City and State:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_work_address_city" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_work_address_city" runat="server" Text="" /> 
	 			      </td>
                    </tr>
	 			    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Zip/Mail Codes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_address_zip" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_address_zip" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Zip/Mail Codes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_s_work_address_zip" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_s_work_address_zip" runat="server" Text="" /> 
	 			      </td>
	 			    </tr>
	 			    <tr style="height:5px">
                            <td colspan="8">
                            </td>
                    </tr> 
                    <tr>
                            <td colspan="8" class="td_thicksepline">
                            </td>
                    </tr>
                    <tr style="height:8px">
                            <td colspan="8">
                            </td>
                    </tr>
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Type of school placement</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_educ1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_educ1" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>When first entered into special education?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_educ2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_educ2" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
	 			    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>History of school placement</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_educ3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_educ3" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Employment history</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_voca1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_voca1" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
                    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>who obtained jobs</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_voca2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_voca2" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Any terminations</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_voca3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_voca3" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
                    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Department of Rehab</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal1" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal1" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Mental Health</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal4" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal4" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
                    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Child protection Service</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal2" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal2" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Foster care</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal5" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal5" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
                    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Adult protection Service</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal3" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal3" runat="server" Text="" /> 
	 			      </td>
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>United Cerebral Palsy</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal6" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal6" runat="server" Text="" /> 
	 			      </td>
                    </tr>
                    <tr class="tr_common">
                            <td colspan="8" height="5">
                            </td>
                    </tr> 
                    <tr class="tr_common">   
	 			      <td style="WIDTH: 150px" align="right" width="150" bgColor="#9fb0f4" height="20"><b>Others</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="210" style="width: 210px">
	 				      <asp:textbox id="l_pal7" runat="server" CssClass="inface" Width="200"></asp:textbox>
	 			      </td>
	 			      <td style="width: 120px">
	 			          <asp:CheckBox ID="e_pal7" runat="server" Text="" /> 
	 			      </td>
	 			      <td colspan=4>
	 			      </td>
                    </tr>
		          </table>
			</div>
		</div>
	    <div id="Disp_RESOURCE" style="DISPLAY: none">
	        <div style="width:100%; height:35px">
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 500px" width="500" Height="20"><font color="#3366ff"><b><asp:Label ID="lbl_resource_title" runat="server" Text="Resource"></asp:Label> Fields Display</b></font></td>
	 			      <td align="left" style="WIDTH: 470px" width="470" Height="20">
	 			          <asp:Button ID="btn_Resour_Reset" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btn_Resour_Reset_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btn_Resour_Save" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btn_Resour_Save_Click"></asp:Button>
                      </td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			        </tr>
			      </table>
			</div>      
			<div style="position:relative;WIDTH:100%; height:570px; overflow: auto ">  
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">	
	 		        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Vendor Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_vendor_number" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Vendor Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_resource_name" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Service Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_service_code" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Sub Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_sub_code" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Status:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_status" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Administrator:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_administrator" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Phone:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_phone_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Address Line 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_address_line_1" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Admin/Emerg:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_phone_2" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Address Line 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_address_line_2" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Cell/Pager:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_cell_pager" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>City:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_address_city" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>State:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_address_state" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Fax:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_fax" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Zip:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_address_zip" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Mail:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_mail_code" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Email:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_email" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Tax ID Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_tax_id_number" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Ratio:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_ratio" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Tax Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_tax_name" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Level:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_level" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Rate:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_rate" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Unit:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_unit" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  colspan="3"></td>	 			     
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Last Modified By:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_last_mod_by" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Last Modified Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_last_mod_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    
	 			    <tr style="height:5px">
				      <td colSpan="6"></td>
			        </tr>
	 			    <tr>
                        <td colspan="6" class="td_thicksepline">
                        </td>
                    </tr>
                     <tr style="height:8px">
				      <td colSpan="6"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Site Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_site_name" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>See Provider Relations:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_provider_relations" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Address Line 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_site_address_line_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>QA Monitor:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_qa_monitor" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Address Line 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_site_address_line_2" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Staff Liaison:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_staff_liaison" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>City:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_site_address_city" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>State:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_site_address_state" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Zip:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_site_address_zip" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Mail:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_site_mail_code" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Out of County Regional Center:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_out_of_county_rc" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Phone Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_site_phone_1" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Physical County:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_county" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Regional Center:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_regional_center" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Primary Language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_language_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Secondary Language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_language_2" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>License Number:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_license_number" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Vacancies:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_category_budget" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Capacity:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_capacity" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Licensee:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_licensee" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Age Range:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_age_range" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>License Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_license_type" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Gender Preference:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_gender_pref" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>License Exp:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_license_exp_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Ambulatory Status:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_amb_status" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Insurance Name:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_insurance_name" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Amb:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_ambulatory" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>NoAmb:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_nonambulatory" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Insurance Exp:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_insurance_exp_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  colspan="3"></td>	 			      
	 			    </tr>										
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Male:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_amb_m" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Female:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_amb_f" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Medi-Cal:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_medi_cal" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>MW Billable Service:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_medi_cal_claim_cert" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Male:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_nonamb_m" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Female:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_nonamb_f" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr style="height:5px">
				      <td colSpan="6"></td>
			        </tr>
	 			    <tr>
                        <td colspan="6" class="td_thicksepline">
                        </td>
                    </tr>                    
			        <tr style="height:8px">
				      <td colSpan="6"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Client Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_client_type" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Retardation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_mr" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Dual Dx:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_dual_dx" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Profound:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_mr_profound" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Hearing Impaired:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_hearing" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Severe:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_mr_severe" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Behaviors:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_behaviors" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Bates Bill:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_bates" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Moderate:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_mr_moderate" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Severe Behaviors:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_severe" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Diabetes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_diabetes" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Mild:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_mr_mild" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Non-Compliance:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_noncomp" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>G-Tube:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_gtube" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Borderline:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_mr_border" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Tantrums:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_tantrum" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Nurse on Staff:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_nurse" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Verbal Aggression:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_verb_aggr" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Other:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_other" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Autism:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_autism" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Physical Aggression:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_phys_aggr" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>C.P.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_cp" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Property Destruction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_prop_destr" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Biting:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_biting" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Seizure Dx.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_seiz" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Self Abuse:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_self_abuse" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Controlled:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_seiz_cont" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Elopement:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_elope" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Uncontrolled:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_seiz_uncont" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Sexually Acts Out:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_sex" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>PICA:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_pica" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Smoking:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_smoking" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Toilet Trained:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_toilet" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Smearing:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_smear" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Outdoors Only:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_smoke_out" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Incontinent:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_incontinent" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Theft:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_theft" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Indoors w/Restrictions:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_profile_smoke_in" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Bedwetting:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_profile_bedwetting" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  colspan="3"></td>	 			      
	 			    </tr>	
	 			    <tr style="height:5px">
				      <td colSpan="6"></td>
			        </tr>
	 			    <tr class="tr_common">
                        <td colspan="6" class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:8px">
				      <td colSpan="6"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Base Month:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_base_month" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Rate Effective:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_rate_effective_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	 
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Vendored Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_vendor_register_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>QA Evaluation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_qa_evaluation_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Unannounced Visit 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_unannounced_visit_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>QA Eval Exit:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_qa_eval_exit" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Unannounced Visit 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_unannounced_visit_2" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Fiscal Evaluation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_fiscal_evaluation_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Monitor Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_monitor_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Rate Review:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_rate_review_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>CCL/HCL Lic Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_ccl_hcl_lic_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>AR Checklist:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_ar_checklist_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>AR Follow-up Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_ar_follow_up" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Sanction Date - Start:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_sanction_date_start" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>SIR Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_sir_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Sanction Date - End:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_sanction_date_end" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Technical Assist:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_technical_assistance" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>DDS Review:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_dds_review_date" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Corrective Action:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_corrective_action_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Ad Hoc:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_ad_hoc" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Delete Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_delete_date" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td colspan="3"></td>	 			     
	 			    </tr>	
	 			    <tr style="height:5px">
				      <td colSpan="6"></td>
			        </tr>
	 			    <tr>
                        <td colspan="6" class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:8px">
				      <td colSpan="6"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Speciality 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_f_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Language 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_language_1_SP" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Speciality 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_f_2" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Language 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_language_2_SP" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>VSN Comment:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_s1_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td colspan="3" ></td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments 1:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_comment_1" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments 2:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_comment_2" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments 3:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_comment_3" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments 4:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_comment_4" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments 5:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_r_comment_5" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments 6:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_r_comment_6" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			     <tr style="height:5px">
				      <td colSpan="6"></td>
			        </tr>
	 			    <tr>
                        <td colspan="6" class="td_thicksepline">
                        </td>
                    </tr>
                    <tr style="height:8px">
				      <td colSpan="6"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Svc Code Sub Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_ServiceList" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Vendor#:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_psrvnd" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Svc Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_pvsrcd" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Svc Code Description:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_srvcNameRS" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Sub Code:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_pvssub" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Sub Code Description:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_psrdes" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>		
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Comments:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_psrcom" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Unit Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_prsutp" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Current Rate:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_psrcur" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			      <td colspan="3"></td>		 			       			     
	 			    </tr>	
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	
			        <tr class="tr_common">
			          <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>Beginning Date</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 			          <asp:textbox id="l_psrbeg" runat="server" CssClass="inface" Width="260px"></asp:textbox>
	 			      </td>
	 			      <td  style="WIDTH: 180px" width="180" align="right"  bgColor="#9fb0f4" height="20"><b>End Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" style="width: 300px">
	 				      <asp:textbox id="l_psrend" runat="server" CssClass="inface"  Width="260px"></asp:textbox>
	 			      </td>
	 			       
	 			    </tr>						
	 			 </table>
	 		</div>	    
	 	</div>		    
		<div id="Disp_IDN" style="DISPLAY:none">
		    <div style="width:100%; height:35px">	
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 500px" width="500" Height="20"><font color="#3366ff"><b>
	 			              <asp:Label ID="Field_CaseNotes" runat="server" Text="Case Notes"></asp:Label> Fields Display</b></font>
	 			      <td align="left" style="WIDTH: 470px" width="470" Height="20">
	 			          <asp:Button ID="btnResetIdn" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetIdn_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btnEditIdn" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditIdn_Click"></asp:Button>
                      </td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			        </tr>
			      </table>
			</div>
			<div style="position:relative;WIDTH:100%; height:570px; overflow: auto ">  
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">			        
	 		        <tr class="tr_common">	 			      
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_type" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Entered By:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_entered_by_name" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Template:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_template" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Minutes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_minutes" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Coordinator:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_uci" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Resource:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_rid" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Description:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_id_notes" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Interdisciplinary Notes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_cm_notes" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Final:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_validated_date" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>TeleCom:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_tele_commute" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" style="height: 5px"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Miles:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_miles" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Travel-Related Exp. Hotel/Parking/Etc.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_exp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Spent for Client:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tx_SFC" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Misc:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_tx_misc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			       </table>
			</div>
		</div> 
	    <div id="Disp_CDER" style="DISPLAY: none">
	        <div style="width:100%; height:35px">
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 500px" width="500" Height="20"><font color="#3366ff"><b><asp:Label ID="Field_Cder" runat="server" Text="Cder"></asp:Label> Fields Display</b></font>
	 			      <td align="left" style="WIDTH: 470px" width="470" Height="20">
	 			          <asp:Button ID="btnResetCder" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetCder_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btnEditCder" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditCder_Click"></asp:Button>
                      </td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			        </tr>
			      </table>
			</div>      
			<div style="position:relative;WIDTH:100%; height:570px; overflow: auto ">     	  
			    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">			        
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Report Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rptdte" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Height:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_hgt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Weight:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_wgt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Date Weighed:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dtewgt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Program:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_prgrm" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Section:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sctn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Unit:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_unit" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Franklin Factor:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_frkfac" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Development level:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_devlev" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>11. Level of Retardation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_lvlrtd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>12a:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mr1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>12b:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mr2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>13.Date of Last Evaluation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dtemre" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>14. Intelligence Quotient:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_iq" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>15. Intelligence Test:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_itest" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>16. Adaptive Behavior Rating:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_adpvbh" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>17. Presence Of Cerebral Palsy:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_prsncp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>18a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_othmd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>18b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_othmet" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>19. Level of Motor Dysfunction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_lvlmd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>20. Type of Motor Dysfunction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_typemd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>21. Location of Motor Dysfunction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_locmd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>22. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mdimp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>23. Autism:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_lvlaut" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>24a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_autsm1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>24b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_autsm2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>25. Determination Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_autdat" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" style="height: 5px"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>26. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_autimp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27a. Type of Seizure:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_typsz1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27b. Seizure Frequency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_szfrq1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_szimp1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28a. Type of Seizure:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_typsz2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28b. Seizure Frequency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_szfrq2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_szimp2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29a. Type of Seizure:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_typsz3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29b. Seizure Frequency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_szfrq3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_szimp3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>30a:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_eplp1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>30b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_eplp2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>31. Medication:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_antcnv" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>32. Status Epilepticus:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_stepls" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			      <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>33a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_othdd1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>33b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_othdd2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>34a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_oth1et" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>34b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_oth2et" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>35. Low birth weight or preterm labor with complications:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>36. Teenage pregnancy (17 years and younger):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>37. Maternal age 35 years or older at time of delivery:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>38. Accidents of near drowning:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>39. Accidents involving an automobile:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>40. Accidents involving other types of vehicles:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>41. Accidents of other types:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf7" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>42. Environmental toxins (pesticides,lead,etc.):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf8" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>43. Drug or alcohol abuse:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf9" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>44. Psychosocial (environmental) deprivation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf10" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>45. Family history of mental retardation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf11" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>46. Child abuse or neglect:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf12" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>47. Other cause(s):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rskf13" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mntla1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50b. Evaluation Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dtmna1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mimpa1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mntla2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51b. Evaluation Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dtmna2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mimpa2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mntlb1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52b. Evaluation Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dtmnb1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mimpb1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mntlb2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53b. Evaluation Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dtmnb2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53c. Condition Impacte:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mimpb2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>54a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrmc1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>54b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrim1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>55a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrmc2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>55b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrim2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>56a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrmc3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>56b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrim3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>57a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrmc4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>57b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrim4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			     </tr>
	 			     <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>58a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrmc5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>58b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrim5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			     </tr>
	 			     <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>59a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrmc6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>59b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_chrim6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>60. Hearing Uncorrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_hrngun" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>61. Hearing Corrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_hrngcr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>62. Vision Uncorrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_vsnun" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>63. Vision Corrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_vsncr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			     <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			     <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>64. Anti-Psychotic:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_apsymn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>65. Anti-Depressant:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_adepmn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>66. Anti-Anxiety:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_aanxmn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>67. Sedative/Hypnotic:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sedhyp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>68. Stimulant:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_stmlnt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>69. Other:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_othdrg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>70. History Of Medication:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_histpm" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                     <td></td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>71. Parkinsonism:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_parkin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>72. Dystonia:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dyston" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>73. Dyskinesia:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dyskin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>74. Akathisia:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_akath" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>75. Paroxysmal Movements:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_parox" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td></td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>76:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>77:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>78:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">80
	 				      <asp:textbox id="l_sphc3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>79:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>80:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>81:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>82:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc7" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>83:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc8" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>84:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc9" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>85:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sphc10" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>86. Does the client display maladaptive sexual behavior?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>87. Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>88. Has the client attempted suicide in the past five years?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>89. Does the client habitually engage in theft?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>90. Has the client participated in acts of vandalism or acts of property destruction?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>91. Has the client been convicted of any substance abuse or alcohol related offenses?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>92. Does the client have a recent history of abusing drugs or alcohol?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn7" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>93. Does the client have a history of habitual lying?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn8" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>94. Does the client display behaviors which could result or have resulted in fire setting?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn9" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td></td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>95. Is the client currently on probation, parole, or commitment under Penal Code or W&&I Codes relating to criminal offense?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn10" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>96. Is the client currently on Diversion pursuant to Penal Code section 1001.20 et seq.?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn11" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>97. Is the client currently a person within the provisions of Welfare and Institutions code section 6500 et seq. (dangerous mentally retarded individual committed by the court)?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn12" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>98. Is the client currently under a Lanterman-Petris-Short  (mental health) conservatorship?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn13" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>99. Is the client currently a conservatee under the Probate Code (conserved because client is unable to make informed application and consent to treatment?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn14" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>100. Is the client currently a dependent child of the Court (Welfare and Institutions Code section 300 et seq.)?:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_spcn15" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>1. Rolling and sitting(<=7):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rolsit" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>2. Hand use:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_handus" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>3. Arm use:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_armuse" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>4. Crawling and standing(<=4):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_crlstn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>5. Ambulation(<=2):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_amb" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>6. Climbing stairs:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_clmstr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>7. Wheelchair mobility(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_whlmob" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>8. Food preparation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_fprep" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>9. Bedmaking:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_bedmkg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>10. Washing dishes:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_wshdsh" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>11. Household chores:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_hshld" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>12. Basic medical self-help:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_bscmed" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>13. Self-medication:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_slfmed" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>14. Eating(<=5):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_eating" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>15. Toileting(<=4):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tltng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>16. Level of bladder control(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_lvlbld" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>17. Level of bowel control(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_lvlbwl" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>18. Personal hygiene(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_prshyg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>19. Bathing(<=2):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_bthng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>20. Dressing(<=4):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_drssng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>21. Movement/familiar setting:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mvmfml" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>22. Movement/unfamiliar setting:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mvmunf" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>23. Transportation/community:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_trnscm" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>24. Money handling:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mnyhnd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>25. Making purchases:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_mkprch" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>26. Ordering food/public:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_ordrfd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27. 1-TO-1 Interaction w/ peers:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_intrpr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28. 1-TO-1 Interaction w/ non-peers:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_intrnp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29. Friendship formation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_frndfr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>30. Friendship maintenance:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_frndmn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>31. Partic./social activities:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_prtsoc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>32. Partic./group projects:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_prtgrp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>33. Unaccept. soc. behavior(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_unscbh" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>34. Aggression(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_aggrsn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>35. Freq/self-injur. behavior:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_frqsi" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>36. Severe/self-injur.behavior(<=4):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sevsi" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>37. Smear feces(<=4):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_smrfec" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>38. Destruction/property(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_dstrpr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>39. Running/wandering away(<=5):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rnwnd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>40. Depressive-like behavior(<=2):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_depbh" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>41. Reaction to frustration(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rctfrs" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>42. Repetitive movements(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rptbmv" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>43. Inappropriate undressing(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_inund" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>44. Hyperactivity(<=3):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_hpract" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>45. Temper tantrums(<=4):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_tmptnt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>46. Resistiveness(<=2):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rstvns" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>47. ADJ. to changes in SOC. REL.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_adjsoc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>48. ADJ. to changes in PHYS. ENV.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_adjphy" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>49. Auditory perception:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_audprc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50. Visual perception:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_visprc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51. ASSOC. time w/events && actions:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_timeas" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52. Number awareness:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_nmbawr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53. Writing skills:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_wrtskl" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>54. Reading skills:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rdskl" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>55. Attention span:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_atnspn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>56. Safety awareness:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_sftyaw" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>57. Remembering instructions:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rmbins" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>58. Word usage:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_wrdusg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>59. Expressive nonverbal comm.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_expnvc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>60. Receptive nonverbal comm.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rcpnvc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>61. Receptive language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rcplng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>62. Expressive language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_explng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>63. Receptive sign language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_rcpslg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>64. Expressive sign language:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_expslg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>65. Expressive comm. w/aids:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_expcwa" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>66. Clarity of speech:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_clarsp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
			      </table> 
			</div>
		</div>
	    <div id="Disp_POS" style="DISPLAY: none">	
	         <div style="width:100%; height:35px">
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 500px" width="500" Height="20"><font color="#3366ff"><b><asp:Label ID="Label1" runat="server" Text="Pos"></asp:Label> Fields Display</b></font>
	 			      <td align="left" style="WIDTH: 470px" width="470" Height="20">
	 			          <asp:Button ID="btnResetPos" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetPos_Click" ></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btnEditPos" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditPos_Click" ></asp:Button>
                      </td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			        </tr>
			      </table>
			 </div>   
			 <div style="position:relative;WIDTH:100%; height:570px; overflow: auto ">     	  
			      <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">   
			           <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Cancel Date:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_cancel_date" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Reason for Cancellation:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_cancel_desc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Funding Level:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_funding_level" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Case Type:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_case_type" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>FCPP:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_assessment_date_yn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Assessment Date:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_assessment_date" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Authorization:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_auth" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Med.Waiver:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_med_waiv" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Inst. Deeming:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_inst_deeming" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Diagnosis:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_diag" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Frankland Factor:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_ff" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Developmental Level:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_dev_level_per" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Vendor#:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_vendor_number" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			             <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Vendor:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_vendor_name" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
                            
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Start Date:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_date_start" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Term Date:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_date_end" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Svc Code:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_vendor_svcc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Address:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_resource_addr1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Sub Code:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_vendor_subc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Phone:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_resource_phone" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			           <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b># of Units:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_unit" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Type:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				                 <asp:textbox id="l_p_unit_type" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			           <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>IPP#:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_ipp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Approx. Monthly Cost:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_cost" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			           <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Rate:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_rate" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Old Monthly Cost:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_cost_old" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px; height: 26px;" align="right" width="180" bgColor="#9fb0f4"><b>Diff:</b></td>
	 			            <td Width="5" style="height: 26px"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px; height: 26px;">
	 				            <asp:textbox id="l_p_cost_diff" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px; height: 26px;" align="right" width="180" bgColor="#9fb0f4"><b>Description of Service:</b></td>
	 			            <td Width="5" style="height: 26px"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px; height: 26px;">
	 				             <asp:textbox id="l_p_desc" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Justification of Service:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_just" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Medi-Cal:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_medical" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Medicare:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_medicare" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>CCS:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_ccs" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>IHSS:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_ihss" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b># of hours:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_ihss_hrs" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>SSA:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_ssa" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>SSI:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_ssi" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>VA:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_va" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Payee:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_payee" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Priv.Ins:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_priv_ins" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Carrier:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_priv_ins_co" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>#:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_priv_ins_num" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Other:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_other_fund" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Entered By:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_cm_name" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>ID:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				             <asp:textbox id="l_p_cm_id" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			          <tr class="tr_common">
			               <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Comments:</b></td>
	 			            <td Width="5" Height="20"></td>
	 			            <td class="td_unline" align="left" width="300" style="width: 300px">
	 				            <asp:textbox id="l_p_comments" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			            </td>
	 			            <td colspan="3"></td>                           
	 			      </tr>
	 			      <tr class="tr_common">
				           <td colSpan="6" height="5"></td>
			          </tr>
			      </table>
			 </div>     
	    </div>	
	    <div id="Disp_CDER08" style="DISPLAY: none">   
	         <div style="width:100%; height:35px">
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 500px" width="500" Height="20"><font color="#3366ff"><b><asp:Label ID="Field_Cder08" runat="server" Text="Cder08"></asp:Label> Fields Display</b></font>
	 			      <td align="left" style="WIDTH: 470px" width="470" Height="20">
	 			          <asp:Button ID="btnResetCder08" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnResetCder08_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btnEditCder08" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle" OnClick="btnEditCder08_Click"></asp:Button>
                      </td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			        </tr>
			      </table>
			</div> 
			<div style="position:relative;WIDTH:100%; height:570px; overflow: auto "> 
			     <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">	
			          <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="200" bgColor="#9fb0f4" height="20"><b>1. Face to Face Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 350px">
	 				      <asp:textbox id="lc_rptdte" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="200" bgColor="#9fb0f4" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 260">
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>5. Height:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_hgt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>6. Weight:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_wgt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>7. Date Weighed:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dtewgt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>8. Program:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_prgrm" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>9. Section:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sctn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>10. Unit:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_unit" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>	 			   
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>11. Level of Retardation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_lvlrtd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>12a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mr1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>12b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mr2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>13. Date of Last Evaluation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dtemre" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>14. Intelligence Quotient:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_iq" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>15. Intelligence Test:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_itest" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>16. Adaptive Behavior Rating:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_adpvbh" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>17. Presence Of Cerebral Palsy:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_prsncp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>18a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cpet01" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>18b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cpet02" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>19. Severity of Motor Dysfunction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_svrmd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>20. Type of Motor Dysfunction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_typemd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colspan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>21. Location of Motor Dysfunction:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_locmd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>22. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mdimp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>23a. Presence of Autistic Disorder:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_prsaut" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>23b. Presence of Other PDD:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_prsoth" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			      
	 			    </tr>    
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>24a.</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_autsm1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>24b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_autsm2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>25. Determination Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_autdat" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>26. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_autimp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27a. Type of Seizure:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_typsz1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27b. Seizure Frequency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_szfrq1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
	 			    <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>27c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_szimp1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28a. Type of Seizure:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_Typsz2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28b. Seizure Frequency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_szfrq2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>28c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_szimp2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>			        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29a. Type of Seizure:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_typsz3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29b. Seizure Frequency:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_szfrq3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>29c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_szimp3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>30a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_eplp1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>30b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_eplp2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>31. Consumer takes anticonvulsant medication:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_antcnv" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>32. Status Epilepticus:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_stepls" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>33. Other Disability:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_othdis" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>33a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_othdd1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>33b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_othdd2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>34a.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_oth1et" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>34b.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_oth2et" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>35. Low birth weight or preterm labor with complications:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf35" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>36. Teenage pregnancy (17 years and younger):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf36" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>37. Maternal age 35 years or older at time of delivery:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf37" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>38. Accidents of near drowning:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf38" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>39. Accidents involving an automobile:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf39" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>40. Accidents involving other types of vehicles:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf40" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>41. Accidents of other types:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf41" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>42. Environmental toxins (pesticides, lead, etc.):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf42" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>43. Drug or alcohol abuse:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf43" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>44. Psychosocial (environmental) deprivation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf44" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>45. Family history of mental retardation:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf45" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>46. Child abuse or neglect:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf46" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>47. Other cause(s):</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rskf47" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mntla1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50b. Evaluation Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dtmna1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>50c. Condition Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mimpa1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mntla2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51b. Eval Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dtmna2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>51c. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mimpa2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mntlb1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52b. Eval Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dtmnb1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>52c. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mimpb1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53a. Type:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mntlb2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53b. Eval Date:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dtmnb2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>53c. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_mimpb2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>54a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrmc1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>54b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrim1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>55a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrmc2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>55b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrim2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>56a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrmc3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>56b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrim3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr> 
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>57a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrmc4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>57b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrim4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>  
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>58a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrmc5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>58b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrim5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>  
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>59a. Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrmc6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>59b. Impact:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_chrim6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>   
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>60. Level of Hearing Loss Uncorrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_hrngun" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>61. Level of Hearing Loss Corrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_hrngcr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>62. Level of Vision Loss Uncorrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_vsnun" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>63. Level of Vision Loss Corrected:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_vsncr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>64. Anti-Psychotic:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_apsymn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>65. Anti-Depressant:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_adepmn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>66. Anti-Anxiety:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_aanxmn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>67. Sedative/Hypnotic:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sedhyp" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>       
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>68. Stimulant:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_stmlnt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>69. Other:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_othdrg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>70. History of Prescribed Medication for Maladaptive Behavior:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_histpm" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>71. Parkinsonism:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_parkin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>72. Dystonia:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dyston" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>73. Dyskinesia:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dyskin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>         
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>74. Akathisia:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_akath" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>75. Paroxysmal Movements:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_parox" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>   
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>76.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc1" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>77.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc2" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>78.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc3" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>79.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc4" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>80.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc5" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>81.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc6" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>82.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc7" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>83.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc8" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			         <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>84.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc9" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>85.:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sphc10" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Does the client display maladaptive sexual behavior?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spcn1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spcn2" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Has the client attempted suicide in the past five years?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_spcn3" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Does the client habitually engage in theft?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spcn4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Has the client participated in acts of vandalism or acts of propery destruction?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spcn5" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Has the client been convicted of any substance abuse or alcohol related offenses?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spcn6" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Does the client have a recent history of abusing drugs or alcohol?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_spcn7" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Does the client have a history of habitual lying?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_spcn8" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Does the client display behaviors which could result or have resulted in fire setting?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spcn9" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Is the client currently on probation, parole, or commitment under Penal Code or W&&I Codes relating to criminal offense?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_splgc1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Is the client currently on Diversion pursuant to Penal Code section 1001.20 et seq.?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_splgc2" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Is the client currently a person within the provisions of Welfare and Institutions code section 6500 et seq. (dangerous mentally retarded individual committed by the court)?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_splgc3" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Is the client currently under a Lanterman-Petris-Short (mental health) conservatorship?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_splgc4" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Is the client currently a conservatee under the Probate Code (conserved because client is unable to make informed application and consent to treatment)?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_splgc5" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>       
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Is the client currently a dependent child of the Court (Welfare and Institutions Code section 300 et seq.)?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_splgc6" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b></b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>         
			        <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>       
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Using Hands</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_handus" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Walking</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_walkng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Using a Wheelchair</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_whluse" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Taking Prescription Medication</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_takmed" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			    </tr>                       
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Eating</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_eating" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Toileting</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_tltng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Bladder and Bowel Control</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_bbctrl" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Personal Care</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_prshyg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Dressing</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_drssng" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Safety Awareness</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_safety" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Focusing on Tasks and Activities</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_focus" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Verbal Communication</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_verbal" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			       </tr>      
			       <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Nonverbal Communication</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_novrbl" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Social Interaction</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_social" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Disruptive Social Behavior</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_disbhv" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Aggressive Social Behavior</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_aggrsn" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Self-Injurious Behavior</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_sevsi" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Destruction of Property</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_dstrpr" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>          
			       <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Running or Wandering Away</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_rnwnd" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Emotional Outbursts</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_emoout" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>What type of school does the consumer attend?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_school" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>On a typical day, how much contact does the consumer have at school with students who do not have a disability?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_scntct" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			       <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>On a typical day, how many people does the consumer interact with at school who speak the consumer¡¯s primary language (e.g., Spanish, English)?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_scntsp" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>In what type of work or day program does the consumer participate most often?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_daywrk" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>On a typical day, how many people does the consumer interact with at the day program and/or work site who do not have a disability? (Include both peers and staff)</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_dcnndd" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>On a typical day, how many people does the consumer interact with at the day program and/or work site who speak the consumer¡¯s primary language?(Include both peers and staff)</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_dcnlg" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>In a typical week, how many hours is the consumer paid for work? (Please estimate if the consumer is paid for productivity.)</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_hrpdwk" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>In a typical week, how much does the consumer earn per hour of work? (Please estimate if the consumer is paid for productivity.)</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_wages" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>During the past 6 months, about how often did the consumer participate in community outings for personal errands, recreation, entertainment, or church?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_outing" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>How many friends does the consumer have?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_friend" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Including the consumer, how many people with disabilities live in the household?(include both peers and staff)</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_ddinhs" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>How many times has the consumer moved from one residence to another in the last 2 years?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_moved" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>On a typical day, how many people who live at the consumer¡¯s household speak the consumer¡¯s primary language (e.g., Spanish, English, Cambodian)?(Include both peers and staff)</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			          <asp:TextBox ID="lc_spklng" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Did the consumer see a physician, nurse practitioner, or physician¡¯s assistant for medical care (including check-ups) during the past 12 months?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_mdcare" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 				     
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Did the consumer see a dentist for dental care(including check-ups) during the past 12 months?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			         <asp:TextBox ID="lc_dscare" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Does the consumer currently have a medical and/or dental condition for which appropriate care is not being provided, although it should be?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px" valign="top">
	 			           <asp:TextBox ID="lc_nocare" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" runat="server"
                           Width="98%" Height="100"></asp:TextBox>
	 				     
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>       
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you like living at _____?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_lklive" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you like the people who help you at _____?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_lkppll" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>       
			       <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you want to keep living at _____?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cnlive" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you like going to ______?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_lkgoin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>    
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you like the people who help you at _____?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_lkppld" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you want to keep going to _____?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cngoin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>         
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Who do you talk to when you are sad or unhappy?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_talkto" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you feel safe or afraid most of the time?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_safe" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>       
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Are you happy or sad most of the time?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_hypsad" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Do you tell people what you want most the time?</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_telwnt" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>        
			       <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Frankland Factor:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_frkfac" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Development Level:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_devlev" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>      
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Practical Independence:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdprin" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Personal /Social Skills:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdpess" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Challenging Behaviors:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdchbh" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>WheelChair use:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdwhus" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>         
			       <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Non-verbal Communication:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdnonvb" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Integration:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdintg" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>     
			        <tr class="tr_common">	 			     
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Well-Being:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdwlbe" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>	 			    
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Untreated Medical Condition:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="lc_cdunmed" runat="server" CssClass="inface" Width="260"></asp:textbox>
	 			      </td>
	 			   </tr>                       
	 			   <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>                                                                              
			     </table>
			</div>  
	    </div>
	    <div id="Disp_BUTTON" style="DISPLAY: none">
	         <div style="width:100%; height:35px">
	 	          <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">
	 		        <tr class="tr_common">
	 			      <td align="center" style="WIDTH: 500px" width="500" Height="20"><font color="#3366ff"><b><asp:Label ID="Label4" runat="server" Text="Buttons"></asp:Label> Fields Display</b></font>
	 			      <td align="left" style="WIDTH: 470px" width="470" Height="20">
	 			          <asp:Button ID="btnResetButtons" runat="server" Text="Reset" style="width:100px"  CssClass="buttonbluestyle"  OnClick="btnResetButtons_Click"></asp:Button>
	 			          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			          <asp:Button ID="btnEditButtons" runat="server" Text="Save" style="width:100px"  CssClass="buttonbluestyle"  OnClick="btnEditButtons_Click"></asp:Button>
                      </td>
	 		        </tr>
	 		        <tr class="tr_common">
				      <td colSpan="2" height="5"></td>
			        </tr>
			      </table>
			</div> 
			<div style="position:relative;WIDTH:100%; height:570px; overflow: auto " >
	 			  <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0">			        
	 		        <tr class="tr_common">
	 			      <td style="WIDTH: 180px; height: 26px;" align="right" width="180" bgColor="#9fb0f4"><b>Add:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px; height: 26px;">
	 				      <asp:textbox id="l_Add" runat="server" CssClass="inface" Width="260" MaxLength="12"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px; height: 26px;" align="right" width="180" bgColor="#9fb0f4"><b>Delete:</b></td>
	 			      <td Width="5" style="height: 26px"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px; height: 26px;">
	 			          <asp:textbox id="l_Delete" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Save:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_Save" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Print:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_Print" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			    <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Help:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_Help" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Search:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_Search" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			     <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Renew:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_Renew" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Image:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_Image" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
	 			    </tr>
	 			      <tr class="tr_common">
				      <td colSpan="6" height="5"></td>
			        </tr>
			        <tr class="tr_common">
	 			      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Message:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 				      <asp:textbox id="l_Message" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
                      <td style="WIDTH: 180px" align="right" width="180" bgColor="#9fb0f4" height="20"><b>Map:</b></td>
	 			      <td Width="5" Height="20"></td>
	 			      <td class="td_unline" align="left" width="300" style="width: 300px">
	 			          <asp:textbox id="l_Map" runat="server" CssClass="inface" Width="260"  MaxLength="12"></asp:textbox>
	 			      </td>
	 			    </tr>
			      </table> 
	 		</div>
	    </div>
	</div>	
    </form>
</body>
</html>

