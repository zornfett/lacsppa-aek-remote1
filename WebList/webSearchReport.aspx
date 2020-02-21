<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webSearchReport.aspx.cs" Inherits="Virweb2.WebList.webSearchReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>Report Generator Setting</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
        function new_click() {
            PopupMessage(50);
        }

    </script>
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="reportsave" method="post" runat="server">
    <input type="hidden" name="Search_flag" id="Search_flag" value="1" runat="server" />
    <div algin="left" style="WIDTH:100%;">
	   <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
	   <tr style="height: 30px;background-color: #EAF4FF" valign="middle" >
	     <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
         </td>  
         <td align="left" width="60%">
	        <asp:label id="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Search Criteria Setting:</asp:label>
	     </td>
         <td align="left" width="15%">
            <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                src="../img/supportdesk.ico" title="Support"
                onclick="javascript:window.top.outsidelinks(1);return false;" />             
            &nbsp;
            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                src="../img/help.ico" title="Help"
                onclick="javascript:window.top.outsidelinks(2);return false;" />             
            &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                src="../img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
            &nbsp;
         </td>
       </tr>
       <tr style="height:2px">
            <td colspan="3" style="background-color:#137AC5"></td> 
	   </tr>
       <tr style="height:8px">
         <td colspan="3"></td> 
	   </tr>
	   </table>
	</div>	
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
    <table class="table_maindiv">
    <tr valign="top">
    <td width="20px"></td>
    <td>
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
      <tr> 
        <td style="WIDTH: 100px; height:25px" align="left" class="td_label"><b>Saved Reports:</b></td>
      </tr>
      <tr>
        <td style="width: 150px; height:300px">
            <asp:ListBox ID="SavedSearch" runat="server" style="width:100%; height:280px" 
                OnSelectedIndexChanged="savedsearch_SelectedIndexChanged"
		        DataTextField="search_name" AutoPostBack="true">          
            </asp:ListBox>
        </td>
      </tr>
      <tr style="height:20px">
        <td></td>
      </tr>
      <tr>
        <td style="width:150px; height:25px">
            <asp:Button ID="btnDelete" text="Delete" style="width:80px" runat="server" CssClass="buttonbluestyle" OnClick="btnDelete_Click" />
        </td>
      </tr>
    </table>
    </td>
    <td width="30px"></td>
    <td>
    <table>
    <tr> 
      <td style="WIDTH: 100px; height:20px" align="left" class="td_label"><b>Report Name:</b></td>
      <td style="width: 220px; height:20px">
          <asp:TextBox ID="Name" runat="server" style="width:210px" />
      </td> 
      <td style="width: 280px; height:20px">
          <asp:Button ID="btnNew" text="New Report" style="width:100px" runat="server" CssClass="buttonbluestyle" OnClientClick="javascript:new_click();" OnClick="btnNew_Click" />
          <asp:Button ID="btnSave" text="Save" style="width:80px" runat="server" CssClass="buttonbluestyle" OnClick="btnSave_Click" />
          <asp:Button ID="btnCancel" text="Cancel" style="width:80px" runat="server" CssClass="buttonbluestyle" OnClick="btnCancel_Click" />
          
      </td>
    </tr>
    <tr>
      <td colspan="3" style="height:5px">
      </td>
    </tr>
    <tr>
      <td colspan="2" style="height:20px" class="td_label">
          <asp:CheckBox ID="setdefault" runat="server" Text="Set as default report" ></asp:CheckBox>&nbsp;&nbsp;&nbsp;
          <asp:CheckBox ID="setall" runat="server" Text="Set for all users" Visible="false" ></asp:CheckBox>
      </td>
      <td colspan="1">    
          <asp:Button ID="btnSearch" text="Search" style="width:200px" runat="server" CssClass="buttonbluestyle" OnClick="btnSearch_Click" />
      </td>
    </tr>
    </table>
    <br /><font color="green"><b>REPORT CRITERIA</b></font>
    <table>
    <tr>
      <td style="height:20px" class="td_label"><b>Search Field</b></td>
      <td style="height:20px" class="td_label"><b>Operation</b></td>
      <td style="height:20px" class="td_label"></td>
      <td style="height:20px" class="td_label"><b>Connector</b></td>
    </tr>
    <tr>
      <td style="width:210px; height:20px">
          <asp:DropDownList ID="column1" style="width:200px" runat="server"
             DataValueField="search_field" DataTextField="search_text" OnSelectedIndexChanged="column1_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList> 
      </td>
      <td style="width:150px; height:20px">    
          <asp:DropDownList ID="operator1" style="width:140px" runat="server"
             DataValueField="operator_value" DataTextField="operator_text">
          </asp:DropDownList> 
      </td>
      <td style="width:210px; height:20px">
          <asp:TextBox ID="value1" runat="server" style="width:200px"></asp:TextBox>
          <asp:DropDownList ID="dropvalue1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                     Height="20" Width="200" visible="false" >
          </asp:DropDownList>
      </td>
      <td style="width:80px; height:20px" >
          <asp:DropDownList ID="connector1" style="width:70px" runat="server"
             DataValueField="connector_value" DataTextField="connector_text">
          </asp:DropDownList>
      </td>
    </tr>
    
    <tr>
      <td style="width:210px; height:20px">
          <asp:DropDownList ID="column2" style="width:200px" runat="server"
             DataValueField="search_field" DataTextField="search_text" OnSelectedIndexChanged="column2_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList> 
      </td>
      <td style="width:150px; height:20px">    
          <asp:DropDownList ID="operator2" style="width:140px" runat="server"
             DataValueField="operator_value" DataTextField="operator_text">
          </asp:DropDownList> 
      </td>
      <td style="width:210px; height:20px">
          <asp:TextBox ID="value2" runat="server" style="width:200px"></asp:TextBox>
          <asp:DropDownList ID="dropvalue2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                     Height="20" Width="200" visible="false" >
          </asp:DropDownList>
      </td>
      <td style="width:80px; height:20px" >
          <asp:DropDownList ID="connector2" style="width:70px" runat="server"
             DataValueField="connector_value" DataTextField="connector_text">
          </asp:DropDownList>
      </td>
    </tr>
    
    <tr>
      <td style="width:210px; height:20px">
          <asp:DropDownList ID="column3" style="width:200px" runat="server"
             DataValueField="search_field" DataTextField="search_text" OnSelectedIndexChanged="column3_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList> 
      </td>
      <td style="width:150px; height:20px">    
          <asp:DropDownList ID="operator3" style="width:140px" runat="server"
             DataValueField="operator_value" DataTextField="operator_text">
          </asp:DropDownList> 
      </td>
      <td style="width:210px; height:20px">
          <asp:TextBox ID="value3" runat="server" style="width:200px"></asp:TextBox>
          <asp:DropDownList ID="dropvalue3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                     Height="20" Width="200" visible="false" >
          </asp:DropDownList>
      </td>
      <td style="width:80px; height:20px" >
          <asp:DropDownList ID="connector3" style="width:70px" runat="server"
             DataValueField="connector_value" DataTextField="connector_text">
          </asp:DropDownList>
      </td>
    </tr>
    
    <tr>
      <td style="width:210px; height:20px">
          <asp:DropDownList ID="column4" style="width:200px" runat="server"
             DataValueField="search_field" DataTextField="search_text" OnSelectedIndexChanged="column4_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList> 
      </td>
      <td style="width:150px; height:20px">    
          <asp:DropDownList ID="operator4" style="width:140px" runat="server"
             DataValueField="operator_value" DataTextField="operator_text">
          </asp:DropDownList> 
      </td>
      <td style="width:210px; height:20px">
          <asp:TextBox ID="value4" runat="server" style="width:200px"></asp:TextBox>
          <asp:DropDownList ID="dropvalue4" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                     Height="20" Width="200" visible="false" >
          </asp:DropDownList>
      </td>
      <td style="width:80px; height:20px" >
          <asp:DropDownList ID="connector4" style="width:70px" runat="server"
             DataValueField="connector_value" DataTextField="connector_text">
          </asp:DropDownList>
      </td>
    </tr>
    
    <tr>
      <td style="width:210px; height:20px">
          <asp:DropDownList ID="column5" style="width:200px" runat="server"
             DataValueField="search_field" DataTextField="search_text" OnSelectedIndexChanged="column5_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList> 
      </td>
      <td style="width:150px; height:20px">    
          <asp:DropDownList ID="operator5" style="width:140px" runat="server"
             DataValueField="operator_value" DataTextField="operator_text">
          </asp:DropDownList> 
      </td>
      <td style="width:210px; height:20px">
          <asp:TextBox ID="value5" runat="server" style="width:200px"></asp:TextBox>
          <asp:DropDownList ID="dropvalue5" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                     Height="20" Width="200" visible="false" >
          </asp:DropDownList>
      </td>
      <td style="width:80px; height:20px" >
          <asp:DropDownList ID="connector5" style="width:70px" runat="server"
             DataValueField="connector_value" DataTextField="connector_text">
          </asp:DropDownList>
      </td>
    </tr>
    </table>
    <br /><font color="green"><b>DISPLAY FIELDS</b></font>
    <table>
        <tr>
          <td width=220px class="td_label">
              <b>Client Fields</b>
          </td> 
          <td width=10px></td>
          <td width=220px class="td_label">
              <b>CaseNote Fields</b>
          </td>
          <td width=10px></td>
          <td width=220px class="td_label">
              <b>Program Fields</b>
          </td>
        </tr>
        <tr>
          <td width=220px valign=top align="left">
            <asp:CheckBoxList ID="clientField" runat="server">
            </asp:CheckBoxList>
          </td> 
          <td width=10px></td>
          <td width=220px valign=top align="left">
            <asp:CheckBoxList ID="idnotesField" runat="server">
            </asp:CheckBoxList>
          </td>
          <td width=10px></td>
          <td width=220px valign=top align="left">
            <asp:CheckBoxList ID="progField" runat="server">
            </asp:CheckBoxList>
          </td>
        </tr>
    </table>
    </td>
    </tr>
    </table>
    </form>
</body>
</html>

