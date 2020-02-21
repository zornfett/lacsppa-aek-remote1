<%@ Page Language="C#" Inherits="Virweb2.FormList.formGPOS" Codebehind="formGPOS.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
	<title>:::Consumer POS info:::...</title>
	<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
	<!--
		function Refresh_Data(flag)
        {         
           alert("Update successful!");
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.RefreshMyData();                 
           }
           else
           {
               window.opener.RefreshMyData();  
           }
           if (flag==1)
           {
               window.close();
           }
           else
           {
              window.focus();
           }
       }
       
       function  save_click()
       {
          NoConfirmExit();
          var str=JTrim(document.getElementById("p_resource_number").value);
          {
             if (str=="")
             {
                alert("Please select vendor!");
                document.getElementById("p_resource_number").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("p_date_start").value);
          {
             if (str=="")
             {
                alert("Please input start date!");
                document.getElementById("p_date_start").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("p_date_end").value);
          {
             if (str=="")
             {
                alert("Please input end date!");
                document.getElementById("p_date_end").focus();
                return false;
             }
          }
          var str=JTrim(document.getElementById("p_rate").value);
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("p_rate").focus();
                return false;
             }
          }
          else
          {
              document.getElementById("p_rate").value=0;
          }
          var str=JTrim(document.getElementById("p_limits").value);
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("p_limits").focus();
                return false;
             }
          }
          else
          {
              document.getElementById("p_limits").value=0;
          }
          var str=JTrim(document.getElementById("p_balance").value);
          if (str!="")
          {
             if (isNaN(str)==true)
             {
                alert("Please input number!");
                document.getElementById("p_balance").focus();
                return false;
             }
          }
          else
          {
              document.getElementById("p_balance").value=0;
          }
          return true;
       }
		
	  //-->
	</script>		
</head>
<body scroll="auto" runat="server" id="body" >
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="PosInfo" method="post" runat="server">
        <input id="NoConfirm" type=hidden value="0" />           
        <div align="left" style="WIDTH:100%;height:60px;">
             <center>
		     <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="99%" >
	              <tr style="height: 20px;" align=center valign=bottom>
	                   <td colspan="2">
	                        <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">PURCHASE OF SERVICE REQUEST</asp:label> 
	                   </td>
	              </tr>
	              <tr style="height: 36px;" align="left" valign="middle">
	                   <td>
			                <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">General POS For</asp:label>
			           </td>
			           <td>
		  	                <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle"   OnClientClick="javascript:return save_click();"  OnClick="btnEdit_Click" ></asp:button>
			                <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" OnClientClick="javascript:return save_click();" OnClick="btnAdd_Click" ></asp:button>			               
			                <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle"  Visible="false" > </asp:Button>
			                <input type="button" id="btnHelp" value="Help" style="width:60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')"  runat="server"/>			  
		                </td>
		           </tr>				
		           <tr valign="top" style="height: 1px;">
                        <td bgcolor="#990066" colspan="2"></td>
                   </tr>
		       </table>
		       </center>
		 </div>   
		 <div style="position: relative; width: 100%; height: 600px; overflow: auto;">
		    <center> 
		    <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 99%">			         
		         <tr >
		            <td >
		                <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
		                    <tr class="tr_common" valign="top" style="height:20px">	
		                        <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b>Date:</b></td>
				                <td style="width:5px;"></td>
				                <td class="td_unline" align="left" style="width: 200px;">
				                    <asp:label id="p_date" runat="server" CssClass="infaceLabel"></asp:label>
				                </td>
				                <td style="width:5px;"></td>
						        <td style="WIDTH: 60px;" align="right" class="infaceLabel">
						            <b><asp:Label ID="l_p_auth" runat="server" Text="Auth#:"></asp:Label></b>
						        </td>
						        <td style="width:5px;"></td>
						        <td class="td_unline" align="left" style="width: 100px;">
						            <asp:textbox id="p_auth" runat="server" CssClass="inface" MaxLength = "25"></asp:textbox>
						        </td>
						        <td style="width:5px;"></td>
				                <td colspan="10"></td>
		                    </tr>
		                    <tr>
					           <td  colspan="19" style="height:3px"></td>
					        </tr>	
				            <tr class="tr_common" valign="top" style="height:20px">				                		                
						        <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b>UCI#:</b></td>
					   	        <td style="width:5px;"></td>
						        <td class="td_unline" align="left" style="width: 80px;"><asp:label id="p_uci" runat="server" CssClass="infaceLabel" ></asp:label></td>
						        <td style="width:5px;"></td>
						        <td style="WIDTH: 60px;" align="right"  class="infaceLabel"><b>Consumer:</b></td>
						        <td style="width:5px;"></td>
						        <td class="td_unline" align="left" style="width: 100px;"><asp:label id="p_name_first" runat="server" CssClass="infaceLabel"></asp:label></td>
						        <td style="width:5px;"></td>
						        <td class="td_unline" align="left" style="width: 100px;"><asp:label id="p_name_last" runat="server" CssClass="infaceLabel"></asp:label></td>
						        <td style="width:5px;"></td>
						        <td style="WIDTH: 60px;" align="right"  class="infaceLabel"><b>DOB:</b></td>
						        <td style="width:5px;"></td>
						        <td class="td_unline" align="left" style="width: 75px;"><asp:label id="p_dob" runat="server" CssClass="infaceLabel"></asp:label></td>						        
						        <td style="width:5px;"></td>
						        <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b>CM:</b></td>
						        <td style="width:5px;"></td>
						        <td class="td_unline" align="left" style="width: 50px;"><asp:label id="cm_id" runat="server" CssClass="infaceLabel"></asp:label></td>
						        <td style="width:5px;"></td>
						        <td class="td_unline" align="left"  style="width: 150px;"><asp:label id="cm_name" runat="server" CssClass="infaceLabel"></asp:label></td>						        
					       </tr>	
					       <tr>
					           <td  colspan="19" style="height:3px"></td>
					       </tr>       			     			     
				        </table>
		            </td>
		         </tr>
		         <tr><td bgcolor="#990066" height="2"></td></tr> 	
		         <tr><td height="5"></td></tr> 
		         <tr>
		            <td>
		                <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
		                    <tr class="tr_common" style="height:20px;">
						        <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_vendor_number" runat="server" Text="Vendor#:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
					 	        <td colspan="5" align="left">
					 	            <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
					 	                  <tr class="tr_common" >
					 	                       <td class="td_unline" align="left" style="width: 150px;"><asp:label id="p_vendor_number" runat="server" CssClass="infaceLabel"></asp:label></td>
					 	                       <td style="width:20px"></td>
					 	                       <td align="left" ><asp:button id="btnReset" Runat="server" Text="Reset" onclientclick="NoConfirmExit();"  style="width:60px"  CssClass="buttonbluestyle" OnClick="btnReset_Click"></asp:button></td>						       
					 	                  </tr>
					 	            </table>					 	        
					 	        </td>					        
						        <td style="width: 5px"></td>
						        <td style="WIDTH: 80px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_date_start" runat="server" Text="Start Date:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td class="td_unline" align="left" style="width: 110px;"><asp:textbox id="p_date_start" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox></td>
						        <td style="width: 5px"></td>
						        <td style="WIDTH: 65px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_date_end" runat="server" Text="Term Date:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td class="td_unline" align="left"  style="width: 125px;"><asp:textbox id="p_date_end" runat="server" CssClass="inface" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox></td>
					       </tr>
					       <tr>
					           <td  colspan="15" style="height:3px"></td>
					       </tr> 
					       <tr class="tr_common" style="height:20px;">
					 	        <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_vendor_name" runat="server" Text="Vendor:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td colspan="5"   style="width: 360px;">
						             <asp:dropdownlist id="p_resource_number" runat="server"  onchange="NoConfirmExit();" OnSelectedIndexChanged="vendorname_SelectedIndexChanged"
							              DataValueField="r_resource_id" DataTextField="r_resource_name" Height="20" Width="360px" AutoPostBack="true" >
				                     </asp:dropdownlist>
						        </td>
						        <td style="width: 5px"></td>
						        <td style="WIDTH: 80px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_vendor_svcc" runat="server" Text="Service:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td colspan="5"  style="width: 300px;">
							         <asp:dropdownlist id="p_vendor_svcc" runat="server"  onchange="NoConfirmExit();" OnSelectedIndexChanged="service_SelectedIndexChanged"
							              DataValueField="fullID" DataTextField="fullentry" Height="20" Width="300" AutoPostBack="true">
				                     </asp:dropdownlist>
						        </td>
					       </tr>
					       <tr>
					           <td  colspan="15" style="height:3px"></td>
					       </tr> 
					       <tr class="tr_common" style="height:20px;">
						        <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_resource_addr1" runat="server" Text="Address:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td colspan="5"  style="width: 355px;" class="td_unline" align="left"><asp:label id="p_resource_addr1" runat="server" CssClass="infaceLabel"></asp:label></td>
						        <td style="width: 5px"></td>
						        <td style="WIDTH: 80px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_vendor_subc" runat="server" Text="Sub Code:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td colspan="5"   style="width: 300px;">
							         <asp:dropdownlist id="p_vendor_subc" runat="server" 
							             DataValueField="fullID" DataTextField="fullentry" Height="20" Width="300">
				                     </asp:dropdownlist>
						        </td>
					       </tr>
					       <tr>
					           <td  colspan="15" style="height:3px"></td>
					       </tr> 
					       <tr class="tr_common" style="height:20px;">
						        <td style="WIDTH: 60px;" align="right" class="infaceLabel"></td>
						        <td style="width: 5px"></td>
						        <td colspan="5" align="left" style="height:20px;">
					 	            <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
					 	                  <tr class="tr_common" style="height:20px;">
					 	                       <td  class="td_unline" align="left" style="width: 200px;"><asp:label id="p_resource_addr2" runat="server" CssClass="infaceLabel"></asp:label></td>
						                       <td style="WIDTH: 60px;" align="right"  class="infaceLabel"><b><asp:Label ID="l_p_resource_phone" runat="server" Text="Phone:"></asp:Label></b></td>						        
						                       <td style="width: 5px"></td>
						                       <td style="width: 80px" class="td_unline" align="left"><asp:label id="p_resource_phone" runat="server" CssClass="infaceLabel"></asp:label></td>						        
					 	                  </tr>
					 	            </table>					 	        
					 	        </td>							        
						        <td style="width: 5px"></td>
						        <td style="WIDTH: 80px;" align="right"  class="infaceLabel"><b><asp:Label ID="l_p_unit" runat="server" Text="# of Units:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td class="td_unline" align="left"  style="width: 110px;"><asp:textbox id="p_unit" runat="server" CssClass="inface" MaxLength = 9></asp:textbox></td>
						        <td style="width: 5px"></td>
						        <td style="WIDTH: 65px;" align="right"  class="infaceLabel"><b><asp:Label ID="l_p_unit_type" runat="server" Text="Type:"></asp:Label></b></td>
						        <td style="width: 5px"></td>
						        <td style="width: 115px;">
							         <asp:dropdownlist id="p_unit_type" runat="server" 
							             DataValueField="tb_entry_name" DataTextField="tb_entry_text" Height="20" Width="115px">
				                     </asp:dropdownlist>
						        </td>
					        </tr>
					        <tr class="tr_common" style="height:20px;">
					           <td  colspan="15" style="height:3px"></td>
					       </tr> 
					       <tr class="tr_common" style="height:20px;">	
					           <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b><asp:Label ID="l_p_rate" runat="server" Text="Rate:"></asp:Label></b></td>
						       <td style="width: 5px"></td>							       
					           <td colspan="6" align="left">
					               <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 100%">
					                   <tr class="tr_common" style="height:20px;">
					                         <td class="td_unline" align="left" style="width: 125px;">
							                   <asp:textbox id="p_rate" runat="server" CssClass="inface"  MaxLength = 9></asp:textbox>
				                             </td>		
				                             <td style="width:60%"></td>			                 
					                   </tr>
					               </table>
					           </td>
					           <td style="WIDTH: 60px;" align="right" class="infaceLabel"><b><asp:Label ID="lbl_p_limit" runat="server" Text="Limit($):"></asp:Label></b></td>
							   <td style="width: 5px"></td>
						       <td class="td_unline" align="left" style="width: 125px;">
							          <asp:textbox id="p_limits" runat="server" CssClass="inface"  MaxLength = 9></asp:textbox>
							   </td>		
					           <td style="width: 5px"></td>
						       <td style="WIDTH: 80px;" align="right" class="infaceLabel"><b><asp:Label ID="lbl_p_balance" runat="server" Text="Balance($):"></asp:Label></b></td>
						       <td style="width: 5px"></td>
						       <td class="td_unline" align="left"  style="width: 110px;"><asp:textbox id="p_balance" runat="server" CssClass="inface" MaxLength = 9></asp:textbox></td>						       					                
					        </tr>
		               </table>
		            </td>
		         </tr>
		    </table>
		    </center>  
		</div>
		      
    </form>
</body>
</html>
