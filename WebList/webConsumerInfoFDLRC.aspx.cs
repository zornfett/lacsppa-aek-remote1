using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml;

namespace Virweb2.WebList
{
    public partial class webConsumerInfoFDLRC : webCommonPage
    {
        string View_Flag = "Y", Edit_Flag = "Y", Edit_Dropdown = "N", Delete_Flag = "Y";
        bool AllEdit_Flag = false, Level8_Flag = false, Consult_Flag = false;
        protected void Page_Load(object sender, System.EventArgs e)
        {
            Response.CacheControl = "no-cache";
            Response.AddHeader("Pragma", "no-cache");
            Response.Expires = -1;

            if ((Session["UserID"] == null) || (Session["UserID"].ToString() == ""))
            {
                /*
                string scriptstr = "<script type='text/JavaScript'>PopupMessage(11);window.top.location.replace('../default.aspx');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                return;
                */
                Response.Redirect("../webTimeout.aspx");
            }

            // Response.AppendHeader("Refresh", Convert.ToString(Session.Timeout * 60 + 10));

            if (Session["useractname"].ToString().ToUpper() == "PRNT")
            {
                this.TD_SA.Style.Remove("display");
            }

           string chk_annual =  Request.QueryString["annual"];

           if (chk_annual == "1")
           {
               btnLogout.Visible = false;
               btnBack.Visible = false;
           }

            /*
            string ajaxRequest = Request.QueryString["isAjax"] != null ? "true" : "false";
            bool isAjax = Boolean.Parse(ajaxRequest);
            if (isAjax)
            {
                SaveFaceSheet();
                return;
            }
            */
            if (Int32.Parse(Session["ConsumerLevel"].ToString()) > 1)
                Edit_Flag = "Y";
            else
                Edit_Flag = "N";

            //if (Session["Usertype"].ToString() == "A")
            if (Int32.Parse(Session["ConsumerLevel"].ToString()) > 1)
                Delete_Flag = "Y";
            else
                Delete_Flag = "N";

            bool InitialIpp = false;

            if (!Page.IsPostBack)
            {
                //buttons setup
                /*
                DataTable DT_ButtonsSet = (DataTable)Session["userbuttons"];
                if (DT_ButtonsSet.Rows.Count > 0)
                {

                    btnEdit.ToolTip = DT_ButtonsSet.Rows[0]["l_Save"].ToString().TrimEnd();
                    btnAdd.ToolTip = DT_ButtonsSet.Rows[0]["l_Save"].ToString().TrimEnd();
                    btnPrint.Value = DT_ButtonsSet.Rows[0]["l_Print"].ToString().TrimEnd();
                    btnHelp.Value = DT_ButtonsSet.Rows[0]["l_Help"].ToString().TrimEnd();
                }
                */
                //
                Session.Remove("ImageData");
                bool bPopupW = false;
                if (Request.QueryString["popupw"] != null)
                    bPopupW = true;

                if (!bPopupW)
                {
                    body.Attributes.Add("onload", "javascript:onloadsizechg(100);javascript:window_onload()");
                    body.Attributes.Add("onresize", "javascript:onloadsizechg(100);");
                    body.Attributes.Add("onunload", "javascript:CreateIDNotes('Consumer Info');");
                }
                else
                    headericon.Visible = false;

                if (View_Flag != "Y")
                {
                    string scriptstr = "<script type='text/javascript'>alert('Access Denied!');window.close();</script>";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                    return;
                }

                this.PermEdit_Flag.Value = "0";
                this.SDPEdit_Flag.Value = "0";

                string strKey = "";
                if (Request.QueryString["c_key"] != null)
                {
                    strKey = Request.QueryString["c_key"].ToString().TrimEnd();
                    Session["ConsumerSel"] = strKey;
                }
                else
                {
                    if (Request.QueryString["type"] == null)
                    {
                        if ((Session["ConsumerSel"] == null) || (Session["ConsumerSel"].ToString().TrimEnd() == ""))
                        {
                            string scriptstr = "<script type='text/javascript'>alert('There is no Active " + Session["ClientDisp"].ToString() +
                                 ". Please Select A " + Session["ClientDisp"].ToString() + " from the " + Session["ClientDisp"].ToString() + " List.');document.location.replace('webConsumerList.aspx');</script>";
                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                            return;
                        }
                        else
                            strKey = Session["ConsumerSel"].ToString().TrimEnd();
                    }
                }

                //Session["ConsumerInfo"] = null;

                this.UserAct.Value = Session["UserAct"].ToString();
                this.consumer_key.Value = strKey;

                if (Request.QueryString["type"] == null)
                {
                    this.BtnAddCo.Attributes.Add("onclick", "popupDialog('webConsumerContactSCLARC.aspx?s_key=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                    this.BtnAddAm.Attributes.Add("onclick", "popupDialog('webConsumerEmploymentSCLARC.aspx?ClientID=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                    this.BtnAddSc.Attributes.Add("onclick", "popupDialog('webConsumerSchoolSCLARC.aspx?ClientID=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                    this.BtnAddPgU.Attributes.Add("onclick", "popupDialog('webConsumerUnFundProgSCLARC.aspx?ClientID=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                }
                else
                {
                    this.BtnAddAm.Visible = false;
                    this.BtnAddSc.Visible = false;
                    this.BtnAddCo.Visible = false;
                    this.BtnAddPgU.Visible = false;
                    l_Employment.Visible = false;
                    l_School.Visible = false;
                    l_PosList.Visible = false;
                    l_ContactList.Visible = false;
                    l_prog_fund.Visible = false;
                    l_prog_unfund.Visible = false;
                }


                if ((Request.QueryString["IsForm101"] != null) || (bPopupW))  //Form101
                {
                    Edit_Flag = "N";
                    Edit_Dropdown = "N";
                }

                BindDropDownLists();
                BindDropDownLists_LF();
                BinDropDownLists_AF();

                if ((Session["gic_label_sets"].ToString() == "") || (Session["gic_label_sets"] == null))
                {
                    Session["gic_label_sets"] = "1";
                }

                DataRow ConsumerLabelInfo = VirDBAccess.DbDispOption.getConsumerLabelDetailInfo(Session["UserAct"].ToString(), Session["gic_label_sets"].ToString());
                DataRow ConsumerToolTipInfo = VirDBAccess.DbDispOption.getConsumerLabelTipDetailInfo(Session["UserAct"].ToString(), Session["gic_label_sets"].ToString());
                // DataRow ConsumerColorInfo = VirDBAccess.DbDispOption.getConsumerLabelColorDetailInfo(Session["UserAct"].ToString(), Session["gic_label_sets"].ToString());

                showLabel_fs(ConsumerLabelInfo, ConsumerToolTipInfo);
                showLabel_lf(ConsumerLabelInfo);
                showLabel_dc(ConsumerLabelInfo);
                showLabel_ad(ConsumerLabelInfo);
                showLabel_re(ConsumerLabelInfo);

                if ((Request.QueryString["type"] != null) || (Edit_Flag == "Y"))
                //    (Session["usertype"].ToString() == "A") || (Session["ConsumerSelCMID"].ToString() == Session["userID"].ToString()))
                {
                    body.Attributes.Add("onkeyup", "DataChanged()");
                }

                if (VirDBAccess.DbCommon.checkCodeExistInTables("UCI Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString()))
                {
                    btnChgUCI.Visible = true;
                }

                if (Session["usertype"].ToString() == "A")
                {
                    this.AllowChgLabel.Value = "Y";
                }

                /*Status Dates Tab*/
                //DataRow UserInfo = VirDBAccess.DbUser.getUserInfo(Session["UserID"].ToString().Trim(), Session["UserAct"].ToString());
                if (Session["ConsumerLevel"].ToString().TrimEnd() != "9")
                {
                    btnRefForm101.Enabled = false;
                    setControlReadOnly(Consumer_DC);
                    this.statusdates_edit_flag.Value = "1";

                    setOneControlEnable(c_tickler_cycle);
                    c_tickler_cycle.Attributes.Add("onclick", "DataChanged();");
                    setOneControlEnable(c_tickler_date);
                    c_tickler_date.Attributes.Add("onclick", "DataChanged();");
                    setOneControlEnable(c_base_month);
                    c_base_month.Attributes.Add("onclick", "DataChanged();");
                    setOneControlEnable(startipp);
                    startipp.Attributes.Add("onclick", "javascript:StartIPP();");

                    if ((VirDBAccess.DbCommon.checkCodeExistInTables("Lanterman Intake Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString())) ||
                        (VirDBAccess.DbCommon.checkCodeExistInTables("LANTMAN 101 SC", Session["UserID"].ToString(), Session["UserAct"].ToString())) ||
                        (VirDBAccess.DbCommon.checkCodeExistInTables("ESR Intake Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString())) ||
                        (VirDBAccess.DbCommon.checkCodeExistInTables("ESR Intake SC", Session["UserID"].ToString(), Session["UserAct"].ToString())))
                    {
                        setOneControlEnable(c_date02);
                        c_date02.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                        c_date02.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");

                        setOneControlEnable(c_date03);
                        c_date03.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                        c_date03.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");

                        setOneControlEnable(c_date09);
                        c_date09.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                        c_date09.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");

                        setOneControlEnable(c_date13);
                        c_date13.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                        c_date13.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");

                        setOneControlEnable(c_text1);
                        setOneControlEnable(c_text2);
                        setOneControlEnable(c_text7);
                        setOneControlEnable(c_text9);
                    }
                }

                if (Request.QueryString["type"] != null)  // Add new consumner
                {
                    btnAdd.Visible = true;
                    NewUCI.Visible = true;
                    Session["stype"] = "add";
                    //this.c_unit_area.SelectedValue = Session["userunitarea"].ToString();

                    return;
                }
                else if (Edit_Flag == "Y")
                {
                    btnAdd.Visible = false;
                    btnEdit.Visible = true;
                    Session["stype"] = "edit";
                }
                else
                {
                    btnAdd.Visible = false;
                    btnEdit.Visible = false;
                    Session["stype"] = "view";
                }

                //try
                {
                    if (!VirDBAccess.DbConsumer.checkConsumerInfo(strKey, Session["UserAct"].ToString()))
                    {
                        string scriptstr = "<script type='text/javascript'>alert('The " + Session["ClientDisp"].ToString() + ": " + strKey + " does not exist." +
                               "Please ReSelect A " + Session["ClientDisp"].ToString() + " from the " + Session["ClientDisp"].ToString() + " List.');document.location.replace('webConsumerList.aspx');</script>";
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        return;
                    }

                    DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(strKey, Session["UserAct"].ToString());
                    this.org_msi.Value = ConsumerInfo["c_text11"].ToString();

                    if (!bPopupW)
                    {
                        string InfoStr = "";
                        if (ConsumerInfo["c_dob"].ToString() == "")
                            InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"];
                        else
                            InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"] + "    DOB: " + ((DateTime)ConsumerInfo["c_dob"]).ToShortDateString();
                        InfoStr += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                        InfoStr += Session["CoordDisp"].ToString() + ": " + ConsumerInfo["CaseMgrName"];
                        InfoStr = InfoStr.Replace("'", "`");
                        Info.Text = "";
                        string maindispstr = "<script type='text/javascript'>DisplayTitleInfo('" + InfoStr + "','" + Session["ClientDisp"].ToString() + " Profile')</script>";
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DisplayTitleInfo", maindispstr);
                    }
                    if (ConsumerInfo["c_photo"] != System.DBNull.Value)
                        Session["ImageData"] = ConsumerInfo["c_photo"];

                    if (ConsumerInfo["c_language"].ToString().TrimEnd() == "")
                        ConsumerInfo["c_language"] = "11";

                    if (ConsumerInfo["c_preferred_language"].ToString().TrimEnd() == "")
                        ConsumerInfo["c_preferred_language"] = "11";

                    if (ConsumerInfo["c_document_language"].ToString().TrimEnd() == "")
                        ConsumerInfo["c_document_language"] = "11";

                    if ((Int32.Parse(Session["ConsumerLevel"].ToString()) == 9) ||
                        ((Session["EmployeeType"].ToString().ToUpper().TrimEnd() == "I") && (ConsumerInfo["c_uci"].ToString() == "")))
                        AllEdit_Flag = true;
                    else AllEdit_Flag = false;

                    if (Int32.Parse(Session["ConsumerLevel"].ToString()) == 8)
                        Level8_Flag = true;
                    else Level8_Flag = false;

                    if (Session["EmployeeType"].ToString().ToUpper().TrimEnd() == "V")
                    {
                        TD_LF_4.BgColor = "Gray";
                        TD_LF_4.Attributes.Remove("onclick");
                        TD_LF_5.BgColor = "Gray";
                        TD_LF_5.Attributes.Remove("onclick");

                        otherbene_1.Style.Add("display", "none");
                        otherbene_2.Style.Add("display", "none");
                        otherbene_3.Style.Add("display", "none");
                        otherbene_4.Style.Add("display", "none");
                        otherbene_5.Style.Add("display", "none");
                        otherbene_6.Style.Add("display", "none");

                        TD_AF_1.BgColor = "Gray";
                        TD_AF_1.Attributes.Remove("onclick");
                        TD_AF_1.Style.Remove("color");
                        TD_AF_2.Style.Add("color", "#990066");
                        TD_AF_4.BgColor = "Gray";
                        TD_AF_4.Attributes.Remove("onclick");

                        Consumer_AF_1.Style.Add("display", "none");
                        Consumer_AF_2.Style.Add("display", "");

                        Consult_Flag = true;
                    }
                    else Consult_Flag = false;

                    if (Edit_Flag == "Y")
                    {
                        if ((Session["EmployeeType"].ToString() == "C") || (Session["EmployeeType"].ToString() == "CW") || (Session["EmployeeType"].ToString() == "PM") ||
                            (Session["EmployeeType"].ToString() == "RM") || (Session["EmployeeType"].ToString() == "AD") ||
                            (Session["EmployeeType"].ToString() == "D") || (Session["usertype"].ToString() == "A"))
                            this.PermEdit_Flag.Value = "1";

                        if ((ConsumerInfo["c_medicaid_waiver"].ToString().TrimEnd() != "Y") &&
                            (VirDBAccess.DbCommon.checkCodeExistInTables("SDP Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString())))
                            this.SDPEdit_Flag.Value = "1";
                        else
                            this.SDPEdit_Flag.Value = "0";
                    }

                    if ((Request.QueryString["type"] == null) && (this.PermEdit_Flag.Value == "1"))
                        this.BtnAddPe.Attributes.Add("onclick", "popupDialog('webConsumerPermissionSCLARC.aspx?ClientID=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                    else
                    {
                        this.BtnAddPe.Visible = false;
                        l_Permission.Visible = false;
                    }

                    if (this.SDPEdit_Flag.Value == "1")
                    {
                        this.BtnAddSDP.Attributes.Add("onclick", "popupDialog('webConsumerSDPInfo.aspx?ClientID=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                        this.BtnAddSDP.Visible = true;
                    }
                    else
                        this.BtnAddSDP.Visible = false;

                    //Session["ConsumerInfo"] = ConsumerInfo;
                    ViewState["PosUfsHist"] = "0";

                    c_tickler_cycle.Items.Clear();
                    // Prevention Tickler Cycle
                    if (ConsumerInfo["c_status"].ToString().TrimEnd().ToUpper() == "R")
                    {
                        this.is_prevention.Value = "Y";
                        DataTable CycleDT = VirDBAccess.DbCommon.getTablesListOrderbyName("Tickler Cycle Prev", Session["UserAct"].ToString());
                        c_tickler_cycle.DataSource = CycleDT;
                        c_tickler_cycle.DataBind();
                    }
                    else if (ConsumerInfo["c_dob"] != System.DBNull.Value)
                    {
                        //if ((DateTime.Now - (DateTime)ConsumerInfo["c_dob"]).TotalDays < 365 * 3)
                        //DateTime dd = ((DateTime)ConsumerInfo["c_dob"]).AddYears(3);
                        DateTime Dobt = (DateTime)ConsumerInfo["c_dob"];
                        DateTime Dobb = new DateTime(Dobt.Year, Dobt.Month, 1);
                        DateTime dd = Dobb.AddMonths(37);
                        DateTime dt = Dobb.AddMonths(36);
                        if (((DateTime.Now - dd).Minutes < 0) && ((DateTime.Now - dt).Minutes >= 0))
                            this.dob_36M.Value = "Y";
                        else this.dob_36M.Value = "N";
                        DateTime dy = Dobb.AddMonths(35);
                        if ((DateTime.Now - dy).Minutes >= 0)
                            this.dob_35M.Value = "Y";
                        else this.dob_35M.Value = "N";

                        if (((DateTime.Now - dd).Minutes < 0) && (ConsumerInfo["c_initialipp_at36"].ToString().TrimEnd() != "Y"))
                        {
                            DataTable CycleDT = VirDBAccess.DbCommon.getTablesListOrderbyName("Tickler Cycle ES", Session["UserAct"].ToString());
                            c_tickler_cycle.DataSource = CycleDT;
                            c_tickler_cycle.DataBind();
                            /*
                            c_tickler_cycle.Items.Add(new ListItem("Initial", "0"));
                            c_tickler_cycle.Items.Add(new ListItem("IFSP #1", "1"));
                            c_tickler_cycle.Items.Add(new ListItem("IFSP #2", "2"));
                            c_tickler_cycle.Items.Add(new ListItem("Final", "3"));
                            //c_tickler_cycle.Items.Add(new ListItem("", "4"));
                            //c_tickler_cycle.Items.Add(new ListItem("", "5"));
                            */
                        }
                        else
                        {
                            DataTable CycleDT = VirDBAccess.DbCommon.getTablesListOrderbyName("Tickler Cycle", Session["UserAct"].ToString());
                            c_tickler_cycle.DataSource = CycleDT;
                            c_tickler_cycle.DataBind();
                            /*
                            c_tickler_cycle.Items.Add(new ListItem("Not Set", "0"));
                            c_tickler_cycle.Items.Add(new ListItem("Triennial IPP", "1"));
                            c_tickler_cycle.Items.Add(new ListItem("Annual Contact #1", "2"));
                            c_tickler_cycle.Items.Add(new ListItem("Annual Contact #2", "3"));
                            c_tickler_cycle.Items.Add(new ListItem("30-Days IPP", "4"));
                            c_tickler_cycle.Items.Add(new ListItem("Initial IPP", "5"));
                            */
                        }
                    }

                    showdata_fs(ConsumerInfo);
                    showdata_lf(ConsumerInfo);
                    showdata_dc(ConsumerInfo);
                    showdata_ad(ConsumerInfo);
                    showdata_re(ConsumerInfo);
                    showdata_af();

                    showEmploymentList();
                    showSchoolList();
                    showPosUfsList();
                    showDayprogList();
                    showContactList();
                    showPermissionList();

                    setDropDownList(ConsumerInfo, "c_court_docs");
                    showSDPList();

                    //if (Session["DefRegName"].ToString() != "FDLRC")
                    showEligibilityInfo();
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        l_title_Intake.Text = "Eligibility";
                        l_lantarman_intake.Text = "LANTERMAN REFERRAL FORM";
                        l_es_intake.Text = "ES REFERRAL FORM";
                    }

                    //ClientScript.RegisterStartupScript(Type.GetType("System.String"), "","<script>refreshAddableSection();</script>");

                    //ExecutJSstr();//to refresh "+" icon
                    // ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);

                    DateTime CurN = DateTime.Now;
                    DateTime CurE = new DateTime(Int32.Parse("20" + consumer_dty.Value), Int32.Parse(consumer_dtm.Value), Int32.Parse(consumer_dtd.Value));
                    if (DateTime.Compare(CurN, CurE) > 0) return;

                    if (Session["useractname"].ToString().ToUpper() == "PRNT")
                    {
                        DataRow DrugsLabelInfo = VirDBAccess.DbDispOption.getDrugsLabelDetailInfo(Session["UserAct"].ToString(), Session["gic_label_sets"].ToString());
                        showLabel_sa(DrugsLabelInfo);
                        BindDropDownLists_SA();

                        if (VirDBAccess.DbConsumer.CheckDrugsInfo(strKey, Session["UserAct"].ToString()))
                        {
                            DataRow DrugsInfo = VirDBAccess.DbConsumer.getDrugsInfo(strKey, Session["UserAct"].ToString());
                            showdata_sa(DrugsInfo);
                        }
                    }

                    if (ConsumerInfo["c_uci"].ToString().Substring(0, 2) == "08")
                    {
                        //btnEditESRIntake.Enabled = false;
                        //btnEditIntake.Enabled = false;
                        btnEditESRIntake.Visible = false;
                        btnEditIntake.Visible = false;
                    }

                    if (Edit_Flag != "Y")
                    {
                        DisableControl();
                    }
                    //else  // Only allow some fields to be edited
                    //{
                    // fields will be disabled inside showdate_xx
                    //}
                }
                //catch { }

                if (Edit_Dropdown != "Y")
                {
                }

                //if (Session["EmployeeType"].ToString().ToUpper().TrimEnd() == "V")
                {
                    if (VirDBAccess.DbCommon.checkCodeExistInTables("medicaid sc", Session["UserID"].ToString(), Session["UserAct"].ToString()))
                        setOneControlEnable(c_medicaid_waiver);
                }

                if (Request.QueryString["tabflag"] != null)
                {
                    now_div_flag.Value = Request.QueryString["tabflag"].ToString().TrimEnd();
                    if (Request.QueryString["tabAFflag"] != null)
                    {
                        now_div_AF_flag.Value = Request.QueryString["tabAFflag"].ToString().TrimEnd();
                        if (Consult_Flag && (now_div_AF_flag.Value == "1"))
                            now_div_AF_flag.Value = "2";
                    }
                    if (Request.QueryString["tabLFflag"] != null)
                        now_div_LF_flag.Value = Request.QueryString["tabLFflag"].ToString().TrimEnd();
                }

                VirDBAccess.DbOperTrace.addOperLog(Session["userid"].ToString(), "consumer_all", this.consumer_key.Value.ToString().TrimEnd(), "", "",
                            Session["UserAct"].ToString());
            }
            else
            {
                {
                    if (hdnRefreshData.Value != "0")
                    {
                        if (hdnRefreshData.Value == "1")
                        {
                            showEmploymentList();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "2")
                        {
                            showSchoolList();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "3")
                        {
                            showDayprogList();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "4")
                        {
                            showContactList();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "5")
                        {
                            DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                            showdata_lf(ConsumerInfo);
                            showdata_af();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "6")
                        {
                            //DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                            viewphoto.ImageUrl = "ImageThumbeNail.aspx?height=120&width=120";
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "7")
                        {
                            showPermissionList();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }

                        if (hdnRefreshData.Value == "8")
                        {
                            DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                            setDropDownList(ConsumerInfo, "c_court_docs");
                            showSDPList();
                            if (this.dataChg.Value == "1")
                            {
                                this.dataChg.Value = "0";
                                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DataChg", "<script>DataChanged();</script>");
                            }
                        }
                        //BindDropDownLists();
                        //if ((Int32.Parse(Session["ConsumerLevel"].ToString()) == 9) ||
                        //         ((Session["EmployeeType"].ToString() == "I") && (((DataRow)Session["ConsumerInfo"])["c_uci"].ToString() == "")))
                        //        AllEdit_Flag = true;
                        //    else AllEdit_Flag = false;

                        //    showdata_fs((DataRow)Session["ConsumerInfo"]);
                        //    showdata_lf((DataRow)Session["ConsumerInfo"]);
                        //    showdata_dc((DataRow)Session["ConsumerInfo"]);
                        //    showdata_ad((DataRow)Session["ConsumerInfo"]);
                        //    showdata_re((DataRow)Session["ConsumerInfo"]);

                        //    showEmploymentList();
                        //    showSchoolList();
                        //    showPosUfsList();
                        //    showDayprogList();
                        //    showContactList();
                        //    showPermissionList();

                        hdnRefreshData.Value = "0";
                        this.IDNotessave.Value = "Y";

                        //ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>DataChanged();</script>");
                    }

                    if (this.SaveSameName.Value == "1")
                    {
                        this.SaveSameName.Value = "0";
                        SaveFaceSheet();
                    }
                    if (this.NewSameName.Value == "1")
                    {
                        this.NewSameName.Value = "0";
                        NewFaceSheet();
                    }
                    if (this.InitialIPP.Value == "1")
                    {
                        this.InitialIPP.Value = "0";
                        InitialIPPAt36Month();
                        InitialIpp = true;
                    }

                    if (hdtoSaveData.Value == "PageClosed")
                    {
                        if (Request.QueryString["type"] != null)
                            NewFaceSheet();
                        else
                            SaveFaceSheet();
                    }
                }
            }

            string sltflagstr = "";
            if (now_div_flag.Value == "2")
                sltflagstr = "doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");";
            else
            {
                if (now_div_flag.Value == "11")
                    sltflagstr = "doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubAFbyflag(" + now_div_AF_flag.Value.ToString().TrimEnd() + ");";
                else if (InitialIpp)
                    sltflagstr = "DataChanged();doseltdbyflag(3);";
                else
                    sltflagstr = "doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");";
            }
            string cursorstr = "<script type='text/javascript'>" + sltflagstr + "refreshAddableSection();document.body.style.cursor = 'default';</script>";
            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "cursor", cursorstr);
        }

        private void DisableControl()
        {
            setControlReadOnly(this.ConsumerInfo);

            this.btnEdit.Visible = false;
            this.btnAdd.Visible = false;

            this.BtnAddCo.Visible = false;
            this.BtnAddAm.Visible = false;
            this.BtnAddSc.Visible = false;
            //this.BtnAddPgF.Visible = false;
            this.BtnAddPgU.Visible = false;
            this.BtnAddPe.Visible = false;
            this.BtnAddSDP.Visible = false;

            this.BtnAddSLS.Visible = false;
            this.BtnAddCoPay.Visible = false;
            this.BtnAddJudical.Visible = false;
            this.BtnAddComplaint.Visible = false;
            this.BtnAddVoter.Visible = false;
            this.BtnAddIMD.Visible = false;
            this.BtnAddFCPP.Visible = false;
            this.BtnAddAFPF.Visible = false;

            this.btnMissingPerson.Disabled = true;
            this.btnSendEmail.Disabled = true;
            //this.btnMainAdd.Disbaled = true;
            this.viewphoto.Enabled = false;

            this.btn_AddBenefit.Attributes.Add("style", "display:none");
            this.btn_Addagency.Attributes.Add("style", "display:none");
            this.btn_AddihssProv.Attributes.Add("style", "display:none");
            this.btn_othersupport.Attributes.Add("style", "display:none");
            this.btn_burialplan.Attributes.Add("style", "display:none");
            this.btn_AddConservator.Attributes.Add("style", "display:none");
            this.btn_AddGuardian.Attributes.Add("style", "display:none");

            this.btnEditESRIntake.Visible = false;
            this.btnEditIntake.Visible = false;
            this.btnStats.Visible = false;
            this.btnChgUCI.Visible = false;
        }

        private void BindDropDownLists()
        {
            DataTable GenderDT = VirDBAccess.DbCommon.getTablesList("GNDR", Session["UserAct"].ToString());
            c_gender.DataSource = GenderDT;
            c_gender.DataBind();
            DataTable EthnicityDT = VirDBAccess.DbCommon.getTablesListWithID("ETHN", Session["UserAct"].ToString());
            c_ethnicity.DataSource = EthnicityDT;
            c_ethnicity.DataBind();
            c_text12.DataSource = EthnicityDT;
            c_text12.DataBind();
            DataTable LanguageDT = VirDBAccess.DbCommon.getTablesListWithID("LANG", Session["UserAct"].ToString());
            c_language.DataSource = LanguageDT;
            c_language.DataBind();
            c_language.SelectedValue = "11";

            c_preferred_language.DataSource = LanguageDT;
            c_preferred_language.DataBind();
            c_preferred_language.SelectedValue = "11";

            c_document_language.DataSource = LanguageDT;
            c_document_language.DataBind();
            c_document_language.SelectedValue = "11";

            DataTable HairColorDT = VirDBAccess.DbCommon.getTablesList("CONSUMER HAIR COLOR", Session["UserAct"].ToString());
            c_hair_color.DataSource = HairColorDT;
            c_hair_color.DataBind();
            c_hair_color.Items.Insert(0, new ListItem("", ""));
            DataTable MaritalStatusDT = VirDBAccess.DbCommon.getTablesListWithID("MARS", Session["UserAct"].ToString());
            c_marital_status.DataSource = MaritalStatusDT;
            c_marital_status.DataBind();
            DataTable EyeColorDT = VirDBAccess.DbCommon.getTablesList("CONSUMER EYE COLOR", Session["UserAct"].ToString());
            c_eye_color.DataSource = EyeColorDT;
            c_eye_color.DataBind();
            c_eye_color.Items.Insert(0, new ListItem("", ""));
            //DataTable UsersDT = VirDBAccess.DbUser.getUsersListSameArea(Session["userunitarea"].ToString(), Session["UserAct"].ToString());
            DataTable UsersCMDT = VirDBAccess.DbUser.getUsersListForType("C", Session["UserAct"].ToString());
            c_cm_id.DataSource = UsersCMDT;
            c_cm_id.DataBind();
            c_cm_id.Items.Insert(0, new ListItem("", ""));
            c_cm_id_dup.DataSource = UsersCMDT;
            c_cm_id_dup.DataBind();
            c_cm_id_dup.Items.Insert(0, new ListItem("", ""));
            DataTable UsersDT = VirDBAccess.DbUser.getUsersList(Session["UserAct"].ToString());
            c_case_assign_manager.DataSource = UsersDT;
            c_case_assign_manager.DataBind();
            c_case_assign_manager.Items.Insert(0, new ListItem("", ""));
            c_last_mod_by.DataSource = UsersDT;
            c_last_mod_by.DataBind();
            c_last_mod_by.Items.Insert(0, new ListItem("", ""));

            DataTable Phone3LabelDT = VirDBAccess.DbCommon.getTablesList("PHONE LABEL", Session["UserAct"].ToString());
            c_phone_3_label.DataSource = Phone3LabelDT;
            c_phone_3_label.DataBind();
            DataTable ResidenceTypeDT = VirDBAccess.DbCommon.getTablesListWithID("RS", Session["UserAct"].ToString());
            c_residence_current.DataSource = ResidenceTypeDT;
            c_residence_current.DataBind();
            c_residence_prior.DataSource = ResidenceTypeDT;
            c_residence_prior.DataBind();
            DataTable LegalCountyDT = VirDBAccess.DbCommon.getTablesListWithID("CNTY", Session["UserAct"].ToString());
            c_legal_county.DataSource = LegalCountyDT;
            c_legal_county.DataBind();
            c_physical_county.DataSource = LegalCountyDT;
            c_physical_county.DataBind();
            DataTable AddrCodeDT = VirDBAccess.DbCommon.getTablesList("CONSUMER MAIL CODE", Session["UserAct"].ToString());
            c_mail_code.DataSource = AddrCodeDT;
            c_mail_code.DataBind();
            c_mailing_mail_code.DataSource = AddrCodeDT;
            c_mailing_mail_code.DataBind();
            //DataTable LegalStatusDT = VirDBAccess.DbCommon.getTablesList("L", Session["UserAct"].ToString());
            DataTable LegalStatusDT = VirDBAccess.DbCommon.getFullTables2List("LS", Session["UserAct"].ToString());
            c_legal_status_1.DataSource = LegalStatusDT;
            c_legal_status_1.DataBind();
            c_legal_status_1.Items.Insert(0, new ListItem("", ""));
            c_legal_status_2.DataSource = LegalStatusDT;
            c_legal_status_2.DataBind();
            c_legal_status_2.Items.Insert(0, new ListItem("", ""));
            c_legal_status_1_dup.DataSource = LegalStatusDT;
            c_legal_status_1_dup.DataBind();
            c_legal_status_1_dup.Items.Insert(0, new ListItem("", ""));
            c_legal_status_2_dup.DataSource = LegalStatusDT;
            c_legal_status_2_dup.DataBind();
            c_legal_status_2_dup.Items.Insert(0, new ListItem("", ""));

            DataTable SSDT = VirDBAccess.DbCommon.getTablesList("CONSUMER SS BENEFITS", Session["UserAct"].ToString());
            c_ss1.DataSource = SSDT;
            c_ss1.DataBind();
            c_ss2.DataSource = SSDT;
            c_ss2.DataBind();
            c_ccs.DataSource = SSDT;
            c_ccs.DataBind();

            DataTable GenericAgencyDT = VirDBAccess.DbCommon.getTablesList("CONSUMER OTHER CASH", Session["UserAct"].ToString());
            c_generic_agency_1.DataSource = GenericAgencyDT;
            c_generic_agency_1.DataBind();
            c_generic_agency_1.Items.Insert(0, new ListItem("", ""));
            c_generic_agency_2.DataSource = GenericAgencyDT;
            c_generic_agency_2.DataBind();
            c_generic_agency_2.Items.Insert(0, new ListItem("", ""));
            c_generic_agency_3.DataSource = GenericAgencyDT;
            c_generic_agency_3.DataBind();
            c_generic_agency_3.Items.Insert(0, new ListItem("", ""));

            /*
            DataTable InsuDT = VirDBAccess.DbCommon.getTablesList("CONSUMER INSURANCE", Session["UserAct"].ToString());
            c_otherinsurance1.DataSource = InsuDT;
            c_otherinsurance1.DataBind();
            c_otherinsurance1.Items.Insert(0, new ListItem("", ""));
            */

            DataTable CaseLevelDT = VirDBAccess.DbCommon.getTablesList("LEVL", Session["UserAct"].ToString());
            c_case_level.DataSource = CaseLevelDT;
            c_case_level.DataBind();

            DataTable cmTypeDT = VirDBAccess.DbCommon.getTablesListWithID("CMTP", Session["UserAct"].ToString());
            c_cm_type.DataSource = cmTypeDT;
            c_cm_type.DataBind();
            DataTable UsersGroupsDT = VirDBAccess.DbCommon.getUsersGroupsList(Session["UserAct"].ToString()); ;
            c_unit_area.DataSource = UsersGroupsDT;
            c_unit_area.DataBind();
            c_unit_area.Items.Insert(0, new ListItem("", ""));
            DataTable CaseStatusDT = VirDBAccess.DbCommon.getTablesListWithID("STUS", Session["UserAct"].ToString());
            c_status.DataSource = CaseStatusDT;
            c_status.DataBind();
            c_previous_status.DataSource = CaseStatusDT;
            c_previous_status.DataBind();
            c_status.Items.Insert(0, new ListItem("", ""));
            c_previous_status.Items.Insert(0, new ListItem("", ""));
            DataTable ReportAgencyDT = VirDBAccess.DbCommon.getTablesList("RPT AGENCY", Session["UserAct"].ToString());
            c_report_agency.DataSource = ReportAgencyDT;
            c_report_agency.DataBind();
            DataTable cmAgencyDT = VirDBAccess.DbCommon.getTablesList("REGC", Session["UserAct"].ToString());
            c_cm_agency.DataSource = cmAgencyDT;
            c_cm_agency.DataBind();
            /*
            DataTable OffSiteLocDT = VirDBAccess.DbCommon.getTablesList("OFF SITE LOCATION", Session["UserAct"].ToString());
            c_offsite_location.DataSource = OffSiteLocDT;
            c_offsite_location.DataBind();
            c_chart_2.DataSource = OffSiteLocDT;
            c_chart_2.DataBind();
            c_chart_3.DataSource = OffSiteLocDT;
            c_chart_3.DataBind();
            c_chart_4.DataSource = OffSiteLocDT;
            c_chart_4.DataBind();
            */
            //DataTable ScreenerDT = VirDBAccess.DbCommon.getTablesList("SCREENER", Session["UserAct"].ToString());
            c_ref_screener.DataSource = UsersDT;
            c_ref_screener.DataBind();
            c_ref_screener.Items.Insert(0, new ListItem("", ""));
            c_ref_2_screener.DataSource = UsersDT;
            c_ref_2_screener.DataBind();
            c_ref_2_screener.Items.Insert(0, new ListItem("", ""));
            DataTable ReferralSourceDT = VirDBAccess.DbCommon.getTablesListWithID("REFR", Session["UserAct"].ToString());
            //DataTable ReferralSourceDT = VirDBAccess.DbCommon.getTablesList("REF SOURCE CODE", Session["UserAct"].ToString());
            c_ref_source.DataSource = ReferralSourceDT;
            c_ref_source.DataBind();
            c_ref_2_source.DataSource = ReferralSourceDT;
            c_ref_2_source.DataBind();
            DataTable RelationshipDT = VirDBAccess.DbCommon.getTablesList("RELATIONSHIP", Session["UserAct"].ToString());
            c_ref_relationship.DataSource = RelationshipDT;
            c_ref_relationship.DataBind();
            c_ref_2_relationship.DataSource = RelationshipDT;
            c_ref_2_relationship.DataBind();

            DataTable ReasonDT = VirDBAccess.DbCommon.getTablesList("REF REASON", Session["UserAct"].ToString());
            c_ref_reason.DataSource = ReasonDT;
            c_ref_reason.DataBind();
            c_ref_reason.Items.Insert(0, new ListItem("", ""));
            c_ref_2_reason.DataSource = ReasonDT;
            c_ref_2_reason.DataBind();
            c_ref_2_reason.Items.Insert(0, new ListItem("", ""));

            DataTable FrequencyDT = VirDBAccess.DbCommon.getTablesList("Benefit Frequency", Session["UserAct"].ToString());
            c_generic1Freq.DataSource = FrequencyDT;
            c_generic1Freq.DataBind();
            c_generic1Freq.Items.Insert(0, new ListItem("", ""));
            c_generic2Freq.DataSource = FrequencyDT;
            c_generic2Freq.DataBind();
            c_generic2Freq.Items.Insert(0, new ListItem("", ""));
            c_generic3Freq.DataSource = FrequencyDT;
            c_generic3Freq.DataBind();
            c_generic3Freq.Items.Insert(0, new ListItem("", ""));
            c_ss1Freq.DataSource = FrequencyDT;
            c_ss1Freq.DataBind();
            c_ss1Freq.Items.Insert(0, new ListItem("", ""));
            c_ss2Freq.DataSource = FrequencyDT;
            c_ss2Freq.DataBind();
            c_ss2Freq.Items.Insert(0, new ListItem("", ""));
            c_wpcsHrs.DataSource = FrequencyDT;
            c_wpcsHrs.DataBind();
            c_wpcsHrs.Items.Insert(0, new ListItem("", ""));
            DataTable MediTypeDT = VirDBAccess.DbCommon.getTablesList("Medi-Cal Type", Session["UserAct"].ToString());
            c_medical_type.DataSource = MediTypeDT;
            c_medical_type.DataBind();
            c_medical_type.Items.Insert(0, new ListItem("", ""));

            DataTable DAYPDT = VirDBAccess.DbCommon.getTablesListWithID("DAYP", Session["UserAct"].ToString());
            c_program_primary.DataSource = DAYPDT;
            c_program_primary.DataBind();

            //DataTable SpecialistDT;
            //SpecialistDT = VirDBAccess.DbUser.getUserSpecialist("Lanterman Specialist", Session["UserAct"].ToString());
            //SpecCheckList.DataSource = SpecialistDT;
            //SpecCheckList.DataBind();
            //It is in datagrid
            /*
            DataTable JobtypeDT = VirDBAccess.DbCommon.getTablesList("EMPLOYMENT JOB TYPE", Session["UserAct"].ToString());
            jobtype.DataSource = JobtypeDT;
            jobtype.DataBind();
            DataTable EmtypeDT = VirDBAccess.DbCommon.getTablesList("EMPLOYMENT PAID TYPE", Session["UserAct"].ToString());
            employmenttype.DataSource = EmtypeDT;
            employmenttype.DataBind();
            
            DataTable OtherDT = VirDBAccess.DbCommon.getTables2List("SCHOOL BIP", Session["UserAct"].ToString());
            sh_other.DataSource = EmtypeDT;
            sh_other.DataBind();
            */

            DataTable VendorDT = VirDBAccess.DbUser.getUsersListForType("V", Session["UserAct"].ToString());
            c_text10.DataSource = VendorDT;
            c_text10.DataBind();
            c_text10.Items.Insert(0, new ListItem("", ""));

            //DataTable AppSCDT = VirDBAccess.DbUser.getUsersListForType("CW", Session["UserAct"].ToString());
            DataTable AppSCDT = VirDBAccess.DbUser.getUsersListForDropDown(Session["UserAct"].ToString());
            c_text5.DataSource = AppSCDT;
            c_text5.DataBind();
            c_text5.Items.Insert(0, new ListItem("", ""));
            c_text6.DataSource = AppSCDT;
            c_text6.DataBind();
            c_text6.Items.Insert(0, new ListItem("", ""));
        }

        private void BindDropDownLists_SA()
        {
            DataTable DrugFirstTimeDT = VirDBAccess.DbCommon.getTablesList("Drug First Time", Session["UserAct"].ToString());
            drug_first_time.DataSource = DrugFirstTimeDT;
            drug_first_time.DataBind();
            drug_first_time.Items.Insert(0, new ListItem("", ""));

            DataTable DrugFreqDT = VirDBAccess.DbCommon.getTablesList("Drug Freq", Session["UserAct"].ToString());
            drug_freq.DataSource = DrugFreqDT;
            drug_freq.DataBind();
            drug_freq.Items.Insert(0, new ListItem("", ""));

            DataTable DrugRouteDT = VirDBAccess.DbCommon.getTablesList("Drug Route", Session["UserAct"].ToString());
            drug_route.DataSource = DrugRouteDT;
            drug_route.DataBind();
            drug_route.Items.Insert(0, new ListItem("", ""));

            DataTable SmokeFreqDT = VirDBAccess.DbCommon.getTablesList("Smoke Freq", Session["UserAct"].ToString());
            smoke_freq.DataSource = SmokeFreqDT;
            smoke_freq.DataBind();
            smoke_freq.Items.Insert(0, new ListItem("", ""));

            DataTable YesNoDT = VirDBAccess.DbCommon.getTablesList("YESNO", Session["UserAct"].ToString());
            smoke.DataSource = YesNoDT;
            smoke.DataBind();
            quitting.DataSource = YesNoDT;
            quitting.DataBind();
            NRT.DataSource = YesNoDT;
            NRT.DataBind();
            quit_smokeing_info.DataSource = YesNoDT;
            quit_smokeing_info.DataBind();
            inject_use_needle.DataSource = YesNoDT;
            inject_use_needle.DataBind();
            drug_user_contact.DataSource = YesNoDT;
            drug_user_contact.DataBind();
            pharmaceutical_med_used.DataSource = YesNoDT;
            pharmaceutical_med_used.DataBind();

        }

        private void BindDropDownLists_LF()
        {
            DataTable MediCalDT = VirDBAccess.DbCommon.getTablesList("Medi-Cal", Session["UserAct"].ToString());
            primary_medi_cal.DataSource = MediCalDT;
            primary_medi_cal.DataBind();
            primary_medi_cal.Items.Insert(0, new ListItem("", ""));

            secondary_medi_cal.DataSource = MediCalDT;
            secondary_medi_cal.DataBind();
            secondary_medi_cal.Items.Insert(0, new ListItem("", ""));

            DataTable YESNODT = VirDBAccess.DbCommon.getTablesList("YESNO", Session["UserAct"].ToString());
            spec_surpervision.DataSource = YESNODT;
            spec_surpervision.DataBind();
            given.DataSource = YESNODT;
            given.DataBind();
            lifeplan_developed.DataSource = YESNODT;
            lifeplan_developed.DataBind();
            burial_arrangement1.DataSource = YESNODT;
            burial_arrangement1.DataBind();
            burial_arrangement2.DataSource = YESNODT;
            burial_arrangement2.DataBind();
            burial_arrangement3.DataSource = YESNODT;
            burial_arrangement3.DataBind();

            DataTable RelationODT = VirDBAccess.DbCommon.getTablesList("IHSS Provider Relation", Session["UserAct"].ToString());
            ihss_relationship.DataSource = RelationODT;
            ihss_relationship.DataBind();
            ihss_relationship.Items.Insert(0, new ListItem("", ""));
            ihss_relationship2.DataSource = RelationODT;
            ihss_relationship2.DataBind();
            ihss_relationship2.Items.Insert(0, new ListItem("", ""));
            ihss_relationship3.DataSource = RelationODT;
            ihss_relationship3.DataBind();
            ihss_relationship3.Items.Insert(0, new ListItem("", ""));

            DataTable IHSSODT = VirDBAccess.DbCommon.getTablesList("YESNOIHSS", Session["UserAct"].ToString());
            c_ihss.DataSource = IHSSODT;
            c_ihss.DataBind();
            c_ihss.Items.Insert(0, new ListItem("", ""));

            DataTable TrustTypeDT = VirDBAccess.DbCommon.getTablesList("Trust Type", Session["UserAct"].ToString());
            trusttype.DataSource = TrustTypeDT;
            trusttype.DataBind();
            trusttype.Items.Insert(0, new ListItem("", ""));

            DataTable PayeeCodeDT = VirDBAccess.DbCommon.getTablesList("REP PAYEE CODES", Session["UserAct"].ToString());
            c_payee_zip.DataSource = PayeeCodeDT;
            c_payee_zip.DataBind();
            c_payee_zip.Items.Insert(0, new ListItem("", ""));

            c_payee_zip2.DataSource = PayeeCodeDT;
            c_payee_zip2.DataBind();
            c_payee_zip2.Items.Insert(0, new ListItem("", ""));

            c_ocmh.DataSource = PayeeCodeDT;
            c_ocmh.DataBind();
            c_ocmh.Items.Insert(0, new ListItem("", ""));
        }

        private void BinDropDownLists_AF()
        {
            DataTable YESNODT = VirDBAccess.DbCommon.getTablesList("YESNO", Session["UserAct"].ToString());
            request_not_share.DataSource = YESNODT;
            request_not_share.DataBind();
            sex_offender.DataSource = YESNODT;
            sex_offender.DataBind();
            strikes.DataSource = YESNODT;
            strikes.DataBind();

            DataTable ConsTypeDT = VirDBAccess.DbCommon.getTablesList("Conservator Type", Session["UserAct"].ToString());
            cons_type.DataSource = ConsTypeDT;
            cons_type.DataBind();
            cons_type.Items.Insert(0, new ListItem("", ""));
            cons_type2.DataSource = ConsTypeDT;
            cons_type2.DataBind();
            cons_type2.Items.Insert(0, new ListItem("", ""));
            cons_type3.DataSource = ConsTypeDT;
            cons_type3.DataBind();
            cons_type3.Items.Insert(0, new ListItem("", ""));
            cons_type4.DataSource = ConsTypeDT;
            cons_type4.DataBind();
            cons_type4.Items.Insert(0, new ListItem("", ""));

            DataTable GrdTypeDT = VirDBAccess.DbCommon.getTablesList("Guardian Type", Session["UserAct"].ToString());
            grd_type.DataSource = GrdTypeDT;
            grd_type.DataBind();
            grd_type.Items.Insert(0, new ListItem("", ""));
            grd_type2.DataSource = GrdTypeDT;
            grd_type2.DataBind();
            grd_type2.Items.Insert(0, new ListItem("", ""));
            grd_type3.DataSource = GrdTypeDT;
            grd_type3.DataBind();
            grd_type3.Items.Insert(0, new ListItem("", ""));
            grd_type4.DataSource = GrdTypeDT;
            grd_type4.DataBind();
            grd_type4.Items.Insert(0, new ListItem("", ""));

            DataTable ConsRelDT = VirDBAccess.DbCommon.getTablesList("Conservator Relation", Session["UserAct"].ToString());
            cons_relationship1.DataSource = ConsRelDT;
            cons_relationship1.DataBind();
            cons_relationship1.Items.Insert(0, new ListItem("", ""));
            cons_relationship2.DataSource = ConsRelDT;
            cons_relationship2.DataBind();
            cons_relationship2.Items.Insert(0, new ListItem("", ""));
            cons_relationship3.DataSource = ConsRelDT;
            cons_relationship3.DataBind();
            cons_relationship3.Items.Insert(0, new ListItem("", ""));
            cons_relationship4.DataSource = ConsRelDT;
            cons_relationship4.DataBind();
            cons_relationship4.Items.Insert(0, new ListItem("", ""));

            DataTable GrdRelDT = VirDBAccess.DbCommon.getTablesList("Guardian Relation", Session["UserAct"].ToString());
            grd_relationship1.DataSource = GrdRelDT;
            grd_relationship1.DataBind();
            grd_relationship1.Items.Insert(0, new ListItem("", ""));
            grd_relationship2.DataSource = GrdRelDT;
            grd_relationship2.DataBind();
            grd_relationship2.Items.Insert(0, new ListItem("", ""));
            grd_relationship3.DataSource = GrdRelDT;
            grd_relationship3.DataBind();
            grd_relationship3.Items.Insert(0, new ListItem("", ""));
            grd_relationship4.DataSource = GrdRelDT;
            grd_relationship4.DataBind();
            grd_relationship4.Items.Insert(0, new ListItem("", ""));

            //DataTable PoliceDT = VirDBAccess.DbCommon.getTablesList("Police Station", Session["UserAct"].ToString());
            //registerstation.DataSource = PoliceDT;
            //registerstation.DataBind();
            //registerstation.Items.Insert(0, new ListItem("", ""));

        }

        private void showEligibilityInfo()
        {
            if (this.org_msi.Value != "")
            {
                /*show ESR 101 List*/
                DataTable ESForm101DT = VirDBAccess.DbForm.GetForm101ListByMis(this.org_msi.Value, "1", Session["UserAct"].ToString());
                dg_EsrForm101.DataSource = ESForm101DT.DefaultView;
                dg_EsrForm101.DataBind();

                /*show 101 List*/
                DataTable Form101DT = VirDBAccess.DbForm.GetForm101ListByMis(this.org_msi.Value, "", Session["UserAct"].ToString());
                dg_Form101.DataSource = Form101DT.DefaultView;
                dg_Form101.DataBind();
            }

            /***ES Psycho Social List***/
            DataTable ESPsySocialListDT = VirDBAccess.DbForm.getFormEsrPsySocialListByUCI(this.consumer_key.Value, Session["UserAct"].ToString());
            dg_EsrPsySocialList.DataSource = ESPsySocialListDT.DefaultView;
            dg_EsrPsySocialList.DataBind();

            /***Psycho Social List****/
            DataTable PsySocialListDT = VirDBAccess.DbForm.getSocialAssListByUCI(this.consumer_key.Value, Session["UserAct"].ToString());
            dg_PsySocialList.DataSource = PsySocialListDT.DefaultView;
            dg_PsySocialList.DataBind();

            /*show ES Eligibility List*/
            DataTable ESREligDT = VirDBAccess.DbForm.getFormESREligibiltyListByUCI(this.consumer_key.Value, Session["UserAct"].ToString());
            dg_ESEligibiltyList.DataSource = ESREligDT.DefaultView;
            dg_ESEligibiltyList.DataBind();

            /*show Lanterman Eligibilty List*/
            DataTable EligMRDT = VirDBAccess.DbForm.getFormBLUESHEETListByUCI(this.consumer_key.Value, Session["UserAct"].ToString());
            dg_EligibiltyList.DataSource = EligMRDT.DefaultView;
            dg_EligibiltyList.DataBind();
        }

        protected void dg_Form101_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Consult_Flag)
                {
                    e.Item.Cells[8].Visible = false;
                    return;
                }

                if (Edit_Flag != "Y")
                    e.Item.Cells[8].Text = "View";
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");

                if (Consult_Flag)
                {
                    e.Item.Cells[8].Visible = false;
                    return;
                }

                if ((Edit_Flag == "Y") && (e.Item.Cells[6].Text == "&nbsp;"))
                {
                    if (Session["useractname"].ToString().ToUpper() == "PRNT")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoPRNT.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoPRNT.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                    }
                    else
                    {
                        if (Session["DefRegName"].ToString() == "FDLRC")
                        {
                            e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                            ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                        }
                        else
                        {
                            e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101Info.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                            ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101Info.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                        }
                    }
                }
                else
                {
                    if (Session["useractname"].ToString().ToUpper() == "PRNT")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoPRNT.aspx?ID=" + e.Item.Cells[0].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoPRNT.aspx?ID=" + e.Item.Cells[0].Text + "');");
                    }
                    else
                    {
                        if (Session["DefRegName"].ToString() == "FDLRC")
                        {
                            e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "');");
                            ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "');");
                        }
                        else
                        {
                            e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101Info.aspx?ID=" + e.Item.Cells[0].Text + "');");
                            ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101Info.aspx?ID=" + e.Item.Cells[0].Text + "');");
                        }
                    }
                }
            }
        }

        protected void dg_EsrForm101_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Consult_Flag)
                {
                    e.Item.Cells[8].Visible = false;
                    return;
                }

                if (Edit_Flag != "Y")
                    e.Item.Cells[8].Text = "View";
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");

                if (Consult_Flag)
                {
                    e.Item.Cells[8].Visible = false;
                    return;
                }

                if ((Edit_Flag == "Y") && (e.Item.Cells[6].Text == "&nbsp;"))
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoERFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoERFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoER.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoER.aspx?ID=" + e.Item.Cells[0].Text + "&type=edit');");
                    }
                }
                else
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoERFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoERFDLRC.aspx?ID=" + e.Item.Cells[0].Text + "');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/Form101InfoER.aspx?ID=" + e.Item.Cells[0].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/Form101InfoER.aspx?ID=" + e.Item.Cells[0].Text + "');");
                    }
                }
            }
        }

        private void dg_EsrPsySocialList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Consult_Flag)
                {
                    e.Item.Cells[5].Visible = false;
                    return;
                }

                if (Edit_Flag != "Y")
                    e.Item.Cells[5].Text = "View";
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");

                if (Consult_Flag)
                {
                    e.Item.Cells[5].Visible = false;
                    return;
                }

                if (Edit_Flag == "Y")
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormEsrPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormEsrPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormEsrPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormEsrPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                }
                else
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormEsrPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormEsrPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormEsrPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormEsrPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                }
            }
        }

        private void dg_PsySocialList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Consult_Flag)
                {
                    e.Item.Cells[5].Visible = false;
                    return;
                }

                if (Edit_Flag != "Y")
                    e.Item.Cells[5].Text = "View";
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");

                if (Consult_Flag)
                {
                    e.Item.Cells[5].Visible = false;
                    return;
                }

                if (Edit_Flag == "Y")
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                }
                else
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormPsychoSocialFDLRC.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormPsychoSocialInfo.aspx?EntryKey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                }
            }
        }

        protected void dg_EligibiltyList_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Consult_Flag)
                {
                    e.Item.Cells[12].Visible = false;
                    return;
                }

                if (Edit_Flag != "Y")
                    e.Item.Cells[12].Text = "View";
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");
                e.Item.ForeColor = Color.FromName(e.Item.Cells[13].Text);

                if (Consult_Flag)
                {
                    e.Item.Cells[12].Visible = false;
                    return;
                }

                if (Edit_Flag == "Y")
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormBLUESHEETInfoFDLRC.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormBLUESHEETInfoFDLRC.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }

                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormBLUESHEETInfo.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormBLUESHEETInfo.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                }
                else
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormBLUESHEETInfoFDLRC.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormBLUESHEETInfoFDLRC.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "');");
                    }

                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormBLUESHEETInfo.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormBLUESHEETInfo.aspx?EntryKey=" + e.Item.Cells[0].Text +
                        "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                }
            }
        }

        protected void dg_ESEligibiltyList_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Consult_Flag)
                {
                    e.Item.Cells[11].Visible = false;
                    return;
                }

                if (Edit_Flag != "Y")
                    e.Item.Cells[11].Text = "View";
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");
                e.Item.ForeColor = Color.FromName(e.Item.Cells[12].Text);

                if (Consult_Flag)
                {
                    e.Item.Cells[11].Visible = false;
                    return;
                }

                DateTime CreateDT = DateTime.Parse(e.Item.Cells[13].Text.TrimEnd());
                DateTime SwitchDT = DateTime.Parse("01/09/2015");
                string sFormInfo = "FormESREligibilityInfo.aspx";
                if (CreateDT < SwitchDT)
                    sFormInfo = "FormESREligibilityInfo_Old.aspx";

                if (Edit_Flag == "Y")
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormESREligibilityInfoFDLRC.aspx?entrykey=" + e.Item.Cells[0].Text +
                            "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormESREligibilityInfoFDLRC.aspx?entrykey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/" + sFormInfo + "?entrykey=" + e.Item.Cells[0].Text +
                            "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/" + sFormInfo + "?entrykey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "&type=edit');");
                    }
                }
                else
                {
                    if (Session["DefRegName"].ToString() == "FDLRC")
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormESREligibilityInfoFDLRC.aspx?entrykey=" + e.Item.Cells[0].Text +
                            "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormESREligibilityInfoFDLRC.aspx?entrykey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                    else
                    {
                        e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/" + sFormInfo + "?entrykey=" + e.Item.Cells[0].Text +
                            "&c_key=" + e.Item.Cells[1].Text + "');");
                        ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/" + sFormInfo + "?entrykey=" +
                            e.Item.Cells[0].Text + "&c_key=" + e.Item.Cells[1].Text + "');");
                    }
                }
            }
        }

        private void showLabel_fs(DataRow ConsumerLabelInfo, DataRow ConsumerToolTipInfo)
        {
            setLabel(ConsumerLabelInfo, "l_c_attention");
            setLabel(ConsumerLabelInfo, "l_c_name_last");
            setLabel(ConsumerLabelInfo, "l_c_name_first");
            setLabel(ConsumerLabelInfo, "l_c_name_mi");
            setLabel(ConsumerLabelInfo, "l_c_gender");
            setLabel(ConsumerLabelInfo, "l_c_name_aka_last");
            setLabel(ConsumerLabelInfo, "l_c_name_aka_first");
            setLabel(ConsumerLabelInfo, "l_c_name_aka_mi");
            setLabel(ConsumerLabelInfo, "l_c_ethnicity");
            setLabel(ConsumerLabelInfo, "l_c_text12");
            setLabel(ConsumerLabelInfo, "l_c_name_maiden_last");
            setLabel(ConsumerLabelInfo, "l_c_name_maiden_first");
            setLabel(ConsumerLabelInfo, "l_c_language");
            setLabel(ConsumerLabelInfo, "l_c_preferred_language");
            setLabel(ConsumerLabelInfo, "l_c_document_language");
            setLabel(ConsumerLabelInfo, "l_c_date14");
            setLabel(ConsumerLabelInfo, "l_c_text7");
            setLabel(ConsumerLabelInfo, "l_c_date13");
            setLabel(ConsumerLabelInfo, "l_c_dob");
            setLabel(ConsumerLabelInfo, "l_c_hair_color");
            setLabel(ConsumerLabelInfo, "l_c_birthplace");
            setLabel(ConsumerLabelInfo, "l_c_eye_color");
            setLabel(ConsumerLabelInfo, "l_c_marital_status");
            //setLabel(ConsumerLabelInfo, "l_c_height_weight");
            setLabel(ConsumerLabelInfo, "l_c_cm_id");
            //setLabel(ConsumerLabelInfo, "l_c_uci");
            setLabel(ConsumerLabelInfo, "l_c_phone_1");
            setLabel(ConsumerLabelInfo, "l_c_phone_2");
            setLabel(ConsumerLabelInfo, "l_c_phone_3");
            setLabel(ConsumerLabelInfo, "l_c_text8"); // new add
            setLabel(ConsumerLabelInfo, "l_c_email");
            //  setLabel(ConsumerLabelInfo, "l_c_fax");  //remove old
            setLabel(ConsumerLabelInfo, "l_c_residence_number");
            setLabel(ConsumerLabelInfo, "l_c_residence_current");
            setLabel(ConsumerLabelInfo, "l_c_residence_date");
            setLabel(ConsumerLabelInfo, "l_c_residence_prior"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_address_name");
            setLabel(ConsumerLabelInfo, "l_c_address_line_1");
            setLabel(ConsumerLabelInfo, "l_c_address_line_2");
            setLabel(ConsumerLabelInfo, "l_c_address_city");
            //setLabel(ConsumerLabelInfo, "l_c_address_state");
            setLabel(ConsumerLabelInfo, "l_c_address_zip");
            //setLabel(ConsumerLabelInfo, "l_c_mail_code");
            //setLabel(ConsumerLabelInfo, "l_c_mailing_address_line_1");
            //setLabel(ConsumerLabelInfo, "l_c_mailing_address_line_2");
            //setLabel(ConsumerLabelInfo, "l_c_mailing_address_city");
            //setLabel(ConsumerLabelInfo, "l_c_mailing_address_state");
            //setLabel(ConsumerLabelInfo, "l_c_mailing_address_zip");
            //setLabel(ConsumerLabelInfo, "l_c_mailing_mail_code");
            //setLabel(ConsumerLabelInfo, "l_c_school");          // remove old
            setLabel(ConsumerLabelInfo, "l_c_legal_county");
            setLabel(ConsumerLabelInfo, "l_c_physical_county");
            //setLabel(ConsumerLabelInfo, "l_c_program_primary");
            setLabel(ConsumerLabelInfo, "l_c_legal_status_1"); // new add
            setLabel(ConsumerLabelInfo, "l_c_legal_status_2"); // new add
            setLabel(ConsumerLabelInfo, "l_c_legal_status_date_1"); // new add
            setLabel(ConsumerLabelInfo, "l_c_legal_status_date_2"); // new add
            if (ConsumerLabelInfo["l_c_legal_status_1"].ToString().TrimEnd() != "")
                l_c_legal_status_1_dup.Text = ConsumerLabelInfo["l_c_legal_status_1"].ToString().TrimEnd(); // new add
            if (ConsumerLabelInfo["l_c_legal_status_2"].ToString().TrimEnd() != "")
                l_c_legal_status_2_dup.Text = ConsumerLabelInfo["l_c_legal_status_2"].ToString().TrimEnd(); // new add
            if (ConsumerLabelInfo["l_c_legal_status_date_1"].ToString().TrimEnd() != "")
                l_c_legal_status_date_1_dup.Text = ConsumerLabelInfo["l_c_legal_status_date_1"].ToString().TrimEnd(); // new add
            if (ConsumerLabelInfo["l_c_legal_status_date_2"].ToString().TrimEnd() != "")
                l_c_legal_status_date_2_dup.Text = ConsumerLabelInfo["l_c_legal_status_date_2"].ToString().TrimEnd(); // new add

            setToolTip(ConsumerToolTipInfo, "l_c_attention");
            setToolTip(ConsumerToolTipInfo, "l_c_name_last");
            //setToolTip(ConsumerToolTipInfo, "l_c_name_first");
            //setToolTip(ConsumerToolTipInfo, "l_c_name_mi");
            setToolTip(ConsumerToolTipInfo, "l_c_gender");
            setToolTip(ConsumerToolTipInfo, "l_c_name_aka_last");
            //setToolTip(ConsumerToolTipInfo, "l_c_name_aka_first");
            //setToolTip(ConsumerToolTipInfo, "l_c_name_aka_mi");
            setToolTip(ConsumerToolTipInfo, "l_c_ethnicity");
            setToolTip(ConsumerToolTipInfo, "l_c_text12");
            setToolTip(ConsumerToolTipInfo, "l_c_name_maiden_last");
            //setToolTip(ConsumerToolTipInfo, "l_c_name_maiden_first");
            setToolTip(ConsumerToolTipInfo, "l_c_language");
            setToolTip(ConsumerToolTipInfo, "l_c_preferred_language");
            setToolTip(ConsumerToolTipInfo, "l_c_document_language");
            setToolTip(ConsumerToolTipInfo, "l_c_date14");
            setToolTip(ConsumerToolTipInfo, "l_c_text7");
            setToolTip(ConsumerToolTipInfo, "l_c_date13");
            setToolTip(ConsumerToolTipInfo, "l_c_dob");
            setToolTip(ConsumerToolTipInfo, "l_c_hair_color");
            //setToolTip(ConsumerToolTipInfo, "l_c_birthplace");
            setToolTip(ConsumerToolTipInfo, "l_c_eye_color");
            setToolTip(ConsumerToolTipInfo, "l_c_marital_status");
            //setToolTip(ConsumerToolTipInfo, "l_c_height_weight");
            setToolTip(ConsumerToolTipInfo, "l_c_cm_id");
            //setToolTip(ConsumerToolTipInfo, "l_c_uci");
            setToolTip(ConsumerToolTipInfo, "l_c_phone_1");
            setToolTip(ConsumerToolTipInfo, "l_c_phone_2");
            setToolTip(ConsumerToolTipInfo, "l_c_phone_3");
            setToolTip(ConsumerToolTipInfo, "l_c_text8"); // new add
            setToolTip(ConsumerToolTipInfo, "l_c_email");
            //  setToolTip(ConsumerToolTipInfo, "l_c_fax");  //remove old
            setToolTip(ConsumerToolTipInfo, "l_c_residence_number");
            setToolTip(ConsumerToolTipInfo, "l_c_residence_current");
            setToolTip(ConsumerToolTipInfo, "l_c_residence_date");
            setToolTip(ConsumerToolTipInfo, "l_c_residence_prior"); // new add
            setToolTip(ConsumerToolTipInfo, "l_c_address_line_1");
            setToolTip(ConsumerToolTipInfo, "l_c_address_line_2");
            setToolTip(ConsumerToolTipInfo, "l_c_address_city");
            //setToolTip(ConsumerToolTipInfo, "l_c_address_state");
            setToolTip(ConsumerToolTipInfo, "l_c_address_zip");
            //setToolTip(ConsumerToolTipInfo, "l_c_mail_code");
            //setToolTip(ConsumerToolTipInfo, "l_c_mailing_address_line_1");
            //setToolTip(ConsumerToolTipInfo, "l_c_mailing_address_line_2");
            //setToolTip(ConsumerToolTipInfo, "l_c_mailing_address_city");
            //setToolTip(ConsumerToolTipInfo, "l_c_mailing_address_state");
            //setToolTip(ConsumerToolTipInfo, "l_c_mailing_address_zip");
            //setToolTip(ConsumerToolTipInfo, "l_c_mailing_mail_code");
            //setToolTip(ConsumerToolTipInfo, "l_c_school");          // remove old
            setToolTip(ConsumerToolTipInfo, "l_c_legal_county");
            setToolTip(ConsumerToolTipInfo, "l_c_physical_county");
            //setToolTip(ConsumerToolTipInfo, "l_c_program_primary");
            setToolTip(ConsumerToolTipInfo, "l_c_legal_status_1"); // new add
            setToolTip(ConsumerToolTipInfo, "l_c_legal_status_2"); // new add
            setToolTip(ConsumerToolTipInfo, "l_c_legal_status_date_1"); // new add
            setToolTip(ConsumerToolTipInfo, "l_c_legal_status_date_2"); // new add
            /*
            setEColor(ConsumerLabelInfo, "e_c_attention");
            setEColor(ConsumerLabelInfo, "e_c_name_last");
            //setEColor(ConsumerLabelInfo, "e_c_name_first");
            //setEColor(ConsumerLabelInfo, "e_c_name_mi");
            setEColor(ConsumerLabelInfo, "e_c_gender");
            setEColor(ConsumerLabelInfo, "e_c_name_aka_last");
            //setEColor(ConsumerLabelInfo, "e_c_name_aka_first");
            //setEColor(ConsumerLabelInfo, "e_c_name_aka_mi");
            setEColor(ConsumerLabelInfo, "e_c_ethnicity");
            setEColor(ConsumerLabelInfo, "e_c_name_maiden_last");
            //setEColor(ConsumerLabelInfo, "e_c_name_maiden_first");
            setEColor(ConsumerLabelInfo, "e_c_language");
            setEColor(ConsumerLabelInfo, "e_c_dob");
            setEColor(ConsumerLabelInfo, "e_c_hair_color");
            //setEColor(ConsumerLabelInfo, "e_c_birthplace");
            setEColor(ConsumerLabelInfo, "e_c_eye_color");
            setEColor(ConsumerLabelInfo, "e_c_marital_status");
            setEColor(ConsumerLabelInfo, "e_c_height_weight");
            setEColor(ConsumerLabelInfo, "e_c_cm_id");
            //setEColor(ConsumerLabelInfo, "e_c_uci");
            setEColor(ConsumerLabelInfo, "e_c_phone_1");
            setEColor(ConsumerLabelInfo, "e_c_phone_2");
            setEColor(ConsumerLabelInfo, "e_c_phone_3");
            setEColor(ConsumerLabelInfo, "e_c_email");
            setEColor(ConsumerLabelInfo, "e_c_fax");
            setEColor(ConsumerLabelInfo, "e_c_residence_number");
            setEColor(ConsumerLabelInfo, "e_c_residence_current");
            setEColor(ConsumerLabelInfo, "e_c_residence_date");
            setEColor(ConsumerLabelInfo, "e_c_address_line_1");
            setEColor(ConsumerLabelInfo, "e_c_address_line_2");
            setEColor(ConsumerLabelInfo, "e_c_address_city");
            //setEColor(ConsumerLabelInfo, "e_c_address_state");
            setEColor(ConsumerLabelInfo, "e_c_address_zip");
            //setEColor(ConsumerLabelInfo, "e_c_maie_code");
            //setEColor(ConsumerLabelInfo, "e_c_mailing_address_line_1");
            //setEColor(ConsumerLabelInfo, "e_c_mailing_address_line_2");
            //setEColor(ConsumerLabelInfo, "e_c_mailing_address_city");
            //setEColor(ConsumerLabelInfo, "e_c_mailing_address_state");
            //setEColor(ConsumerLabelInfo, "e_c_mailing_address_zip");
            //setEColor(ConsumerLabelInfo, "e_c_mailing_maie_code");
            setEColor(ConsumerLabelInfo, "e_c_school");
            setEColor(ConsumerLabelInfo, "e_c_legal_county");
            setEColor(ConsumerLabelInfo, "e_c_physical_county");
            //setEColor(ConsumerLabelInfo, "e_c_program_primary");
             */
        }

        private void showLabel_lf(DataRow ConsumerLabelInfo)
        {
            //setLabel(ConsumerLabelInfo, "l_c_wages"); // new add not in database
            setLabel(ConsumerLabelInfo, "l_c_medicaid_waiver");
            setLabel(ConsumerLabelInfo, "l_c_ssn");
            //setLabel(ConsumerLabelInfo, "l_c_inst_deeming");
            //setLabel(ConsumerLabelInfo, "l_c_epsdt");
            // setLabel(ConsumerLabelInfo, "l_c_iho_deeming"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ss1"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_ihoservices"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ss1amount"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_iholevel"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ss2"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_ihohrs"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_wpcshrs"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ss2amount"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ihss");
            setLabel(ConsumerLabelInfo, "l_c_payee_indicator"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ihss_hrs"); // new add
            // l_c_ihss_review_date
            //setLabel(ConsumerLabelInfo, "l_c_payee_zip"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_medi_cal");
            //setLabel(ConsumerLabelInfo, "l_c_confidentiality");
            //setLabel(ConsumerLabelInfo, "l_c_pandi"); // new add
            // l_c_pandiDate
            //setLabel(ConsumerLabelInfo, "l_c_conservator");
            //setLabel(ConsumerLabelInfo, "l_c_bank"); // new add
            //l_c_bankDate
            //setLabel(ConsumerLabelInfo, "l_c_shareofcost"); // new add
            setLabel(ConsumerLabelInfo, "l_c_generic_agency_1");
            setLabel(ConsumerLabelInfo, "l_c_generic_agency_2");
            setLabel(ConsumerLabelInfo, "l_c_generic_agency_3"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_healthnetwork"); // new add
            setLabel(ConsumerLabelInfo, "l_c_generic1amount"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_medical_review_date"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_ssa");
            //setLabel(ConsumerLabelInfo, "l_c_ssa_suffix");  
            setLabel(ConsumerLabelInfo, "l_c_generic2amount"); // new add
            setLabel(ConsumerLabelInfo, "l_c_text1"); // new add
            setLabel(ConsumerLabelInfo, "l_c_text2"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_hud"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_otherinsurance1"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_hud_authority"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_otherinsurance2"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_hud_authority2"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_burial"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_date13"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_burial2"); // new add
            setLabel(ConsumerLabelInfo, "l_c_text9"); // new add

            //setLabel(ConsumerLabelInfo, "l_c_text10"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_text11"); // new add

            //setLabel(ConsumerLabelInfo, "l_c_genericagency4");  // new add
            //setLabel(ConsumerLabelInfo, "l_c_genericagency5");  // new add
            //setLabel(ConsumerLabelInfo, "l_c_genericagency6");  // new add
            //setLabel(ConsumerLabelInfo, "l_c_waiver_excludability");
            //setLabel(ConsumerLabelInfo, "l_c_date04"); // new add
            //setLabel(ConsumerLabelInfo, "l_c_family_income");
            //setLabel(ConsumerLabelInfo, "l_c_minors_in_home");
            //setLabel(ConsumerLabelInfo, "l_c_family_percentage");
            //setLabel(ConsumerLabelInfo, "l_c_income_check");
            //setLabel(ConsumerLabelInfo, "l_c_text3"); // new add

            /*
            setEColor(ConsumerLabelInfo, "e_c_confidentiality");
            setEColor(ConsumerLabelInfo, "e_c_legal_status_1");
            setEColor(ConsumerLabelInfo, "e_c_legal_status_date_1");
            setEColor(ConsumerLabelInfo, "e_c_legal_status_2");
            setEColor(ConsumerLabelInfo, "e_c_legal_status_date_2");
            setEColor(ConsumerLabelInfo, "e_c_conservator");
            setEColor(ConsumerLabelInfo, "e_c_ssn");
            setEColor(ConsumerLabelInfo, "e_c_ssa");
            //setEColor(ConsumerLabelInfo, "e_c_ssa_suffix");
            setEColor(ConsumerLabelInfo, "e_c_generic_agency_1");
            setEColor(ConsumerLabelInfo, "e_c_generic_agency_2");
            //setEColor(ConsumerLabelInfo, "e_c_generic_agency_3");
            setEColor(ConsumerLabelInfo, "e_c_inst_deeming");
            setEColor(ConsumerLabelInfo, "e_c_epsdt");
            //setEColor(ConsumerLabelInfo, "e_c_nf");
            setEColor(ConsumerLabelInfo, "e_c_medi_cal");
            setEColor(ConsumerLabelInfo, "e_c_medicaid_waiver");
            setEColor(ConsumerLabelInfo, "e_c_waiver_excludability");
            setEColor(ConsumerLabelInfo, "e_c_ihss");
            setEColor(ConsumerLabelInfo, "e_c_payee_indicator");
            setEColor(ConsumerLabelInfo, "e_c_family_income");
            setEColor(ConsumerLabelInfo, "e_c_minors_in_home");
            setEColor(ConsumerLabelInfo, "e_c_family_percentage");
            //setEColor(ConsumerLabelInfo, "e_c_income_check");
            */


            setLabel(ConsumerLabelInfo, "l_c_pandi");
            setLabel(ConsumerLabelInfo, "l_c_pandiDate");
            setLabel(ConsumerLabelInfo, "l_c_generic_agency_1");
            setLabel(ConsumerLabelInfo, "l_c_generic1amount");
            setLabel(ConsumerLabelInfo, "l_c_payee_zip");
            setLabel(ConsumerLabelInfo, "l_c_generic1Freq");
            setLabel(ConsumerLabelInfo, "l_c_generic2Freq");
            setLabel(ConsumerLabelInfo, "l_c_generic3Freq");
            setLabel(ConsumerLabelInfo, "l_CCS");
            setLabel(ConsumerLabelInfo, "l_CCS_Num");
            setLabel(ConsumerLabelInfo, "l_c_ss1Freq");
            setLabel(ConsumerLabelInfo, "l_c_ss2");
            setLabel(ConsumerLabelInfo, "l_c_ss2amount");
            setLabel(ConsumerLabelInfo, "l_c_ss2Freq");
            setLabel(ConsumerLabelInfo, "l_c_payee_indicator2");
            setLabel(ConsumerLabelInfo, "l_c_payee_zip2");
            setLabel(ConsumerLabelInfo, "l_c_medi_cal");
            setLabel(ConsumerLabelInfo, "l_c_bic_number");
            setLabel(ConsumerLabelInfo, "l_c_medical_type");
            setLabel(ConsumerLabelInfo, "l_c_medicare_number");
            //setLabel(ConsumerLabelInfo, "l_c_policy");
            //setLabel(ConsumerLabelInfo, "l_ihss");
            setLabel(ConsumerLabelInfo, "l_ihss_comment");
            setLabel(ConsumerLabelInfo, "l_account");
            //setLabel(ConsumerLabelInfo, "l_ihss_hours");
            setLabel(ConsumerLabelInfo, "l_reviewdate");
            setLabel(ConsumerLabelInfo, "l_spec_surpervision");
            setLabel(ConsumerLabelInfo, "l_ihss_relationship");
            setLabel(ConsumerLabelInfo, "l_housing_auth");
            setLabel(ConsumerLabelInfo, "l_hud_voucher");
            setLabel(ConsumerLabelInfo, "l_othersupport_1");
            setLabel(ConsumerLabelInfo, "l_othersupport_2");
        }

        private void showLabel_dc(DataRow ConsumerLabelInfo)
        {
            // setLabel(ConsumerLabelInfo, "l_c_status_date_dup"); // new add
            setLabel(ConsumerLabelInfo, "l_c_case_level");
            setLabel(ConsumerLabelInfo, "l_c_date05"); // new add
            setLabel(ConsumerLabelInfo, "l_c_review_pcp_ifsp_date");
            setLabel(ConsumerLabelInfo, "l_c_date06"); // new add
            setLabel(ConsumerLabelInfo, "l_c_date10"); // new add
            setLabel(ConsumerLabelInfo, "l_c_review_quarterly1_date");
            //setLabel(ConsumerLabelInfo, "l_c_date05_dup");
            setLabel(ConsumerLabelInfo, "l_c_review_sar_date");
            setLabel(ConsumerLabelInfo, "l_c_review_quarterly3_date");
            setLabel(ConsumerLabelInfo, "l_c_text5");  // new add
            setLabel(ConsumerLabelInfo, "l_c_date07"); // new add
            setLabel(ConsumerLabelInfo, "l_c_date12"); // new add
            setLabel(ConsumerLabelInfo, "l_c_date08"); // new add
            setLabel(ConsumerLabelInfo, "l_c_review_cder_esr_date");
            setLabel(ConsumerLabelInfo, "l_c_initial_inquiry_date");
            setLabel(ConsumerLabelInfo, "l_c_date_waiver");
            setLabel(ConsumerLabelInfo, "l_c_initial_interview_date");
            setLabel(ConsumerLabelInfo, "l_c_review_mw_date");
            setLabel(ConsumerLabelInfo, "l_c_date_consent");
            //setLabel(ConsumerLabelInfo, "l_c_initial_inquiry_date_dup"); // new add
            setLabel(ConsumerLabelInfo, "l_c_qol");
            setLabel(ConsumerLabelInfo, "l_c_text6");  // new add
            setLabel(ConsumerLabelInfo, "l_c_date11"); // new add
            setLabel(ConsumerLabelInfo, "l_c_tickler_cycle"); // new add
            setLabel(ConsumerLabelInfo, "l_c_eligibility_date");
            setLabel(ConsumerLabelInfo, "l_c_base_month");
            setLabel(ConsumerLabelInfo, "l_c_date01"); // new add

            setLabel(ConsumerLabelInfo, "l_c_date02"); // new add
            setLabel(ConsumerLabelInfo, "l_c_date03"); // new add
            setLabel(ConsumerLabelInfo, "l_c_date09"); // new add

            //setLabel(ConsumerLabelInfo, "l_c_medical_date");
            //setLabel(ConsumerLabelInfo, "l_c_psychological_date");
            /*
            setEColor(ConsumerLabelInfo, "e_c_case_level");
            setEColor(ConsumerLabelInfo, "e_c_base_month");
            setEColor(ConsumerLabelInfo, "e_c_report_agency");
            setEColor(ConsumerLabelInfo, "e_c_cm_agency");
            setEColor(ConsumerLabelInfo, "e_c_cm_type");
            setEColor(ConsumerLabelInfo, "e_c_review_pcp_ifsp_date");
            setEColor(ConsumerLabelInfo, "e_c_review_cder_esr_date");
            setEColor(ConsumerLabelInfo, "e_c_review_quarterly1_date");
            setEColor(ConsumerLabelInfo, "e_c_initial_inquiry_date");
            setEColor(ConsumerLabelInfo, "e_c_review_sar_date");
            setEColor(ConsumerLabelInfo, "e_c_initial_interview_date");
            setEColor(ConsumerLabelInfo, "e_c_review_quarterly3_date");
            setEColor(ConsumerLabelInfo, "e_c_case_assign_date");
            setEColor(ConsumerLabelInfo, "e_c_review_mw_date");
            setEColor(ConsumerLabelInfo, "e_c_eligibility_date");
            setEColor(ConsumerLabelInfo, "e_c_date_consent");
            setEColor(ConsumerLabelInfo, "e_c_date_waiver");
            setEColor(ConsumerLabelInfo, "e_c_qol");
            setEColor(ConsumerLabelInfo, "e_c_medical_date");
            setEColor(ConsumerLabelInfo, "e_c_psychological_date");
            setEColor(ConsumerLabelInfo, "e_c_comment_1");
            setEColor(ConsumerLabelInfo, "e_c_comment_2");
            setEColor(ConsumerLabelInfo, "e_c_comment_3");
            */
        }

        private void showLabel_ad(DataRow ConsumerLabelInfo)
        {
            //setLabel(ConsumerLabelInfo, "l_c_cm_id_dup"); // new add
            setLabel(ConsumerLabelInfo, "l_c_case_assign_date");
            setLabel(ConsumerLabelInfo, "l_c_cm_type");
            setLabel(ConsumerLabelInfo, "l_c_uci"); // new add
            setLabel(ConsumerLabelInfo, "l_c_unit_area");
            setLabel(ConsumerLabelInfo, "l_c_mis");
            setLabel(ConsumerLabelInfo, "l_c_case_assign_manager");
            setLabel(ConsumerLabelInfo, "l_c_status");
            setLabel(ConsumerLabelInfo, "l_c_status_date");
            setLabel(ConsumerLabelInfo, "l_c_cm_agency");
            setLabel(ConsumerLabelInfo, "l_c_report_agency");
            setLabel(ConsumerLabelInfo, "l_c_text4"); // new add
            setLabel(ConsumerLabelInfo, "l_c_previous_status");
            setLabel(ConsumerLabelInfo, "l_c_previous_status_date");
            setLabel(ConsumerLabelInfo, "l_c_comment_1");
            setLabel(ConsumerLabelInfo, "l_c_comment_2");
            setLabel(ConsumerLabelInfo, "l_c_comment_3");
            setLabel(ConsumerLabelInfo, "l_c_last_mod_by"); // new add
            setLabel(ConsumerLabelInfo, "l_c_last_mod_date"); // new add
            /*
            setLabel(ConsumerLabelInfo, "l_c_offsite_location");
            setLabel(ConsumerLabelInfo, "l_c_box_number");
            setLabel(ConsumerLabelInfo, "l_c_chart_2");
            setLabel(ConsumerLabelInfo, "l_c_box_2");
            setLabel(ConsumerLabelInfo, "l_c_chart_3");
            setLabel(ConsumerLabelInfo, "l_c_box_3");
            setLabel(ConsumerLabelInfo, "l_c_chart_4");
            setLabel(ConsumerLabelInfo, "l_c_box_4");
            */
            /*
            setEColor(ConsumerLabelInfo, "e_c_unit_area");
            setEColor(ConsumerLabelInfo, "e_c_mis");
            setEColor(ConsumerLabelInfo, "e_c_case_assign_manager");
            setEColor(ConsumerLabelInfo, "e_c_status");
            setEColor(ConsumerLabelInfo, "e_c_status_date");
            setEColor(ConsumerLabelInfo, "e_c_previous_status");
            setEColor(ConsumerLabelInfo, "e_c_previous_status_date");
            setEColor(ConsumerLabelInfo, "e_c_offsite_location");
            setEColor(ConsumerLabelInfo, "e_c_box_number");
            setEColor(ConsumerLabelInfo, "e_c_chart_2");
            setEColor(ConsumerLabelInfo, "e_c_box_2");
            setEColor(ConsumerLabelInfo, "e_c_chart_3");
            setEColor(ConsumerLabelInfo, "e_c_box_3");
            setEColor(ConsumerLabelInfo, "e_c_chart_4");
            setEColor(ConsumerLabelInfo, "e_c_box_4");
            */
        }

        private void showLabel_re(DataRow ConsumerLabelInfo)
        {
            setLabel(ConsumerLabelInfo, "l_c_ref_date");
            setLabel(ConsumerLabelInfo, "l_c_ref_name_last");
            setLabel(ConsumerLabelInfo, "l_c_ref_name_first");
            setLabel(ConsumerLabelInfo, "l_c_ref_screener");
            setLabel(ConsumerLabelInfo, "l_c_ref_source");
            setLabel(ConsumerLabelInfo, "l_c_ref_phone_1");
            setLabel(ConsumerLabelInfo, "l_c_ref_relationship");
            setLabel(ConsumerLabelInfo, "l_c_ref_reason"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ref_comment"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ref_2_date");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_name_last");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_name_first");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_screener");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_source");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_phone_1");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_relationship");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_reason"); // new add
            setLabel(ConsumerLabelInfo, "l_c_ref_2_agency_line_1");
            //setLabel(ConsumerLabelInfo, "l_c_ref_2_agency_line_2");
            setLabel(ConsumerLabelInfo, "l_c_ref_2_comment"); // new add

            /*
            setEColor(ConsumerLabelInfo, "e_c_ref_date");
            setEColor(ConsumerLabelInfo, "e_c_ref_name_last");
            setEColor(ConsumerLabelInfo, "e_c_ref_name_first");
            setEColor(ConsumerLabelInfo, "e_c_ref_screener");
            setEColor(ConsumerLabelInfo, "e_c_ref_source");
            setEColor(ConsumerLabelInfo, "e_c_ref_phone_1");
            setEColor(ConsumerLabelInfo, "e_c_ref_relationship");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_date");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_name_last");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_name_first");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_screener");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_source");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_phone_1");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_relationship");
            setEColor(ConsumerLabelInfo, "e_c_ref_2_agency_line_1");
            //setEColor(ConsumerLabelInfo, "e_c_ref_2_agency_line_2");
            */
        }

        private void showLabel_sa(DataRow DrugsLabelInfo)
        {
            setLabel(DrugsLabelInfo, "l_drug_substance_use");
            setLabel(DrugsLabelInfo, "l_drug_first_time");
            setLabel(DrugsLabelInfo, "l_drug_freq");
            setLabel(DrugsLabelInfo, "l_drug_route");
            setLabel(DrugsLabelInfo, "l_smoke");
            setLabel(DrugsLabelInfo, "l_smoke_freq");
            setLabel(DrugsLabelInfo, "l_quitting");
            setLabel(DrugsLabelInfo, "l_NRT");
            setLabel(DrugsLabelInfo, "l_quit_smokeing_info");
            setLabel(DrugsLabelInfo, "l_other_drugs_used");
            setLabel(DrugsLabelInfo, "l_inject_use_needle");
            setLabel(DrugsLabelInfo, "l_drug_user_contact");
            setLabel(DrugsLabelInfo, "l_pharmaceutical_med_used");
            setLabel(DrugsLabelInfo, "l_pharmaceutical_medications");
        }

        private void showdata_fs(DataRow ConsumerInfo)
        {
            setDropDownList(ConsumerInfo, "c_program_primary");
            setTextBox(ConsumerInfo, "c_date20");
            //show fs baseinfo
            setTextBox(ConsumerInfo, "c_attention");
            setTextBox(ConsumerInfo, "c_name_last");
            if (!AllEdit_Flag) setReadOnly("c_name_last", "t");
            setTextBox(ConsumerInfo, "c_name_first");
            if (!AllEdit_Flag) setReadOnly("c_name_first", "t");
            setTextBox(ConsumerInfo, "c_name_mi");
            if (!AllEdit_Flag) setReadOnly("c_name_mi", "t");
            setDropDownList(ConsumerInfo, "c_gender");
            //if (!AllEdit_Flag) setReadOnly("c_gender", "d");
            setTextBox(ConsumerInfo, "c_name_aka_last");
            //if (!AllEdit_Flag) setReadOnly("c_name_aka_last", "t");
            setTextBox(ConsumerInfo, "c_name_aka_first");
            //if (!AllEdit_Flag) setReadOnly("c_name_aka_first", "t");
            setTextBox(ConsumerInfo, "c_name_aka_mi");
            //if (!AllEdit_Flag) setReadOnly("c_name_aka_mi", "t");
            setDropDownList(ConsumerInfo, "c_ethnicity");
            //if (!AllEdit_Flag) setReadOnly("c_ethnicity", "d");
            setDropDownList(ConsumerInfo, "c_text12");
            setTextBox(ConsumerInfo, "c_name_maiden_last");
            //if (!AllEdit_Flag) setReadOnly("c_name_maiden_last", "t");
            setTextBox(ConsumerInfo, "c_name_maiden_first");
            //if (!AllEdit_Flag) setReadOnly("c_name_maiden_first", "t");
            setDropDownList(ConsumerInfo, "c_language");
            setDropDownList(ConsumerInfo, "c_document_language");
            setDropDownList(ConsumerInfo, "c_preferred_language");
            setTextBox(ConsumerInfo, "c_date14");
            setTextBox(ConsumerInfo, "c_text7");
            setTextBox(ConsumerInfo, "c_date13");
            setTextBox(ConsumerInfo, "c_dob");
            if (!AllEdit_Flag) setReadOnly("c_dob", "t");
            setDropDownList(ConsumerInfo, "c_hair_color");
            setTextBox(ConsumerInfo, "c_birthplace");
            if (!AllEdit_Flag) setReadOnly("c_birthplace", "t");
            setDropDownList(ConsumerInfo, "c_eye_color");
            setDropDownList(ConsumerInfo, "c_marital_status");
            setTextBox(ConsumerInfo, "c_height_weight");
            setTextBox(ConsumerInfo, "c_weight");

            c_cm_id_iddup.Text = ConsumerInfo["c_cm_id"].ToString();
            bool itemcheck = false;
            foreach (ListItem li in c_cm_id_dup.Items)
            {
                if ((!itemcheck) && (li.Value.TrimEnd() == ConsumerInfo["c_cm_id"].ToString().TrimEnd()))
                {
                    li.Selected = true;
                    itemcheck = true;
                }
                else
                    li.Selected = false;
            }
            setReadOnly("c_cm_id_dup", "d");

            setDropDownList(ConsumerInfo, "c_phone_3_label");
            // setTextBox(ConsumerInfo, "c_phone_1");
            if ((ConsumerInfo["c_phone_1"] != System.DBNull.Value) && (ConsumerInfo["c_phone_1"].ToString().Trim(null).Length >= 10))
            {
                c_phone_1_1.Text = ConsumerInfo["c_phone_1"].ToString().Substring(0, 3);
                c_phone_1_2.Text = ConsumerInfo["c_phone_1"].ToString().Substring(3, 3);
                c_phone_1_3.Text = ConsumerInfo["c_phone_1"].ToString().Substring(6, 4);
            }
            // setTextBox(ConsumerInfo, "c_phone_2");
            if ((ConsumerInfo["c_phone_2"] != System.DBNull.Value) && (ConsumerInfo["c_phone_2"].ToString().Trim(null).Length >= 10))
            {
                c_phone_2_1.Text = ConsumerInfo["c_phone_2"].ToString().Substring(0, 3);
                c_phone_2_2.Text = ConsumerInfo["c_phone_2"].ToString().Substring(3, 3);
                c_phone_2_3.Text = ConsumerInfo["c_phone_2"].ToString().Substring(6, 4);
            }
            // setTextBox(ConsumerInfo, "c_phone_3");
            if ((ConsumerInfo["c_phone_3"] != System.DBNull.Value) && (ConsumerInfo["c_phone_3"].ToString().Trim(null).Length >= 10))
            {
                c_phone_3_1.Text = ConsumerInfo["c_phone_3"].ToString().Substring(0, 3);
                c_phone_3_2.Text = ConsumerInfo["c_phone_3"].ToString().Substring(3, 3);
                c_phone_3_3.Text = ConsumerInfo["c_phone_3"].ToString().Substring(6, 4);
            }
            // setTextBox(ConsumerInfo, "c_text8");
            if ((ConsumerInfo["c_text8"] != System.DBNull.Value) && (ConsumerInfo["c_text8"].ToString().Trim(null).Length >= 10))
            {
                c_text8_1.Text = ConsumerInfo["c_text8"].ToString().Substring(0, 3);
                c_text8_2.Text = ConsumerInfo["c_text8"].ToString().Substring(3, 3);
                c_text8_3.Text = ConsumerInfo["c_text8"].ToString().Substring(6, 4);
            }
            setTextBox(ConsumerInfo, "c_email");
            setTextBox(ConsumerInfo, "c_residence_number");
            setDropDownList(ConsumerInfo, "c_residence_current");
            setTextBox(ConsumerInfo, "c_residence_date");
            setDropDownList(ConsumerInfo, "c_residence_prior");
            setTextBox(ConsumerInfo, "c_address_name");
            setTextBox(ConsumerInfo, "c_address_line_1");
            setTextBox(ConsumerInfo, "c_address_line_2");
            setTextBox(ConsumerInfo, "c_address_city");
            setTextBox(ConsumerInfo, "c_address_state");
            setTextBox(ConsumerInfo, "c_address_zip");
            setDropDownList(ConsumerInfo, "c_mail_code");
            setTextBox(ConsumerInfo, "c_mailing_address_name");
            setTextBox(ConsumerInfo, "c_mailing_address_line_1");
            setTextBox(ConsumerInfo, "c_mailing_address_line_2");
            setTextBox(ConsumerInfo, "c_mailing_address_city");
            setTextBox(ConsumerInfo, "c_mailing_address_state");
            setTextBox(ConsumerInfo, "c_mailing_address_zip");
            setDropDownList(ConsumerInfo, "c_mailing_mail_code");
            setDropDownList(ConsumerInfo, "c_legal_county");
            setDropDownList(ConsumerInfo, "c_physical_county");
            setDropDownList(ConsumerInfo, "c_legal_status_1");
            //if (!AllEdit_Flag) setReadOnly("c_legal_status_1", "d");
            setTextBox(ConsumerInfo, "c_legal_status_date_1");
            //if (!AllEdit_Flag) setReadOnly("c_legal_status_date_1", "t");
            setDropDownList(ConsumerInfo, "c_legal_status_2");
            //if (!AllEdit_Flag) setReadOnly("c_legal_status_2", "d");
            setTextBox(ConsumerInfo, "c_legal_status_date_2");
            //if (!AllEdit_Flag) setReadOnly("c_legal_status_date_2", "t");
            c_legal_status_1_dup.SelectedValue = ConsumerInfo["c_legal_status_1"].ToString().TrimEnd();
            c_legal_status_2_dup.SelectedValue = ConsumerInfo["c_legal_status_2"].ToString().TrimEnd();
            if (ConsumerInfo["c_legal_status_date_1"].ToString() != "")
                c_legal_status_date_1_dup.Text = ((DateTime)ConsumerInfo["c_legal_status_date_1"]).ToString("MM/dd/yyyy");
            if (ConsumerInfo["c_legal_status_date_2"].ToString() != "")
                c_legal_status_date_2_dup.Text = ((DateTime)ConsumerInfo["c_legal_status_date_2"]).ToString("MM/dd/yyyy");
        }

        private void showdata_lf(DataRow ConsumerInfo)
        {
            //show lf baseinfo
            //setTextBox(ConsumerInfo, "c_wages");
            //if (!AllEdit_Flag) setReadOnly("c_wages", "t");
            if (string.IsNullOrEmpty(ConsumerInfo["c_medicaid_waiver"].ToString().TrimEnd()))
            {
                ConsumerInfo["c_medicaid_waiver"] = "N";
            }

            setDropDownList(ConsumerInfo, "c_medicaid_waiver");
            if (c_medicaid_waiver.SelectedValue == "Y")
                c_medicaid_waiver.BackColor = Color.Yellow;
            if (!AllEdit_Flag) setReadOnly("c_medicaid_waiver", "d");

            if ((ConsumerInfo["c_ssn"] != System.DBNull.Value) && (ConsumerInfo["c_ssn"].ToString().Trim(null).Length >= 9))
            {
                if (Consult_Flag)
                {
                    c_ssn_1.Text = "XXX";
                    c_ssn_2.Text = "XX";
                }
                else
                {
                    c_ssn_1.Text = ConsumerInfo["c_ssn"].ToString().Substring(0, 3);
                    c_ssn_2.Text = ConsumerInfo["c_ssn"].ToString().Substring(3, 2);
                }
                c_ssn_3.Text = ConsumerInfo["c_ssn"].ToString().Substring(5, 4);
            }
            //if (!AllEdit_Flag) setReadOnly("c_ssn_1", "t");
            //if (!AllEdit_Flag) setReadOnly("c_ssn_2", "t");
            //if (!AllEdit_Flag) setReadOnly("c_ssn_3", "t");

            setDropDownList(ConsumerInfo, "c_ss1");
            setTextBox(ConsumerInfo, "c_ss1amount");
            setDropDownList(ConsumerInfo, "c_ss1Freq");

            if (ConsumerInfo["c_ss2"].ToString() != ""
                || ConsumerInfo["c_ss2amount"].ToString() != ""
                || ConsumerInfo["c_ss2Freq"].ToString() != "")
            {
                setDropDownList(ConsumerInfo, "c_ss2");
                setTextBox(ConsumerInfo, "c_ss2amount");
                setDropDownList(ConsumerInfo, "c_ss2Freq");
                this.BenefitsCnt.Value = "2";
            }

            if (ConsumerInfo["c_ccs"].ToString() != ""
                || ConsumerInfo["c_ghpp"].ToString() != ""
                || ConsumerInfo["c_wpcsHrs"].ToString() != "")
            {
                setDropDownList(ConsumerInfo, "c_ccs");
                setTextBox(ConsumerInfo, "c_ghpp");
                setDropDownList(ConsumerInfo, "c_wpcsHrs");
                this.BenefitsCnt.Value = "3";
            }

            setTextBox(ConsumerInfo, "c_payee_indicator");
            setTextBox(ConsumerInfo, "c_payee_indicator2");
            setTextBox(ConsumerInfo, "c_shareofcost");

            //setTextBox(ConsumerInfo, "c_payee_zip");
            //setTextBox(ConsumerInfo, "c_payee_zip2");
            setDropDownList(ConsumerInfo, "c_payee_zip");
            setDropDownList(ConsumerInfo, "c_payee_zip2");
            setDropDownList(ConsumerInfo, "c_ocmh");

            if (Consult_Flag)
            {
                int medilen = ConsumerInfo["c_medi_cal"].ToString().TrimEnd().Length;
                if (medilen > 5)
                {
                    c_medi_cal.Text = ConsumerInfo["c_medi_cal"].ToString().TrimEnd().Substring(0, 5);
                    for (int i = 0; i < (medilen - 5); i++)
                        c_medi_cal.Text += "X";
                }
            }
            else
                setTextBox(ConsumerInfo, "c_medi_cal");
            //if (!AllEdit_Flag) setReadOnly("c_medi_cal", "t");

            setTextBox(ConsumerInfo, "c_pandi");
            //if (!AllEdit_Flag) setReadOnly("c_pandi", "t");            
            setTextBox(ConsumerInfo, "c_pandiDate");
            //if (!AllEdit_Flag) setReadOnly("c_pandiDate", "t");

            setDropDownList(ConsumerInfo, "c_generic_agency_1");
            setTextBox(ConsumerInfo, "c_generic1amount");
            setDropDownList(ConsumerInfo, "c_generic1Freq");
            if (ConsumerInfo["c_generic_agency_2"].ToString() != ""
                || ConsumerInfo["c_generic2amount"].ToString() != ""
                || ConsumerInfo["c_generic2Freq"].ToString() != "")
            {
                setDropDownList(ConsumerInfo, "c_generic_agency_2");
                setTextBox(ConsumerInfo, "c_generic2amount");
                setDropDownList(ConsumerInfo, "c_generic2Freq");
                this.AgencyCnt.Value = "2";
            }
            if (ConsumerInfo["c_generic_agency_3"].ToString() != ""
                || ConsumerInfo["c_generic3amount"].ToString() != ""
                || ConsumerInfo["c_generic3Freq"].ToString() != "")
            {
                setDropDownList(ConsumerInfo, "c_generic_agency_3");
                setTextBox(ConsumerInfo, "c_generic3amount");
                setDropDownList(ConsumerInfo, "c_generic3Freq");
                this.AgencyCnt.Value = "3";
            }


            //setDropDownList(ConsumerInfo, "c_otherinsurance1");
            setDropDownList(ConsumerInfo, "c_medical_type");
            setTextBox(ConsumerInfo, "c_medicare_number");
            //if (!AllEdit_Flag) setReadOnly("c_medicare_number", "t");
            setTextBox(ConsumerInfo, "c_bic_number");
            //setTextBox(ConsumerInfo, "c_policy");

            setDropDownList(ConsumerInfo, "c_ihss");
            setTextBox(ConsumerInfo, "c_ihss_hrs");

            if (VirDBAccess.DbConsumer.CheckFinancialInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString()))
            {
                DataRow FinancialInfo = VirDBAccess.DbConsumer.getFinancialInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                showdata_lf_subtab(FinancialInfo);
            }

            showSLSList();
            //FCPP
            showFCPPList();
            //AFPF
            showAFPFList();
            //CoPay
            showCoPayList();

        }

        private void showdata_lf_subtab(DataRow FinancialInfo)
        {
            setDropDownList(FinancialInfo, "CCS");
            if (!Consult_Flag)
                setTextBox(FinancialInfo, "CCS_Num");
            //health Benefit
            setCheckBox(FinancialInfo, "primary_med");
            setDropDownList(FinancialInfo, "primary_medi_cal");
            setCheckBox(FinancialInfo, "primary_medicare");
            setCheckBox(FinancialInfo, "primary_partA");
            setTextBox(FinancialInfo, "primary_partA_time");
            setCheckBox(FinancialInfo, "primary_partB");
            setTextBox(FinancialInfo, "primary_partB_time");
            setCheckBox(FinancialInfo, "primary_partCD");
            setTextBox(FinancialInfo, "primary_partCD_provider");
            setCheckBox(FinancialInfo, "primary_otherinsurance");
            /*
            setCheckBox(FinancialInfo, "primary_blueshield");
            setCheckBox(FinancialInfo, "primary_healthyfamilies");
            setCheckBox(FinancialInfo, "primary_kaiser");
            setCheckBox(FinancialInfo, "primary_pacificare");
            setCheckBox(FinancialInfo, "primary_tricare");
            setCheckBox(FinancialInfo, "primary_champus");
            */
            setTextBox(FinancialInfo, "primary_othername");
            setTextBox(FinancialInfo, "primary_othergroup");
            setTextBox(FinancialInfo, "primary_othermember");
            setTextBox(FinancialInfo, "primary_otherperiodfrom");
            setTextBox(FinancialInfo, "primary_otherperiodto");

            setCheckBox(FinancialInfo, "secondary_med");
            setDropDownList(FinancialInfo, "secondary_medi_cal");
            setCheckBox(FinancialInfo, "secondary_medicare");
            setCheckBox(FinancialInfo, "secondary_partA");
            setTextBox(FinancialInfo, "secondary_partA_time");
            setCheckBox(FinancialInfo, "secondary_partB");
            setTextBox(FinancialInfo, "secondary_partB_time");
            setCheckBox(FinancialInfo, "secondary_partCD");
            setTextBox(FinancialInfo, "secondary_partCD_provider");
            setCheckBox(FinancialInfo, "secondary_otherinsurance");
            /*
            setCheckBox(FinancialInfo, "secondary_blueshield");
            setCheckBox(FinancialInfo, "secondary_healthyfamilies");
            setCheckBox(FinancialInfo, "secondary_kaiser");
            setCheckBox(FinancialInfo, "secondary_pacificare");
            setCheckBox(FinancialInfo, "secondary_tricare");
            setCheckBox(FinancialInfo, "secondary_champus");
            */
            setTextBox(FinancialInfo, "secondary_othername");
            setTextBox(FinancialInfo, "secondary_othergroup");
            setTextBox(FinancialInfo, "secondary_othermember");
            setTextBox(FinancialInfo, "secondary_otherperiodfrom");
            setTextBox(FinancialInfo, "secondary_otherperiodto");
            setTextBox(FinancialInfo, "medical_provider");

            //other Benefits/burial trusts
            //setDropDownList(FinancialInfo, "ihss");
            setTextBox(FinancialInfo, "ihss_comment");
            setTextBox(FinancialInfo, "account");
            //setTextBox(FinancialInfo, "ihss_hours");
            setTextBox(FinancialInfo, "reviewdate");
            setDropDownList(FinancialInfo, "spec_surpervision");
            setTextBox(FinancialInfo, "spec_surpervision_hrs");
            setDropDownList(FinancialInfo, "ihss_relationship");
            if (FinancialInfo["ihss_relationship2"].ToString() != "")
            {
                setDropDownList(FinancialInfo, "ihss_relationship2");
                this.ihssProvCnt.Value = "2";
            }
            if (FinancialInfo["ihss_relationship3"].ToString() != "")
            {
                setDropDownList(FinancialInfo, "ihss_relationship3");
                this.ihssProvCnt.Value = "3";
            }
            setTextBox(FinancialInfo, "housing_auth");
            setTextBox(FinancialInfo, "hud_voucher");

            //setDropDownList(FinancialInfo, "othersupport_1");
            setTextBox(FinancialInfo, "othersupport_1_txt");

            // if (FinancialInfo["othersupport_2"].ToString() != "" || FinancialInfo["othersupport_2_txt"].ToString() != "")
            if (FinancialInfo["othersupport_2_txt"].ToString() != "")
            {
                //setDropDownList(FinancialInfo, "othersupport_2");
                setTextBox(FinancialInfo, "othersupport_2_txt");
                this.SupportCnt.Value = "2";
            }

            setDropDownList(FinancialInfo, "given");
            setDropDownList(FinancialInfo, "lifeplan_developed");

            setTextBox(FinancialInfo, "burial_plan1");
            setTextBox(FinancialInfo, "establisheddate1");
            setTextBox(FinancialInfo, "plan_amount1");
            setDropDownList(FinancialInfo, "burial_arrangement1");

            if (FinancialInfo["burial_plan2"].ToString() != ""
                || FinancialInfo["establisheddate2"].ToString() != ""
                || FinancialInfo["plan_amount2"].ToString() != ""
                || FinancialInfo["burial_arrangement2"].ToString() != "")
            {
                setTextBox(FinancialInfo, "burial_plan2");
                setTextBox(FinancialInfo, "establisheddate2");
                setTextBox(FinancialInfo, "plan_amount2");
                setDropDownList(FinancialInfo, "burial_arrangement2");
                this.PlanCnt.Value = "2";
            }

            if (FinancialInfo["burial_plan3"].ToString() != ""
                || FinancialInfo["establisheddate3"].ToString() != ""
                || FinancialInfo["plan_amount3"].ToString() != ""
                || FinancialInfo["burial_arrangement3"].ToString() != "")
            {
                setTextBox(FinancialInfo, "burial_plan3");
                setTextBox(FinancialInfo, "establisheddate3");
                setTextBox(FinancialInfo, "plan_amount3");
                setDropDownList(FinancialInfo, "burial_arrangement3");
                this.PlanCnt.Value = "3";
            }

            setTextBox(FinancialInfo, "trustname");
            setDropDownList(FinancialInfo, "trusttype");
            setTextBox(FinancialInfo, "trustdate");
            setTextBox(FinancialInfo, "trust_amount");
            setTextBox(FinancialInfo, "contactinfo");
        }

        private void showdata_af()
        {
            if (VirDBAccess.DbConsumer.CheckLegalInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString()))
            {
                DataRow LegalInfo = VirDBAccess.DbConsumer.getLegalInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                showdata_af_legal(LegalInfo);
            }

            showJudicialList();
            showComplaintList();
            showVoterRegList();
            showIMDList();
        }

        private void showdata_af_legal(DataRow LegalInfo)
        {
            setDropDownList(LegalInfo, "request_not_share");
            setTextBox(LegalInfo, "comments");
            setCheckBox(LegalInfo, "non_conserved");
            if (non_conserved.Checked)
            {
                this.LegalInfo_flag.Value = "1";
            }
            else
            {
                this.LegalInfo_flag.Value = "0";
            }

            setCheckBox(LegalInfo, "cons_pending");
            setTextBox(LegalInfo, "IDTeamdate");
            setCheckBox(LegalInfo, "conserved");

            setTextBox(LegalInfo, "cons_name1");
            setDropDownList(LegalInfo, "cons_relationship1");
            setTextBox(LegalInfo, "cons_address1");
            setDropDownList(LegalInfo, "cons_type");
            setTextBox(LegalInfo, "cons_establishdate");

            if (LegalInfo["cons_name2"].ToString().TrimEnd() != ""
                || LegalInfo["cons_relationship2"].ToString().TrimEnd() != ""
                || LegalInfo["cons_address2"].ToString().TrimEnd() != "")
            {
                setTextBox(LegalInfo, "cons_name2");
                setDropDownList(LegalInfo, "cons_relationship2");
                setTextBox(LegalInfo, "cons_address2");
                setDropDownList(LegalInfo, "cons_type2");
                setTextBox(LegalInfo, "cons_establishdate2");
                this.ConservatorCnt.Value = "2";
            }
            if (LegalInfo["cons_name3"].ToString().TrimEnd() != ""
                || LegalInfo["cons_relationship3"].ToString().TrimEnd() != ""
                || LegalInfo["cons_address3"].ToString().TrimEnd() != "")
            {
                setTextBox(LegalInfo, "cons_name3");
                setDropDownList(LegalInfo, "cons_relationship3");
                setTextBox(LegalInfo, "cons_address3");
                setDropDownList(LegalInfo, "cons_type3");
                setTextBox(LegalInfo, "cons_establishdate3");
                this.ConservatorCnt.Value = "3";
            }
            if (LegalInfo["cons_name4"].ToString().TrimEnd() != ""
                || LegalInfo["cons_relationship4"].ToString().TrimEnd() != ""
                || LegalInfo["cons_address4"].ToString().TrimEnd() != "")
            {
                setTextBox(LegalInfo, "cons_name4");
                setDropDownList(LegalInfo, "cons_relationship4");
                setTextBox(LegalInfo, "cons_address4");
                setDropDownList(LegalInfo, "cons_type4");
                setTextBox(LegalInfo, "cons_establishdate4");
                this.ConservatorCnt.Value = "4";
            }

            setCheckBox(LegalInfo, "cons_followup_req");

            setCheckBox(LegalInfo, "grd_pending");
            setCheckBox(LegalInfo, "guardian");

            setTextBox(LegalInfo, "grd_name1");
            setDropDownList(LegalInfo, "grd_relationship1");
            setTextBox(LegalInfo, "grd_address1");
            setDropDownList(LegalInfo, "grd_type");
            setTextBox(LegalInfo, "grd_establishdate");

            if (LegalInfo["grd_name2"].ToString().TrimEnd() != ""
                || LegalInfo["grd_relationship2"].ToString().TrimEnd() != ""
                || LegalInfo["grd_address2"].ToString().TrimEnd() != "")
            {
                setTextBox(LegalInfo, "grd_name2");
                setDropDownList(LegalInfo, "grd_relationship2");
                setTextBox(LegalInfo, "grd_address2");
                setDropDownList(LegalInfo, "grd_type2");
                setTextBox(LegalInfo, "grd_establishdate2");
                this.GuardianCnt.Value = "2";
            }
            if (LegalInfo["grd_name3"].ToString().TrimEnd() != ""
                || LegalInfo["grd_relationship3"].ToString().TrimEnd() != ""
                || LegalInfo["grd_address3"].ToString().TrimEnd() != "")
            {
                setTextBox(LegalInfo, "grd_name3");
                setDropDownList(LegalInfo, "grd_relationship3");
                setTextBox(LegalInfo, "grd_address3");
                setDropDownList(LegalInfo, "grd_type3");
                setTextBox(LegalInfo, "grd_establishdate3");
                this.GuardianCnt.Value = "3";
            }
            if (LegalInfo["grd_name4"].ToString().TrimEnd() != ""
                || LegalInfo["grd_relationship4"].ToString().TrimEnd() != ""
                || LegalInfo["grd_address4"].ToString().TrimEnd() != "")
            {
                setTextBox(LegalInfo, "grd_name4");
                setDropDownList(LegalInfo, "grd_relationship4");
                setTextBox(LegalInfo, "grd_address4");
                setDropDownList(LegalInfo, "grd_type4");
                setTextBox(LegalInfo, "grd_establishdate4");
                this.GuardianCnt.Value = "4";
            }
            setCheckBox(LegalInfo, "grd_followup_req");

            setRadioBox(LegalInfo, "judicial_inv");

            setDropDownList(LegalInfo, "sex_offender");
            //setDropDownList(LegalInfo, "registerstation");
            setTextBox(LegalInfo, "registerstation");
            setTextBox(LegalInfo, "registerdate");
            setDropDownList(LegalInfo, "strikes");
            setDropDownList(LegalInfo, "strikes_cnt");
            strikes_cnt.SelectedValue = LegalInfo["strikes_cnt"].ToString().TrimEnd();

            setDropDownList(LegalInfo, "employed");
            setDropDownList(LegalInfo, "ProgramType1");
            setTextBox(LegalInfo, "ProgramName");
            setDropDownList(LegalInfo, "discussed");
            setDropDownList(LegalInfo, "chosed");
            setDropDownList(LegalInfo, "ProgramType2");
            setDropDownList(LegalInfo, "referred");
            setTextBox(LegalInfo, "EmploymentStatus");
        }

        private void dg_SLSList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerSLSSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerSLSSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this SLS record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }


        }

        private void dg_SLSList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del sls
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delSLSInfo(clientid, entrydate, Session["UserAct"].ToString());
                showSLSList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_SLS_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                if (VirDBAccess.DbConsumer.CheckFinancialInfo(e.Item.Cells[0].Text, Session["UserAct"].ToString()))
                {
                    // DataRow FinancialInfo = VirDBAccess.DbConsumer.getFinancialInfo(e.Item.Cells[0].Text, Session["UserAct"].ToString());
                    // Label sls_ihsshrs_considered = ((Label)e.Item.FindControl("sls_ihsshrs_considered"));
                    //if (FinancialInfo["ihss_hours"].ToString().TrimEnd() != "")
                    /*
                    if (c_ihss_hrs.Text.TrimEnd() != "")
                    {
                        sls_ihsshrs_considered.Text = "YES";
                    }
                    else
                    {
                        sls_ihsshrs_considered.Text = "NO";
                    }
                    */
                }

                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void dg_FCPPList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerFCPPSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerFCPPSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this FCPP record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }

            }
        }

        private void dg_FCPPList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del FCPP
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delFCPPInfo(clientid, entrydate, Session["UserAct"].ToString());
                showFCPPList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_FCPP_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //DataTable YESNODT = VirDBAccess.DbCommon.getTablesList("YESNO", Session["UserAct"].ToString());

                //DropDownList exception = ((DropDownList)e.Item.FindControl("exception"));
                //exception.DataSource = YESNODT;
                //exception.DataBind();
                //exception.SelectedValue = ((Label)e.Item.FindControl("exceptionV")).Text.TrimEnd();

                //DropDownList income_doc = ((DropDownList)e.Item.FindControl("income_doc"));
                //income_doc.DataSource = YESNODT;
                //income_doc.DataBind();
                //income_doc.SelectedValue = ((Label)e.Item.FindControl("income_docV")).Text.TrimEnd();

                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void dg_AFPFList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerAFPFSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerAFPFSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this AFPF record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_AFPFList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del AFPF
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delAFPFInfo(clientid, entrydate, Session["UserAct"].ToString());
                showAFPFList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_AFPF_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //DataTable YESNODT = VirDBAccess.DbCommon.getTablesList("YESNO", Session["UserAct"].ToString());

                //DropDownList exception = ((DropDownList)e.Item.FindControl("exception"));
                //exception.DataSource = YESNODT;
                //exception.DataBind();
                //exception.SelectedValue = ((Label)e.Item.FindControl("exceptionV")).Text.TrimEnd();

                //DropDownList income_doc = ((DropDownList)e.Item.FindControl("income_doc"));
                //income_doc.DataSource = YESNODT;
                //income_doc.DataBind();
                //income_doc.SelectedValue = ((Label)e.Item.FindControl("income_docV")).Text.TrimEnd();

                //DropDownList pay_DDS = ((DropDownList)e.Item.FindControl("pay_DDS"));
                //pay_DDS.DataSource = YESNODT;
                //pay_DDS.DataBind();
                //pay_DDS.SelectedValue = ((Label)e.Item.FindControl("pay_DDSV")).Text.TrimEnd();

                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void dg_CoPayList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[5].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[6].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerCoPayFDLRC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerCoPayFDLRC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this Co-Pay record?');");
                }
                else
                {
                    e.Item.Cells[6].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_CoPayList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del AFPF
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delCoPayInfo(clientid, entrydate, Session["UserAct"].ToString());
                showCoPayList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_CoPay_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //DataTable YESNODT = VirDBAccess.DbCommon.getTablesList("YESNO", Session["UserAct"].ToString());

                //DropDownList exception = ((DropDownList)e.Item.FindControl("exception"));
                //exception.DataSource = YESNODT;
                //exception.DataBind();
                //exception.SelectedValue = ((Label)e.Item.FindControl("exceptionV")).Text.TrimEnd();

                //DropDownList income_doc = ((DropDownList)e.Item.FindControl("income_doc"));
                //income_doc.DataSource = YESNODT;
                //income_doc.DataBind();
                //income_doc.SelectedValue = ((Label)e.Item.FindControl("income_docV")).Text.TrimEnd();

                //DropDownList pay_DDS = ((DropDownList)e.Item.FindControl("pay_DDS"));
                //pay_DDS.DataSource = YESNODT;
                //pay_DDS.DataBind();
                //pay_DDS.SelectedValue = ((Label)e.Item.FindControl("pay_DDSV")).Text.TrimEnd();

                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void showSLSList()
        {

            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable SLSDT = VirDBAccess.DbConsumer.getSLSList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["UserAct"].ToString());
                    DataView dv = SLSDT.DefaultView;
                    dg_SLSList.DataSource = dv;
                    dg_SLSList.DataBind();
                    dg_SLS.DataSource = dv;
                    dg_SLS.DataBind();
                }
                //catch { }
            }

        }

        private void showFCPPList()
        {

            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FCPPDT = VirDBAccess.DbConsumer.getFCPPList(this.consumer_key.Value.ToString().TrimEnd(), "1", "1", Session["UserAct"].ToString());
                    DataView dv = FCPPDT.DefaultView;
                    dg_FCPPList.DataSource = dv;
                    dg_FCPPList.DataBind();
                    dg_FCPP.DataSource = dv;
                    dg_FCPP.DataBind();
                }
                //catch { }
            }
        }

        private void showAFPFList()
        {

            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable AFPFDT = VirDBAccess.DbConsumer.getFCPPList(this.consumer_key.Value.ToString().TrimEnd(), "1", "2", Session["UserAct"].ToString());
                    DataView dv = AFPFDT.DefaultView;
                    dg_AFPFList.DataSource = dv;
                    dg_AFPFList.DataBind();
                    dg_AFPF.DataSource = dv;
                    dg_AFPF.DataBind();
                }
                //catch { }
            }
        }

        private void showCoPayList()
        {

            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable CoPayDT = VirDBAccess.DbConsumer.getCoPayList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["UserAct"].ToString());
                    DataView dv = CoPayDT.DefaultView;
                    dg_CoPayList.DataSource = dv;
                    dg_CoPayList.DataBind();
                    dg_CoPay.DataSource = dv;
                    dg_CoPay.DataBind();
                }
                //catch { }
            }
        }

        private void dg_JudicialList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerJudicialSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerJudicialSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this Judicial Involvement record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_JudicialList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del Judicial
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delJudicialInfo(clientid, entrydate, Session["UserAct"].ToString());
                showJudicialList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_Judicial_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            //((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void dg_ComplaintList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerComplaintSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerComplaintSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this 4731 Complaints record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_ComplaintList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del Complaints
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delComplaintInfo(clientid, entrydate, Session["UserAct"].ToString());
                showComplaintList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_Complaint_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void dg_VoterRegList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerVoterRegSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialogShort('webConsumerVoterRegSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this Voter Registration record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_VoterRegList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del VoterReg
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delVoterRegInfo(clientid, entrydate, Session["UserAct"].ToString());
                showVoterRegList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_VoterReg_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void dg_IMDList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerIMDSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerIMDSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this IMD/MHRC record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_IMDList_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del IMD
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delIMDInfo(clientid, entrydate, Session["UserAct"].ToString());
                showIMDList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_IMD_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[2].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void showJudicialList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable JudicialDT = VirDBAccess.DbConsumer.getJudicialList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["UserAct"].ToString());
                    DataView dv = JudicialDT.DefaultView;
                    dg_JudicialList.DataSource = dv;
                    dg_JudicialList.DataBind();
                    dg_Judicial.DataSource = dv;
                    dg_Judicial.DataBind();
                }
                //catch { }
            }
        }

        private void showComplaintList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable ComplaintDT = VirDBAccess.DbConsumer.getComplaintList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["UserAct"].ToString());
                    DataView dv = ComplaintDT.DefaultView;
                    dg_ComplaintList.DataSource = dv;
                    dg_ComplaintList.DataBind();
                    dg_Complaint.DataSource = dv;
                    dg_Complaint.DataBind();
                }
                //catch { }
            }
        }

        private void showVoterRegList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable VoterRegDT = VirDBAccess.DbConsumer.getVoterRegList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["DefRegName"].ToString(), Session["UserAct"].ToString());
                    DataView dv = VoterRegDT.DefaultView;
                    dg_VoterRegList.DataSource = dv;
                    dg_VoterRegList.DataBind();
                    dg_VoterReg.DataSource = dv;
                    dg_VoterReg.DataBind();
                }
                //catch { }
            }
        }

        private void showIMDList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable IMDDT = VirDBAccess.DbConsumer.getIMDList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["UserAct"].ToString());
                    DataView dv = IMDDT.DefaultView;
                    dg_IMDList.DataSource = dv;
                    dg_IMDList.DataBind();
                    dg_IMD.DataSource = dv;
                    dg_IMD.DataBind();
                }
                //catch { }
            }
        }

        private void showdata_dc(DataRow ConsumerInfo)
        {
            //show dc baseinfo
            if (ConsumerInfo["c_status_date"] != System.DBNull.Value)
                c_status_date_dup.Text = ((DateTime)ConsumerInfo["c_status_date"]).ToString("MM/dd/yyyy");
            setDropDownList(ConsumerInfo, "c_case_level");
            if (!AllEdit_Flag) setReadOnly("c_case_level", "d");
            setTextBox(ConsumerInfo, "c_date05");  // ES Initial Inquiry Date: 
            //if (!AllEdit_Flag) setReadOnly("c_date05", "t");
            setTextBox(ConsumerInfo, "c_review_pcp_ifsp_date");
            if (!AllEdit_Flag) setReadOnly("c_review_pcp_ifsp_date", "t");
            setTextBox(ConsumerInfo, "c_date06");
            if (!AllEdit_Flag) setReadOnly("c_date06", "t");
            setTextBox(ConsumerInfo, "c_date10");
            if (!AllEdit_Flag) setReadOnly("c_date10", "t");
            // Proposed Date
            setTextBox(ConsumerInfo, "c_review_quarterly1_date");
            if (!AllEdit_Flag) setReadOnly("c_review_quarterly1_date", "t");

            // Due Date: c_date05_dup (+45 days for early start, not 180 )
            if (ConsumerInfo["c_date05"] != System.DBNull.Value)
                c_date05_dup.Text = ((DateTime)ConsumerInfo["c_date05"]).AddDays(45).ToShortDateString();

            setTextBox(ConsumerInfo, "c_review_sar_date");
            if (!AllEdit_Flag) setReadOnly("c_review_sar_date", "t");
            setDropDownList(ConsumerInfo, "c_text5");   // ES Intake CM:
            //if (!AllEdit_Flag) setReadOnly("c_text5", "t");
            setTextBox(ConsumerInfo, "c_review_quarterly3_date");
            if (!AllEdit_Flag) setReadOnly("c_review_quarterly3_date", "t");
            setTextBox(ConsumerInfo, "c_date07");  // ES assigned Date
            //if (!AllEdit_Flag) setReadOnly("c_date07", "t");
            setTextBox(ConsumerInfo, "c_date12");
            if (!AllEdit_Flag) setReadOnly("c_date12", "t");
            setTextBox(ConsumerInfo, "c_date08");
            if (!AllEdit_Flag) setReadOnly("c_date08", "t");
            setTextBox(ConsumerInfo, "c_review_cder_esr_date");
            if (!AllEdit_Flag) setReadOnly("c_review_cder_esr_date", "t");
            setTextBox(ConsumerInfo, "c_initial_inquiry_date"); // Lantanm Initial Inquiry Date:
            // if (!AllEdit_Flag) setReadOnly("c_initial_inquiry_date", "t");
            setTextBox(ConsumerInfo, "c_date_waiver");
            if (!AllEdit_Flag) setReadOnly("c_date_waiver", "t");
            setTextBox(ConsumerInfo, "c_initial_interview_date");
            if (!AllEdit_Flag) setReadOnly("c_initial_interview_date", "t");
            setTextBox(ConsumerInfo, "c_review_mw_date");
            // Proposed Date
            setTextBox(ConsumerInfo, "c_date_consent");
            if (!AllEdit_Flag) setReadOnly("c_date_consent", "t");

            // Due Date: c_initial_inquiry_date_dup (+120 days for lantanme, not 45)
            if (ConsumerInfo["c_initial_inquiry_date"] != System.DBNull.Value)
                c_initial_inquiry_date_dup.Text = ((DateTime)ConsumerInfo["c_initial_inquiry_date"]).AddDays(120).ToShortDateString();

            setTextBox(ConsumerInfo, "c_qol");
            if (!AllEdit_Flag) setReadOnly("c_qol", "t");
            setDropDownList(ConsumerInfo, "c_text6");    // Intake CM:
            //if (!AllEdit_Flag) setReadOnly("c_text6", "t");
            setTextBox(ConsumerInfo, "c_date11");   //Assigned Date:
            //if (!AllEdit_Flag) setReadOnly("c_date11", "t");
            setTextBox(ConsumerInfo, "c_eligibility_date");
            if (!AllEdit_Flag) setReadOnly("c_eligibility_date", "t");
            setTextBox(ConsumerInfo, "c_date01");
            if (!AllEdit_Flag) setReadOnly("c_date01", "t");
            setDropDownList(ConsumerInfo, "c_base_month");
            // if (!AllEdit_Flag) setReadOnly("c_base_month", "d");
            setDropDownList(ConsumerInfo, "c_tickler_cycle");
            // if (!AllEdit_Flag) setReadOnly("c_tickler_cycle", "t");
            if (ConsumerInfo["c_tickler_date"] != System.DBNull.Value)
                c_tickler_date.Text = ((DateTime)ConsumerInfo["c_tickler_date"]).ToString("yyyy");
            else
                c_tickler_date.Text = (DateTime.Now).ToString("yyyy");

            setTextBox(ConsumerInfo, "c_date02");
            setTextBox(ConsumerInfo, "c_date03");
            setTextBox(ConsumerInfo, "c_date09");
            setTextBox(ConsumerInfo, "c_text1");
            setTextBox(ConsumerInfo, "c_text2");
            setTextBox(ConsumerInfo, "c_text9");
        }

        private void showdata_ad(DataRow ConsumerInfo)
        {
            //show ad baseinfo
            setDropDownList(ConsumerInfo, "c_cm_id");
            if ((!AllEdit_Flag) && (!btnChgUCI.Visible) && (!Level8_Flag)) setReadOnly("c_cm_id", "d");
            if ((ConsumerInfo["c_cm_id"] != System.DBNull.Value) && (ConsumerInfo["c_cm_id"].ToString().TrimEnd() != ""))
            {
                DataTable CMDT = VirDBAccess.DbUser.getUserInfoAsTable(ConsumerInfo["c_cm_id"].ToString().TrimEnd(), Session["UserAct"].ToString());
                if (CMDT.Rows.Count > 0)
                {
                    ConsumerInfo["c_unit_area"] = CMDT.Rows[0]["grouplevel1"].ToString().TrimEnd();
                    ConsumerInfo["c_case_assign_manager"] = VirDBAccess.DbUser.getUserManagerID(ConsumerInfo["c_cm_id"].ToString().TrimEnd(), Session["UserAct"].ToString());
                }
            }
            setDropDownList(ConsumerInfo, "c_cm_type");
            if ((!AllEdit_Flag) && (!btnChgUCI.Visible) && (!Level8_Flag)) setReadOnly("c_cm_type", "d");
            //setTextBox(ConsumerInfo, "c_uci");
            //if (!AllEdit_Flag) setReadOnly("c_uci", "t");
            setLabel(ConsumerInfo, "c_uci");
            setLabel(ConsumerInfo, "c_date21"); // UCI change date
            setDropDownList(ConsumerInfo, "c_unit_area");
            //if (!AllEdit_Flag)  // Read only always 
            setReadOnly("c_unit_area", "d");
            setTextBox(ConsumerInfo, "c_mis");
            // if (!AllEdit_Flag) 
            setReadOnly("c_mis", "t");
            setDropDownList(ConsumerInfo, "c_case_assign_manager");
            //if (!AllEdit_Flag) 
            setReadOnly("c_case_assign_manager", "d");
            setTextBox(ConsumerInfo, "c_case_assign_date");
            if ((!AllEdit_Flag) && (!btnChgUCI.Visible) && (!Level8_Flag)) setReadOnly("c_case_assign_date", "t");
            setDropDownList(ConsumerInfo, "c_status");
            if ((!AllEdit_Flag) && (!btnChgUCI.Visible) && (!Level8_Flag)) setReadOnly("c_status", "d");
            setTextBox(ConsumerInfo, "c_status_date");
            //if ((!AllEdit_Flag) && (!btnChgUCI.Visible) && (!Level8_Flag)) 
            setReadOnly("c_status_date", "t");
            setDropDownList(ConsumerInfo, "c_previous_status");
            if (!AllEdit_Flag) setReadOnly("c_previous_status", "d");
            setTextBox(ConsumerInfo, "c_previous_status_date");
            if (!AllEdit_Flag) setReadOnly("c_previous_status_date", "t");
            setDropDownList(ConsumerInfo, "c_cm_agency");
            //if (!AllEdit_Flag) setReadOnly("c_cm_agency", "d");
            if ((!AllEdit_Flag) && (!btnChgUCI.Visible) && (!Level8_Flag)) setReadOnly("c_cm_agency", "d");
            setDropDownList(ConsumerInfo, "c_report_agency");
            if (!AllEdit_Flag) setReadOnly("c_report_agency", "d");
            setTextBox(ConsumerInfo, "c_text4");
            if (!AllEdit_Flag) setReadOnly("c_text4", "t");
            setDropDownList(ConsumerInfo, "c_last_mod_by");
            if (!AllEdit_Flag) setReadOnly("c_last_mod_by", "d");
            setLabel(ConsumerInfo, "c_last_mod_date");
            setTextBox(ConsumerInfo, "c_comment_1");
            setTextBox(ConsumerInfo, "c_comment_2");
            setTextBox(ConsumerInfo, "c_comment_3");
            setDropDownList(ConsumerInfo, "c_chartScanned");
            /*
            setDropDownList(ConsumerInfo, "c_offsite_location");
            setTextBox(ConsumerInfo, "c_box_number");
            setDropDownList(ConsumerInfo, "c_chart_2");
            setTextBox(ConsumerInfo, "c_box_2");
            setDropDownList(ConsumerInfo, "c_chart_3");
            setTextBox(ConsumerInfo, "c_box_3");
            setDropDownList(ConsumerInfo, "c_chart_4");
            setTextBox(ConsumerInfo, "c_box_4");
            */
            setDropDownList(ConsumerInfo, "c_text10");

        }

        private void showdata_re(DataRow ConsumerInfo)
        {
            //show re baseinfo
            setTextBox(ConsumerInfo, "c_ref_date");
            if (!AllEdit_Flag) setReadOnly("c_ref_date", "t");
            setTextBox(ConsumerInfo, "c_ref_name_last");
            if (!AllEdit_Flag) setReadOnly("c_ref_name_last", "t");
            setTextBox(ConsumerInfo, "c_ref_name_first");
            if (!AllEdit_Flag) setReadOnly("c_ref_name_first", "t");
            setDropDownList(ConsumerInfo, "c_ref_screener");
            if (!AllEdit_Flag) setReadOnly("c_ref_screener", "d");
            setDropDownList(ConsumerInfo, "c_ref_source");
            if (!AllEdit_Flag) setReadOnly("c_ref_source", "d");

            //setTextBox(ConsumerInfo, "c_ref_phone_1");
            //if (!AllEdit_Flag) setReadOnly("c_ref_phone_1", "t");
            if ((ConsumerInfo["c_ref_phone_1"] != System.DBNull.Value) && (ConsumerInfo["c_ref_phone_1"].ToString().Trim(null).Length >= 10))
            {
                c_ref_phone_1_1.Text = ConsumerInfo["c_ref_phone_1"].ToString().Substring(0, 3);
                c_ref_phone_1_2.Text = ConsumerInfo["c_ref_phone_1"].ToString().Substring(3, 3);
                c_ref_phone_1_3.Text = ConsumerInfo["c_ref_phone_1"].ToString().Substring(6, 4);
            }
            if (!AllEdit_Flag)
            {
                setReadOnly("c_ref_phone_1_1", "t");
                setReadOnly("c_ref_phone_1_2", "t");
                setReadOnly("c_ref_phone_1_3", "t");
            }

            setDropDownList(ConsumerInfo, "c_ref_relationship");
            if (!AllEdit_Flag) setReadOnly("c_ref_relationship", "d");
            setDropDownList(ConsumerInfo, "c_ref_reason");
            if (!AllEdit_Flag) setReadOnly("c_ref_reason", "d");
            setTextBox(ConsumerInfo, "c_ref_comment");
            if (!AllEdit_Flag) setReadOnly("c_ref_comment", "t");
            setTextBox(ConsumerInfo, "c_ref_2_date");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_date", "t");
            setTextBox(ConsumerInfo, "c_ref_2_name_last");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_name_last", "t");
            setTextBox(ConsumerInfo, "c_ref_2_name_first");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_name_first", "t");
            setDropDownList(ConsumerInfo, "c_ref_2_screener");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_screener", "d");
            setDropDownList(ConsumerInfo, "c_ref_2_source");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_source", "d");

            //setTextBox(ConsumerInfo, "c_ref_2_phone_1");
            //if (!AllEdit_Flag) setReadOnly("c_ref_2_phone_1", "t");
            if ((ConsumerInfo["c_ref_2_phone_1"] != System.DBNull.Value) && (ConsumerInfo["c_ref_2_phone_1"].ToString().Trim(null).Length >= 10))
            {
                c_ref_2_phone_1_1.Text = ConsumerInfo["c_ref_2_phone_1"].ToString().Substring(0, 3);
                c_ref_2_phone_1_2.Text = ConsumerInfo["c_ref_2_phone_1"].ToString().Substring(3, 3);
                c_ref_2_phone_1_3.Text = ConsumerInfo["c_ref_2_phone_1"].ToString().Substring(6, 4);
            }
            if (!AllEdit_Flag)
            {
                setReadOnly("c_ref_2_phone_1_1", "t");
                setReadOnly("c_ref_2_phone_1_2", "t");
                setReadOnly("c_ref_2_phone_1_2", "t");
            }

            setDropDownList(ConsumerInfo, "c_ref_2_relationship");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_relationship", "d");
            setTextBox(ConsumerInfo, "c_ref_2_agency_line_1");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_agency_line_1", "t");
            setTextBox(ConsumerInfo, "c_ref_2_agency_line_2");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_agency_line_2", "t");
            setDropDownList(ConsumerInfo, "c_ref_2_reason");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_reason", "d");
            setTextBox(ConsumerInfo, "c_ref_2_comment");
            if (!AllEdit_Flag) setReadOnly("c_ref_2_comment", "t");
        }

        private void showdata_sa(DataRow DrugsInfo)
        {
            setTextBox(DrugsInfo, "drug_substance_use");
            setTextBox(DrugsInfo, "other_drugs_used");
            setTextBox(DrugsInfo, "pharmaceutical_medications");
            setDropDownList(DrugsInfo, "drug_first_time");
            setDropDownList(DrugsInfo, "drug_freq");
            setDropDownList(DrugsInfo, "drug_route");
            setDropDownList(DrugsInfo, "smoke");
            setDropDownList(DrugsInfo, "smoke_freq");
            setDropDownList(DrugsInfo, "quitting");
            setDropDownList(DrugsInfo, "NRT");
            setDropDownList(DrugsInfo, "quit_smokeing_info");
            setDropDownList(DrugsInfo, "inject_use_needle");
            setDropDownList(DrugsInfo, "drug_user_contact");
            setDropDownList(DrugsInfo, "pharmaceutical_med_used");
        }

        private void showPosUfsList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable PosUfsDT = VirDBAccess.DbPos.getPosUfsList(this.consumer_key.Value.ToString().TrimEnd(), ViewState["PosUfsHist"].ToString(), Session["UserAct"].ToString());
                    DataView dv = PosUfsDT.DefaultView;
                    dg_posufs.DataSource = dv;
                    dg_posufs.DataBind();
                }
                //catch { }
            }
        }

        private void dg_posufs_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                Label lb_raprate = (Label)e.Item.FindControl("rap_rate");
                lb_raprate.Text = "XXXX";
            }
        }

        private void showEmploymentList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable EmploymentDT = VirDBAccess.DbConsumer.getEmploymentList(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                    DataView dv = EmploymentDT.DefaultView;
                    dg_employmentlist.DataSource = dv;
                    dg_employmentlist.DataBind();
                    dg_employment.DataSource = dv;
                    dg_employment.DataBind();
                }
                //catch { }
            }
        }

        private void dg_employmentlist_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[5].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[6].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerEmploymentSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerEmploymentSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this employment record?');");
                }
                else
                {
                    // ((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                    e.Item.Cells[6].Visible = false;
                }
            }
        }

        private void dg_employmentlist_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del employment
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delEmploymentInfo(clientid, entrydate, Session["UserAct"].ToString());
                showEmploymentList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_employment_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //if (Edit_Flag != "Y")
                {
                    foreach (System.Web.UI.Control uc in e.Item.Cells[0].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void showSchoolList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable SchoolDT = VirDBAccess.DbConsumer.getSchoolList(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                    DataView dv = SchoolDT.DefaultView;
                    dg_schoollist.DataSource = dv;
                    dg_schoollist.DataBind();
                    dg_school.DataSource = dv;
                    dg_school.DataBind();
                }
                //catch { }
            }
        }

        private void dg_schoollist_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[3].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[4].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerSchoolSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerSchoolSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this school record?');");
                }
                else
                {
                    e.Item.Cells[4].Visible = false;
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }

        private void dg_schoollist_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del employment
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delEmploymentInfo(clientid, entrydate, Session["UserAct"].ToString());
                showSchoolList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_school_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //if (Edit_Flag != "Y")
                {
                    string placementfunding = ((Label)e.Item.FindControl("placementfunding")).Text.Trim();
                    switch (placementfunding)
                    {
                        case "1":
                            ((TextBox)e.Item.FindControl("placementfunding_desc")).Text = "Public school";
                            break;
                        case "2":
                            ((TextBox)e.Item.FindControl("placementfunding_desc")).Text = "Non Public School (district funded)";
                            break;
                        case "3":
                            ((TextBox)e.Item.FindControl("placementfunding_desc")).Text = "Private school (family funded)";
                            break;
                        default:
                            break;
                    }

                    foreach (System.Web.UI.Control uc in e.Item.Cells[0].Controls)
                    {
                        if (uc.GetType().ToString() == "System.Web.UI.WebControls.TextBox")
                        {
                            ((TextBox)uc).Attributes.Add("readonly", "true");
                            // ((TextBox)uc).BackColor = Color.WhiteSmoke;
                            ((TextBox)uc).Attributes.Remove("onfocus");
                            ((TextBox)uc).Attributes.Remove("onclick");
                            ((TextBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.CheckBox")
                        {
                            ((CheckBox)uc).Enabled = false;
                            ((CheckBox)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.RadioButton")
                        {
                            ((RadioButton)uc).Enabled = false;
                            ((RadioButton)uc).CssClass = "infaceText";
                        }
                        else if (uc.GetType().ToString() == "System.Web.UI.WebControls.DropDownList")
                        {
                            ((DropDownList)uc).Enabled = false;
                            ((DropDownList)uc).CssClass = "infaceText";
                        }
                    }
                }
            }
        }

        private void showDayprogList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FundDT = VirDBAccess.DbConsumer.getDayprogFundList(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                    DataView dv1 = FundDT.DefaultView;
                    dg_prog_fund.DataSource = dv1;
                    dg_prog_fund.DataBind();
                    DataTable UnFundDT = VirDBAccess.DbConsumer.getDayprogUnFundList(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                    DataView dv2 = UnFundDT.DefaultView;
                    dg_prog_unfund.DataSource = dv2;
                    dg_prog_unfund.DataBind();
                }
                //catch { }
            }
        }

        private void dg_prog_fund_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerFundProgSCLARC.aspx?UCI=" + e.Item.Cells[0].Text
                    + "&Auth=" + e.Item.Cells[2].Text + "&Svc_Code=" + e.Item.Cells[3].Text + "&Sub_Code=" + e.Item.Cells[5].Text + "');");
            }
        }

        private void dg_prog_unfund_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[5].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[6].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerUnFundProgSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerUnFundProgSCLARC.aspx?ClientID=" + e.Item.Cells[0].Text + "&EntryDate=" + e.Item.Cells[1].Text + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this program record?');");
                }
                else
                {
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                    e.Item.Cells[6].Visible = false;
                }
            }
        }

        private void dg_prog_unfund_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del employment
            string clientid = e.Item.Cells[0].Text.TrimEnd();
            string entrydate = e.Item.Cells[1].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delEmploymentInfo(clientid, entrydate, Session["UserAct"].ToString());
                showDayprogList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void showContactList()
        {
            if (Session["ConsumerSel"] != null)
            {
                //try
                {
                    DataTable SignificantOtherDT = VirDBAccess.DbConsumer.getSignificantOtherListSCLARC(Session["ConsumerSel"].ToString(), Session["UserAct"].ToString());
                    DataView dv = SignificantOtherDT.DefaultView;
                    if (ViewState["sortkeycontact"] != null)
                    {
                        dv.Sort = ViewState["sortkeycontact"].ToString();
                    }
                    else
                    {
                        dv.Sort = "s_number asc";
                    }
                    dg_contact.DataSource = dv;
                    dg_contact.DataBind();
                }
                //catch { }
            }
        }

        private void dg_contact_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
        {
            dg_contact.CurrentPageIndex = e.NewPageIndex;
            showContactList();
        }

        private void dg_contact_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (Edit_Flag != "Y")
                    e.Item.Cells[7].Text = "View";
                if (Delete_Flag != "Y")
                    e.Item.Cells[8].Visible = false;
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (Edit_Flag == "Y")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerContactSCLARC.aspx?s_key=" +
                        Session["ConsumerSel"].ToString() + "&s_number=" + e.Item.Cells[1].Text + "&s_group=" + e.Item.Cells[9].Text.TrimEnd() + "&type=edit');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerContactSCLARC.aspx?s_key=" +
                        Session["ConsumerSel"].ToString() + "&s_number=" + e.Item.Cells[1].Text + "&s_group=" + e.Item.Cells[9].Text.TrimEnd() + "');");
                }
                if (Delete_Flag == "Y")
                {
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this contact?');");
                }
                else
                {
                    //((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                    e.Item.Cells[8].Visible = false;
                }
            }
        }

        private void dg_contact_SortCommand(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
        {
            if ((ViewState["sortcolumncontact"] != null) && (e.SortExpression.ToString() == ViewState["sortcolumncontact"].ToString()))
            {
                //Reverse the sort order
                if (ViewState["sortordercontact"].ToString() == "ASC")
                {
                    ViewState["sortkeycontact"] = e.SortExpression.ToString() + " DESC";
                    ViewState["sortordercontact"] = "DESC";
                }
                else
                {
                    ViewState["sortkeycontact"] = e.SortExpression.ToString() + " ASC";
                    ViewState["sortordercontact"] = "ASC";
                }
            }
            else
            {
                //Different column selected, so default to ascending order
                ViewState["sortkeycontact"] = e.SortExpression.ToString() + " ASC";
                ViewState["sortordercontact"] = "ASC";
            }
            ViewState["sortcolumncontact"] = e.SortExpression.ToString();

            showContactList();
        }

        private void dg_contact_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del contact
            string number = e.Item.Cells[1].Text.TrimEnd();
            string group = e.Item.Cells[9].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delSignificantOtherInfo(Session["ConsumerSel"].ToString(), number, group, Session["UserAct"].ToString());
                showContactList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void dg_contact_ItemCreated(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == System.Web.UI.WebControls.ListItemType.Pager)
            {
                TableCell pager = (TableCell)e.Item.Controls[0];
                for (int i = 0; i < pager.Controls.Count; i += 2)
                {
                    Object o = pager.Controls[i];
                    if (o is LinkButton)
                    {
                        LinkButton h = (LinkButton)o;
                        h.Text = " " + h.Text + " ";
                    }
                    else
                    {
                        Label l = (Label)o;
                        l.Text = String.Format("<font color='red'><{0}>", l.Text);
                    }
                }
            }
        }

        private void showPermissionList()
        {
            if (Session["ConsumerSel"] != null)
            {
                //try
                {
                    DataTable PermissionDT = VirDBAccess.DbConsumer.getFormPermissionAssignList(Session["ConsumerSel"].ToString(), Session["UserAct"].ToString());
                    DataView dv = PermissionDT.DefaultView;
                    dg_permission.DataSource = dv;
                    dg_permission.DataBind();
                }
                //catch { }
            }
        }

        private void dg_permission_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (this.PermEdit_Flag.Value != "1")
                {
                    e.Item.Cells[7].Text = "View";
                    e.Item.Cells[8].Visible = false;
                }
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if ((this.PermEdit_Flag.Value == "1") && (e.Item.Cells[5].Text == "User Input"))
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerPermissionSCLARC.aspx?FormID=" + e.Item.Cells[0].Text +
                        "&ClientID=" + e.Item.Cells[9].Text + "&type=edit');");
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this permission assignment?');");
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerPermissionSCLARC.aspx?FormID=" + e.Item.Cells[0].Text +
                        "&ClientID=" + e.Item.Cells[9].Text + "');");
                    if (this.PermEdit_Flag.Value != "1")
                        e.Item.Cells[8].Visible = false;
                    else
                        ((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }


        private void dg_permission_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del 
            string FormID = e.Item.Cells[0].Text.TrimEnd();
            //try
            {
                VirDBAccess.DbConsumer.delFormPermissionAssignInfo(FormID, Session["UserAct"].ToString());
                showPermissionList();
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        private void showSDPList()
        {
            if (Session["ConsumerSel"] != null)
            {
                //try
                {
                    DataTable SDPDT = VirDBAccess.DbConsumer.getConsumerSDPList(Session["ConsumerSel"].ToString(), Session["UserAct"].ToString());
                    DataView dv = SDPDT.DefaultView;
                    dg_SDP.DataSource = dv;
                    dg_SDP.DataBind();
                }
                //catch { }
            }
        }

        private void dg_sdp_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
                if (this.SDPEdit_Flag.Value != "1")
                {
                    e.Item.Cells[6].Text = "View";
                    e.Item.Cells[7].Visible = false;
                }
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (this.SDPEdit_Flag.Value == "1")
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerSDPInfo.aspx?FormID=" + e.Item.Cells[0].Text +
                        "&type=edit');");
                    ((ImageButton)e.Item.FindControl("imgDel")).Attributes.Add("onclick", "return PromptDel('Do you really want to delete this client SDP?');");

                    string EndDate = e.Item.Cells[4].Text.TrimEnd();
                    if (EndDate != "&nbsp;")
                    {
                        DateTime LastExit = DateTime.Parse(EndDate).AddMonths(12);
                        if (LastExit > DateTime.Now)
                            this.BtnAddSDP.Visible = false;
                    }
                    else
                        this.BtnAddSDP.Visible = false;
                }
                else
                {
                    ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "popupDialog('webConsumerSDPInfo.aspx?FormID=" + e.Item.Cells[0].Text +
                        "');");
                    ((ImageButton)e.Item.FindControl("imgDel")).Visible = false;
                }
            }
        }


        private void dg_sdp_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //del 
            string FormID = e.Item.Cells[0].Text.TrimEnd();
            string UCI = e.Item.Cells[1].Text.TrimEnd();
            string EndDate = e.Item.Cells[4].Text.TrimEnd();

            //try
            {
                VirDBAccess.DbConsumer.delConsumerSDPInfo(FormID, Session["UserAct"].ToString());
                showSDPList();
                if (EndDate == "&nbsp;")
                {
                    VirDBAccess.DbConsumer.UpdateConsumerSDPStatus(UCI, "T", Session["UserAct"].ToString());
                    c_court_docs.SelectedIndex = 0;
                }
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(2);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }
            //catch { }
        }

        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.dg_contact.ItemCreated += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_contact_ItemCreated);
            this.dg_contact.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.dg_contact_PageIndexChanged);
            this.dg_contact.SortCommand += new System.Web.UI.WebControls.DataGridSortCommandEventHandler(this.dg_contact_SortCommand);
            this.dg_contact.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_contact_DeleteCommand);
            this.dg_contact.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_contact_ItemDataBound);

            this.dg_posufs.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_posufs_ItemDataBound);

            this.dg_employmentlist.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_employmentlist_ItemDataBound);
            this.dg_employmentlist.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_employmentlist_DeleteCommand);
            this.dg_employment.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_employment_ItemDataBound);

            this.dg_schoollist.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_schoollist_ItemDataBound);
            this.dg_schoollist.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_schoollist_DeleteCommand);
            this.dg_school.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_school_ItemDataBound);

            this.dg_prog_unfund.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_prog_unfund_ItemDataBound);
            this.dg_prog_unfund.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_prog_unfund_DeleteCommand);
            this.dg_prog_fund.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_prog_fund_ItemDataBound);

            this.dg_SLSList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_SLSList_ItemDataBound);
            this.dg_SLSList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_SLSList_DeleteCommand);
            this.dg_SLS.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_SLS_ItemDataBound);

            this.dg_FCPPList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_FCPPList_ItemDataBound);
            this.dg_FCPPList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_FCPPList_DeleteCommand);
            this.dg_FCPP.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_FCPP_ItemDataBound);

            this.dg_AFPFList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_AFPFList_ItemDataBound);
            this.dg_AFPFList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_AFPFList_DeleteCommand);
            this.dg_AFPF.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_AFPF_ItemDataBound);
            this.dg_CoPayList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_CoPayList_DeleteCommand);
            this.dg_CoPayList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_CoPayList_ItemDataBound);
            this.dg_CoPay.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_CoPay_ItemDataBound);

            this.dg_JudicialList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_JudicialList_ItemDataBound);
            this.dg_JudicialList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_JudicialList_DeleteCommand);
            this.dg_Judicial.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_Judicial_ItemDataBound);

            this.dg_ComplaintList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_ComplaintList_ItemDataBound);
            this.dg_ComplaintList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_ComplaintList_DeleteCommand);
            this.dg_Complaint.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_Complaint_ItemDataBound);

            this.dg_VoterRegList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_VoterRegList_ItemDataBound);
            this.dg_VoterRegList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_VoterRegList_DeleteCommand);
            this.dg_VoterReg.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_VoterReg_ItemDataBound);

            this.dg_IMDList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_IMDList_ItemDataBound);
            this.dg_IMDList.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_IMDList_DeleteCommand);
            this.dg_IMD.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_IMD_ItemDataBound);

            this.dg_ESEligibiltyList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_ESEligibiltyList_ItemDataBound);
            this.dg_EligibiltyList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_EligibiltyList_ItemDataBound);
            this.dg_EsrForm101.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_EsrForm101_ItemDataBound);
            this.dg_Form101.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_Form101_ItemDataBound);
            this.dg_EsrPsySocialList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_EsrPsySocialList_ItemDataBound);
            this.dg_PsySocialList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_PsySocialList_ItemDataBound);
            //this.c_payee_zip.SelectedIndexChanged += new System.EventHandler(this.PayeeCode1_SelectedIndexChanged);
            //this.c_payee_zip2.SelectedIndexChanged += new System.EventHandler(this.PayeeCode2_SelectedIndexChanged);

            this.dg_permission.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_permission_DeleteCommand);
            this.dg_permission.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_permission_ItemDataBound);

            this.dg_SDP.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dg_sdp_DeleteCommand);
            this.dg_SDP.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_sdp_ItemDataBound);
        }

        private void getdata_fs(DataRow ConsumerInfo)
        {
            getDropDownList(ConsumerInfo, "c_program_primary", 0);
            getTextBox(ConsumerInfo, "c_date20", 2);
            //get fs baseinfo
            getTextBox(ConsumerInfo, "c_attention", 0);
            getTextBox(ConsumerInfo, "c_name_last", 0);
            getTextBox(ConsumerInfo, "c_name_first", 0);
            getTextBox(ConsumerInfo, "c_name_mi", 0);
            getDropDownList(ConsumerInfo, "c_gender", 0);
            getTextBox(ConsumerInfo, "c_name_aka_last", 0);
            getTextBox(ConsumerInfo, "c_name_aka_first", 0);
            getTextBox(ConsumerInfo, "c_name_aka_mi", 0);
            getDropDownList(ConsumerInfo, "c_ethnicity", 0);
            getDropDownList(ConsumerInfo, "c_text12", 0);
            getTextBox(ConsumerInfo, "c_name_maiden_last", 0);
            getTextBox(ConsumerInfo, "c_name_maiden_first", 0);
            getDropDownList(ConsumerInfo, "c_language", 0);
            getDropDownList(ConsumerInfo, "c_preferred_language", 0);
            getDropDownList(ConsumerInfo, "c_document_language", 0);
            getTextBox(ConsumerInfo, "c_date14", 2);
            getTextBox(ConsumerInfo, "c_text7", 0);
            getTextBox(ConsumerInfo, "c_date13", 2);
            getTextBox(ConsumerInfo, "c_dob", 2);
            getDropDownList(ConsumerInfo, "c_hair_color", 0);
            getTextBox(ConsumerInfo, "c_birthplace", 0);
            getDropDownList(ConsumerInfo, "c_eye_color", 0);
            getDropDownList(ConsumerInfo, "c_marital_status", 0);
            getTextBox(ConsumerInfo, "c_height_weight", 0);
            getTextBox(ConsumerInfo, "c_weight", 0);

            getDropDownList(ConsumerInfo, "c_phone_3_label", 0);
            // getTextBox(ConsumerInfo, "c_phone_1", 0);
            if (c_phone_1_1.Text.TrimEnd().Length == 3 && c_phone_1_2.Text.TrimEnd().Length == 3 && c_phone_1_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_phone_1"] = c_phone_1_1.Text + c_phone_1_2.Text + c_phone_1_3.Text;
            else if (c_phone_1_1.Text.TrimEnd().Length == 0 && c_phone_1_2.Text.TrimEnd().Length == 0 && c_phone_1_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_phone_1"] = "";
            // getTextBox(ConsumerInfo, "c_phone_2", 0);
            if (c_phone_2_1.Text.TrimEnd().Length == 3 && c_phone_2_2.Text.TrimEnd().Length == 3 && c_phone_2_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_phone_2"] = c_phone_2_1.Text + c_phone_2_2.Text + c_phone_2_3.Text;
            else if (c_phone_2_1.Text.TrimEnd().Length == 0 && c_phone_2_2.Text.TrimEnd().Length == 0 && c_phone_2_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_phone_2"] = "";
            // getTextBox(ConsumerInfo, "c_phone_3", 0);
            if (c_phone_3_1.Text.TrimEnd().Length == 3 && c_phone_3_2.Text.TrimEnd().Length == 3 && c_phone_3_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_phone_3"] = c_phone_3_1.Text + c_phone_3_2.Text + c_phone_3_3.Text;
            else if (c_phone_3_1.Text.TrimEnd().Length == 0 && c_phone_3_2.Text.TrimEnd().Length == 0 && c_phone_3_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_phone_3"] = "";
            // getTextBox(ConsumerInfo, "c_fax", 0);
            if (c_text8_1.Text.TrimEnd().Length == 3 && c_text8_2.Text.TrimEnd().Length == 3 && c_text8_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_text8"] = c_text8_1.Text + c_text8_2.Text + c_text8_3.Text;
            else if (c_text8_1.Text.TrimEnd().Length == 0 && c_text8_2.Text.TrimEnd().Length == 0 && c_text8_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_text8"] = "";

            getTextBox(ConsumerInfo, "c_email", 0);
            getTextBox(ConsumerInfo, "c_residence_number", 0);
            getDropDownList(ConsumerInfo, "c_residence_current", 0);
            getDropDownList(ConsumerInfo, "c_residence_prior", 0);
            getTextBox(ConsumerInfo, "c_residence_date", 2);
            getTextBox(ConsumerInfo, "c_address_name", 0);
            getTextBox(ConsumerInfo, "c_address_line_1", 0);
            getTextBox(ConsumerInfo, "c_address_line_2", 0);
            getTextBox(ConsumerInfo, "c_address_city", 0);
            getTextBox(ConsumerInfo, "c_address_state", 0);
            getTextBox(ConsumerInfo, "c_address_zip", 0);
            getDropDownList(ConsumerInfo, "c_mail_code", 0);
            getTextBox(ConsumerInfo, "c_mailing_address_name", 0);
            getTextBox(ConsumerInfo, "c_mailing_address_line_1", 0);
            getTextBox(ConsumerInfo, "c_mailing_address_line_2", 0);
            getTextBox(ConsumerInfo, "c_mailing_address_city", 0);
            getTextBox(ConsumerInfo, "c_mailing_address_state", 0);
            getTextBox(ConsumerInfo, "c_mailing_address_zip", 0);
            getDropDownList(ConsumerInfo, "c_mailing_mail_code", 0);
            getDropDownList(ConsumerInfo, "c_legal_county", 0);
            getDropDownList(ConsumerInfo, "c_physical_county", 0);

            getDropDownList(ConsumerInfo, "c_legal_status_1", 0);
            getTextBox(ConsumerInfo, "c_legal_status_date_1", 2);
            getDropDownList(ConsumerInfo, "c_legal_status_2", 0);
            getTextBox(ConsumerInfo, "c_legal_status_date_2", 2);
            c_legal_status_1_dup.SelectedValue = ConsumerInfo["c_legal_status_1"].ToString().TrimEnd();
            c_legal_status_2_dup.SelectedValue = ConsumerInfo["c_legal_status_2"].ToString().TrimEnd();
            if (ConsumerInfo["c_legal_status_date_1"].ToString() != "")
                c_legal_status_date_1_dup.Text = ((DateTime)ConsumerInfo["c_legal_status_date_1"]).ToString("MM/dd/yyyy");
            if (ConsumerInfo["c_legal_status_date_2"].ToString() != "")
                c_legal_status_date_2_dup.Text = ((DateTime)ConsumerInfo["c_legal_status_date_2"]).ToString("MM/dd/yyyy");
        }

        private void getdata_lf(DataRow ConsumerInfo)
        {
            //get lf baseinfo
            //getTextBox(ConsumerInfo, "c_wages", 0);
            getDropDownList(ConsumerInfo, "c_medicaid_waiver", 0);
            if (c_medicaid_waiver.SelectedValue == "Y")
                c_medicaid_waiver.BackColor = Color.Yellow;
            else c_medicaid_waiver.BackColor = Color.White;

            if (c_ssn_1.Text.TrimEnd().Length == 3 && c_ssn_2.Text.TrimEnd().Length == 2 && c_ssn_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_ssn"] = c_ssn_1.Text + c_ssn_2.Text + c_ssn_3.Text;
            else if (c_ssn_1.Text.TrimEnd().Length == 0 && c_ssn_2.Text.TrimEnd().Length == 0 && c_ssn_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_ssn"] = "";

            getDropDownList(ConsumerInfo, "c_ss1", 0);
            getDropDownList(ConsumerInfo, "c_ss2", 0);
            getTextBox(ConsumerInfo, "c_ss1amount", 0);
            getTextBox(ConsumerInfo, "c_ss2amount", 0);
            getDropDownList(ConsumerInfo, "c_ss1Freq", 0);
            getDropDownList(ConsumerInfo, "c_ss2Freq", 0);
            getTextBox(ConsumerInfo, "c_payee_indicator", 0);
            getTextBox(ConsumerInfo, "c_payee_indicator2", 0);
            //getTextBox(ConsumerInfo, "c_payee_zip", 0);
            //getTextBox(ConsumerInfo, "c_payee_zip2", 0);
            getDropDownList(ConsumerInfo, "c_payee_zip", 0);
            getDropDownList(ConsumerInfo, "c_payee_zip2", 0);

            getDropDownList(ConsumerInfo, "c_ccs", 0);
            getTextBox(ConsumerInfo, "c_ghpp", 0);
            getDropDownList(ConsumerInfo, "c_wpcsHrs", 0);
            getTextBox(ConsumerInfo, "c_shareofcost", 0);
            getDropDownList(ConsumerInfo, "c_ocmh", 0);

            getTextBox(ConsumerInfo, "c_medi_cal", 0);
            getTextBox(ConsumerInfo, "c_pandi", 0);
            getTextBox(ConsumerInfo, "c_pandiDate", 2);
            getDropDownList(ConsumerInfo, "c_generic_agency_1", 0);
            getDropDownList(ConsumerInfo, "c_generic_agency_2", 0);
            getDropDownList(ConsumerInfo, "c_generic_agency_3", 0);
            getTextBox(ConsumerInfo, "c_generic1amount", 0);
            getTextBox(ConsumerInfo, "c_generic2amount", 0);
            getTextBox(ConsumerInfo, "c_generic3amount", 0);
            getDropDownList(ConsumerInfo, "c_generic1Freq", 0);
            getDropDownList(ConsumerInfo, "c_generic2Freq", 0);
            getDropDownList(ConsumerInfo, "c_generic3Freq", 0);
            //getDropDownList(ConsumerInfo, "c_otherinsurance1", 0);
            getDropDownList(ConsumerInfo, "c_medical_type", 0);
            getTextBox(ConsumerInfo, "c_medicare_number", 0);
            getTextBox(ConsumerInfo, "c_bic_number", 0);
            //getTextBox(ConsumerInfo, "c_policy", 0);

            getDropDownList(ConsumerInfo, "c_ihss", 0);
            getTextBox(ConsumerInfo, "c_ihss_hrs", 0);
        }

        private void getdata_lf_subtab(DataRow FinancialInfo)
        {
            getDropDownList(FinancialInfo, "CCS", 0);
            getTextBox(FinancialInfo, "CCS_Num", 0);
            //health Benefit
            FinancialInfo["last_mod_by"] = Session["userFullname"].ToString().TrimEnd();
            FinancialInfo["last_mod_date"] = DateTime.Now;
            getCheckBox(FinancialInfo, "primary_med", 0);
            getDropDownList(FinancialInfo, "primary_medi_cal", 0);
            getCheckBox(FinancialInfo, "primary_medicare", 0);
            getCheckBox(FinancialInfo, "primary_partA", 0);
            getTextBox(FinancialInfo, "primary_partA_time", 2);
            getCheckBox(FinancialInfo, "primary_partB", 0);
            getTextBox(FinancialInfo, "primary_partB_time", 2);
            getCheckBox(FinancialInfo, "primary_partCD", 0);
            getTextBox(FinancialInfo, "primary_partCD_provider", 0);
            getCheckBox(FinancialInfo, "primary_otherinsurance", 0);
            /*
            getCheckBox(FinancialInfo, "primary_blueshield", 0);
            getCheckBox(FinancialInfo, "primary_healthyfamilies", 0);
            getCheckBox(FinancialInfo, "primary_kaiser", 0);
            getCheckBox(FinancialInfo, "primary_pacificare", 0);
            getCheckBox(FinancialInfo, "primary_tricare", 0);
            getCheckBox(FinancialInfo, "primary_champus", 0);
            */
            getTextBox(FinancialInfo, "primary_othername", 0);
            if (FinancialInfo["primary_othername"].ToString().TrimEnd() == "")
            {
                FinancialInfo["primary_othergroup"] = "";
                primary_othergroup.Text = "";
                FinancialInfo["primary_othermember"] = "";
                primary_othermember.Text = "";
                FinancialInfo["primary_otherperiodfrom"] = DBNull.Value;
                primary_otherperiodfrom.Text = "";
                FinancialInfo["primary_otherperiodto"] = DBNull.Value;
                primary_otherperiodto.Text = "";
            }
            else
            {
                getTextBox(FinancialInfo, "primary_othergroup", 0);
                getTextBox(FinancialInfo, "primary_othermember", 0);
                getTextBox(FinancialInfo, "primary_otherperiodfrom", 2);
                getTextBox(FinancialInfo, "primary_otherperiodto", 2);
            }
            getCheckBox(FinancialInfo, "secondary_med", 0);
            getDropDownList(FinancialInfo, "secondary_medi_cal", 0);
            getCheckBox(FinancialInfo, "secondary_medicare", 0);
            getCheckBox(FinancialInfo, "secondary_partA", 0);
            getTextBox(FinancialInfo, "secondary_partA_time", 2);
            getCheckBox(FinancialInfo, "secondary_partB", 0);
            getTextBox(FinancialInfo, "secondary_partB_time", 2);
            getCheckBox(FinancialInfo, "secondary_partCD", 0);
            getTextBox(FinancialInfo, "secondary_partCD_provider", 0);
            getCheckBox(FinancialInfo, "secondary_otherinsurance", 0);
            /*
            getCheckBox(FinancialInfo, "secondary_blueshield", 0);
            getCheckBox(FinancialInfo, "secondary_healthyfamilies", 0);
            getCheckBox(FinancialInfo, "secondary_kaiser", 0);
            getCheckBox(FinancialInfo, "secondary_pacificare", 0);
            getCheckBox(FinancialInfo, "secondary_tricare", 0);
            getCheckBox(FinancialInfo, "secondary_champus", 0);
            */
            getTextBox(FinancialInfo, "secondary_othername", 0);
            if (FinancialInfo["secondary_othername"].ToString().TrimEnd() == "")
            {
                FinancialInfo["secondary_othergroup"] = "";
                secondary_othergroup.Text = "";
                FinancialInfo["secondary_othermember"] = "";
                secondary_othermember.Text = "";
                FinancialInfo["secondary_otherperiodfrom"] = DBNull.Value;
                secondary_otherperiodfrom.Text = "";
                FinancialInfo["secondary_otherperiodto"] = DBNull.Value;
                secondary_otherperiodto.Text = "";
            }
            else
            {
                getTextBox(FinancialInfo, "secondary_othergroup", 0);
                getTextBox(FinancialInfo, "secondary_othermember", 0);
                getTextBox(FinancialInfo, "secondary_otherperiodfrom", 2);
                getTextBox(FinancialInfo, "secondary_otherperiodto", 2);
            }

            getTextBox(FinancialInfo, "medical_provider", 0);

            //other Benefits/burial trusts
            //getDropDownList(FinancialInfo, "ihss", 0);
            getTextBox(FinancialInfo, "ihss_comment", 0);
            getTextBox(FinancialInfo, "account", 0);
            //getTextBox(FinancialInfo, "ihss_hours", 0);
            getTextBox(FinancialInfo, "reviewdate", 2);
            getDropDownList(FinancialInfo, "spec_surpervision", 0);
            getTextBox(FinancialInfo, "spec_surpervision_hrs", 0);
            getDropDownList(FinancialInfo, "ihss_relationship", 0);
            getDropDownList(FinancialInfo, "ihss_relationship2", 0);
            getDropDownList(FinancialInfo, "ihss_relationship3", 0);
            getTextBox(FinancialInfo, "housing_auth", 0);
            getTextBox(FinancialInfo, "hud_voucher", 0);

            //getDropDownList(FinancialInfo, "othersupport_1", 0);
            getTextBox(FinancialInfo, "othersupport_1_txt", 0);

            //getDropDownList(FinancialInfo, "othersupport_2", 0);
            getTextBox(FinancialInfo, "othersupport_2_txt", 0);

            getDropDownList(FinancialInfo, "given", 0);
            getDropDownList(FinancialInfo, "lifeplan_developed", 0);

            getTextBox(FinancialInfo, "burial_plan1", 0);
            getTextBox(FinancialInfo, "establisheddate1", 2);
            getTextBox(FinancialInfo, "plan_amount1", 0);
            getDropDownList(FinancialInfo, "burial_arrangement1", 0);

            getTextBox(FinancialInfo, "burial_plan2", 0);
            getTextBox(FinancialInfo, "establisheddate2", 2);
            getTextBox(FinancialInfo, "plan_amount2", 0);
            getDropDownList(FinancialInfo, "burial_arrangement2", 0);

            getTextBox(FinancialInfo, "burial_plan3", 0);
            getTextBox(FinancialInfo, "establisheddate3", 2);
            getTextBox(FinancialInfo, "plan_amount3", 0);
            getDropDownList(FinancialInfo, "burial_arrangement3", 0);

            getTextBox(FinancialInfo, "trustname", 0);
            getDropDownList(FinancialInfo, "trusttype", 0);
            getTextBox(FinancialInfo, "trustdate", 2);
            getTextBox(FinancialInfo, "trust_amount", 0);
            getTextBox(FinancialInfo, "contactinfo", 0);
        }

        private void getdata_af_legal(DataRow LegalInfo)
        {
            LegalInfo["last_mod_by"] = Session["userFullname"].ToString().TrimEnd();
            LegalInfo["last_mod_date"] = DateTime.Now;
            getDropDownList(LegalInfo, "request_not_share", 0);
            getTextBox(LegalInfo, "comments", 0);
            getCheckBox(LegalInfo, "non_conserved", 0);
            if (non_conserved.Checked)
            {
                this.LegalInfo_flag.Value = "1";
            }
            else
            {
                this.LegalInfo_flag.Value = "0";
            }

            getCheckBox(LegalInfo, "cons_pending", 0);
            getTextBox(LegalInfo, "IDTeamdate", 2);
            getCheckBox(LegalInfo, "conserved", 0);

            getTextBox(LegalInfo, "cons_name1", 0);
            getDropDownList(LegalInfo, "cons_relationship1", 0);
            getTextBox(LegalInfo, "cons_address1", 0);
            getDropDownList(LegalInfo, "cons_type", 0);
            getTextBox(LegalInfo, "cons_establishdate", 2);

            getTextBox(LegalInfo, "cons_name2", 0);
            getDropDownList(LegalInfo, "cons_relationship2", 0);
            getTextBox(LegalInfo, "cons_address2", 0);
            getDropDownList(LegalInfo, "cons_type2", 0);
            getTextBox(LegalInfo, "cons_establishdate2", 2);

            getTextBox(LegalInfo, "cons_name3", 0);
            getDropDownList(LegalInfo, "cons_relationship3", 0);
            getTextBox(LegalInfo, "cons_address3", 0);
            getDropDownList(LegalInfo, "cons_type3", 0);
            getTextBox(LegalInfo, "cons_establishdate3", 2);

            getTextBox(LegalInfo, "cons_name4", 0);
            getDropDownList(LegalInfo, "cons_relationship4", 0);
            getTextBox(LegalInfo, "cons_address4", 0);
            getDropDownList(LegalInfo, "cons_type4", 0);
            getTextBox(LegalInfo, "cons_establishdate4", 2);

            getCheckBox(LegalInfo, "cons_followup_req", 0);

            getCheckBox(LegalInfo, "grd_pending", 0);
            getCheckBox(LegalInfo, "guardian", 0);

            getTextBox(LegalInfo, "grd_name1", 0);
            getDropDownList(LegalInfo, "grd_relationship1", 0);
            getTextBox(LegalInfo, "grd_address1", 0);
            getDropDownList(LegalInfo, "grd_type", 0);
            getTextBox(LegalInfo, "grd_establishdate", 2);

            getTextBox(LegalInfo, "grd_name2", 0);
            getDropDownList(LegalInfo, "grd_relationship2", 0);
            getTextBox(LegalInfo, "grd_address2", 0);
            getDropDownList(LegalInfo, "grd_type2", 0);
            getTextBox(LegalInfo, "grd_establishdate2", 2);

            getTextBox(LegalInfo, "grd_name3", 0);
            getDropDownList(LegalInfo, "grd_relationship3", 0);
            getTextBox(LegalInfo, "grd_address3", 0);
            getDropDownList(LegalInfo, "grd_type3", 0);
            getTextBox(LegalInfo, "grd_establishdate3", 2);

            getTextBox(LegalInfo, "grd_name4", 0);
            getDropDownList(LegalInfo, "grd_relationship4", 0);
            getTextBox(LegalInfo, "grd_address4", 0);
            getDropDownList(LegalInfo, "grd_type4", 0);
            getTextBox(LegalInfo, "grd_establishdate4", 2);

            getCheckBox(LegalInfo, "grd_followup_req", 0);

            getRadioBox(LegalInfo, "judicial_inv", 0);

            getDropDownList(LegalInfo, "sex_offender", 0);
            //getDropDownList(LegalInfo, "registerstation", 0);
            getTextBox(LegalInfo, "registerstation", 0);
            getTextBox(LegalInfo, "registerdate", 2);
            getDropDownList(LegalInfo, "strikes", 0);
            getDropDownList(LegalInfo, "strikes_cnt", 0);
            LegalInfo["strikes_cnt"] = strikes_cnt.SelectedValue;

            getDropDownList(LegalInfo, "employed", 0);
            getDropDownList(LegalInfo, "ProgramType1", 0);
            getTextBox(LegalInfo, "ProgramName", 0);
            getDropDownList(LegalInfo, "discussed", 0);
            getDropDownList(LegalInfo, "chosed", 0);
            getDropDownList(LegalInfo, "ProgramType2", 0);
            getDropDownList(LegalInfo, "referred", 0);
            getTextBox(LegalInfo, "EmploymentStatus", 0);
        }

        private void getdata_dc(DataRow ConsumerInfo)
        {
            //get dc baseinfo
            getDropDownList(ConsumerInfo, "c_case_level", 0);
            getTextBox(ConsumerInfo, "c_date05", 2);
            // Due Date: c_date05_dup (+45 days)
            if (ConsumerInfo["c_date05"] != System.DBNull.Value)
                c_date05_dup.Text = ((DateTime)ConsumerInfo["c_date05"]).AddDays(45).ToShortDateString();
            getTextBox(ConsumerInfo, "c_review_pcp_ifsp_date", 2);
            getTextBox(ConsumerInfo, "c_date06", 2);
            getTextBox(ConsumerInfo, "c_date10", 2);
            // Proposed Date
            getTextBox(ConsumerInfo, "c_review_quarterly1_date", 2);
            getTextBox(ConsumerInfo, "c_review_sar_date", 2);
            getDropDownList(ConsumerInfo, "c_text5", 0);
            getTextBox(ConsumerInfo, "c_review_quarterly3_date", 2);
            getTextBox(ConsumerInfo, "c_date07", 2);
            getTextBox(ConsumerInfo, "c_date12", 2);
            getTextBox(ConsumerInfo, "c_date08", 2);
            getTextBox(ConsumerInfo, "c_review_cder_esr_date", 2);
            getTextBox(ConsumerInfo, "c_initial_inquiry_date", 2);
            // Due Date: c_initial_inquiry_date_dup (+120 days)
            if (ConsumerInfo["c_initial_inquiry_date"] != System.DBNull.Value)
                c_initial_inquiry_date_dup.Text = ((DateTime)ConsumerInfo["c_initial_inquiry_date"]).AddDays(120).ToShortDateString();
            getTextBox(ConsumerInfo, "c_date_waiver", 2);
            getTextBox(ConsumerInfo, "c_initial_interview_date", 2);
            getTextBox(ConsumerInfo, "c_review_mw_date", 2);
            // Proposed Date
            getTextBox(ConsumerInfo, "c_date_consent", 2);
            getTextBox(ConsumerInfo, "c_qol", 0);
            getDropDownList(ConsumerInfo, "c_text6", 0);
            getTextBox(ConsumerInfo, "c_date11", 2);
            getTextBox(ConsumerInfo, "c_eligibility_date", 2);
            getTextBox(ConsumerInfo, "c_date01", 2);
            getDropDownList(ConsumerInfo, "c_base_month", 0);
            getDropDownList(ConsumerInfo, "c_tickler_cycle", 1);
            if (c_tickler_date.Text != "")
                ConsumerInfo["c_tickler_date"] = "01/01/" + c_tickler_date.Text;
            else
                ConsumerInfo["c_tickler_date"] = DateTime.Now;

            getTextBox(ConsumerInfo, "c_date02", 2);
            getTextBox(ConsumerInfo, "c_date03", 2);
            getTextBox(ConsumerInfo, "c_date09", 2);
            getTextBox(ConsumerInfo, "c_text1", 0);
            getTextBox(ConsumerInfo, "c_text2", 0);
            getTextBox(ConsumerInfo, "c_text9", 0);
        }

        private void getdata_ad(DataRow ConsumerInfo)
        {
            //get ad baseinfo
            getDropDownList(ConsumerInfo, "c_status", 0);
            /*
            string sStatus = ConsumerInfo["c_status"].ToString().Trim();
            if ((sStatus == "4") || (sStatus == "5") || (sStatus == "6") || (sStatus == "7")  // || (sStatus == "8")
                || (sStatus == "9") || (sStatus == "D") || (sStatus == "R") || (sStatus == "S"))
            {
                ConsumerInfo["c_cm_id"] = "000";

                if (c_cm_id.SelectedItem.Value.TrimEnd() != "000")
                {
                    bool itemcheck = false;
                    foreach (ListItem li in c_cm_id.Items)
                    {
                        if ((!itemcheck) && (li.Value.TrimEnd() == ConsumerInfo["c_cm_id"].ToString().TrimEnd()))
                        {
                            li.Selected = true;
                            itemcheck = true;
                        }
                        else
                            li.Selected = false;
                    }
                }
            }
            else
            */
            getDropDownList(ConsumerInfo, "c_cm_id", 0);

            if (c_cm_id.SelectedItem.Text.TrimEnd().Length > 26)
                ConsumerInfo["c_cm_name"] = c_cm_id.SelectedItem.Text.TrimEnd().Substring(0, 26);
            else
                ConsumerInfo["c_cm_name"] = c_cm_id.SelectedItem.Text.TrimEnd();
            if (c_cm_id_iddup.Text.TrimEnd() != ConsumerInfo["c_cm_id"].ToString().TrimEnd())
            {
                c_cm_id_iddup.Text = ConsumerInfo["c_cm_id"].ToString();
                bool itemcheck = false;
                foreach (ListItem li in c_cm_id_dup.Items)
                {
                    if ((!itemcheck) && (li.Value.TrimEnd() == ConsumerInfo["c_cm_id"].ToString().TrimEnd()))
                    {
                        li.Selected = true;
                        itemcheck = true;
                    }
                    else
                        li.Selected = false;
                }
            }
            getDropDownList(ConsumerInfo, "c_cm_type", 0);
            //getTextBox(ConsumerInfo, "c_uci", 0);
            getLabel(ConsumerInfo, "c_uci", 0);
            getLabel(ConsumerInfo, "c_date21", 2);
            // getDropDownList(ConsumerInfo, "c_unit_area", 0);  // Don't need to write back to c_unit_area field
            getTextBox(ConsumerInfo, "c_mis", 0);
            getDropDownList(ConsumerInfo, "c_case_assign_manager", 0);
            getTextBox(ConsumerInfo, "c_case_assign_date", 2);

            getTextBox(ConsumerInfo, "c_status_date", 2);
            getDropDownList(ConsumerInfo, "c_previous_status", 0);
            getTextBox(ConsumerInfo, "c_previous_status_date", 2);
            getDropDownList(ConsumerInfo, "c_cm_agency", 0);
            getDropDownList(ConsumerInfo, "c_report_agency", 0);
            getTextBox(ConsumerInfo, "c_text4", 0);
            //getDropDownList(ConsumerInfo, "c_last_mod_by", 0);
            //getLabel(ConsumerInfo, "c_last_mod_date", 2);
            getTextBox(ConsumerInfo, "c_comment_1", 0);
            getTextBox(ConsumerInfo, "c_comment_2", 0);
            getTextBox(ConsumerInfo, "c_comment_3", 0);
            getDropDownList(ConsumerInfo, "c_chartScanned", 0);
            /*
            getDropDownList(ConsumerInfo, "c_offsite_location", 0);
            getTextBox(ConsumerInfo, "c_box_number", 0);
            getDropDownList(ConsumerInfo, "c_chart_2", 0);
            getTextBox(ConsumerInfo, "c_box_2", 0);
            getDropDownList(ConsumerInfo, "c_chart_3", 0);
            getTextBox(ConsumerInfo, "c_box_3", 0);
            getDropDownList(ConsumerInfo, "c_chart_4", 0);
            getTextBox(ConsumerInfo, "c_box_4", 0);
            */
            getDropDownList(ConsumerInfo, "c_text10", 0);
        }

        private void getdata_re(DataRow ConsumerInfo)
        {
            //get re baseinfo
            getTextBox(ConsumerInfo, "c_ref_date", 2);
            getTextBox(ConsumerInfo, "c_ref_name_last", 0);
            getTextBox(ConsumerInfo, "c_ref_name_first", 0);
            getDropDownList(ConsumerInfo, "c_ref_screener", 0);
            getDropDownList(ConsumerInfo, "c_ref_source", 0);
            //getTextBox(ConsumerInfo, "c_ref_phone_1", 0);
            if (c_ref_phone_1_1.Text.TrimEnd().Length == 3 && c_ref_phone_1_2.Text.TrimEnd().Length == 3 && c_ref_phone_1_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_ref_phone_1"] = c_ref_phone_1_1.Text + c_ref_phone_1_2.Text + c_ref_phone_1_3.Text;
            else if (c_ref_phone_1_1.Text.TrimEnd().Length == 0 && c_ref_phone_1_2.Text.TrimEnd().Length == 0 && c_ref_phone_1_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_ref_phone_1"] = "";

            getDropDownList(ConsumerInfo, "c_ref_relationship", 0);
            getDropDownList(ConsumerInfo, "c_ref_reason", 0);
            getTextBox(ConsumerInfo, "c_ref_comment", 0);
            getTextBox(ConsumerInfo, "c_ref_2_date", 2);
            getTextBox(ConsumerInfo, "c_ref_2_name_last", 0);
            getTextBox(ConsumerInfo, "c_ref_2_name_first", 0);
            getDropDownList(ConsumerInfo, "c_ref_2_screener", 0);
            getDropDownList(ConsumerInfo, "c_ref_2_source", 0);
            //getTextBox(ConsumerInfo, "c_ref_2_phone_1", 0);
            if (c_ref_2_phone_1_1.Text.TrimEnd().Length == 3 && c_ref_2_phone_1_2.Text.TrimEnd().Length == 3 && c_ref_2_phone_1_3.Text.TrimEnd().Length == 4)
                ConsumerInfo["c_ref_2_phone_1"] = c_ref_2_phone_1_1.Text + c_ref_2_phone_1_2.Text + c_ref_2_phone_1_3.Text;
            else if (c_ref_2_phone_1_1.Text.TrimEnd().Length == 0 && c_ref_2_phone_1_2.Text.TrimEnd().Length == 0 && c_ref_2_phone_1_3.Text.TrimEnd().Length == 0)
                ConsumerInfo["c_ref_2_phone_1"] = "";

            getDropDownList(ConsumerInfo, "c_ref_2_relationship", 0);
            getTextBox(ConsumerInfo, "c_ref_2_agency_line_1", 0);
            getTextBox(ConsumerInfo, "c_ref_2_agency_line_2", 0);
            getDropDownList(ConsumerInfo, "c_ref_2_reason", 0);
            getTextBox(ConsumerInfo, "c_ref_2_comment", 0);
        }

        private void getdata_sa(DataRow DrugsInfo)
        {
            getTextBox(DrugsInfo, "drug_substance_use", 0);
            getTextBox(DrugsInfo, "other_drugs_used", 0);
            getTextBox(DrugsInfo, "pharmaceutical_medications", 0);
            getDropDownList(DrugsInfo, "drug_first_time", 0);
            getDropDownList(DrugsInfo, "drug_freq", 0);
            getDropDownList(DrugsInfo, "drug_route", 0);
            getDropDownList(DrugsInfo, "smoke", 0);
            getDropDownList(DrugsInfo, "smoke_freq", 0);
            getDropDownList(DrugsInfo, "quitting", 0);
            getDropDownList(DrugsInfo, "NRT", 0);
            getDropDownList(DrugsInfo, "quit_smokeing_info", 0);
            getDropDownList(DrugsInfo, "inject_use_needle", 0);
            getDropDownList(DrugsInfo, "drug_user_contact", 0);
            getDropDownList(DrugsInfo, "pharmaceutical_med_used", 0);
        }

        private void saveDrugsInfo()
        {
            System.Data.SqlClient.SqlDataAdapter DrugsAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet DrugsSet = new DataSet();

            DataRow DrugsInfo;
            if (VirDBAccess.DbConsumer.CheckDrugsInfo(this.consumer_key.Value.ToString(), Session["UserAct"].ToString()))
            {//update
                string sqlstr = "select *  from Drugs ";
                sqlstr += string.Format("where d_uci='{0}'", this.consumer_key.Value.ToString());
                DrugsInfo = VirDBAccess.DbConsumer.constructDrugsTable(DrugsAD, DrugsSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];
                getdata_sa(DrugsInfo);
                if (VirDBAccess.DbConsumer.updateDrugsInfo(DrugsAD, DrugsSet) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
            }
            else
            {//new
                string sqlstr = "select top 1 *  from Drugs ";
                DrugsInfo = VirDBAccess.DbConsumer.constructDrugsTable(DrugsAD, DrugsSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();
                getdata_sa(DrugsInfo);
                DrugsInfo["d_uci"] = this.consumer_key.Value.ToString();
                if (VirDBAccess.DbConsumer.addDrugsInfo(DrugsAD, DrugsSet, DrugsInfo) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }

            }
            DrugsAD.Dispose();
            cn.close();

        }

        private void saveFinancialInfo()
        {
            System.Data.SqlClient.SqlDataAdapter FinancialAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet FinancialSet = new DataSet();

            DataRow FinancialInfo;
            if (VirDBAccess.DbConsumer.CheckFinancialInfo(this.consumer_key.Value.ToString(), Session["UserAct"].ToString()))
            {//update
                string sqlstr = "select *  from Financial ";
                sqlstr += string.Format("where uci='{0}'", this.consumer_key.Value.ToString());
                FinancialInfo = VirDBAccess.DbConsumer.constructFinancialTable(FinancialAD, FinancialSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];
                getdata_lf_subtab(FinancialInfo);
                if (VirDBAccess.DbConsumer.updateFinancialInfo(FinancialAD, FinancialSet) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
            }
            else
            {//new
                string sqlstr = "select top 1 *  from Financial ";
                FinancialInfo = VirDBAccess.DbConsumer.constructFinancialTable(FinancialAD, FinancialSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();
                getdata_lf_subtab(FinancialInfo);
                FinancialInfo["uci"] = this.consumer_key.Value.ToString();
                FinancialInfo["enteredby"] = Session["userFullname"].ToString().TrimEnd();
                FinancialInfo["createdate"] = DateTime.Now;
                if (VirDBAccess.DbConsumer.addFinancialInfo(FinancialAD, FinancialSet, FinancialInfo) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }

            }
            FinancialAD.Dispose();
            cn.close();
        }

        private void saveLegalInfo()
        {
            System.Data.SqlClient.SqlDataAdapter LegalAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet LegalSet = new DataSet();

            DataRow LegalInfo;
            if (VirDBAccess.DbConsumer.CheckLegalInfo(this.consumer_key.Value.ToString(), Session["UserAct"].ToString()))
            {//update
                string sqlstr = "select *  from Legal ";
                sqlstr += string.Format("where uci='{0}'", this.consumer_key.Value.ToString());
                LegalInfo = VirDBAccess.DbConsumer.constructLegalTable(LegalAD, LegalSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];
                getdata_af_legal(LegalInfo);
                if (VirDBAccess.DbConsumer.updateLegalInfo(LegalAD, LegalSet) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
            }
            else
            {//new
                string sqlstr = "select top 1 *  from Legal ";
                LegalInfo = VirDBAccess.DbConsumer.constructLegalTable(LegalAD, LegalSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();
                getdata_af_legal(LegalInfo);
                LegalInfo["uci"] = this.consumer_key.Value.ToString();
                LegalInfo["enteredby"] = Session["userFullname"].ToString().TrimEnd();
                LegalInfo["createdate"] = DateTime.Now;
                if (VirDBAccess.DbConsumer.addLegalInfo(LegalAD, LegalSet, LegalInfo) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }

            }
            LegalAD.Dispose();
            cn.close();
        }

        private void saveMessaging(DataRow User, DataRow ConsumerInfo, string flag)
        {
            System.Data.SqlClient.SqlDataAdapter MessagingAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet MessagingSet = new DataSet();
            string sqlstr = "select top 1 *  from messaging ";
            DataRow MessagingInfo = VirDBAccess.DbForm.constructMessagingTable(MessagingAD, MessagingSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();

            MessagingInfo["m_to_cm_id"] = User["tb_entry_name"].ToString();
            MessagingInfo["m_from_cm_id"] = Session["userID"].ToString().TrimEnd();
            MessagingInfo["m_sent_dt"] = DateTime.Parse(DateTime.Now.ToString());
            MessagingInfo["m_uci"] = this.consumer_key.Value.ToString();
            if (flag == "1")
            {
                MessagingInfo["m_subject"] = c_residence_current.SelectedValue;
                MessagingInfo["m_text"] = "The residence for " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + "/UCI#" + this.consumer_key.Value.ToString() + " has been changed. ";
            }
            else if (flag == "2")
            {
                MessagingInfo["m_subject"] = "Payee Code changed";
                MessagingInfo["m_text"] = "The Payee Code for " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + "/UCI#" + this.consumer_key.Value.ToString() + " has been changed. ";
            }

            if (VirDBAccess.DbForm.addMessagingInfo(MessagingAD, MessagingSet, MessagingInfo) == 0)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
            }
            MessagingAD.Dispose();
            cn.close();
        }

        protected void btnAdd_Click(object sender, System.EventArgs e)
        {
            //try
            {
                DataTable ConsName = VirDBAccess.DbConsumer.getConsumerInfoByName(c_name_last.Text, c_name_first.Text, Session["UserAct"].ToString());
                if (ConsName.Rows.Count > 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>ConfirmNew();</script>");
                    return;
                }

                NewFaceSheet();
            }
            //catch { }
        }

        protected void NewFaceSheet()
        {
            System.Data.SqlClient.SqlDataAdapter ConsumerAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet ConsumerSet = new DataSet();
            string sqlstr = string.Format("select top 1 * from consumer_all");
            DataRow ConsumerInfo = VirDBAccess.DbConsumer.constructConsumerTable(ConsumerAD, ConsumerSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();

            getdata_fs(ConsumerInfo);
            getdata_lf(ConsumerInfo);
            getdata_dc(ConsumerInfo);
            getdata_ad(ConsumerInfo);
            getdata_re(ConsumerInfo);

            if (Session["ImageData"] != null)
                ConsumerInfo["c_photo"] = (byte[])Session["ImageData"];
            if (ConsumerInfo["c_cm_id"].ToString() == "")
                ConsumerInfo["c_cm_id"] = Session["userid"].ToString();
            if ((ConsumerInfo["c_status"] == System.DBNull.Value) || (ConsumerInfo["c_status"].ToString() == ""))
                ConsumerInfo["c_status"] = "2";
            // ConsumerInfo["c_last_mod_by"] = Session["userid"].ToString();
            // ConsumerInfo["c_last_mod_date"] = DateTime.Now;

            int Res = VirDBAccess.DbConsumer.addConsumerInfo(ConsumerAD, ConsumerSet, ConsumerInfo, NewUCI.Text.TrimEnd(), Session["useract"].ToString());
            if (Res == 0)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
            }
            else if (Res == 2)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>alert('Add new " + Session["ClientDisp"].ToString() + " unsuccessful! UCI: " + NewUCI.Text.TrimEnd() + " already exist.');</script>");
            }
            else
            {
                //Session["ConsumerInfo"] = ConsumerInfo;
                VirDBAccess.DbCder.addEmptyCder(ConsumerInfo["c_key"].ToString(), Session["UserAct"].ToString());
            }

            ConsumerAD.Dispose();
            cn.close();

            //VirDBAccess.DbOperTrace.addOperLog(Session["userid"].ToString(), "consumer_all", this.consumer_key.Value.ToString().TrimEnd(), "", "",
            //            Session["UserAct"].ToString());
        }

        protected void btnEdit_Click(object sender, System.EventArgs e)
        {
            //try
            {
                /* don not check the same name 
                DataTable ConsName = VirDBAccess.DbConsumer.getConsumerInfoByNameAndKey(this.consumer_key.Value.ToString().TrimEnd(), c_name_last.Text, c_name_first.Text, Session["UserAct"].ToString());
                if (ConsName.Rows.Count > 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>ConfirmSave();</script>");
                    return;
                }
                */

                SaveFaceSheet();
            }
            //catch { }
        }

        protected void SaveFaceSheet()
        {
            System.Data.SqlClient.SqlDataAdapter ConsumerAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet ConsumerSet = new DataSet();
            string sqlstr = string.Format("select * from consumer_all where c_key='{0}'", this.consumer_key.Value.ToString().TrimEnd());
            DataRow ConsumerInfo = VirDBAccess.DbConsumer.constructConsumerTable(ConsumerAD, ConsumerSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];

            string OldCMDateStr = "", OldCMIDStr = "", OldCycleStr = "", OldStatus = "", OldCmType = "";
            string strtemp = "", strtemp_old = "";
            String[] ConsumerInfo_old = new String[ConsumerInfo.ItemArray.Length];
            for (int i = 0; i < ConsumerInfo.ItemArray.Length; i++)
            {
                strtemp = ConsumerInfo[i].ToString().TrimEnd();
                ConsumerInfo_old[i] = strtemp;
                if (ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd() == "c_case_assign_date")
                    OldCMDateStr = strtemp;
                if (ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd() == "c_cm_id")
                    OldCMIDStr = strtemp;
                if (ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd() == "c_tickler_cycle")
                    OldCycleStr = strtemp;
                if (ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd() == "c_status")
                    OldStatus = strtemp;
                if (ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd() == "c_cm_type")
                    OldCmType = strtemp;
            }

            DataRow ConsumerLabelInfo = VirDBAccess.DbDispOption.getConsumerLabelDetailInfo(Session["UserAct"].ToString(), Session["gic_label_sets"].ToString());

            getdata_fs(ConsumerInfo);
            getdata_lf(ConsumerInfo);
            getdata_dc(ConsumerInfo);
            getdata_ad(ConsumerInfo);
            getdata_re(ConsumerInfo);
            ConsumerInfo["c_last_mod_by"] = Session["userid"].ToString();
            ConsumerInfo["c_last_mod_date"] = DateTime.Now;
            if (Session["ImageData"] != null)
                ConsumerInfo["c_photo"] = (byte[])Session["ImageData"];

            string OldCMNameStr = "";

            if (OldCMIDStr != ConsumerInfo["c_cm_id"].ToString().TrimEnd())
            {
                DataTable OldCM = VirDBAccess.DbUser.GetUserInfoWithGroup(OldCMIDStr, Session["UserAct"].ToString());
                DataTable NewCM = VirDBAccess.DbUser.GetUserInfoWithGroup(ConsumerInfo["c_cm_id"].ToString().TrimEnd(), Session["UserAct"].ToString());
                string StrOldCMName = "";
                string StrOldGroup = "";
                if (OldCM.Rows.Count > 0)
                {
                    StrOldCMName = OldCMIDStr + " -- " + OldCM.Rows[0]["FirstName"].ToString().TrimEnd() + " " + OldCM.Rows[0]["LastName"].ToString().TrimEnd();
                    StrOldGroup = OldCM.Rows[0]["GroupName"].ToString().TrimEnd();
                    OldCMNameStr = OldCM.Rows[0]["FirstName"].ToString().TrimEnd() + " " + OldCM.Rows[0]["LastName"].ToString().TrimEnd();
                }
                string StrNewCMName = "";
                string StrNewGroup = "";
                if (NewCM.Rows.Count > 0)
                {
                    StrNewCMName = ConsumerInfo["c_cm_id"].ToString().TrimEnd() + " -- " + NewCM.Rows[0]["FirstName"].ToString().TrimEnd() + " " +
                           NewCM.Rows[0]["LastName"].ToString().TrimEnd();
                    StrNewGroup = NewCM.Rows[0]["GroupName"].ToString().TrimEnd();
                }
                VirDBAccess.DbForm.InsertConsumerStat(ConsumerInfo["c_uci"].ToString(), Session["UserID"].ToString(), Session["UserName"].ToString(),
                    "c_cm_id", "Case Manager", StrOldCMName, StrNewCMName, "SC UNIT:" + StrOldGroup, "SC UNIT:" + StrNewGroup,
                    OldStatus, ConsumerInfo["c_status"].ToString().TrimEnd(),
                    ConsumerInfo["c_cm_id"].ToString().TrimEnd(), ConsumerInfo["c_cm_name"].ToString().TrimEnd(), Session["UserAct"].ToString());
            }

            if (OldCMNameStr == "") OldCMNameStr = ConsumerInfo["c_cm_name"].ToString().TrimEnd();

            if (OldStatus != ConsumerInfo["c_status"].ToString().TrimEnd())
            {
                if (VirDBAccess.DbForm.CheckExistInStatusChgList(OldStatus, ConsumerInfo["c_status"].ToString().TrimEnd(), Session["UserAct"].ToString()))
                {
                    ConsumerInfo["c_status_date"] = DateTime.Now;
                    c_status_date.Text = c_status_date_dup.Text = ((DateTime)ConsumerInfo["c_status_date"]).ToString("MM/dd/yyyy");

                    VirDBAccess.DbForm.InsertConsumerStat(ConsumerInfo["c_uci"].ToString(), Session["UserID"].ToString(), Session["UserName"].ToString(),
                        "c_status", "Current Status", OldStatus, ConsumerInfo["c_status"].ToString().TrimEnd(),
                        OldCMIDStr, ConsumerInfo["c_cm_id"].ToString().TrimEnd(),
                        OldCmType, ConsumerInfo["c_cm_type"].ToString().TrimEnd(),
                        OldCMIDStr, OldCMNameStr, Session["UserAct"].ToString());
                }
                else
                {
                    string maindispstr = "<script type='text/javascript'>alert('You cannot change status from " +
                        OldStatus + " to " + ConsumerInfo["c_status"].ToString().TrimEnd() + "')</script>";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveError", maindispstr);
                    ConsumerInfo["c_status"] = OldStatus;
                    setDropDownList(ConsumerInfo, "c_status");

                    return;
                }
            }

            if (OldCmType != ConsumerInfo["c_cm_type"].ToString().TrimEnd())
            {
                VirDBAccess.DbForm.InsertConsumerStat(ConsumerInfo["c_uci"].ToString(), Session["UserID"].ToString(), Session["UserName"].ToString(),
                    "c_cm_type", "Case Manager Type", OldCmType, ConsumerInfo["c_cm_type"].ToString().TrimEnd(),
                    OldCMIDStr, ConsumerInfo["c_cm_id"].ToString().TrimEnd(),
                    OldStatus, ConsumerInfo["c_status"].ToString().TrimEnd(),
                    OldCMIDStr, OldCMNameStr, Session["UserAct"].ToString());
            }

            string strOpertraceLog = "";
            int int_Update = 0;
            string update_field = "", update_filed_name = "";
            for (int i = 0; i < ConsumerInfo.ItemArray.Length; i++)
            {
                strtemp = ConsumerInfo[i].ToString().TrimEnd();
                strtemp_old = ConsumerInfo_old[i].ToString().TrimEnd();
                if (strtemp_old != strtemp)
                {
                    int_Update = int_Update + 1;
                    update_field = "l_" + ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd();
                    try
                    {
                        update_filed_name = ConsumerLabelInfo[update_field].ToString().TrimEnd();
                    }
                    catch { update_filed_name = ""; }
                    if (update_filed_name == "")
                    {
                        update_filed_name = update_field;
                    }
                    update_filed_name = ConsumerInfo.Table.Columns[i].ColumnName.TrimEnd().ToLower() + "#*#" + update_filed_name;
                    //strOpertraceLog = strOpertraceLog + ConsumerInfo.Table.Columns[i].ColumnName + "^*^" + ConsumerInfo_old[i].ToString().TrimEnd() + " ^*^" + ConsumerInfo[i].ToString().TrimEnd() + "||";
                    strOpertraceLog = strOpertraceLog + update_filed_name + "^*^" + ConsumerInfo_old[i].ToString().TrimEnd() + " ^*^" + ConsumerInfo[i].ToString().TrimEnd() + "||";
                }
            }

            if (Session["useractname"].ToString().ToUpper() == "PRNT")
            {
                //this.TD_SA.Style.Remove("display");
                saveDrugsInfo();

            }

            saveFinancialInfo();
            saveLegalInfo();

            // For Prevention case_assign_date is assigned
            //if ((OldCMDateStr == "") && (ConsumerInfo["c_case_assign_date"].ToString() != "") &&
            // For Prevention tickler_cycle is changed from 0 to 1
            if (((OldCycleStr == "") || (OldCycleStr == "0")) && (ConsumerInfo["c_tickler_cycle"].ToString() == "1") &&
                (ConsumerInfo["c_status"].ToString().TrimEnd().ToUpper() == "R"))
            {
                //DateTime Days2 = ((DateTime)ConsumerInfo["c_case_assign_date"]).AddDays(2);
                //DateTime Days32 = ((DateTime)ConsumerInfo["c_case_assign_date"]).AddDays(32);
                DateTime Days2 = DateTime.Now.AddDays(2);
                DateTime Days32 = DateTime.Now.AddDays(32);
                ConsumerInfo["c_base_month"] = Days2.Month;
                //ConsumerInfo["c_tickler_cycle"]= 0;
                //ConsumerInfo["c_tickler_date"] = ConsumerInfo["c_case_assign_date"];
                ConsumerInfo["c_tickler_date"] = DateTime.Now;

                VirDBAccess.DbTickler.insertTicklersSCLARC(ConsumerInfo["c_uci"].ToString().TrimEnd(), "P2D", Days2.ToString("MM/dd/yyyy"),
                    ConsumerInfo["c_base_month"].ToString().TrimEnd(), ConsumerInfo["c_tickler_cycle"].ToString().TrimEnd(),
                    ConsumerInfo["c_cm_id"].ToString().TrimEnd(), Session["UserAct"].ToString());
                VirDBAccess.DbTickler.insertTicklersSCLARC(ConsumerInfo["c_uci"].ToString().TrimEnd(), "P30D", Days32.ToString("MM/dd/yyyy"),
                    ConsumerInfo["c_base_month"].ToString().TrimEnd(), ConsumerInfo["c_tickler_cycle"].ToString().TrimEnd(),
                    ConsumerInfo["c_cm_id"].ToString().TrimEnd(), Session["UserAct"].ToString());
            }

            if (VirDBAccess.DbConsumer.updateConsumerInfo(ConsumerAD, ConsumerSet) == 0)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
            }
            else
            {
                if (this.payeecode_changeflag.Value.ToString().TrimEnd() == "1")
                {
                    DataTable UserList = VirDBAccess.DbCommon.getTablesList("Federal Revenue Coordinator", Session["UserAct"].ToString());
                    for (int i = 0; i < UserList.Rows.Count; i++)
                    {
                        saveMessaging(UserList.Rows[i], ConsumerInfo, "2");
                    }
                    this.payeecode_changeflag.Value = "0";
                }

                if (strOpertraceLog != "")
                {
                    //strOpertraceLog = "(" + int_Update.ToString() + " fields be updated); " + strOpertraceLog;
                    strOpertraceLog = strOpertraceLog.Replace("'", "''");
                    int intflag = VirDBAccess.DbOperTrace.addOperTraceInfo(Session["userid"].ToString(), Session["userFullName"].ToString(),
                        //Session["username"].ToString(), 
                        strOpertraceLog, Session["UserAct"].ToString(), Session["ClientDisp"].ToString().TrimEnd(), this.consumer_key.Value.ToString().TrimEnd());
                }

                if (this.isChange.Value.ToString().TrimEnd() == "1")
                {
                    if (c_residence_current.SelectedValue == "52" || c_residence_current.SelectedValue == "53"
                        || c_residence_current.SelectedValue == "54" || c_residence_current.SelectedValue == "57"
                        || c_residence_current.SelectedValue == "58" || c_residence_current.SelectedValue == "59"
                        || c_residence_current.SelectedValue == "60")
                    {
                        DataTable UserListDT = VirDBAccess.DbCommon.getTablesList("Federal Revenue Coordinator", Session["UserAct"].ToString());
                        for (int i = 0; i < UserListDT.Rows.Count; i++)
                        {
                            //userlist += "          " + UserListDT.Rows[i]["tb_entry_text"].ToString().TrimEnd() + "\\n";
                            saveMessaging(UserListDT.Rows[i], ConsumerInfo, "1");
                        }
                    }

                    this.isChange.Value = "0";
                }

                if (now_div_flag.Value == "2")
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "",
                        "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubLFbyflag(" + now_div_LF_flag.Value.ToString().TrimEnd() + ");refreshAddableSection();</script>");
                else
                {
                    if (now_div_flag.Value == "11")
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "",
                            "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");doseltdsubAFbyflag(" + now_div_AF_flag.Value.ToString().TrimEnd() + ");refreshAddableSection();</script>");
                    else
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "",
                          "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");refreshAddableSection();</script>");
                }

                this.IDNotessave.Value = "Y";

                DataRow ConsumerRow = VirDBAccess.DbConsumer.getConsumerInfo(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());

                //Session["ConsumerInfo"] = ConsumerRow;

                string InfoStr = "";
                if (ConsumerRow["c_dob"].ToString() == "")
                    InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerRow["c_name_first"] + " " + ConsumerRow["c_name_last"] + " - " + ConsumerRow["c_uci"];
                else
                    InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerRow["c_name_first"] + " " + ConsumerRow["c_name_last"] + " - " + ConsumerRow["c_uci"] + "    DOB: " + ((DateTime)ConsumerRow["c_dob"]).ToShortDateString();
                InfoStr += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                InfoStr += Session["CoordDisp"].ToString() + ": " + ConsumerRow["CaseMgrName"];
                Info.Text = "";
                string maindispstr = "<script type='text/javascript'>DisplayTitleInfo('" + InfoStr + "','" + Session["ClientDisp"].ToString() + " Profile')</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DisplayTitleInfo", maindispstr);
            }

            if ((ConsumerInfo["c_medicaid_waiver"].ToString().TrimEnd() != "Y") &&
               (VirDBAccess.DbCommon.checkCodeExistInTables("SDP Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString())))
                this.SDPEdit_Flag.Value = "1";
            else
                this.SDPEdit_Flag.Value = "0";

            if (this.SDPEdit_Flag.Value == "1")
            {
                this.BtnAddSDP.Attributes.Add("onclick", "popupDialog('webConsumerSDPInfo.aspx?ClientID=" + Session["ConsumerSel"].ToString() + "&type=add');return false;");
                this.BtnAddSDP.Visible = true;
            }
            else
                this.BtnAddSDP.Visible = false;

            showSDPList();

            ConsumerAD.Dispose();
            cn.close();

            //VirDBAccess.DbOperTrace.addOperLog(Session["userid"].ToString(), "consumer_all", this.consumer_key.Value.ToString().TrimEnd(), "", "",
            //            Session["UserAct"].ToString());
        }

        protected void btnPosUfsHist_Click(object sender, EventArgs e)
        {
            if (ViewState["PosUfsHist"] != null)
            {
                if (ViewState["PosUfsHist"].ToString() == "1")
                {
                    ViewState["PosUfsHist"] = "0";
                    btnPosUfsHist.Text = "View History";
                }
                else
                {
                    ViewState["PosUfsHist"] = "1";
                    btnPosUfsHist.Text = "Hide History";
                }
            }
            else
                ViewState["PosUfsHist"] = "0";

            showPosUfsList();

            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
        }

        protected void InitialIPPAt36Month()
        {
            c_tickler_cycle.ClearSelection();
            DataTable CycleDT = VirDBAccess.DbCommon.getTablesListOrderbyName("Tickler Cycle", Session["UserAct"].ToString());
            c_tickler_cycle.DataSource = CycleDT;
            c_tickler_cycle.DataBind();
            c_tickler_cycle.SelectedValue = "5";

            c_tickler_date.Text = DateTime.Now.ToString("yyyy");

            // change the field in consumer_all 
            VirDBAccess.DbConsumer.updateInitialIPPAt36Month(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
        }

        protected void btnRefForm101_Click(object sender, EventArgs e)
        {
            DataTable RefForm101 = VirDBAccess.DbForm.GetForm101InfoByMIS(c_mis.Text.TrimEnd(), Session["UserAct"].ToString());
            if (RefForm101.Rows.Count > 0)
            {
                string URLstr = "";
                if (RefForm101.Rows[0]["erstart"].ToString().TrimEnd() == "1")
                {
                    if (RefForm101.Rows[0]["submitdate"].ToString().TrimEnd() == "")
                    {
                        if (Session["DefRegName"].ToString() == "FDLRC")
                            URLstr = "../FormList/Form101InfoERFDLRC.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd() + "&type=edit";
                        else
                            URLstr = "../FormList/Form101InfoER.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd() + "&type=edit";
                    }
                    else
                    {
                        if (Session["DefRegName"].ToString() == "FDLRC")
                            URLstr = "../FormList/Form101InfoERFDLRC.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd();
                        else
                            URLstr = "../FormList/Form101InfoER.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd();
                    }
                }
                else
                {
                    if (RefForm101.Rows[0]["submitdate"].ToString().TrimEnd() == "")
                    {
                        if (Session["DefRegName"].ToString() == "FDLRC")
                            URLstr = "../FormList/Form101InfoFDLRC.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd() + "&type=edit";
                        else
                            URLstr = "../FormList/Form101Info.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd() + "&type=edit";
                    }
                    else
                    {
                        if (Session["DefRegName"].ToString() == "FDLRC")
                            URLstr = "../FormList/Form101InfoFDLRC.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd();
                        else
                            URLstr = "../FormList/Form101Info.aspx?ID=" + RefForm101.Rows[0]["ID"].ToString().TrimEnd();
                    }
                }

                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>document.location.replace('" + URLstr + "');</script>");

            }
            else
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>alert('Can not find the referral form');</script>");
            }
        }

        /*Edit Early Start Intake*/
        protected void btnEditESRIntake_Click(object sender, System.EventArgs e)
        {
            if (VirDBAccess.DbCommon.checkCodeExistInTables("ESR Intake Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString()))
            //|| (Session["EmployeeType"].ToString().ToUpper() == "CW"))
            {
                /*Status Dates Tab*/

                /*
                if (this.statusdates_edit_flag.Value == "1")
                {
                    btnRefForm101.Enabled = false;
                    setControlReadOnly(Consumer_DC);

                    setOneControlEnable(c_tickler_cycle);
                    c_tickler_cycle.Attributes.Add("onclick", "DataChanged();");
                    setOneControlEnable(c_tickler_date);
                    c_tickler_date.Attributes.Add("onclick", "DataChanged();");
                    setOneControlEnable(c_base_month);
                    c_base_month.Attributes.Add("onclick", "DataChanged();");                    
                    setOneControlEnable(startipp);
                    startipp.Attributes.Add("onclick", "javascript:StartIPP();");   
                }
                */
                setOneControlEnable(c_date05);
                c_date05.Attributes.Add("onclick", "DataChanged();showcalendarsubmit(event, this);");
                c_date05.Attributes.Add("onfocus", "DataChanged();showcalendarsubmit(event, this);");
                setOneControlEnable(c_date06);
                c_date06.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                c_date06.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");
                setOneControlEnable(c_text5);
                c_text5.Attributes.Add("onclick", "DataChanged();");
                setOneControlEnable(c_date07);
                c_date07.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                c_date07.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");
            }
            else
            {
                string scriptstr = "<script type='text/javascript'>alert('Access Denied!');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
            }
        }

        /*Edit Lanterman Intake*/
        protected void btnEditIntake_Click(object sender, System.EventArgs e)
        {
            if (VirDBAccess.DbCommon.checkCodeExistInTables("Lanterman Intake Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString()))
            //|| (Session["EmployeeType"].ToString().ToUpper() == "CW"))
            {
                /*Status Dates Tab*/
                /*
                if (this.statusdates_edit_flag.Value == "1")
                {
                    btnRefForm101.Enabled = false;
                    setControlReadOnly(Consumer_DC);
                }
                */
                setOneControlEnable(c_initial_inquiry_date);
                c_initial_inquiry_date.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                c_initial_inquiry_date.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");
                setOneControlEnable(c_initial_interview_date);
                c_initial_interview_date.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                c_initial_interview_date.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");
                setOneControlEnable(c_text6);
                c_text6.Attributes.Add("onclick", "DataChanged();");
                setOneControlEnable(c_date11);
                c_date11.Attributes.Add("onclick", "DataChanged();showcalendar(event, this);");
                c_date11.Attributes.Add("onfocus", "DataChanged();showcalendar(event, this);");
            }
            else
            {
                string scriptstr = "<script type='text/javascript'>alert('Access Denied!');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
            }
        }
        /*
        protected void PayeeCode1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList payeecode = (DropDownList)sender;
            if (payeecode.SelectedValue.TrimEnd() == "1")//Regional Center (tb_entry_name='1')
            {
                this.payeecode_changeflag.Value = "1";
                
                //DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(this.consumer_key.Value.ToString(), Session["UserAct"].ToString());
                //DataTable UserListDT = VirDBAccess.DbCommon.getTablesList("Federal Revenue Coordinator", Session["UserAct"].ToString());
                //string userlist = "";
                //for (int i = 0; i < UserListDT.Rows.Count; i++)
                //{
                //    userlist += "          " + UserListDT.Rows[i]["tb_entry_text"].ToString().TrimEnd() + "\\n";
                    //if (this.isChange.Value.ToString().TrimEnd() == "1")
                    //{
                    //    saveMessaging(UserListDT.Rows[i], ConsumerInfo);
                    //}
                //}
            }
        }
        */
        /*
        protected void PayeeCode2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList payeecode = (DropDownList)sender;
            if (payeecode.SelectedValue.TrimEnd() == "1")//Regional Center (tb_entry_name='1')
            {
                this.payeecode_changeflag.Value = "1";
                
                //DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(this.consumer_key.Value.ToString(), Session["UserAct"].ToString());
                //DataTable UserListDT = VirDBAccess.DbCommon.getTablesList("Federal Revenue Coordinator", Session["UserAct"].ToString());
                //string userlist = "";
                //for (int i = 0; i < UserListDT.Rows.Count; i++)
                //{
                //    userlist += "          " + UserListDT.Rows[i]["tb_entry_text"].ToString().TrimEnd() + "\\n";
                    //if (this.isChange.Value.ToString().TrimEnd() == "1")
                    //{
                    //    saveMessaging(UserListDT.Rows[i], ConsumerInfo);
                    //}
                //}
            }
        }
        */
        /*
        protected void btnMailAdd_Click(object sender, System.EventArgs e)
        {
            c_mailing_address_name.Text = c_address_name.Text;
            c_mailing_address_line_1.Text = c_address_line_1.Text;
            c_mailing_address_line_2.Text = c_address_line_2.Text;
            c_mailing_address_city.Text = c_address_city.Text;
            c_mailing_address_state.Text = c_address_state.Text;
            c_mailing_address_zip.Text = c_address_zip.Text;
            c_legal_county.SelectedIndex = c_physical_county.SelectedIndex;

            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>DataChanged();</script>");
        }
        */
    }
}

