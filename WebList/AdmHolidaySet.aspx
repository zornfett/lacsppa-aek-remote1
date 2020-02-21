
<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AdmHolidaySet.aspx.cs" Inherits="Virweb2.WebList.AdmHolidaySet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head id="Head1" runat="server">
    <base target="_self" />
    <title>:::Holiday Setting Info:::...</title>

    <script type="text/javascript" src="../js/common.js"></script>

    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
     <script language="javascript">
    <!--
        function submit_click()
       {
           var str=JTrim(document.getElementById("HolidayDate").value)
           if (str=="")
           {
              alert("Please select a day!");
              document.getElementById("HolidayDate").focus();
              return false;
           }            
           
           var str=JTrim(document.getElementById("Desc").value)
           if (str=="")
           {
              alert("Please input descriptions!");
              document.getElementById("Desc").focus();
              return false;
           }
          return true;
       }
    
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
    //-->
    </script>
</head>
<body  runat="server" id="body">
     <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="form1" runat="server">
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="HolidayID" id="HolidayID" value="" runat="server" />
        <div align="left" style="width: 100%">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr style="height: 25px;" align="center" valign="bottom">
                    <td colspan="2">
                        <asp:Label ID="Title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">Holiday Setting</asp:Label>
                    </td>
                </tr>
                <tr style="height: 30px;" align="right" valign="middle">
                    <td style="width:80%"></td>
                     <td align="left" valign="middle"  style="width:330px">
                            <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                                CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click" ></asp:Button>
                            <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                                CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnAdd_Click"  ></asp:Button>                          
                        </td>
                </tr>
                <tr style="height: 15px">
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
        <div  style="position:relative;WIDTH:90%; height:300px; overflow: auto " >
             <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
                  <tr style="height:10px">
			          <td colspan="4"></td>
			       </tr>
			      <tr class="tr_common"> 
			            <td style="width:40px"></td>
                        <td>Please select a day:</td>                        
                        <td class="td_unline"  style="width:120px"><asp:TextBox ID="HolidayDate"  onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"  runat="server" CssClass="inface"></asp:TextBox></td>			        
                        <td style="width:5%"></td>
			       </tr>
			       <tr style="height:20px">
			          <td colspan="4"></td>
			       </tr>
			        <tr class="tr_common"> 
			            <td style="width:40px"></td>
                        <td>Descriptions:</td>
                        <td class="td_unline"  style="width:400px"><asp:TextBox ID="Desc" runat="server" CssClass="inface"  MaxLength="60"></asp:TextBox></td>			        
                        <td style="width:5%"></td>
			       </tr>
			 </table>   
        </div>
    </form>
</body>
</html>
