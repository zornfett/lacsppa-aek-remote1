<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webConsumerSchoolSCLARC.aspx.cs" Inherits="Virweb2.WebList.webConsumerSchoolSCLARC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1">
    <base TARGET="_self" /> 
    <title>Client School Detail</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript"> 
    function print_click()
    {
       var consumer_key=document.ConsumerSc.consumer_key.value.toString();
       var UserAct = document.ConsumerSc.UserAct.value.toString();
       var entry_date = document.ConsumerSc.entry_date.value.toString();
       var url = "PrintConsumerSchoolSCLARC.aspx?consumer_key=" + consumer_key + "&entry_date=" + entry_date + "&UserAct=" + UserAct;
       window.open(url);               
    }
    
    function Refresh_Data(flag)
    {         
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshSchoolData();                 
        }
        else
        {
            window.opener.RefreshSchoolData();  
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
            
    function save_click()
    {
        NoConfirmExit();
        return true;
    }
    </script> 
</head>
<body  id="body" runat="server">
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerSc" runat="server">
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" /> 
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="entry_date" id="entry_date" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="center" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="98%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan=2>
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">SCHOOL INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">School For</asp:label>
			</td>
			<td>
		  	  <asp:ImageButton ID="btnAdd" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:ImageButton>
              <asp:ImageButton ID="btnEdit" runat="server" Style="width: 25px;height:25px"
                  ImageURL="../img/save.ico" ToolTip="Save" Visible="false" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:ImageButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="image" id="btnPrint" src="../img/print.ico" alt="Print" style="width: 25px;height:25px" 
                  onclick="javascript:print_click();" runat="server" /> 
			  &nbsp;&nbsp;&nbsp;&nbsp;
              <input type="image" id="btnHelp" src="../img/help.ico" alt="Help" style="width: 25px;height:25px" visible="false"
                  onclick="winhref('./HelpFile/.html','help')" runat="server" />
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		</div>
	    <div align="center" valign="top" style="position:relative;WIDTH:100%; height:450px; overflow: auto " >
	    <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_employer" runat="server" Text="Name of School:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="employer" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_city" runat="server" Text="Address/Phone:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="city" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_jobtitle" runat="server" Text="School District:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:TextBox ID="jobtitle" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                 <asp:Label ID="l_other" runat="server" Text="Behavior Plan:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                 <asp:DropDownList ID="other" runat="server" DataValueField="tb_code" DataTextField="tb_entry_text"
                           Height="20" Width="550" OnClick="DataChanged()">
                 </asp:DropDownList>
               </td>
               <td>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                  <asp:Label ID="l_timeonjob" runat="server" Text="Current IEP Date:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td colspan="2" align="left" height="20">
                  <table cellspacing="0" cellpadding="0" width="100%" border="0">
                   <tr>
                     <td style="width: 120px" align="left" width="120" class="td_unline" height="20">
                       <asp:Textbox ID="timeonjob" runat="server" CssClass="inface" width="120px"
                         onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:Textbox>
                     </td>
                      <td width="10" height="20">
                     </td>
                     <td align="left" style="width: 150px" class="td_label">
                       <asp:Checkbox ID="piecerate" runat="server" Text="SC Attended IEP:">
                       </asp:Checkbox>
                     </td>
                     <td align="right" style="width: 120px" class="td_label">
                       <asp:Label ID="l_monthyear" runat="server" Text="Next IEP Date:"></asp:Label>
                     </td>
                     <td width="5" height="20">
                     </td>
                     <td style="width: 120px" align="left" width="120" class="td_unline" height="20">
                       <asp:Textbox ID="monthyear" runat="server" CssClass="inface" Width="120px"
                         onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:Textbox>
                     </td>
                     <td width="5">
                     </td>
                     <td align="left" style="width: 100px" class="td_label">
                       <asp:Checkbox ID="NoIEP" runat="server" Text="No IEP" >
                       </asp:Checkbox>
                     </td>
                   </tr>
                 </table>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                  <asp:Label ID="Label49" runat="server" Text="504:"></asp:Label>
               </td>
               <td width="10">
               </td>
               <td colspan=2>
                  <table class="table_inside" cellspacing="0" cellpadding="0" >
                     <tr class="tr_common">
                       <td style="width: 120px" align="left" class="td_unline">
                          <asp:DropDownList ID="YN504" runat="server" CssClass="infaceDrop">
                              <asp:ListItem Text="" Value="" />
                              <asp:ListItem Text="Yes" Value="Yes" />
                              <asp:ListItem Text="No" Value="No" />
                          </asp:DropDownList>
                       </td>
                       <td width="10">
                       </td>
                       <td align="right" style="width: 120px" class="td_label">
                          <asp:Label ID="Label50" runat="server" Text="504 Date:"></asp:Label>
                       </td>
                       <td width="5">
                       </td>
                       <td style="width: 120px" align="left" class="td_unline">
                          <asp:Textbox ID="Date504" runat="server" CssClass="inface"
                          onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:Textbox>
                       </td>
                       <td style="width:auto"></td>
                     </tr>
                  </table>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" align="left" class="td_label">
                    <asp:Radiobutton ID="Diploma_none"  groupname="Diploma" runat="server"  Text="No Diploma" Checked=true></asp:Radiobutton>    
                    &nbsp;&nbsp;&nbsp;
                    <asp:Radiobutton ID="Diploma_yes" groupname="Diploma" runat="server"  Text="Diploma" Checked=false></asp:Radiobutton>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Radiobutton ID="Diploma_no"  groupname="Diploma" runat="server"  Text="Certificate Completion" Checked=false></asp:Radiobutton>                
                </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                  <asp:Label ID="Label2" runat="server" Text="Date of Diploma/Certificate Completion:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td align="left">
                    <asp:TextBox ID="DiplomaDate" runat="server" Width="120px" CssClass="inface" onclick="showcalendar(event, this);DataChanged();"
                        onfocus="showcalendar(event, this);">
                    </asp:TextBox>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                  <asp:Label ID="l_edutype" runat="server" Text="Type of Education Placement:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td align="left" class="td_label">
                    <asp:Checkbox ID="fullinclusion" runat="server" Text="Full Inclusion">
                    </asp:Checkbox>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Checkbox ID="specialclass" runat="server" Text="Special Day Class">
                    </asp:Checkbox>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Checkbox ID="mainstream" runat="server" Text="Mainstream">
                    </asp:Checkbox>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td align="left" style="width: 210px" class="td_label" >
                  <asp:Label ID="l_funding" runat="server" Text="School Placement Funding:"></asp:Label>
               </td>
               <td width="10" height="20">
               </td>
               <td style="width: 600px" align="left" width="600" class="td_unline" height="20">
                    <asp:DropDownList ID="placementfunding" runat="server"
                           Height="20" Width="550" OnClick="DataChanged()">
                    <asp:ListItem Value=""></asp:ListItem>
                    <asp:ListItem Value="1">Public school</asp:ListItem>
                    <asp:ListItem Value="2">Non Public School (district funded)</asp:ListItem>
                    <asp:ListItem Value="3">Private school (family funded)</asp:ListItem>
                    </asp:DropDownList>
               </td>
            </tr>
            <tr style="height:5px">
               <td colspan="4">
               </td>
            </tr>
            <tr>
               <td colspan="4" class="td_thicksepline">
               </td>
            </tr>
            <tr style="height:8px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" class="td_label" align="left" height="20">
                   <asp:Label ID="Label1" runat="server" Text="Comments:"></asp:Label>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common" style="height:60px;">
               <td colspan="4">
                   <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="60">
                   </asp:TextBox>
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" align="left">
                   Entered By:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="EnterBy" runat="server" CssClass="infaceText"></asp:Label> 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Last Mod By:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lastmodby" runat="server" CssClass="infaceText"></asp:Label>
                   
               </td>
            </tr>
            <tr style="height: 5px">
               <td colspan="4">
               </td>
            </tr>
            <tr class="tr_common">
               <td colspan="4" align="left">
                   Entered Date:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="entrydate" runat="server" CssClass="infaceText"></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   Modify Date:&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="lastmoddate" runat="server" CssClass="infaceText"></asp:Label>
               </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
