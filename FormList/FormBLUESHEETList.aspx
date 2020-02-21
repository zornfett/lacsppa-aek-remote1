<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormBLUESHEETList.aspx.cs"
    Inherits="Virweb2.FormList.FormBLUESHEETList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base target="_self" />
    <title>:::LANTERMAN ELIGIBILITY REVIEW LIST:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
        function RefreshMyData()    
        {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          myHdnRefreshData.value = '1';        
          window.document.BLUESHEETList.submit(); 
          window.focus();   
        }

        function print_click()
        {
          PopupMessage(10);
        }

        function back_click() {
                document.location.replace('../WebList/WebForms.aspx');
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
                ERT_MR.style.color = "";
                //ERT_MR.style.cursor="pointer";
                ERT_AR.style.color = "";
                //ERT_AR.style.cursor = "pointer";

                obj.style.color = "#990066";
                //obj.style.cursor="auto"; 	         
            }
            Ert_MR.style.display = "none";
            Ert_AR.style.display = "none";
            switch (obj.id) {
                case "ERT_MR":
                    Ert_MR.style.display = "";
                    document.BLUESHEETList.now_div_flag.value = "1";
                    break;
                case "ERT_AR":
                    Ert_AR.style.display = "";
                    document.BLUESHEETList.now_div_flag.value = "3";
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
                ERT_MR.style.color = "";
                //ERT_MR.style.cursor="pointer";
                ERT_AR.style.color = "";
                //ERT_AR.style.cursor = "pointer";
            }
            Ert_MR.style.display = "none";
            Ert_AR.style.display = "none";

            switch (obj_id) {
                case "ERT_MR":
                    Ert_MR.style.display = "";
                    ERT_MR.style.color = "#990066";
                    //CDER_DE.style.cursor="auto";
                    document.BLUESHEETList.now_div_flag.value = "1";
                    break;
                case "ERT_AR":
                    Ert_AR.style.display = "";
                    ERT_AR.style.color = "#990066";
                    //CDER_EN.style.cursor="auto";
                    document.BLUESHEETList.now_div_flag.value = "3";
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

            //e.background="../img/lable_unselect.gif";
            e.style.color="#000000";
            e.style.cursor="hand";
            }
            }
            else
            */
            {
                ERT_MR.style.color = "";
                //CDER_DE.style.cursor="pointer";
                ERT_AR.style.color = "";
                //CDER_EN.style.cursor = "pointer";
            }
            Ert_MR.style.display = "none";
            Ert_AR.style.display = "none";

            switch (flag) {
                case 1:
                    Ert_MR.style.display = "";
                    ERT_MR.style.color = "#990066";
                    //CDER_DE.style.cursor="auto";
                    document.BLUESHEETList.now_div_flag.value = "1";
                    break;
                case 3:
                    Ert_AR.style.display = "";
                    ERT_AR.style.color = "#990066";
                    //CDER_EN.style.cursor="auto";
                    document.BLUESHEETList.now_div_flag.value = "3";
                    break;
            }
        }  
    //-->
    </script>
</head>
<body onload="onloadsizechg(110);" onresize="onloadsizechg(110);">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="BLUESHEETList" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="permission_flag" id="permission_flag" value="0" runat="server" />
    <div algin="center" style="width: 100%;">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="image" id="btnAdd" runat="server" alt="New" style="width: 25px; height: 25px"
                        visible="false" src="../img/add.ico" title="New" />
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;
                        height: 25px" src="../img/print.ico" title="Print" visible="false" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Client:</asp:Label>
                </td>
                <td align="left" width="15%">
                    <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;
                        height: 25px" src="../img/supportdesk.ico" title="Support" onclick="javascript:window.top.outsidelinks(1);return false;" />
                    &nbsp;
                    <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px; height: 25px"
                        src="../img/help.ico" title="Help" onclick="javascript:window.top.outsidelinks(2);return false;" />
                    &nbsp;
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px; height: 25px" 
                        src="../img/logout.jpg" title="Logout" onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 2px">
                <td colspan="3" style="background-color: #137AC5">
                </td>
            </tr>
            <tr style="height: 8px">
                <td colspan="3">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr class="tab_bar">
                <td colspan=2>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="ERT_MR" style="color: #990066;" class="tab_sel" onclick="doseltd(this);"
                                width="200">
                                <b><u>My Reviews</u></b>
                            </td>
                            <td id="ERT_AR" class="tab_sel" onclick="doseltd(this);" width="200">
                                <b><u>All Review</u></b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5px">
                <td colspan=2>
                </td>
            </tr>
            <tr style="height: 30px;" valign="middle">
                <td align="left" width="300px">
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CompItems" runat="server" Text="Include Completed Items"
                             OnCheckedChanged="compitems_CheckedChanged" Checked="false"  AutoPostBack="true"/></b>
                </td>
                <td align="left" width="600px">
			           <asp:label id="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">LANTERMAN ELIGIBILITY REVIEW LIST</asp:label>
			    </td>
            </tr>
            <tr style="height: 5px">
                <td colspan=2>
                </td>
            </tr>
        </table>
    </div>
    <div id="maindiv" align="center" style="position: relative; width: 100%; overflow: auto;
        height: 450px">
        <div id="Ert_MR" align="center" style="position: relative; width: 100%; height: 100%;
            overflow:auto">                
            <asp:datagrid ID="dg_FormMR" runat="server" AllowPaging="false" CssClass="grd_body"
                Visible="True" AutoGenerateColumns="False" AllowSorting="true"
                onitemdatabound="dg_FormMR_ItemDataBound" OnSortCommand="dg_FormMR_SortCommand"
                ondeletecommand="dg_FormMR_DeleteCommand" OnItemCommand="dg_FormMR_ItemCommand">
                <HeaderStyle CssClass="grd_head"></HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false">                                    
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="c_uci" HeaderText="UCI" SortExpression="c_uci"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ConsumerName" HeaderText="Consumer Name" SortExpression="ConsumerName">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" SortExpression="c_dob">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="groupname" HeaderText="Area" SortExpression="groupname">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="type" HeaderText="Category" SortExpression="type">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Leader" HeaderText="SC" SortExpression="Leader">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="reviewgroup" HeaderText="HRG Group" Visible="false" SortExpression="reviewgroup">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Duedate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="Duedate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="DecisionDate" HeaderText="Decision Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="DecisionDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="LastModBy" HeaderText="Last Mod By" SortExpression="LastModBy">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="LastModDate" HeaderText="Last Mod Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="LastModDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="PrintDate" HeaderText="Print Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="PrintDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="printvisiable" DataField="printvisiable" Visible="false">                                    
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Print">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton Visible="false" ID="imgPrint" CommandName="Print" runat="server" ImageUrl="../img/print.ico" BorderWidth="0" Width="18px" Height="18px"/>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="DELETE">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn HeaderText="speccolor" DataField="speccolor" Visible="false">                                    
                    </asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </div>
        <div id="Ert_AR" align="center" style="position: relative; width: 100%; height: 100%;
            overflow: auto; display: none">
            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 97%">
                <tr class="tr_common">
                    <td  class="td_label" style="width: 150px">
                        <asp:Label ID="Label14" runat="server" Text="Select Group:" Font-Bold="true"></asp:Label>
                    </td>
                    <td style="width: 5px"></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="ddlAr_area" runat="server" Width="140px" DataValueField="groupID" AutoPostBack="True"
                            DataTextField="groupID" OnSelectedIndexChanged="ddlAr_area_OnSelectedIndexChanged" AppendDataBoundItems="true">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td style="width:auto"></td>
                </tr>
            </table>
            <br />
            <div id="Ert_AR_data" align="center" style="position: relative; width: 100%; height: 90%;
              overflow:auto;">
              <asp:DataGrid ID="dg_FormAR" runat="server" AllowPaging="false" CssClass="grd_body"
                Visible="True" AutoGenerateColumns="False" AllowSorting="true"
                ondeletecommand="dg_FormAR_DeleteCommand"  OnItemCommand="dg_FormAR_ItemCommand"
                onitemdatabound="dg_FormAR_ItemDataBound" OnSortCommand="dg_FormAR_SortCommand" >
                <HeaderStyle CssClass="grd_head"></HeaderStyle>
                <ItemStyle CssClass="grd_item"></ItemStyle>
                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                <Columns>
                    <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false">                                    
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="c_uci" HeaderText="UCI" SortExpression="c_uci"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ConsumerName" HeaderText="Consumer Name" SortExpression="ConsumerName">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}" SortExpression="c_dob">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="groupname" HeaderText="Area" SortExpression="groupname">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="type" HeaderText="Category" SortExpression="type">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Leader" HeaderText="Specialist" SortExpression="Leader">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="reviewgroup" HeaderText="HRG Group" Visible="false" SortExpression="reviewgroup">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Duedate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="Duedate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="DecisionDate" HeaderText="Decision Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="DecisionDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="LastModBy" HeaderText="Last Mod By" SortExpression="LastModBy">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="LastModDate" HeaderText="Last Mod Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="LastModDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="PrintDate" HeaderText="Print Date" DataFormatString="{0:MM/dd/yyyy}" SortExpression="PrintDate">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundColumn>
                    <asp:BoundColumn HeaderText="printvisiable" DataField="printvisiable" Visible="false">                                    
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Print">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton Visible="false" ID="imgPrint" CommandName="Print" runat="server" ImageUrl="../img/print.ico" BorderWidth="0" Width="18px" Height="18px"/>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Edit">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                BorderWidth="0"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="DELETE">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                        <ItemTemplate>
                            <asp:ImageButton CommandName="Delete" runat="server" ID="imgDel" Width="15px" Height="15px"
                                ImageUrl="../img/delete.gif" BorderWidth="0"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn HeaderText="speccolor" DataField="speccolor" Visible="false">                                    
                    </asp:BoundColumn>
                </Columns>
              </asp:DataGrid>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
