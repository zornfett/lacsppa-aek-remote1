<%@ Page Language="C#" Inherits="Virweb2.FormList.FormIntakeSum" Codebehind="FormIntakeSum.aspx.cs" %>

<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::Intake Summary Form:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/javascript">
    <!--
       function FunctiontoCallSaveData()
       {
          document.getElementById("<%=hdtoSaveData.ClientID %>").value="PageClosed";
          document.FInTakeSumInfo.submit();
      }

      function save_click() {
          return true;
      }
    //-->
    </script>

</head>
<body  runat="server" id="body">

    <script type="text/JavaScript" src="../js/calendar.js"></script>

    <form id="FInTakeSumInfo" runat="server">
        <input type="submit" value="test" style="display: none;" />
        <input id="NoConfirm" type="hidden" value="0" />
        <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
        <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
        <div style="width: 100%; height: 60px">
            <center>
                <table border="0" cellpadding="0" style="border-collapse: collapse; width: 94%; height: 100%">
                    <tr valign="top" style="height: 30px">
                        <td colspan="2" align="center">
                            <asp:Label ID="Label4" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="navy">Intake Summary</asp:Label>
                        </td>
                    </tr>
                    <tr style="height: 30px" valign="top">
                        <td align="left" valign="top" style="width: 660px">
                            <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">CONSUMER INFO</asp:Label>
                        </td>
                        <td align="left" valign="middle" style="width: 330px">
                            <asp:Button ID="btnEdit" runat="server" Text="Save" Visible="False" Style="width: 60px"
                                CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnEdit_Click">
                            </asp:Button>
                            <asp:Button ID="btnAdd" runat="server" Text="Save" Visible="False" Style="width: 60px"
                                CssClass="buttonbluestyle" OnClientClick="NoConfirmExit();" OnClick="btnAdd_Click">
                            </asp:Button>
                            <cc1:UltimateSpell ID="UltimateSpell14" 
                                ControlIdsToCheck="Regard_Child,Birth_History,Current_Medical_Status,Develop_Memo,Gross_Motor_Memo,Fine_Motor_Memo,Communication_Memo,Communication2_Memo,Social_Memo,Adaptive_Memo,Family_Information,AddComments,Recommendations" 
                                ShowModal="false" runat="server">
                            </cc1:UltimateSpell>  
                            <asp:Button ID="btnPrint" runat="server" Text="Print" Style="width: 60px;" CssClass="buttonbluestyle"
                                Visible="false"></asp:Button>
                            <input type="button" id="btnHelp" value="Help" style="width: 60px;" class="buttonbluestyle"
                                runat="server" />
                        </td>
                    </tr>
                    <tr valign="top" style="height: 2px;">
                        <td bgcolor="#990066" colspan="2">
                        </td>
                    </tr>
                </table>
            </center>
        </div>
        <div style="position: relative; width: 100%; height: 630px; overflow: auto;">
            <center>
                <table cellspacing="0" cellpadding="0" border="0" style="width: 88%">
                    <tr>
                        <td valign="top">
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>RE:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="txtRE" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 20%">
                                    </td>
                                    <td>
                                        <b>BD:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="txtBD" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 20%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>UCI#:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="txtuci" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 20%">
                                    </td>
                                    <td>
                                        <b>Date of Intake Meeting:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Meeting_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 20%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 10px;">
                        <td style="height: 1px;" bgcolor="black">
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>1.Information Regarding Child:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Regard_Child" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="300"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="Regard_Child" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>2.Birth History:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Birth_History" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="Birth_History" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>    
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>3.Current Medical Status:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Current_Medical_Status" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="Current_Medical_Status" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>     
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>4.Developmental Information:</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Development_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Develop_Assessment_Used" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Development_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Develop_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Develop_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="Develop_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>     
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>PHYSICAL DEVELOPMENT / GROSS MOTOR (e.g., grasping, holding):</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Gross_Motor_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Gross_Assessment_Used" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Gross_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Gross_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Gross_Motor_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="Gross_Motor_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>      
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>PHYSICAL DEVELOPMENT / FINE MOTOR (e.g., grasping, holding):</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Fine_Motor_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Fine_Assessment_Used" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Fine_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Fine_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Fine_Motor_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell6" ControlIdsToCheck="Fine_Motor_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>      
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>COMUNICATION / RECEPTIVE (e.g., turn toward voice consistently):</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Communication_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Communication_Assessment_Used" runat="server" CssClass="inface"
                                            MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Commun_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Communication_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Communication_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell7" ControlIdsToCheck="Communication_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>     
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>COMUNICATION / EXPRESSIVE (e.g., imitate words, use motion or gestures for talking, verbally identify
                                            objects):</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Communication2_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Communication2_Assessment_Used" runat="server" CssClass="inface"
                                            MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Commun2_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Communication2_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Communication2_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell8" ControlIdsToCheck="Communication2_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>     
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>SOCIAL / EMOTIONAL (e.g., how the child relates to others):</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Social_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Social_Assessment_Used" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Social_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Social_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Social_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell9" ControlIdsToCheck="Social_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>       
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>ADAPTIVE / SELF-HELP (e.g., sleeping, eating, dressing):</b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Date:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:TextBox ID="Adaptive_Date" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"
                                            runat="server" CssClass="inface"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Assessment Used:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Adaptive_Assessment_Used" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>Completed By:</b></td>
                                    <td class="td_unline" align="left" style="width: 140px;">
                                        <asp:Label ID="Adaptive_Completed_By" runat="server" CssClass="infaceText"></asp:Label></td>
                                    <td style="width: 10%">
                                    </td>
                                    <td>
                                        <b>Skill Level:</b></td>
                                    <td class="td_unline" align="left" style="width: 260px;">
                                        <asp:TextBox ID="Adaptive_Skill_Level" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox></td>
                                    <td style="width: 10%">
                                    </td>
                                </tr>
                                <tr style="height: 10px">
                                    <td colspan="7">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 60px">
                                    </td>
                                    <td colspan="6">
                                        <asp:TextBox ID="Adaptive_Memo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell10" ControlIdsToCheck="Adaptive_Memo" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>      
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr style="height: 1px;">
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common" style="height: 1px;">
                                    <td style="width: 6%">
                                    </td>
                                    <td style="height: 1px; width: 88%;" bgcolor="black">
                                    </td>
                                    <td style="width: 6%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 5px;">
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>5.Family Information:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Family_Information" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell11" ControlIdsToCheck="Family_Information" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>      
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>6.Other Agencies:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td align="left">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies1" runat="server"
                                            Text="a.&nbsp;&nbsp;CCS" Width="200px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies2" runat="server"
                                            Text="b.&nbsp;&nbsp;OC.PHN" Width="160px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies3" runat="server"
                                            Text="c.&nbsp;&nbsp;Social Servicer" Width="160px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies4" runat="server"
                                            Text="d.&nbsp;&nbsp;Medical / Caloptima (?)" Width="200px" />
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td align="left">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies5" runat="server"
                                            Text="e.&nbsp;&nbsp;EDAC / Developmental Clinic" Width="200px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies6" runat="server"
                                            Text="f.&nbsp;&nbsp;Health Insurance" Width="160px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies7" runat="server"
                                            Text="g.&nbsp;&nbsp;WIC" Width="160px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="Other_Agencies8" runat="server"
                                            Text="h.&nbsp;&nbsp;Other" Width="160px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>7.Eligibility:</b></td>
                                    <td class="td_unline" align="left" style="width: 600px;">
                                        <asp:TextBox ID="Eligibility" runat="server" CssClass="inface" MaxLength="150"></asp:TextBox>
                                    </td>
                                    <td style="width: 20%">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>7.1 Additional Comments:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AddComments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell12" ControlIdsToCheck="AddComments" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>      
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table_common" cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <b>8.Recommendations:</b></td>
                                </tr>
                                <tr class="tr_common">
                                    <td style="width: 60px">
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Recommendations" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                            runat="server" Width="94%" Height="100"></asp:TextBox>
                                        <cc1:UltimateSpell ID="UltimateSpell13" ControlIdsToCheck="Recommendations" ShowModal="true" runat="server">
                                        </cc1:UltimateSpell>        
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height: 30px">
                        <td>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
