<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webTicklerInfoNew.aspx.cs" Inherits="Virweb2.WebList.webTicklerInfoNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <base target="_self"></base>
    <title>:::New Tickler Detail Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    
    <script type="text/javascript" src="../js/common.js"></script>
    <script language="javascript">
    <!--
       function RefreshMyField(DispField,Code)    
       {
          var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
          var myHdnRefreshCode = document.getElementById(<%= "'" + hdnRefreshCode.ClientID + "'" %>);
          myHdnRefreshData.value = DispField; 
          myHdnRefreshCode.value = Code;       
          window.document.TicklerInfo.submit(); 
          window.focus();   
       }

       function save_submit()
       {          
           if (JTrim(document.TicklerInfo.txt_days.value) != "")
            {
                if (IsInteger(JTrim(document.TicklerInfo.txt_days.value)))
                {                   
                   if (parseInt(JTrim(document.TicklerInfo.txt_days.value),10)>0)
                   {                      
                   }
                   else
                   {
                       alert("Please input Days to finish each task !");
                       document.TicklerInfo.txt_days.focus();
                        return false;
                   }
                }
                else
                {
                  alert("Please input Days to finish each task !");
                  document.TicklerInfo.txt_days.focus();
                   return false;
                }                
            }
            else
            {
               alert("Please input Days to finish each task !");
                  document.TicklerInfo.txt_days.focus();
                   return false;
            }
            
          if (JTrim(document.TicklerInfo.txt_startdate.value)=="")
          {
             alert("Please input Start Date !");
             document.TicklerInfo.txt_startdate.focus();
             return false;
          }
          if (document.TicklerInfo.rb_enddate2.checked)
          {
              if (JTrim(document.TicklerInfo.txt_enddate.value)=="")
              {
                 alert("Please input End Date !");
                 document.TicklerInfo.txt_enddate.focus();
                 return false;
              }
          }
          
          return true;
       }
       
       function Refresh_Data()
       {         
           alert("Save tickler successful!");
           /*
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.RefreshMyData();                 
           }
           else
           {
               window.opener.RefreshMyData();  
           }
           */
           window.close();
       }
       
       function pageunload()
       {         
           var opener=window.dialogArguments; 
           if (isIE())
           {
               opener.SetMyData();                 
           }
           else
           {
               window.opener.SetMyData();  
           }
           // window.close();
       }
    //-->
    </script>
</head>
<body onunload="pageunload()">
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="TicklerInfo" runat="server">
        <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
        <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" />
         <input id="NoConfirm" type="hidden" value="1" />
         <div align="center">
            <table id="TABLE_Label">
                <tr align="center" valign="bottom">
                    <td colspan="2">
                        <asp:Label ID="Title" runat="server" Font-Size="12pt" Font-Bold="True" ForeColor="Navy">New Tickler Detail Information</asp:Label>
                    </td>
                </tr>
                <tr style="height: 30px;" align="left" valign="middle">
                    <td width="70%">
                    </td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Text="Save" Style="width: 60px" CssClass="buttonbluestyle"
                            OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click" ></asp:Button>
                        <input type="button" id="btnPrint" value="Print" style="width: 60px;" class="buttonbluestyle"   runat="server" 
                            onclick="javascript:window.print();" />
                        <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"  runat="server"/>
                    </td>
                </tr>
                <tr style="height: 15px">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
            <table class="table_common" cellspacing="0" cellpadding="0" border="0" width="60%">
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="lbl_Client" runat="server" Text="Client" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td class="td_unline" align="left" width="200px">
                         <asp:DropDownList ID="ddlst_Client" runat="server" CssClass="infaceDrop" DataValueField="c_key"
                            DataTextField="ConsumerName" Height="20" Width="210">
                        </asp:DropDownList>
                    </td>
                    <td width="40%">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="lbl_Entered" runat="server" Text="Entered By:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td class="td_unline" align="left" width="200px">
                        <asp:TextBox ID="txt_Entered" runat="server" CssClass="infaceText" Style="width: 200px" ReadOnly=true></asp:TextBox>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="Label1" runat="server" Text="Tickler Type:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlst_type" runat="server" CssClass="infaceDrop" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Width="150">
                        </asp:DropDownList>
                        <input type="button" id="TickerAdd" value="Add" Class="buttonbluestyle"  runat="server" 
                                onClick="NoConfirmExit();javascript:popupDialogSmall('DefDropDown.aspx?DispField=Ticklers Type&QueryField=Ticklers Type&CheckField=ddlst_type')" />
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="Label2" runat="server" Text="Days to finish each task:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td class="td_unline" align="left" width="210px">
                        <asp:TextBox ID="txt_days" runat="server" Width="160" CssClass="inface"></asp:TextBox><asp:Label
                            ID="Label3" runat="server" Text="(Days)"></asp:Label></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="Label4" runat="server" Text="Recurrence:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlst_recurrence" runat="server" CssClass="infaceDrop" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                            Width="210">
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="Label5" runat="server" Text="Start:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td class="td_unline" align="left" width="210px">
                        <asp:TextBox ID="txt_startdate" runat="server" Width="210" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" ></asp:TextBox></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px" align="right" class="td_label">
                        <asp:Label ID="Label6" runat="server" Text="End:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td colspan="3" align="left">
                        <table class="table_inside" cellspacing="0" cellpadding="0" border="0">
                            <tr class="tr_common">
                                <td>
                                    <asp:RadioButton ID="rb_enddate1" runat="server" Text="No end date" GroupName="enddate"
                                        Width="210px" Checked="true" />
                                </td>
                                <td>
                                    <asp:RadioButton ID="rb_enddate2" runat="server" Text="End by:" GroupName="enddate"
                                        Width="100px" /></td>
                                <td class="td_unline" align="left" width="100px">
                                    <asp:TextBox ID="txt_enddate" runat="server" Width="100" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" > </asp:TextBox>
                                </td>
                                <td width="50%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" height="5">
                    </td>
                </tr>
                <tr class="tr_common">
                    <td style="width: 300px;" align="right" class="td_label">
                        <asp:Label ID="Label7" runat="server" Text="Description:" Font-Bold=true></asp:Label>&nbsp;&nbsp;
                    </td>
                    <td colspan="3" class="td_unline" align="left">
                        <asp:TextBox ID="txt_desc" runat="server" Width="400" CssClass="inface" MaxLength=500> </asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

