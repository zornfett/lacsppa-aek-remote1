<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="webStatusMessage.aspx.cs" Inherits="Virweb2.WebList.webStatusMessage" validateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head runat="server">    
     <base TARGET="_self" /> 
    <title>Status Message</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>    
    <script type="text/javascript">
    <!--
       function save_click()
       {
          var strannouncedate="";
          strannouncedate=document.getElementById("AnnounceDate").value;
          if (strannouncedate=="")
          {
             alert("Please input Announced Date!");
             document.getElementById("AnnounceDate").focus();
             return false;
          }
          var strdescription="";
          strdescription=document.getElementById("Description").value;
          if (strdescription=="")
          {
             alert("Please input Description!");
             document.getElementById("Description").focus();
             return false;
          }
          var strmessage="";
          strmessage=IframeID.document.body.innerHTML;
          strmessage = strmessage.replace(/\<p>/gi,"");
          strmessage = strmessage.replace(/\<\/p>/gi,"<br>");         
          document.form1.content.value=strmessage;         
          if (JTrim(strmessage)=="")
          {
             alert("Please input message!");
             return false;
          }
          else
          {
              return true;
          }
       }
       
       function doseltd(messageid)
       {   
           switch(messageid)
           {
              case "1":                 
                 TD_M1.style.color="#990066";
	             // TD_M1.style.cursor="auto";
                 TD_M2.style.color="";
	             // TD_M2.style.cursor="hand";
                 TD_M3.style.color="";
	             //TD_M3.style.cursor="hand";
                 TD_M4.style.color="";
	             //TD_M4.style.cursor="hand";
                 TD_M5.style.color="";
	             //TD_M5.style.cursor="hand";
                 break;
              case "2":                 
                 TD_M2.style.color="#990066";
	             //TD_M2.style.cursor="auto";
                 TD_M1.style.color="";
	             //TD_M1.style.cursor="hand";
                 TD_M3.style.color="";
	             //TD_M3.style.cursor="hand";
                 TD_M4.style.color="";
	             //TD_M4.style.cursor="hand";
                 TD_M5.style.color="";
	             //TD_M5.style.cursor="hand";
                 break;  
              case "3":
                 TD_M3.style.color="#990066";
	             //TD_M3.style.cursor="auto";
                 TD_M2.style.color="";
	             //TD_M2.style.cursor="hand";
                 TD_M1.style.color="";
	             //TD_M1.style.cursor="hand";
                 TD_M4.style.color="";
	             //TD_M4.style.cursor="hand";
                 TD_M5.style.color="";
	             //TD_M5.style.cursor="hand";
                 break;  
             case "4":
                 TD_M4.style.color="#990066";
	             //TD_M4.style.cursor="auto";
                 TD_M2.style.color="";
	             //TD_M2.style.cursor="hand";
                 TD_M3.style.color="";
	             //TD_M3.style.cursor="hand";
                 TD_M1.style.color="";
	             //TD_M1.style.cursor="hand";
                 TD_M5.style.color="";
	             //TD_M5.style.cursor="hand";
                 break;   
              case "5":
                 TD_M5.style.color="#990066";
	             //TD_M5.style.cursor="auto";
                 TD_M2.style.color="";
	             //TD_M2.style.cursor="hand";
                 TD_M3.style.color="";
	             //TD_M3.style.cursor="hand";
                 TD_M4.style.color="";
	             //TD_M4.style.cursor="hand";
                 TD_M1.style.color="";
	             //TD_M1.style.cursor="hand";
                 break;      
           }
           
           document.getElementById("messageid").value = messageid;
           document.getElementById("Description").focus();
       }
    //-->
    </script>
</head>
<body  onload="onloadsizechg(90);" onresize="onloadsizechg(90);"> 
    <script type="text/javascript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">  
         <input name="content" type="hidden" id="content" runat="server" value="" />
         <input type="hidden" id="messageid" name="messageid" runat="server" value="" /> 
         		<div align="left" style="WIDTH:100%; height: auto">
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr valign="middle" style="height:30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" valign="middle" width="60%">        
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">Pos For</asp:Label>
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
                    <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 25px;height:25px"  
                        src="../img/exit button.ico" title="Logout"
                        onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
                    &nbsp;
                </td>
            </tr>
            <tr style="height:2px">
                 <td colspan="3" style="background-color:#137AC5"></td> 
            </tr>
        </table> 
        <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
            <tr class="tab_bar">
                <td>
                    <table id="TABLE_Label">
                        <tr id="tr_info">
                            <td id="TD_M1" style="color: #990066" class="tab_sel" onclick="javascript:doseltd('1');" 
                                    width="120"><b>Message No.1</b>
                            </td>
                            <td id="TD_M2" class="tab_sel" onclick="javascript:doseltd('2');" 
                                    width="120"><b>Message No.2</b>
                            </td>
                            <td id="TD_M3" class="tab_sel" onclick="javascript:doseltd('3');" 
                                    width="120"><b>Message No.3</b>
                            </td>
                            <td id="TD_M4" class="tab_sel" onclick="javascript:doseltd('4');" 
                                    width="120"><b>Message No.4</b>
                            </td>
                            <td id="TD_M5" class="tab_sel" onclick="javascript:doseltd('5');" 
                                    width="120"><b>Message No.5</b>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>              
        </table>
		</div>
        <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
              <tr valign="top">
                  <td>
                       <table class="table_common" cellpadding="0" cellspacing="0" width="100%" border="0" >
                             <tr style="height:20px;">     
                                  <td><b>&nbsp;&nbsp;&nbsp;&nbsp;Announced Date:</b></td>
                                  <td class="td_unline" style="width: 140px;">
                                        <asp:TextBox ID="AnnounceDate" runat="server" CssClass="inface"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);" ></asp:TextBox>
                                  </td>
                                  <td width="25%"></td>
                             </tr>     
                             <tr style="height:20px;">                                  
                                  <td><b>&nbsp;&nbsp;&nbsp;&nbsp;Description:</b></td>
                                  <td class="td_unline" style="width: 300px;">
                                        <asp:TextBox ID="Description" runat="server" CssClass="inface"  MaxLength="80"></asp:TextBox>
                                  </td>
                                  <td width="10%"></td>
                             </tr>                                                    
                             <tr>
                                 <td colspan="3" style="height:5px;"></td>
                             </tr>
                       </table> 
                  </td>
              </tr>     
              <tr valign="top">
                   <td align="left">
                       <table  cellpadding="0" cellspacing="0" width="100%" border="0" >
                          <tr>
                              <td style="width:10px;"></td>
                              <td  style="height:360px;" align="left"><SCRIPT src="../js/post.js"></SCRIPT></td>
                               <td style="width:10px;"></td>
                           </tr>
                           <tr>
                               <td colspan="3" align="center">
                                    <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="true" Style="width: 60px"
                                         CssClass="buttonbluestyle" OnClick="btnEdit_Click">
                                    </asp:Button>
                                    <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="true" Style="width: 60px"
                                        CssClass="buttonbluestyle" OnClick="btnAdd_Click">
                                    </asp:Button>                                         
                               </td>
                          </tr>
                       </table>
                    </td>
               </tr>
           </table>    
           </div>        
    </form>
</body>
</html>
