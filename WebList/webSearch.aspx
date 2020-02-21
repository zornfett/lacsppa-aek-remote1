<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webSearch.aspx.cs" Inherits="Virweb2.WebList.webSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>Search Page</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    function new_click()
    {
        PopupMessage(50);
    }

    function doseltd(obj) {
        /*if (isIE())
        {            
        for(var i=0;i<tr_info.childNodes.length;i++)
        {
        var e=tr_info.childNodes[i];		        	   
        e.style.color="#000000";
        e.style.cursor="hand";		        	        
        }
        obj.style.color="#990066";
        obj.style.cursor="auto";
        }
        else */
        {
            CDIV.style.color = "";
            RDIV.style.color = "";
            obj.style.color = "#990066";
            //obj.style.cursor="auto"; 	         
        }
        CDiv.style.display = "none";
        RDiv.style.display = "none";
        switch (obj.id) {
            case "CDIV":
                CDiv.style.display = "";
                document.searchsave.Search_flag.value = "1";
                break;
            case "RDIV":
                RDiv.style.display = "";
                document.searchsave.Search_flag.value = "2";
                break;
        }
    }

    function doseltdbyid(obj_id) {
        /*
        if (isIE())
        {  
        for(var i=0;i<tr_info.childNodes.length;i++)
        {
        var e=tr_info.childNodes[i];

        e.style.color="#000000";
        e.style.cursor="hand";
        }
        }
        else
        */
        {
            CDIV.style.color = "";
            RDIV.style.color = "";
        }
        CDiv.style.display = "none";
        RDiv.style.display = "none";

        switch (obj_id) {
            case "CDIV":
                CDiv.style.display = "";
                CDIV.style.color = "#990066";
                document.searchsave.Search_flag.value = "1";
                break;
            case "RDIV":
                RDiv.style.display = "";
                RDIV.style.color = "#990066";
                document.searchsave.Search_flag.value = "2";
                break;
        }
    }

    function doseltdbyflag(flag) {
        /*
        if (isIE())
        {  
        for(var i=0;i<tr_info.childNodes.length;i++)
        {
        var e=tr_info.childNodes[i];

        e.style.color="#000000";
        e.style.cursor="hand";
        }
        }
        else
        */
        {
            CDIV.style.color = "";
            RDIV.style.color = "";
        }
        CDiv.style.display = "none";
        RDiv.style.display = "none";

        switch (flag) {
            case 1:
                CDiv.style.display = "";
                CDIV.style.color = "#990066";
                document.searchsave.Search_flag.value = "1";
                break;
            case 2:
                RDiv.style.display = "";
                RDIV.style.color = "#990066";
                document.searchsave.Search_flag.value = "2";
                break;
        }
    }

    </script>
</head>
<body onload="onloadsizechg(50);" onresize="onloadsizechg(50);">
    <form id="searchsave" method="post" runat="server" defaultbutton="btnSearch">
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
	   </table>
       <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="CDIV" style="color: #990066;" class="tab_sel" onclick="doseltd(this);"
                                width="150">
                                <b><u>Consumer Search</u></b>
                            </td>
                            <td id="RDIV" class="tab_sel" onclick="doseltd(this);" width="150">
                                <b><u>Vendor Search</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
	</div>	
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;height:450px;  overflow: auto ">
        <div id="CDiv" runat="server">
        <table class="table_maindiv">
        <tr valign="top">
        <td width="20px"></td>
        <td>
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr> 
            <td style="WIDTH: 100px; height:25px" align="left" class="td_label"><b>Saved Searches:</b></td>
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
            <td style="WIDTH: 100px; height:20px" align="left" class="td_label"><b>Search Name:</b></td>
            <td style="width: 220px; height:20px">
                <asp:TextBox ID="Name" runat="server" style="width:210px" />
            </td> 
            <td style="width: 280px; height:20px">
                <asp:Button ID="btnNew" text="New Search" style="width:100px" runat="server" CssClass="buttonbluestyle" OnClientClick="javascript:new_click();" OnClick="btnNew_Click" />
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
            <asp:CheckBox ID="setdefault" runat="server" Text="Set as default search" ></asp:CheckBox>
            </td>
            <td colspan="1"></td>
        </tr>
        </table>
        <br />
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
                    DataValueField="search_field" DataTextField="search_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="operator1" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="value1" runat="server" style="width:200px"></asp:TextBox>
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
                    DataValueField="search_field" DataTextField="search_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
            <asp:DropDownList ID="operator2" style="width:140px" runat="server"
                DataValueField="operator_value" DataTextField="operator_text">
            </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="value2" runat="server" style="width:200px"></asp:TextBox>
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
                    DataValueField="search_field" DataTextField="search_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="operator3" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="value3" runat="server" style="width:200px"></asp:TextBox>
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
                    DataValueField="search_field" DataTextField="search_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="operator4" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="value4" runat="server" style="width:200px"></asp:TextBox>
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
                    DataValueField="search_field" DataTextField="search_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="operator5" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="value5" runat="server" style="width:200px"></asp:TextBox>
            </td>
            <td style="width:80px; height:20px" >
                <asp:DropDownList ID="connector5" style="width:70px" runat="server"
                    DataValueField="connector_value" DataTextField="connector_text">
                </asp:DropDownList>
            </td>
        </tr>
        </table>
        <asp:Button ID="btnSearch" text="Search" style="width:200px" runat="server" CssClass="buttonbluestyle" OnClick="btnSearch_Click" />
        </td>
        </tr>
        </table>
        </div>
        <div id="RDiv" runat="server" style="display: none;">
        <table class="table_maindiv">
        <tr valign="top">
        <td width="20px"></td>
        <td>
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%">
            <tr> 
            <td style="WIDTH: 100px; height:25px" align="left" class="td_label"><b>Saved Searches:</b></td>
            </tr>
            <tr>
            <td style="width: 150px; height:300px">
                <asp:ListBox ID="RSavedSearch" runat="server" style="width:100%; height:280px" 
                OnSelectedIndexChanged="rsavedsearch_SelectedIndexChanged"
			    DataTextField="search_name" AutoPostBack="true">          
                </asp:ListBox>
            </td>
            </tr>
            <tr style="height:20px">
                <td></td>
            </tr>
            <tr>
            <td style="width:150px; height:25px">
                <asp:Button ID="btnRDelete" text="Delete" style="width:80px" runat="server" CssClass="buttonbluestyle" OnClick="btnRDelete_Click" />
            </td>
            </tr>
        </table>
        </td>
        <td width="30px"></td>
        <td>
        <table>
        <tr> 
            <td style="WIDTH: 100px; height:20px" align="left" class="td_label"><b>Search Name:</b></td>
            <td style="width: 220px; height:20px">
                <asp:TextBox ID="RName" runat="server" style="width:210px" />
            </td> 
            <td style="width: 280px; height:20px">
                <asp:Button ID="btnRNew" text="New Search" style="width:100px" runat="server" CssClass="buttonbluestyle" OnClientClick="javascript:new_click();" OnClick="btnRNew_Click" />
                <asp:Button ID="btnRSave" text="Save" style="width:80px" runat="server" CssClass="buttonbluestyle" OnClick="btnRSave_Click" />
                <asp:Button ID="btnRCancel" text="Cancel" style="width:80px" runat="server" CssClass="buttonbluestyle" OnClick="btnRCancel_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height:5px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height:20px" class="td_label">
            <asp:CheckBox ID="rsetdefault" runat="server" Text="Set as default search" ></asp:CheckBox>
            </td>
            <td colspan="1"></td>
        </tr>
        </table>
        <br />
        <table>
        <tr>
            <td style="height:20px" class="td_label"><b>Search Field</b></td>
            <td style="height:20px" class="td_label"><b>Operation</b></td>
            <td style="height:20px" class="td_label"></td>
            <td style="height:20px" class="td_label"><b>Connector</b></td>
        </tr>
        <tr>
            <td style="width:210px; height:20px">
                <asp:DropDownList ID="rcolumn1" style="width:200px" runat="server"
                    DataValueField="tb_entry_name" DataTextField="tb_entry_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="roperator1" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="rvalue1" runat="server" style="width:200px"></asp:TextBox>
            </td>
            <td style="width:80px; height:20px" >
                <asp:DropDownList ID="rconnector1" style="width:70px" runat="server"
                    DataValueField="connector_value" DataTextField="connector_text">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td style="width:210px; height:20px">
                <asp:DropDownList ID="rcolumn2" style="width:200px" runat="server"
                    DataValueField="tb_entry_name" DataTextField="tb_entry_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
            <asp:DropDownList ID="roperator2" style="width:140px" runat="server"
                DataValueField="operator_value" DataTextField="operator_text">
            </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="rvalue2" runat="server" style="width:200px"></asp:TextBox>
            </td>
            <td style="width:80px; height:20px" >
                <asp:DropDownList ID="rconnector2" style="width:70px" runat="server"
                    DataValueField="connector_value" DataTextField="connector_text">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td style="width:210px; height:20px">
                <asp:DropDownList ID="rcolumn3" style="width:200px" runat="server"
                    DataValueField="tb_entry_name" DataTextField="tb_entry_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="roperator3" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="rvalue3" runat="server" style="width:200px"></asp:TextBox>
            </td>
            <td style="width:80px; height:20px" >
                <asp:DropDownList ID="rconnector3" style="width:70px" runat="server"
                    DataValueField="connector_value" DataTextField="connector_text">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td style="width:210px; height:20px">
                <asp:DropDownList ID="rcolumn4" style="width:200px" runat="server"
                    DataValueField="tb_entry_name" DataTextField="tb_entry_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="roperator4" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="rvalue4" runat="server" style="width:200px"></asp:TextBox>
            </td>
            <td style="width:80px; height:20px" >
                <asp:DropDownList ID="rconnector4" style="width:70px" runat="server"
                    DataValueField="connector_value" DataTextField="connector_text">
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td style="width:210px; height:20px">
                <asp:DropDownList ID="rcolumn5" style="width:200px" runat="server"
                    DataValueField="tb_entry_name" DataTextField="tb_entry_text">
                </asp:DropDownList> 
            </td>
            <td style="width:150px; height:20px">    
                <asp:DropDownList ID="roperator5" style="width:140px" runat="server"
                    DataValueField="operator_value" DataTextField="operator_text">
                </asp:DropDownList> 
            </td>
            <td style="width:210px; height:20px">
                <asp:TextBox ID="rvalue5" runat="server" style="width:200px"></asp:TextBox>
            </td>
            <td style="width:80px; height:20px" >
                <asp:DropDownList ID="rconnector5" style="width:70px" runat="server"
                    DataValueField="connector_value" DataTextField="connector_text">
                </asp:DropDownList>
            </td>
        </tr>
        </table>
        <asp:Button ID="btnRSearch" text="Search" style="width:200px" runat="server" CssClass="buttonbluestyle" OnClick="btnRSearch_Click" />
        </td>
        </tr>
        </table>
        </div>
    </div>
    </form>
</body>
</html>
        
        
        