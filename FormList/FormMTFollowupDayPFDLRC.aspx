<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FormMTFollowupDayPFDLRC.aspx.cs" Inherits="Virweb2.FormList.FormMTFollowupDayPFDLRC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <base target="_self" />
    <title>:::FOLLOW UP:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>
    <script type="text/JavaScript">
    <!--
        function print_click() {
            var entrykey=document.MTInfo.entrykey.value.toString();
            var isfollowup="1";
            if (document.MTInfo.link_mtid.value == document.MTInfo.main_mtid.value)
                isfollowup="0";   
            winhref("PrintFormMTFollowupDayPFDLRC.aspx?MTID="+entrykey+"&IsFollowup="+isfollowup,"PrintFormMTFollowupDayPFDLRC");         
        }

        function verify_click() {
            return true;
        }

        function back_click() {
            if (Confirm_Page())
               document.location.replace(document.MTInfo.gobackPage.value+"?MTID="+document.MTInfo.main_mtid.value+"&RID="+document.MTInfo.resource_key.value);
        }

        function Sign(UserName) {
            var mySignUserName = document.getElementById(<%= "'" + SignUserName.ClientID + "'" %>);        
            mySignUserName.value = UserName;  
            window.document.MTInfo.submit();
            window.focus();
        }

        function CheckPwd() {
          //var SignChk=document.getElementById(<%= "'" + signed_chk.ClientID + "'" %>);
          //if (SignChk.checked) 
             window.showModalDialog("CheckMWESignature.aspx", self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          //else
          //   alert("Please check 'Resource Representative has signed' first.");
        }

        function RefreshCitationData(CitaID,QNo)
        {
            var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
            myHdnRefreshData.value = '1';        
            document.MTInfo.SelCitaID.value = CitaID;     
            document.MTInfo.SelCitaNo.value = QNo;     
            window.document.MTInfo.submit();
            window.focus();  
        }

        function RemoveCitation(ItemNo,CitationID,QNo)
        {
            if (confirm("Are you sure you want to change from Not Cleared to Cleared ?"))
            {
                var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
                myHdnRefreshData.value = '2';   
                document.MTInfo.SelCitaID.value = CitationID;     
                document.MTInfo.SelItemNo.value = ItemNo;     
                document.MTInfo.SelCitaNo.value = QNo;     
                window.document.MTInfo.submit();
                window.focus(); 
            }
            
            return false;
        }

        function AddCitation(ItemNo,Qno)
        {
            document.MTInfo.SelItemNo.value = ItemNo; 
            var entrykey=document.MTInfo.entrykey.value.toString();
            popupDialog("FormMTCitationFDLRC.aspx?MTID=" + entrykey + "&FormType=Follow Up&Qno=" + Qno + "&type=add");
            
            return false;
        }

        function EditCitation(ItemNo,CitationID,Qno,bedit)
        {
            document.MTInfo.SelItemNo.value = ItemNo;
            if (bedit==1)
               popupDialog("FormMTCitationFDLRC.aspx?CitationID=" + CitationID + "&Qno=" + Qno + "&type=edit");
            else  
               popupDialog("FormMTCitationFDLRC.aspx?CitationID=" + CitationID + "&Qno=" + Qno );
            
            return false;
        }
    //-->
    </script>
</head>
    <body runat="server" id="body">
    <script type="text/JavaScript" src="../js/calendar.js"></script>   
    <form id="MTInfo" method="post" runat="server">
    <asp:HiddenField ID="hdnRefreshData" runat="server" Value="0" />
    <asp:HiddenField ID="DefRegName" runat="server" Value="" />
    <input id="NoConfirm" type="hidden" value="0" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />
    <input type="hidden" name="entrykey" id="entrykey" value="" runat="server" />	
    <input type="hidden" name="main_mtid" id="main_mtid" value="" runat="server" />	   
    <input type="hidden" name="link_mtid" id="link_mtid" value="" runat="server" />	   
    <input type="hidden" name="resource_key" id="resource_key" value="" runat="server" />
    <input type="hidden" name="CitationExist" id="CitationExist" value="0" runat="server" />
    <input type="hidden" name="SelCitaNo" id="SelCitaNo" value="" runat="server" />
    <input type="hidden" name="SelCitaID" id="SelCitaID" value="" runat="server" />
    <input type="hidden" name="SelItemNo" id="SelItemNo" value="" runat="server" />
    <input type="hidden" name="SignUserName" id="SignUserName" value="" runat="server" />
    <input type="hidden" name="SignFlag" id="SignFlag" value="0" runat="server" />
    <input type="hidden" name="gobackPage" id="gobackPage" value="" runat="server" />
    <div align="left" style="width: 100%; height: auto">
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr valign="middle" style="height: 30px; background-color: #EAF4FF">
                <td align="left" valign="middle" width="25%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="false"
                        Style="width: 25px; height: 25px" ImageUrl="../img/save.ico" ToolTip="Save"  OnClick="btnEdit_Click">
                    </asp:ImageButton>
                    &nbsp;
                    <input type="image" id="btnPrint" runat="server" alt="Print" visible="false"
                    style="width: 25px; height: 25px" src="../img/print.ico" title="Print" onclick="javascript:print_click();return false;" />
                    &nbsp;
                    <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px; height: 25px"
                        src="../img/back.ico" title="Back" onclick="javascript:back_click();return false;" />
                </td>
                <td align="left" valign="middle" width="60%">
                    <asp:Label ID="Info" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="blue">&nbsp;</asp:Label>
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
        </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:450px">
        <table class="table_maindiv">
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 80px">
                                <asp:Label ID="Label2" runat="server" Text="Vendor #:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 100px">
                                <asp:Label ID="r_vendor_number" Width="100px" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: 10">
                            </td>
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="l_vendorname" runat="server" Text="Vendor Name:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  style="width: 280px" class="td_unline" >
                                <asp:Label ID="r_resource_name" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: 10">
                            </td>
                            <td  class="td_label" style="width: 120px">
                                <asp:Label ID="Label6" runat="server" Text="Program Director:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  style="width: 280px" class="td_unline" >
                                <asp:Label ID="r_administrator" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside">
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="Label5" runat="server" Text="Service Code:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:Label ID="r_service_code" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="Label8" runat="server" Text="Street:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:Label ID="r_site_address_line_1" runat="server" Width="200px"  CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="Label9" runat="server" Text="City, State, ZIP:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:Label ID="CityStateZip"  Width="200px" runat="server"  CssClass="infaceText"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="Label11" runat="server" Text="QA Specialist:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:Label ID="MonitorName" Width="200px" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="Label13" runat="server" Text="Telephone #:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  class="td_unline" style="width: 200px">
                                <asp:Label ID="r_site_phone_1" runat="server" Width="200px" CssClass="infaceText"></asp:Label>
                            </td>
                            <td style="width: 20">
                            </td>
                            <td  class="td_label" style="width: 100px">
                                <asp:Label ID="Label1" runat="server" Text="Review Date:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td  style="width: 200px" class="td_unline" >
                                <asp:TextBox ID="MonitoringDate" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                 onfocus="DataChanged();showcalendar(event, this);"></asp:TextBox>
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
                <td class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 10px;">
                <td>
                </td>
            </tr>
            <tr>
            <td>  
            <asp:datagrid id="dg_followup" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
		      AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
			<HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
			<ItemStyle CssClass="grd_itemborder"></ItemStyle>
			<AlternatingItemStyle CssClass="grd_itemborder"></AlternatingItemStyle>
			<FooterStyle CssClass="grd_fsitem"></FooterStyle>
			<Columns>
		    <asp:BoundColumn DataField="QID" HeaderText="QID"  Visible="false"></asp:BoundColumn>
		    <asp:BoundColumn DataField="CitationID" HeaderText="CitationID"  Visible="false"></asp:BoundColumn>
		    <asp:BoundColumn DataField="MTID" HeaderText="MTID"  Visible="false"></asp:BoundColumn>
		    <asp:BoundColumn DataField="QNumber" HeaderText="QNumber"  Visible="false"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="">
			    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
			    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
			    <ItemTemplate>
                    <table class="table_inside" cellspacing="0" cellpadding="0">
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                       <tr class="tr_common">
                          <td>
                            <asp:Radiobutton ID="cleared_yes" groupname="cleared" runat="server" Text="Issue Cleared" Checked=false></asp:Radiobutton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Radiobutton ID="cleared_no" groupname="cleared" runat="server" Text="Issue Not Cleared" Checked=false></asp:Radiobutton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton runat="server" Visible="false" ID="btnCleared" Width="15px" Height="15px"
                                                ImageUrl="../img/view.gif" BorderWidth="0"></asp:ImageButton>
                          </td>
                       </tr>
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                       <tr>
                          <td>
                              <table class="table_inside" cellspacing="0" cellpadding="0">
                                 <tr class="tr_common">
                                     <td class="td_label">
                                        <asp:Label ID="l_question" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "qtext") %>'></asp:Label>
                                     </td>
                                     <td width="5">
                                     </td>
                                     <td width="100px" class="td_label">
                                        <asp:Label ID="l_answer" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "answerdesc") %>' Font-Bold="true"></asp:Label>
                                     </td>
                                 </tr>
                              </table>
                          </td>
                       </tr>
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                       <tr class="tr_common">
                          <td class="td_label">
                              <asp:Label ID="l_citationTitle" runat="server" Text="Citation:" ></asp:Label>
                          </td>
                       </tr>
                       <tr class="tr_common">
                          <td class="td_unline">
                             <asp:Label ID="l_citation" runat="server" CssClass="infaceText" Text=''></asp:Label>
                          </td>
                       </tr>
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                       <tr class="tr_common">
                          <td class="td_label">
                              <asp:Label ID="Label3" runat="server" Text="Issues:" ></asp:Label>
                          </td>
                       </tr>
                       <tr class="tr_common">
                           <td class="td_unline">
                               <asp:Label ID="l_comments" runat="server" CssClass="infaceText" Text='<%# DataBinder.Eval(Container.DataItem, "Comments") %>'></asp:Label>                               
                           </td>
                       </tr>
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                       <tr class="tr_common">
                          <td class="td_label">
                              <asp:Label ID="Label1" runat="server" Text="Corrections:" ></asp:Label>
                          </td>
                       </tr>
                       <tr class="tr_common">
                           <td class="td_unline">
                               <asp:Label ID="l_recommendations" runat="server" CssClass="infaceText" Text='<%# DataBinder.Eval(Container.DataItem, "Recommendations") %>'></asp:Label>                               
                           </td>
                       </tr>
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                       <tr class="tr_common">
                          <td class="td_label">
                              <asp:Label ID="l_timeline" runat="server" Text="Due Date for Submission of Response/Proof of Correction:" ></asp:Label>
                          </td>
                       </tr>
                       <tr style="height:10px">
                          <td>
                          </td>
                       </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateColumn>
            </Columns>
            </asp:DataGrid>
            </td>
            </tr>
            <tr style="height: 10px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td  class="td_label">
                   <b><asp:Label ID="l_comments" runat="server" Text="Comments:" ></asp:Label></b>
                </td>
            </tr>
            <tr class="tr_common">
                <td style="width: 99%" class="td_unline" >
                   <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                       runat="server" Width="99%" Height="150"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr>
                <td class="td_thicksepline">
                </td>
            </tr>
            <tr style="height: 5px;">
                <td>
                </td>
            </tr>
            <tr class="tr_common">
                <td>
                    <table class="table_inside">
                        <tr style="height: 20px;">
                            <td colspan="4"> 
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td colspan="4" class="td_label">
                                <asp:Label ID="Label4" runat="server" Font-Bold="true" 
                                  Text="If you are cited your signature below indicates your awareness of your appeal rights and acknowledgement of the meaning of these inadequacies. Corrections must be made within established time frame noted above. (56056)"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 10px;">
                            <td colspan="4"> 
                            </td>
                        </tr>
                        <tr class="tr_common" style="display:none">
                            <td colspan=4 class="td_label">
                                <asp:CheckBox ID="signed_chk" runat="server" Text="Resource Representative has signed"  Width="30" /><b></b>
                            </td>
                        </tr>
                        <tr style="height: 5px;" style="display:none">
                            <td colspan="4"> 
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td  class="td_label" style="width: 250px">
                                <asp:Label ID="l_signatureby" runat="server" Text="QAS Signature:" Font-Bold="true"></asp:Label>
                            </td>
                            <td width="5">
                            </td>
                            <td colspan="2">
                                <table>
                                    <tr class="tr_common">
                                        <td style="width: 200px;" class="td_unline">
                                            <asp:TextBox ID="SignaturedBy" Font-Names="Comic Sans MS" ReadOnly="true" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td  class="td_label" style="width: 60px">
                                            <asp:Label ID="Label87" runat="server" Text="Date:" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td style="width: 200px;" class="td_unline">
                                            <asp:TextBox ID="SignaturedDate" runat="server" Font-Names="Comic Sans MS" ReadOnly="true" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height: 50px;">
                <td>
                </td>
            </tr>
        </table>     
    </div>
    </form>
</body>
</html>
