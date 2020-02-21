<%@ Page Language="c#" Inherits="Virweb2.webSupManage" Codebehind="webSupManage.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">
    <title>Management Crystal Reports for Support Team</title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />		
    <script type="text/JavaScript" src="js/common.js"></script>
    <script language="javascript">
    <!--
       function Print_Report()
       {
       
          var CheckBoxList=document.all.cbx_account;                     
          var objCheckBox ;
          var select_account="";
          for(i=0;i<CheckBoxList.rows.length;i++)   
          {   
                objCheckBox   =   document.getElementById("cbx_account_"   +   i); 
                
                if(objCheckBox.checked == true)
                {
                    if (select_account=="")
                    {
                        select_account = CheckBoxList.rows[i].cells[0].childNodes[1].innerText; 
                    }
                    else
                    {
                        select_account = select_account+"|"+CheckBoxList.rows[i].cells[0].childNodes[1].innerText;   
                    }
                }
          }   
          if (select_account=="")
          {
             PopupMessage(90);
             return false;
          }
                    
          var strFromDate=JTrim(document.getElementById("FromDate").value)
          if (strFromDate=="")
          {
             PopupMessage(91);
             document.getElementById("FromDate").focus();
             return false;
          }    
          var strToDate=JTrim(document.getElementById("ToDate").value)
          if (strToDate=="")
          {
             PopupMessage(92);
             document.getElementById("ToDate").focus();
             return false;
          }     
          
       
          var rbltable = document.getElementById("rbt_rpttype");
          var rbs= rbltable.getElementsByTagName("INPUT");
          for(var i = 0;i<rbs.length;i++)
           { 
              if(rbs[i].checked)
              {                 
                var strRptType=rbs[i].value;
             }
           }
          winhref("./weblist/PrintWebSupManageRpt.aspx?accounts=" + select_account + "&fromdate=" + strFromDate + "&todate=" + strToDate + "&rpttype=" + strRptType ,"PrintWebSupManageRpt");
      }

      function MenuControl() {

          var CheckBoxList = document.all.cbx_account;
          var objCheckBox;
          var select_account = "";
          for (i = 0; i < CheckBoxList.rows.length; i++) 
          {
              objCheckBox = document.getElementById("cbx_account_" + i);

              if (objCheckBox.checked == true) 
              {
                  select_account = CheckBoxList.rows[i].cells[0].childNodes[1].innerText;
                  break;
              }
          }
          if (select_account == "") {
              PopupMessage(90);
              return false;
          }

          winhrefmiddle("webMenuControl.aspx?account=" + select_account, "webMenuControl");
      }

    //--
    </script>  

</head>
<body>
    <script type="text/JavaScript" src="js/calendar.js"></script>
    <form id="form1" runat="server">
         
         <div align="center" style="width: 100%; height: 55px">
              <table border="0" cellpadding="0" style="border-collapse: collapse" width="60%">
                  <tr valign="top" style="height: 15px"> 
                      <td></td>
                  </tr>
                  <tr valign="top" style="height: 20px">
                       <td align="center">
                           <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">Management Crystal Reports for Support Team</asp:Label>
                        </td>
                   </tr>                   
                   <tr valign="top" >
                        <td  style="background-color:black;height:2px;"></td>
                   </tr>
                  <tr valign="top" style="height: 15px"> 
                      <td></td>
                  </tr>
               </table> 
         </div>
         <div align="center" style="width: 100%;" >
               <table border="0" cellpadding="0" style="border-collapse: collapse" width="60%"  >
                    <tr align="left"  valign="top">
                        <td valign="top">
                             <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                                 <tr style="height: 30px">
                                     <td  valign="top" style="width:30%">Please select account(s):</td>
                                     <td  align="left"> <asp:CheckBoxList ID="cbx_account" runat="server" >                                            
                                                        </asp:CheckBoxList> 
                                     </td>                                      
                                 </tr>
                               
                             </table>
                        </td>
                    </tr>
                    <tr valign="top" style="height: 5px"> 
                      <td></td>
                    </tr>
                    <tr valign="top" >
                        <td  style="background-color:black;height:2px;"></td>
                    </tr>
                    <tr valign="top" style="height: 5px"> 
                      <td></td>
                    </tr>
                    <tr align="left" style="height: 30px">
                        <td><b>(a).&nbsp;&nbsp;&nbsp;</b><input type="button" name="btnMenu" id="btnMenu" value="Menu Control" class="buttonbluestyle" style="width:150px;"   runat="server"   
                            onclick="javascript:MenuControl();" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>                        
                    </tr>
                    <tr valign="top" style="height: 5px"> 
                      <td></td>
                    </tr>
                    <tr valign="top" >
                        <td  style="background-color:black;height:2px;"></td>
                    </tr>  
                    <tr valign="top" style="height: 5px"> 
                      <td></td>
                    </tr>
                    <tr valign="top" align="left">
                        <td >
                             <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                                 <tr style="height: 30px" >
                                     <td width="120px">Time Period:</td>
                                     <td width="100px">From:</td>
                                     <td width="150px">
                                        <asp:TextBox ID="FromDate" runat="server"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" width="140px" ></asp:TextBox>
                                     </td>
                                     <td width="100px">To:</td>
                                     <td width="150px">
                                        <asp:TextBox ID="ToDate" runat="server"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" width="140px"></asp:TextBox>
                                     </td>
                                     <td></td>
                                 </tr>
                             </table>    
                        </td>
                    </tr>
                    <tr align="left" style="height: 30px">
                        <td>Please select a report:</td>                        
                    </tr>                  
                    <tr align="left" style="height: 30px">
                        <td>
                            <asp:RadioButtonList ID="rbt_rpttype" runat="server" Width="320px">
                                <asp:ListItem Selected="True" Value="1">User Login Time</asp:ListItem>
                                <asp:ListItem Value="2">ID Notes Summary by User</asp:ListItem>
                                <asp:ListItem Value="3">ID Notes Summary by Consmuer</asp:ListItem>
                                <asp:ListItem Value="4">Forms Summary</asp:ListItem>
                                <asp:ListItem Value="5">User Average Login Time</asp:ListItem>
                                <asp:ListItem Value="6">Customer's Summary</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                     <tr style="height:20px">
                        <td></td>
                     </tr>
                    <tr valign="top" >
                        <td  style="background-color:black;height:2px;"></td>
                   </tr>
                   <tr style="height: 30px" align="center">
                       <td><input type="button" name="btnSearch" id="btnSearch" value="Search" class="buttonbluestyle" style="width:60px;"   runat="server"   onclick="javascript:Print_Report();" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type="reset" name="btnReset" id="btnReset" value="Reset"  Style="width: 60px"  class="buttonbluestyle" />
                       </td>
                   </tr>
               </table>
         </div>
    </form>
</body>
</html>
