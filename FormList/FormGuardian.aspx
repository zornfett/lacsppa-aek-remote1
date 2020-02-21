<%@ Page Language="C#" AutoEventWireup="true" Inherits="Virweb2.FormList.FormGuardian" Codebehind="FormGuardian.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Colorado Guardian's Report:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet">     
    <script type="text/JavaScript" src="../js/common.js"></script>  
    <script type="text/javascript">
    <!--
      function change_type(flag)
      {         
          if (flag=="1")
          {             
             if (document.getElementById("ctType1").checked)
             {              
                document.getElementById("ctType1").checked=true;
                document.getElementById("ctType2").checked=false;
             }
             else
             {             
               document.getElementById("ctType1").checked=false;
                document.getElementById("ctType2").checked=true
             }
          }
          if (flag=="2")
          {
             if (document.getElementById("ctType2").checked)
             {
                document.getElementById("ctType2").checked=true;
                document.getElementById("ctType1").checked=false;
             }
             else
             {
               document.getElementById("ctType2").checked=false;
                document.getElementById("ctType1").checked=true
             }
          }
          
          DataChanged();
      }
	  
	  function FunctiontoCallSaveData()
      {
          document.getElementById("<%=hdtoSaveData.ClientID %>").value="PageClosed";
          document.Guardian.submit();
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

      function save_click() {
          return true;
      }
    //-->
    </script>
    
</head>
<body  runat="server" id="body">
    <form id="Guardian" runat="server">
        <input type="submit" value="test" style="display:none;"> 
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="saveflag" id="saveflag" runat="server"  value=""/>
        <input type="hidden" name="CreateDate" id="CreateDate" runat="server"  value=""/>
        <div align="left" style="width: 100%; height: 70px">
            <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%"
                height="100%">
                <tr valign="top" style="height: 30px">
                    <td colspan="2" align="center">
                        <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Blue">
                         Colorado Court Report for GSF</asp:Label>
                    </td>
                </tr>
                <tr valign="middle" style="height: 40px">
                    <td align="left" valign="top" width="470px">
                        <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CONSUMER INFO</asp:Label>
                    </td>
                    <td align="left" valign="middle" width="330px">                        
                        <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                            CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnAdd_Click"></asp:Button>
                        <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle"></asp:Button>
                        <input type="button" id="btnHelp" value="Help" style="width: 60px;"  class="buttonbluestyle" onclick="winhref('./HelpFile/.html','help')" runat="server" />
                        <asp:Label ID="lbl_err" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
            </table>
            <hr />
        </div>
        <br />
        <div align="center" style="position:relative;width: 100%; height: 630px; overflow: auto">
            <table class="table_common" cellspacing="0" cellpadding="0" align="center" border="0"
                style="width: 98%;">
                <tr>
                    <td width="100%" align="center">
                        <table border="1" cellspacing="0" cellpadding="0" class="table_common" width="94%">
                            <tr>
                                <td style="width: 65%">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2">
                                                <asp:CheckBox ID="ctType1" runat="server" Text="District Court"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox
                                                    ID="ctType2" runat="server" Text="Denver Probate Court" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <table width="100%">
                                                    <tr>
                                                        <td style="width: 10px">
                                                            &nbsp;</td>
                                                        <td class="td_unline" align="left" width="80%">
                                                            <asp:TextBox ID="ctCounty" runat="server" CssClass="inface" MaxLength=15></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            County,</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2">
                                                Colorado</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2">
                                                Court Address:</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td class="td_unline" align="left" colspan="2">
                                                <asp:TextBox ID="ctAddr" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2">
                                                <b>IN THE MATTER OF:</b></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2" class="td_unline" align="left">
                                                <asp:TextBox ID="matter" runat="server" CssClass="inface" maxlength= 50></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                <b>Ward:</b></td>
                                            <td width="80%"><asp:TextBox ID="WardName1" runat="server" CssClass="inface" ReadOnly=true></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 35%">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr style="height: 120px">
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <b>COURT USE ONLY</b></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="2" style="height: 1px;" bgcolor="#5370C4">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2">
                                                Attorney or Party Without Attorney:</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                Name:</td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyName" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                Address:</td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyaddr" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                            </td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyaddr2" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                Phone Number:</td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                E-mail:</td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyEmail" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                FAX Number:</td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyFax" runat="server" CssClass="inface" MaxLength=15></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                Atty. Reg. #:</td>
                                            <td class="td_unline" align="left" width="80%">
                                                <asp:TextBox ID="attyReg" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </td>
                                <td valign="top">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td colspan="2">
                                                Case Number:</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px;">
                                            </td>
                                            <td>
                                            </td>
                                            <td class="td_unline" align="left">
                                                <asp:TextBox ID="casenum" runat="server" CssClass="inface"></asp:TextBox></td>
                                        </tr>
                                        <tr style="height: 40px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                Division:</td>
                                            <td class="td_unline" align="left" width="70%">
                                                <asp:TextBox ID="div" runat="server" CssClass="inface" MaxLength=10></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 10px">
                                                &nbsp;</td>
                                            <td>
                                                Courtroom:</td>
                                            <td class="td_unline" align="left" width="70%">
                                                <asp:TextBox ID="ctRoom" runat="server" CssClass="inface" MaxLength=10></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td colspan="2" style="height: 1px;" bgcolor="#5370C4">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <b>GUARDIAN'S REPORT</b></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 20px;">
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="100%" align="center">
                        <table border="0" cellspacing="0" cellpadding="0" class="table_common" width="94%">
                            <tr>
                                <td colspan="4">
                                    <b>GUARDIAN'S INFORMATION:</b></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Guardian's Name:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud1Name" runat="server" CssClass="inface"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Home Address:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud1HAddr" runat="server" CssClass="inface" MaxLength=100></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Home Phone:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud1HPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Work Address:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud1WAddr" runat="server" CssClass="inface" MaxLength=100></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Work Phone:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud1WPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                            </tr>
                            <tr style="height: 20px;">
                                <td colspan="4">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Guardian's Name:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud2Name" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Home Address:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud2HAddr" runat="server" CssClass="inface" MaxLength=100></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Home Phone:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud2HPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Work Address:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud2WAddr" runat="server" CssClass="inface" MaxLength=100></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Work Phone:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 80%">
                                    <asp:TextBox ID="gud2WPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 40px;">
                    <td>
                    </td>
                </tr>
                <tr>
                    <td width="100%" align="center">
                        <table border="0" cellspacing="0" cellpadding="0" class="table_common" width="94%">                            
                            <tr>
                                <td colspan="4">
                                    <b>WARD'S INFORMATION:</b></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Ward's Name:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" style="width: 75%">
                                    <asp:TextBox ID="wardName" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Name of Living:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" >
                                    <asp:TextBox ID="wardLiving" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Center or Nursing Home:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" >
                                    <asp:TextBox ID="wardCenter" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Current Address:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left" >
                                    <asp:TextBox ID="wardAddr" runat="server" CssClass="inface" MaxLength =100></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 5%">
                                </td>
                                <td>
                                    Phone:</td>
                                <td style="width: 5px;">
                                </td>
                                <td class="td_unline" align="left">
                                    <asp:TextBox ID="wardPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="height: 40px;">
                    <td>
                    </td>
                </tr>
                <tr>
                     <td width="100%" align="center">
                        <table border="0" cellspacing="0" cellpadding="0" class="table_common" width="94%"> 
                            <tr>
                                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;This format is intended as a guide to guardians and their lawyers.  The elements of a care plan are highly variable, and the direction of a care plan is dynamic, since the needs of your ward may change significantly over time. Nevertheless, focusing on answers to these guiding questions will assist the parties and the Court.  The initial guardian's report should be filed within sixty (60) days after the guardian is appointed.  Thereafter, the guardian's report should be filed annually unless otherwise ordered.
                                </td>
                            </tr>
                            <tr style="height:10px"><td colspan="3"></td></tr>
                            <tr>
                                <td><b>I.</b></td>
                                <td style="height:10px;"></td>
                                <td><b>Basic condition of the ward</b></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>A.</td>
                                <td>What is your ward's physical and medical condition?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1a" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>B.</td>
                                <td>Describe the nature and extent of your ward's mental incapacity.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1b" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>C.</td>
                                <td>What are the current prescribed medications? What is each medication for? </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1c" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">D.</td>
                                <td>Have there been any recent hospitalizations or trips to the emergency room? If so, please describe for what and the dates of each event.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1d" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                             <tr>
                                <td></td>
                                <td>E.</td>
                                <td>Medical Care.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>
                                   <table cellSpacing="0" cellPadding="0" align="left" border="0" width="100%">
                                       <tr>
                                           <td></td>
                                           <td style="width:10px;"></td>
                                           <td align="center">Doctor's Name</td>
                                           <td style="width:10px;"></td>
                                           <td align="center">Phone No.</td>
                                           <td style="width:10px;"></td>
                                           <td align="center">Dates Seen(MM/DD/YYYY)</td>                                           
                                       </tr>
                                       <tr>
                                           <td>Medical Doctor</td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left" style="width:25%"><asp:TextBox ID="drName" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left" style="width:25%"><asp:TextBox ID="drPhone" runat="server" CssClass="inface" MaxLength =20></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left" style="width:25%"><asp:TextBox ID="drSeenDT" runat="server" CssClass="inface"></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                           <td>Dentist</td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="dtNamed" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="dtPhone" runat="server" CssClass="inface" MaxLength =20></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="dtSeenDT" runat="server" CssClass="inface"  ></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                           <td>Eye Doctor</td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="eyedrName" runat="server" CssClass="inface" MaxLength =50></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="eyedrPhone" runat="server" CssClass="inface" MaxLength =20></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="eyedrSeenDT" runat="server" CssClass="inface"  ></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                           <td>Podiatrist</td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="pdName" runat="server" CssClass="inface" MaxLength =50></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="pdPhone" runat="server" CssClass="inface" MaxLength =20></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="pdSeenDT" runat="server" CssClass="inface"  ></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                           <td>Ear Doctor</td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="eardrName" runat="server" CssClass="inface" MaxLength =50></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="eardrPhone" runat="server" CssClass="inface" MaxLength =20></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="eardrSeenDT" runat="server" CssClass="inface"  ></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                           <td>Psychologist/Therapist</td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="pyName" runat="server" CssClass="inface" MaxLength =50></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="pyPhone" runat="server" CssClass="inface" MaxLength=20></asp:TextBox></td>
                                           <td style="width:10px;"></td>
                                           <td class="td_unline" align="left"><asp:TextBox ID="pySeenDT" runat="server" CssClass="inface" ></asp:TextBox></td>
                                       </tr>
                                   </table>
                                </td>
                            </tr>
                            <tr style="height:10px;">
                               <td colspan="3"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">F.</td>
                                <td>What is the name, address and telephone number of the professional who did the last assessment of mental incapacity?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1f" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>G.</td>
                                <td>Is there need for further assessment?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1g" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>H.</td>
                                <td>Is there need for other professional evaluations? If so, describe.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q1h" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr style="height:40px"><td colspan="3"></td></tr>
                            <tr>
                                <td><b>II.</b></td>
                                <td></td>
                                <td><b>Medical Decision-Making</b></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>A.</td>
                                <td>Who has authority to make medical decisions on behalf of your ward?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q2a" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">B.</td>
                                <td>What is your ward's "COR" or "code" status?(For example, Full COR, No COR or Do Not Resuscitate.)</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q2b" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                             <tr>
                                <td></td>
                                <td valign="top">C.</td>
                                <td>What are your ward's current advance medical directives, if any? Describe any health care power of attorney, living will, cardiopulmonary ("CPR") directives, or other advance medical directives, and attach copies.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q2c" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                             <tr>
                                <td></td>
                                <td valign="top">D.</td>
                                <td>If your ward has not made such directives, what do you believe would be the best approach to these issues?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q2d" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr style="height:20px"><td colspan="3"></td></tr>
                            <tr>
                                <td><b>III.</b></td>
                                <td></td>
                                <td><b>Placement and Care Supervision</b></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">A.</td>
                                <td>Where is your ward residing now and what kind of facility is it? (For example, is it a private residence, assisted living, or nursing home, etc.?)</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3a" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">B.</td>
                                <td>Do you anticipate needing to change your ward's residence? If so, when and why?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3b" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">C.</td>
                                <td>What services are currently provided to your ward?  Include medical, educational, vocational, rehabilitative therapies, and other services.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3c" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>D.</td>
                                <td>Who supervises your ward's care and treatment on a daily basis?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3d" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>E.</td>
                                <td>How often do you communicate with this care supervisor?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3e" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>F.</td>
                                <td>How often do you visit your ward, and how long are your visits?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3f" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">G.</td>
                                <td>When was the last time you saw the ward in person?  Where did this visit take place?  How long was the visit?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3g" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>H.</td>
                                <td>What arrangements have been made for your ward to be involved in social events, spiritual activities, or other community programs?  Do you take the ward or is transportation provided?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q3h" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr style="height:20px"><td colspan="3"></td></tr>
                            <tr>
                                <td><b>IV.</b></td>
                                <td></td>
                                <td><b>Financial Matters</b></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>A.</td>
                                <td>What is the source of payment for medical services and for room and board?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q4a" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">B.</td>
                                <td>Who is the designated Representative Payee for Social Security and other income benefits?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q4b" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>C.</td>
                                <td>Are all payments up-to-date for medical services and for room and board?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q4c" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td valign="top">D.</td>
                                <td>Are there sufficient financial resources to take care of your ward?  If not, what do you believe is the best way to handle this problem?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q4d" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>E.</td>
                                <td>Do you have possession or control of the ward's assets or income?&nbsp;&nbsp;&nbsp;
                                   <asp:DropDownList ID="q4aCK" runat="server" Width="75px" OnClick="DataChanged()">
                                         <asp:ListItem Selected="True" Value="Y">Yes</asp:ListItem>
                                         <asp:ListItem Value="N">No</asp:ListItem>
                                   </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>If yes, you must also file an inventory of assets on CPC Form 20. An annual accounting on CPC Form 43 will be required along with the Guardian's Annual Report.</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q4e" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>   
                            <tr style="height:20px"><td colspan="3"></td></tr>
                            <tr>
                                <td><b>V.</b></td>
                                <td></td>
                                <td><b>Day Program/Work</b></td>
                            </tr>  
                             <tr>
                                <td></td>
                                <td valign="top">A.</td>
                                <td>
                                   <table cellSpacing="0" cellPadding="0" align="left" border="0" width="100%">
                                       <tr>
                                          <td>Day Program, job training site, or work site:</td>
                                          <td class="td_unline" align="left" style="width:60%"><asp:TextBox ID="pgName" runat="server" CssClass="inface" MaxLength=50></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                          <td>Address:</td>
                                          <td class="td_unline" align="left"><asp:TextBox ID="pgAddr" runat="server" CssClass="inface" MaxLength =100></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                          <td>Telephone Number:</td>
                                          <td class="td_unline" align="left"><asp:TextBox ID="pgPhone" runat="server" CssClass="inface" MaxLength =20></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                          <td>Supervisor:</td>
                                          <td class="td_unline" align="left"><asp:TextBox ID="pgAdmin" runat="server" CssClass="inface" MaxLength =50></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                          <td>Dates of visits to day program or work site:(MM/DD/YYYY)</td>
                                          <td class="td_unline" align="left"><asp:TextBox ID="pgDT" runat="server" CssClass="inface" ></asp:TextBox></td>
                                       </tr>
                                       <tr>
                                          <td>Is the day program or work site appropriate?</td>
                                          <td>
                                              <asp:DropDownList ID="q5a" runat="server" Width="75px" OnClick="DataChanged()">
                                                     <asp:ListItem Selected="True" Value="YES">Yes</asp:ListItem>
                                                     <asp:ListItem Value="NO">No</asp:ListItem>
                                              </asp:DropDownList>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td>List any concerns:</td>
                                          <td class="td_unline" align="left"><asp:TextBox ID="q5b" runat="server" CssClass="inface"></asp:TextBox></td>
                                       </tr>
                                   </table>
                                </td>
                            </tr>   
                             <tr style="height:20px"><td colspan="3"></td></tr>
                            <tr>
                                <td><b>VI.</b></td>
                                <td></td>
                                <td><b>Other Issues</b></td>
                            </tr>    
                            <tr>
                                <td></td>
                                <td valign="top">A.</td>
                                <td>What specific problems do you experience or foresee, either for yourself as guardian or for your ward?  How do you believe it will be best to handle each problem?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6a" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>    
                            <tr>
                                <td></td>
                                <td>B.</td>
                                <td>Do you as guardian have any other concerns or comments?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6b" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr> 
                            <tr>
                                <td></td>
                                <td>C.</td>
                                <td>Do you believe the ward's care is adequate and appropriate?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6c" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>   
                            <tr>
                                <td></td>
                                <td valign="top">D.</td>
                                <td>Summarize your activities as guardian on behalf of your ward.  How often have you visited the ward in the past 12 months?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6d" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>  
                            <tr>
                                <td></td>
                                <td>E.</td>
                                <td>How does your ward participate in decision-making?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6e" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>   
                            <tr>
                                <td></td>
                                <td valign="top">F.</td>
                                <td>Do you believe the current plan for care, treatment or rehabilitation is in the ward's best interest?  If your answer is no, describe what changes would be appropriate</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6f" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>    
                            <tr>
                                <td></td>
                                <td>G.</td>
                                <td>What are your plans for care during the next year?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6g" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>  
                            <tr>
                                <td></td>
                                <td>H.</td>
                                <td>Do you recommend that the guardianship continue?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6h" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>   
                            <tr>
                                <td></td>
                                <td>I.</td>
                                <td>What changes would you make to the guardianship?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><asp:textbox id="q6i" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" width="100%" height="60"></asp:textbox></td>
                            </tr>  
                            <tr style="height:80px"><td colspan="3"></td></tr>                
                        </table>
                     </td>   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
