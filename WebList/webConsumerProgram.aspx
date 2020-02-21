<%@ Page Language="C#" Inherits="Virweb2.WebList.webConsumerProgram" CodeFile="webConsumerProgram.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <base TARGET="_self" /> 
    <title>Consumer Program</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>           
    <script type="text/JavaScript"> 
    
    function Refresh_Data(flag)
    {         
        alert("Update successful!");
        var opener=window.dialogArguments; 
        if (isIE())
        {
            opener.RefreshProgData();                 
        }
        else
        {
            window.opener.RefreshProgData();  
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
        var strdate1=JTrim(document.getElementById("enrollmentdate").value);
        var strdate2=JTrim(document.getElementById("dropdate").value);
        
        if ((strdate1 != "") && (strdate2 != ""))
        { 
           var date1 = new Date(strdate1);
           var date2 = new Date(strdate2);
           if (date2<date1)
           {
              alert("Drop date can not be earier than Enrollment date");
              return false;
           }
        }
        return true;
    }
           
    </script> 
</head>
<body  id="body"  runat="server" >
    <script type="text/JavaScript" src="../js/calendar.js"></script>  
    <form id="ConsumerCo" runat="server">
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />    
    <input id="NoConfirm" type="hidden" value="0" />
        <div align="left" style="WIDTH:100%">
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr style="height: 25px;" align="center" valign="bottom">
	        <td colspan="2">
	          <asp:label id="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">PROGRAM INFORMATION</asp:label> 
	        </td>
	      </tr>
	      <tr style="height: 30px;" align="left" valign="middle">
	        <td>
			  <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Program For</asp:label>
			</td>
			<td>
		  	  <asp:button id="btnEdit" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnEdit_Click"></asp:button>
			  <asp:button id="btnAdd" Runat="server" Text="Save" Visible="False" style="width:60px" CssClass="buttonbluestyle" onclientclick="return save_click();" onclick="btnAdd_Click"></asp:button>
		    </td>
		  </tr>				
		  <tr style="height:15px">
		    <td colspan=2>
		      <hr />
		    </td>
		  </tr>
		</table>
		<table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
	      <tr class="tr_common">
	        <td style="width: 210px" align="right" width="210" bgcolor="#9fb0f4" height="20">
               <b>Enrollment Date</b></td>
            <td width="10" height="20"></td>
            <td class="td_unline" width="120">
               <asp:TextBox ID="enrollmentdate" runat="server" CssClass="inface" 
                     onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
            </td>
            <td style="width:5px"></td>
            <td style="width:150px" align="right" bgcolor="#9fb0f4"><b>Frequency:</b></td>
            <td style="width:5px"></td>
            <td class="td_unline" style="width:295px">
               <asp:DropDownList ID="progfreq" runat="server" CssClass="inface" Width="150px"> 
                  <asp:ListItem Value="0"></asp:ListItem>  
                  <asp:ListItem Value="9">Full Time</asp:ListItem>                                  
                  <asp:ListItem Value="1">1 per-week</asp:ListItem>
                  <asp:ListItem Value="2">2 per-week</asp:ListItem>
                  <asp:ListItem Value="3">3 per-week</asp:ListItem>
                  <asp:ListItem Value="4">4 per-week</asp:ListItem>
                  <asp:ListItem Value="5">5 per-week</asp:ListItem>
                  <asp:ListItem Value="6">1 per-month</asp:ListItem>
                  <asp:ListItem Value="7">2 per-month</asp:ListItem>
                  <asp:ListItem Value="8">3 per-month</asp:ListItem>
               </asp:DropDownList> 
            </td>  
		  </tr>
		  <tr>
		    <td colspan="7" height="5">
		    </td>
		  </tr>		
		  <tr class="tr_common">
	        <td style="width: 210px" align="right" width="210" bgcolor="#9fb0f4" height="20">
               <b>Terminated Date</b></td>
            <td width="10" height="20"></td>
            <td class="td_unline" width="120px">
               <asp:TextBox ID="dropdate" runat="server" CssClass="inface" 
                     onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
            </td>
            <td style="width:5px"></td>
            <td style="width:150px" align="right" bgcolor="#9fb0f4"><b>Reason For Leaving:</b></td>
            <td style="width:5px"></td>
            <td  style="width:295px">
               <asp:DropDownList ID="LeavingReason" runat="server" CssClass="inface" Width="290px" OnClick="DataChanged()">  
                  <asp:ListItem Value="None">Unknown</asp:ListItem>                                   
                  <asp:ListItem Value="Deceased">Deceased</asp:ListItem>
                  <asp:ListItem Value="Dissatisfaction with services">Dissatisfaction with services</asp:ListItem>
                  <asp:ListItem Value="Family choice">Family choice</asp:ListItem>
                  <asp:ListItem Value="Health/behavioral changes">Health/behavioral changes</asp:ListItem>
                  <asp:ListItem Value="Met goals">Met goals</asp:ListItem>
                  <asp:ListItem Value="Moved out of area">Moved out of area</asp:ListItem>
                  <asp:ListItem Value="No longer eligible">No longer eligible</asp:ListItem>                                          
               </asp:DropDownList>                                    
            </td> 
		  </tr>	
		  <tr>
		    <td colspan="7" height="5">
		    </td>
		  </tr>
	    </table>	
	    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
		  <tr class="tr_common">
	        <td style="width: 210px" align="right" width="210" bgcolor="#9fb0f4" height="20">
               <b>Select Group:</b></td>
            <td width="10" height="20"></td>
            <td>
               <asp:DropDownList ID="program1" runat="server" DataValueField="ProgID" DataTextField="ProgSelect" Height="20" Width="450px"
                OnSelectedIndexChanged="program1_SelectedIndexChanged" AutoPostBack="true">
               </asp:DropDownList>
            </td>
		  </tr>	
		  <tr class="tr_common">
	        <td style="width: 210px" align="right" width="210" bgcolor="#9fb0f4" height="20">
               <b>       Select Program:</b></td>
            <td width="10" height="20"></td>
            <td>
               <asp:DropDownList ID="program2" runat="server" DataValueField="ProgID" DataTextField="ProgSelect" Height="20" Width="450px"
               OnSelectedIndexChanged="program2_SelectedIndexChanged" AutoPostBack="true">
               </asp:DropDownList>
            </td>
		  </tr>	
		  <tr class="tr_common">
	        <td style="width: 210px" align="right" width="210" bgcolor="#9fb0f4" height="20">
               <b>       Select Sub-Program:</b></td>
            <td width="10" height="20"></td>
            <td>
               <asp:DropDownList ID="program3" runat="server" DataValueField="ProgID" DataTextField="ProgSelect" Height="20" Width="450px"
               OnSelectedIndexChanged="program3_SelectedIndexChanged" AutoPostBack="true">
               </asp:DropDownList>
            </td>
		  </tr>	
		  <tr class="tr_common">
	        <td style="width: 210px" align="right" width="210" bgcolor="#9fb0f4" height="20">
               <b>       Select Class:</b></td>
            <td width="10" height="20"></td>
            <td>
               <asp:DropDownList ID="program4" runat="server" DataValueField="ProgID" DataTextField="ProgSelect" Height="20" Width="450px">
               </asp:DropDownList>
            </td>
		  </tr>	
		  <tr>
		  <td colspan="3"></td>
		  </tr>
		  <tr class="tr_common">
	        <td style="width: 210px" align="right" valign="top" width="210" bgcolor="#9fb0f4" height="60">
               <b>Comments:</b></td>
            <td width="10" height="20"></td>
            <td>
               <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                            runat="server" width="500" Height="60"></asp:TextBox>
            </td>
		  </tr>			  
		</table>
		</div>
    </form>
</body>
</html>
