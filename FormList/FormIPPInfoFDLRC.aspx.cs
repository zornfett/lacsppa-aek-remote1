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
using System.Diagnostics;

namespace Virweb2.FormList
{
    public partial class FormIPPInfoFDLRC : webCommonPage
    {
        protected string Edit_Flag = "Y", Delete_Flag = "Y";
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.CacheControl = "no-cache";
            Response.AddHeader("Pragma", "no-cache");
            Response.Expires = -1;

            if ((Session["UserID"] == null) || (Session["UserID"].ToString() == ""))
            {
                string scriptstr = "<script type='text/javaScript'>PopupMessage(11);window.top.location.replace('../default.aspx');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                return;
            }

            // Response.AppendHeader("Refresh", Convert.ToString(Session.Timeout * 60 + 10));

            if (!Page.IsPostBack)
            {
                body.Attributes.Add("onload", "javascript:onloadsizechg(90)");
                body.Attributes.Add("onresize", "javascript:onloadsizechg(90);");

                string strKey = Request.QueryString["uci"].ToString().TrimEnd();
                Session["ConsumerSel"] = strKey;

                string strType = "";
                if (Request.QueryString["type"] != null)
                    strType = Request.QueryString["type"].ToString().TrimEnd();
                string strIPPID = "";
                if (Request.QueryString["IPPID"] != null)
                    strIPPID = Request.QueryString["IPPID"].ToString().TrimEnd();
                if (Request.QueryString["goback"] != null)
                    gobackPage.Value = Request.QueryString["goback"].ToString().TrimEnd();
                if ((Session["usertype"].ToString() == "A") || (Session["EmployeeType"].ToString() == "D") ||
                    (Session["EmployeeType"].ToString() == "AD") || (Session["EmployeeType"].ToString() == "RM") || (Session["EmployeeType"].ToString() == "M"))
                    this.IsAdminPM.Value = "1";
                else this.IsAdminPM.Value = "0";

                DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(strKey, Session["UserAct"].ToString());

                string InfoStr = "";
                if (ConsumerInfo["c_dob"].ToString() == "")
                    InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"];
                else
                    InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"] + "    DOB: " + ((DateTime)ConsumerInfo["c_dob"]).ToShortDateString();
                InfoStr += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                InfoStr += Session["CoordDisp"].ToString() + ": " + ConsumerInfo["CaseMgrName"];
                InfoStr = InfoStr.Replace("'", "`");
                Info.Text = "";
                string maindispstr = "<script type='text/javascript'>DisplayTitleInfo('" + InfoStr + "','IPP')</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DisplayTitleInfo", maindispstr);

                this.entrykey.Value = strIPPID;
                this.UserAct.Value = Session["UserAct"].ToString();
                this.consumer_cm_id.Value = ConsumerInfo["c_cm_id"].ToString();
                this.consumer_key.Value = strKey;

                BindDropDownLists();
  
                if (strType == "")
                {
                    btnAdd.Visible = false;
                    btnEdit.Visible = false;
                }
                else if (strType == "add")
                {
                    btnAdd.Visible = true;
                    btnEdit.Visible = false;
                }
                else if (strType == "edit")
                {
                    btnAdd.Visible = false;
                    btnEdit.Visible = true;
                    btnPrint.Visible = true;
                }

                if (strType != "")
                {
                    body.Attributes.Add("onkeyup", "DataChanged()");
                }

                DataTable PlanTitle = VirDBAccess.DbForm.getFormIPPPlanTitle(Session["UserAct"].ToString());
                foreach (DataRow TitleRow in PlanTitle.Rows)
                {
                    if (TitleRow["PlanTitle"].ToString().TrimEnd() != "")
                    {
                        if (TitleRow["PlanID"].ToString().TrimEnd() == "1")
                            hdnPlanTitle1.Value = TitleRow["PlanTitle"].ToString().TrimEnd();
                        else if (TitleRow["PlanID"].ToString().TrimEnd() == "2")
                            hdnPlanTitle2.Value = TitleRow["PlanTitle"].ToString().TrimEnd();
                        else if (TitleRow["PlanID"].ToString().TrimEnd() == "3")
                            hdnPlanTitle3.Value = TitleRow["PlanTitle"].ToString().TrimEnd();
                        else if (TitleRow["PlanID"].ToString().TrimEnd() == "4")
                            hdnPlanTitle4.Value = TitleRow["PlanTitle"].ToString().TrimEnd();
                    }
                }

                DataRow FormIPPInfo;
                if (this.entrykey.Value != "")
                {
                    FormIPPInfo = VirDBAccess.DbForm.getFormIPPInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    btnPrint.Visible = true;
                    showdata(FormIPPInfo);

                    //setCheckBoxListOnClick();

                    showPlanTab2List();
                    showPlanTab3List();
                    showPlanTab4List();
                    showPlanTab5List();
                    showPlanTab6List();
                    showPlanTab7List();
                    showPlanTab8List();

                    // ShowLogs(FormIPPInfo); //Show log at the end which including enable/disable the verify/approval buttons 
                }
                else
                {
                    this.entrykey.Value = (this.consumer_key.Value + "_" + DateTime.Parse(DateTime.Now.ToString())).TrimEnd();

                    FormIPPInfo = VirDBAccess.DbForm.getFormIPPNewInfoFDLRC(Session["UserAct"].ToString());

                    showdata(FormIPPInfo);

                    FetchNewInfo(ConsumerInfo);

                    //setCheckBoxListOnClick();

                    FormIPPInfo["Tab2Status"] = 2;

                    if (Request.QueryString["Prefill"] != null)
                    {
                        VirDBAccess.DbForm.IPPCopyPrevOutcomeFDLRC(this.entrykey.Value, this.consumer_key.Value, Session["UserAct"].ToString());

                        showPlanTab2List();
                        showPlanTab3List();
                        showPlanTab4List();
                        showPlanTab5List();
                        showPlanTab6List();
                        showPlanTab7List();
                        showPlanTab8List();
                    }
                }

                ViewState["Tab2Status"] = FormIPPInfo["Tab2Status"].ToString().TrimEnd();
                ViewState["Tab3Status"] = FormIPPInfo["Tab3Status"].ToString().TrimEnd();
                ViewState["Tab4Status"] = FormIPPInfo["Tab4Status"].ToString().TrimEnd();
                ViewState["Tab5Status"] = FormIPPInfo["Tab5Status"].ToString().TrimEnd();
                ViewState["Tab6Status"] = FormIPPInfo["Tab6Status"].ToString().TrimEnd();
                ViewState["Tab7Status"] = FormIPPInfo["Tab7Status"].ToString().TrimEnd();
                ViewState["Tab8Status"] = FormIPPInfo["Tab8Status"].ToString().TrimEnd();

                if (strType != "")
                {
                    if (FormIPPInfo["approved"].ToString().TrimEnd() != "Y")
                    {
                        this.btnAddPlanTab2.Attributes.Add("onclick", "AddOutPlan('2');return false;");
                        this.btnAddPlanTab3.Attributes.Add("onclick", "AddOutPlan('3');return false;");
                        this.btnAddPlanTab4.Attributes.Add("onclick", "AddOutPlan('4');return false;");
                        this.btnAddPlanTab5.Attributes.Add("onclick", "AddOutPlan('5');return false;");
                        this.btnAddPlanTab6.Attributes.Add("onclick", "AddOutPlan('6');return false;");
                        this.btnAddPlanTab7.Attributes.Add("onclick", "AddOutPlan('7');return false;");
                        this.btnAddPlanTab8.Attributes.Add("onclick", "AddOutPlan('8');return false;");

                        this.btnSubmitTab2.Attributes.Add("onclick", "ReadyToSubmitTab(2);return false;");
                        this.btnSubmitTab3.Attributes.Add("onclick", "ReadyToSubmitTab(3);return false;");
                        this.btnSubmitTab4.Attributes.Add("onclick", "ReadyToSubmitTab(4);return false;");
                        this.btnSubmitTab5.Attributes.Add("onclick", "ReadyToSubmitTab(5);return false;");
                        this.btnSubmitTab6.Attributes.Add("onclick", "ReadyToSubmitTab(6);return false;");
                        this.btnSubmitTab7.Attributes.Add("onclick", "ReadyToSubmitTab(7);return false;");
                        this.btnSubmitTab8.Attributes.Add("onclick", "ReadyToSubmitTab(8);return false;");
                    }
                    showsubmittedtabs();
                }
                else
                {
                    DisableControls();
                }

                // 1-25-19
                // fix for bug: 57 -  If a client is not on MW (MW flag = No), the MW Deficits section of the IPP should be blank.
                string mw_value = ConsumerInfo["c_medicaid_waiver"].ToString();

                if (mw_value.Equals("N"))
                {
                    MWDeficits.Text = "";
                }

                if (this.entrykey.Value != "")
                {
                    ShowLogs(FormIPPInfo);
                }

                if (Request.QueryString["tabflag"] != null)
                {
                    now_div_flag.Value = Request.QueryString["tabflag"].ToString().TrimEnd();
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "BackList",
                          "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                }
            }
            else
            {
                if (hdtoSaveData.Value == "PageClosed")
                {
                    if (btnEdit.Visible)
                        SaveData(true);
                    else if (btnAdd.Visible)
                        AddData(true);

                    return;
                }

                if (this.SignVerify.Value == "1")  // verify from SC
                {
                    string SignDate = DateTime.Now.ToString();
                    ipp_verify.Text = Session["userFullName"].ToString();
                    ipp_verify_date.Text = SignDate;
                    VirDBAccess.DbForm.VerifyFormIPPFDLRC(this.entrykey.Value, ipp_verify.Text, SignDate, Session["UserID"].ToString(), Session["UserAct"].ToString());
                    DisableControls();

                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    ShowLogs(FormIPPInfo);

                    this.SignVerify.Value = "";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Verify",
                            "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");

                    return;
                }

                if (this.SignVerify.Value == "2")  //return
                {
                    string SignDate = DateTime.Now.ToString();
                    // ipp_signature.Text = Session["userFullName"].ToString();
                    ipp_signature.Text = "";
                    ipp_signature_date.Text = SignDate;
                    ipp_verify.Text = "";
                    ipp_verify_date.Text = "";
                    VirDBAccess.DbForm.ReturnFormIPPFDLRC(this.entrykey.Value, Session["userFullName"].ToString(), SignDate, sign_comments.Text, Session["UserAct"].ToString());

                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    ShowLogs(FormIPPInfo);

                    this.SignVerify.Value = "";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Return",
                            "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");

                    return;
                }

                if (this.SignUserName.Value != "")  // final sign with password verification from Case Manager
                {
                    string SignDate = DateTime.Now.ToString();
                    ipp_signature.Text = this.SignUserName.Value;
                    ipp_signature_date.Text = SignDate;
                    VirDBAccess.DbForm.SignFormIPPFDLRC(this.entrykey.Value, this.SignUserName.Value, Session["UserID"].ToString(), SignDate, sign_comments.Text, Session["UserAct"].ToString());

                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    ShowLogs(FormIPPInfo);

                    this.SignUserName.Value = "";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Sign",
                            "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");

                    return;
                }

                if (this.SubmitTabNo.Value != "")  // After Confirm a page, the status/logs is changed
                {
                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    ShowLogs(FormIPPInfo);

                    ViewState["Tab2Status"] = FormIPPInfo["Tab2Status"].ToString().TrimEnd();
                    ViewState["Tab3Status"] = FormIPPInfo["Tab3Status"].ToString().TrimEnd();
                    ViewState["Tab4Status"] = FormIPPInfo["Tab4Status"].ToString().TrimEnd();
                    ViewState["Tab5Status"] = FormIPPInfo["Tab5Status"].ToString().TrimEnd();
                    ViewState["Tab6Status"] = FormIPPInfo["Tab6Status"].ToString().TrimEnd();
                    ViewState["Tab7Status"] = FormIPPInfo["Tab7Status"].ToString().TrimEnd();
                    ViewState["Tab8Status"] = FormIPPInfo["Tab8Status"].ToString().TrimEnd();

                    if (this.SubmitTabNo.Value != "0")
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "ResetTab",
                            "<script>doseltdbyflag(" + this.SubmitTabNo.Value.ToString().TrimEnd() + ");</script>");
                    this.SubmitTabNo.Value = "";
                }

                // The Tab Status no change in other cases so just call again
                showsubmittedtabs();

                if (this.ReadyToSubmitTabNo.Value != "")  // Before confirm a page save the data first
                {
                    if (btnEdit.Visible)
                        SaveData(false);
                    else if (btnAdd.Visible)
                        AddData(false);

                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SubmitTab",
                        "<script>popupDialog('FormIPPSubmitFDLRC.aspx?IPPID=" + this.entrykey.Value + "&UCI=" + this.consumer_key.Value + "&TabNo=" + this.ReadyToSubmitTabNo.Value.ToString().TrimEnd() + "');</script>");
                    this.ReadyToSubmitTabNo.Value = "";
                }

                if (hdnRefreshData.Value != "0")  // For delete and refresh Outcome plan list
                {
                    if (DeleteIPPOutID.Value != "0")
                    {
                        DeleteIPPOutPlan(DeleteIPPOutID.Value, hdnRefreshData.Value);
                        DeleteIPPOutID.Value = "0";
                    }
                    else
                    {
                        if (hdnRefreshData.Value == "2")
                            showPlanTab2List();
                        else if (hdnRefreshData.Value == "3")
                            showPlanTab3List();
                        else if (hdnRefreshData.Value == "4")
                            showPlanTab4List();
                        else if (hdnRefreshData.Value == "5")
                            showPlanTab5List();
                        else if (hdnRefreshData.Value == "6")
                            showPlanTab6List();
                        else if (hdnRefreshData.Value == "7")
                            showPlanTab7List();
                        else if (hdnRefreshData.Value == "8")
                            showPlanTab8List();
                    }

                    hdnRefreshData.Value = "0";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "refIPP",
                        "<script>DataChanged();doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                }
            }

            setCheckBoxListOnClick();
        }

        private void DisableControls()
        {
            setControlReadOnly(this.IPPInfo);
            
            btnAdd.Visible = false;
            btnEdit.Visible = false;

            this.submitted.Value = "1";
        }
        
        private void FetchNewInfo(DataRow ConsumerInfo)
        {
            setConsumerInfo(ConsumerInfo);

            DisplayMWEList(ConsumerInfo);
        }

        private void DisplayMWEList(DataRow ConsumerInfo)
        {
            //DataTable MweDT = VirDBAccess.DbForm.getFormMWEList(ConsumerInfo["c_uci"].ToString(), Session["UserAct"].ToString());
            DataTable MweDT = VirDBAccess.DbForm.getFormMWEListWithSign(ConsumerInfo["c_uci"].ToString(), Session["UserAct"].ToString());
            
            if (MweDT.Rows.Count > 0)
            {
              DataRow MWEInfo = MweDT.Rows[0];
              for (int j = 2; j <= 8; j++)
              {
                  CheckBoxList mwc_deficits = (CheckBoxList)FindControl("Tab" + j.ToString().TrimEnd() + "Deficits");
                  if (MWEInfo["antcnv_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("31. Consumer takes anticonvulsant medication -- " + 
                          MWEInfo["antcnv_2"].ToString().Replace("(MW Deficit)", ""), "antcnv"));
                      if (j == 2) MWDeficits.Text += "31. Consumer takes anticonvulsant medication -- " +
                          MWEInfo["antcnv_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["stepls_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("32. Status Epilepticus -- " +
                          MWEInfo["stepls_2"].ToString().Replace("(MW Deficit)", ""), "stepls"));
                      if (j == 2) MWDeficits.Text += "32. Status Epilepticus -- " +
                          MWEInfo["stepls_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrmc1_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("54a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc1_2"].ToString().Replace("(MW Deficit)", ""), "chrmc1"));
                      if (j == 2) MWDeficits.Text += "54a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrim1_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("54b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim1_2"].ToString().Replace("(MW Deficit)", ""), "chrim1"));
                      if (j == 2) MWDeficits.Text += "54b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["chrmc2_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("55a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc2_2"].ToString().Replace("(MW Deficit)", ""), "chrmc2"));
                      if (j == 2) MWDeficits.Text += "55a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrim2_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("55b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim2_2"].ToString().Replace("(MW Deficit)", ""), "chrim2"));
                      if (j == 2) MWDeficits.Text += "55b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["chrmc3_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("56a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc3_2"].ToString().Replace("(MW Deficit)", ""), "chrmc3"));
                      if (j == 2) MWDeficits.Text += "56a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrim3_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("56b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim3_2"].ToString().Replace("(MW Deficit)", ""), "chrim3"));
                      if (j == 2) MWDeficits.Text += "56b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["chrmc4_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("57a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc4_2"].ToString().Replace("(MW Deficit)", ""), "chrmc4"));
                      if (j == 2) MWDeficits.Text += "57a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrim4_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("57b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim4_2"].ToString().Replace("(MW Deficit)", ""), "chrim4"));
                      if (j == 2) MWDeficits.Text += "57b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["chrmc5_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("58a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc5_2"].ToString().Replace("(MW Deficit)", ""), "chrmc5"));
                      if (j == 2) MWDeficits.Text += "58a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrim5_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("58b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim5_2"].ToString().Replace("(MW Deficit)", ""), "chrim5"));
                      if (j == 2) MWDeficits.Text += "58b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["chrmc6_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("59a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc6_2"].ToString().Replace("(MW Deficit)", ""), "chrmc6"));
                      if (j == 2) MWDeficits.Text += "59a. Chronic Major Medical Conditions -- " +
                          MWEInfo["chrmc6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
                  if (MWEInfo["chrim6_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("59b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim6_2"].ToString().Replace("(MW Deficit)", ""), "chrim6"));
                      if (j == 2) MWDeficits.Text += "59b. Chronic Major Medical Impact -- " +
                          MWEInfo["chrim6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["hrngun_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("60. Level of Hearing Loss Uncorrected -- " +
                          MWEInfo["hrngun_2"].ToString().Replace("(MW Deficit)", ""), "hrngun"));
                      if (j == 2) MWDeficits.Text += "60. Level of Hearing Loss Uncorrected -- " +
                          MWEInfo["hrngun_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["hrngcr_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("61. Level of Hearing Loss Corrected -- " +
                          MWEInfo["hrngcr_2"].ToString().Replace("(MW Deficit)", ""), "hrngcr"));
                      if (j == 2) MWDeficits.Text += "61. Level of Hearing Loss Corrected -- " +
                          MWEInfo["hrngcr_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["vsnun_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("62. Level of Vision Loss Uncorrected -- " +
                          MWEInfo["vsnun_2"].ToString().Replace("(MW Deficit)", ""), "vsnun"));
                      if (j == 2) MWDeficits.Text += "62. Level of Vision Loss Uncorrected -- " +
                          MWEInfo["vsnun_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["vsncr_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("63. Level of Vision Loss Corrected -- " +
                          MWEInfo["vsncr_2"].ToString().Replace("(MW Deficit)", ""), "vsncr"));
                      if (j == 2) MWDeficits.Text += "63. Level of Vision Loss Corrected -- " +
                          MWEInfo["vsncr_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["apsymn_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("64. Behavior Modifying Drugs: Anti-Psychotic -- " +
                          MWEInfo["apsymn_2"].ToString().Replace("(MW Deficit)", ""), "apsymn"));
                      if (j == 2) MWDeficits.Text += "64. Behavior Modifying Drugs: Anti-Psychotic -- " +
                          MWEInfo["apsymn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["adepmn_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("65. Behavior Modifying Drugs: Anti-Depressant -- " +
                          MWEInfo["adepmn_2"].ToString().Replace("(MW Deficit)", ""), "adepmn"));
                      if (j == 2) MWDeficits.Text += "65. Behavior Modifying Drugs: Anti-Depressant -- " +
                          MWEInfo["adepmn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["aanxmn_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("66. Behavior Modifying Drugs: Anti-Anxiety -- " +
                          MWEInfo["aanxmn_2"].ToString().Replace("(MW Deficit)", ""), "aanxmn"));
                      if (j == 2) MWDeficits.Text += "66. Behavior Modifying Drugs: Anti-Anxiety -- " +
                          MWEInfo["aanxmn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sedhyp_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("67. Behavior Modifying Drugs: Sedative/Hypnotic -- " +
                          MWEInfo["sedhyp_2"].ToString().Replace("(MW Deficit)", ""), "sedhyp"));
                      if (j == 2) MWDeficits.Text += "67. Behavior Modifying Drugs: Sedative/Hypnotic -- " +
                          MWEInfo["sedhyp_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["stmlnt_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("68. Behavior Modifying Drugs: Stimulant -- " +
                          MWEInfo["stmlnt_2"].ToString().Replace("(MW Deficit)", ""), "stmlnt"));
                      if (j == 2) MWDeficits.Text += "68. Behavior Modifying Drugs: Stimulant -- " +
                          MWEInfo["stmlnt_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["othdrg_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("69. Behavior Modifying Drugs: Other -- " +
                          MWEInfo["othdrg_2"].ToString().Replace("(MW Deficit)", ""), "othdrg"));
                      if (j == 2) MWDeficits.Text += "69. Behavior Modifying Drugs: Other -- " +
                          MWEInfo["othdrg_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["histpm_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("70. History of Prescribed Medication for Maladaptive Behavior -- " +
                          MWEInfo["histpm_2"].ToString().Replace("(MW Deficit)", ""), "histpm"));
                      if (j == 2) MWDeficits.Text += "70. History of Prescribed Medication for Maladaptive Behavior -- " +
                          MWEInfo["histpm_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc1_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("76. Special Health Care Requirements -- " +
                          MWEInfo["sphc1_2"].ToString().Replace("(MW Deficit)", ""), "sphc1"));
                      if (j == 2) MWDeficits.Text += "76. Special Health Care Requirements -- " +
                          MWEInfo["sphc1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc2_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("77. Special Health Care Requirements -- " +
                          MWEInfo["sphc2_2"].ToString().Replace("(MW Deficit)", ""), "sphc2"));
                      if (j == 2) MWDeficits.Text += "77. Special Health Care Requirements -- " +
                          MWEInfo["sphc2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc3_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("78. Special Health Care Requirements -- " +
                          MWEInfo["sphc3_2"].ToString().Replace("(MW Deficit)", ""), "sphc3"));
                      if (j == 2) MWDeficits.Text += "78. Special Health Care Requirements -- " +
                          MWEInfo["sphc3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc4_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("79. Special Health Care Requirements -- " +
                          MWEInfo["sphc4_2"].ToString().Replace("(MW Deficit)", ""), "sphc4"));
                      if (j == 2) MWDeficits.Text += "79. Special Health Care Requirements -- " +
                          MWEInfo["sphc4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc5_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("80. Special Health Care Requirements -- " +
                          MWEInfo["sphc5_2"].ToString().Replace("(MW Deficit)", ""), "sphc5"));
                      if (j == 2) MWDeficits.Text += "80. Special Health Care Requirements -- " +
                          MWEInfo["sphc5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc6_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("81. Special Health Care Requirements -- " +
                          MWEInfo["sphc6_2"].ToString().Replace("(MW Deficit)", ""), "sphc6"));
                      if (j == 2) MWDeficits.Text += "81. Special Health Care Requirements -- " +
                          MWEInfo["sphc6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc7_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("82. Special Health Care Requirements -- " +
                          MWEInfo["sphc7_2"].ToString().Replace("(MW Deficit)", ""), "sphc7"));
                      if (j == 2) MWDeficits.Text += "82. Special Health Care Requirements -- " +
                          MWEInfo["sphc7_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc8_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("83. Special Health Care Requirements -- " +
                          MWEInfo["sphc8_2"].ToString().Replace("(MW Deficit)", ""), "sphc8"));
                      if (j == 2) MWDeficits.Text += "83. Special Health Care Requirements -- " +
                          MWEInfo["sphc8_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc9_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("84. Special Health Care Requirements -- " +
                          MWEInfo["sphc9_2"].ToString().Replace("(MW Deficit)", ""), "sphc9"));
                      if (j == 2) MWDeficits.Text += "84. Special Health Care Requirements -- " +
                          MWEInfo["sphc9_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sphc10_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("85. Special Health Care Requirements -- " +
                          MWEInfo["sphc10_2"].ToString().Replace("(MW Deficit)", ""), "sphc10"));
                      if (j == 2) MWDeficits.Text += "85. Special Health Care Requirements -- " +
                          MWEInfo["sphc10_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn1_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("86. Does the client display maladaptive sexual behavior? -- " +
                          MWEInfo["spcn1_2"].ToString().Replace("(MW Deficit)", ""), "spcn1"));
                      if (j == 2) MWDeficits.Text += "86. Does the client display maladaptive sexual behavior? -- " +
                          MWEInfo["spcn1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn2_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("87. Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death? -- " +
                          MWEInfo["spcn2_2"].ToString().Replace("(MW Deficit)", ""), "spcn2"));
                      if (j == 2) MWDeficits.Text += "87. Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death? -- " +
                          MWEInfo["spcn2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn3_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("88. Has the client attempted suicide in past 5 years? -- " +
                          MWEInfo["spcn3_2"].ToString().Replace("(MW Deficit)", ""), "spcn3"));
                      if (j == 2) MWDeficits.Text += "88. Has the client attempted suicide in past 5 years? -- " +
                          MWEInfo["spcn3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn4_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("89. Does the client habitually engage in theft in past 5 years? -- " +
                          MWEInfo["spcn4_2"].ToString().Replace("(MW Deficit)", ""), "spcn4"));
                      if (j == 2) MWDeficits.Text += "89. Does the client habitually engage in theft in past 5 years? -- " +
                          MWEInfo["spcn4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn5_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("90. Has the client participated in acts of vandalism or acts of property destruction in past 5 years? -- " +
                          MWEInfo["spcn5_2"].ToString().Replace("(MW Deficit)", ""), "spcn5"));
                      if (j == 2) MWDeficits.Text += "90. Has the client participated in acts of vandalism or acts of property destruction in past 5 years? -- " +
                          MWEInfo["spcn5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn6_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("91. Has the client been convicted of any substance abuse or alcohol related offenses in past 5 years? -- " +
                          MWEInfo["spcn6_2"].ToString().Replace("(MW Deficit)", ""), "spcn6"));
                      if (j == 2) MWDeficits.Text += "91. Has the client been convicted of any substance abuse or alcohol related offenses in past 5 years? -- " +
                          MWEInfo["spcn6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn7_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("92. Does the client have a recent history of abusing drugs or alcohol currently abusing/within past 3 years? -- " +
                          MWEInfo["spcn7_2"].ToString().Replace("(MW Deficit)", ""), "spcn7"));
                      if (j == 2) MWDeficits.Text += "92. Does the client have a recent history of abusing drugs or alcohol currently abusing/within past 3 years? -- " +
                          MWEInfo["spcn7_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn8_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("93. Does the client have a history of habitual lying in past 3 years? -- " +
                          MWEInfo["spcn8_2"].ToString().Replace("(MW Deficit)", ""), "spcn8"));
                      if (j == 2) MWDeficits.Text += "93. Does the client have a history of habitual lying in past 3 years? -- " +
                          MWEInfo["spcn8_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["spcn9_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("94. Does the client display behaviors which could result or have resulted in fire setting? -- " +
                          MWEInfo["spcn9_2"].ToString().Replace("(MW Deficit)", ""), "spcn9"));
                      if (j == 2) MWDeficits.Text += "94. Does the client display behaviors which could result or have resulted in fire setting? -- " +
                          MWEInfo["spcn9_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["handus_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("1. Using Hands -- " +
                          MWEInfo["handus_2"].ToString().Replace("(MW Deficit)", ""), "handus"));
                      if (j == 2) MWDeficits.Text += "1. Using Hands -- " +
                          MWEInfo["handus_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["walkng_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("2. Walking -- " +
                          MWEInfo["walkng_2"].ToString().Replace("(MW Deficit)", ""), "walkng"));
                      if (j == 2) MWDeficits.Text += "2. Walking -- " +
                          MWEInfo["walkng_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["whluse_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("3. Using a Wheelchair -- " +
                          MWEInfo["whluse_2"].ToString().Replace("(MW Deficit)", ""), "whluse"));
                      if (j == 2) MWDeficits.Text += "3. Using a Wheelchair -- " +
                          MWEInfo["whluse_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["takmed_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("4. Taking Prescription Medication -- " +
                          MWEInfo["takmed_2"].ToString().Replace("(MW Deficit)", ""), "takmed"));
                      if (j == 2) MWDeficits.Text += "4. Taking Prescription Medication -- " +
                          MWEInfo["takmed_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["eating_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("5. Eating -- " +
                          MWEInfo["eating_2"].ToString().Replace("(MW Deficit)", ""), "eating"));
                      if (j == 2) MWDeficits.Text += "5. Eating -- " +
                          MWEInfo["eating_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["tltng_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("6. Toileting -- " +
                          MWEInfo["tltng_2"].ToString().Replace("(MW Deficit)", ""), "tltng"));
                      if (j == 2) MWDeficits.Text += "6. Toileting -- " +
                          MWEInfo["tltng_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["bbctrl_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("7. Bladder and Bowel Control -- " +
                          MWEInfo["bbctrl_2"].ToString().Replace("(MW Deficit)", ""), "bbctrl"));
                      if (j == 2) MWDeficits.Text += "7. Bladder and Bowel Control -- " +
                          MWEInfo["bbctrl_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["prshyg_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("8. Personal Care -- " +
                          MWEInfo["prshyg_2"].ToString().Replace("(MW Deficit)", ""), "prshyg"));
                      if (j == 2) MWDeficits.Text += "8. Personal Care -- " +
                          MWEInfo["prshyg_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["drssng_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("9. Dressing -- " +
                          MWEInfo["drssng_2"].ToString().Replace("(MW Deficit)", ""), "drssng"));
                      if (j == 2) MWDeficits.Text += "9. Dressing -- " +
                          MWEInfo["drssng_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["safety_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("10. Safety Awareness -- " +
                          MWEInfo["safety_2"].ToString().Replace("(MW Deficit)", ""), "safety"));
                      if (j == 2) MWDeficits.Text += "10. Safety Awareness -- " +
                          MWEInfo["safety_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["focus_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("11. Focusing on Tasks and Activities -- " +
                          MWEInfo["focus_2"].ToString().Replace("(MW Deficit)", ""), "focus"));
                      if (j == 2) MWDeficits.Text += "11. Focusing on Tasks and Activities -- " +
                          MWEInfo["focus_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["verbal_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("12. Verbal Communication -- " +
                          MWEInfo["verbal_2"].ToString().Replace("(MW Deficit)", ""), "verbal"));
                      if (j == 2) MWDeficits.Text += "12. Verbal Communication -- " +
                          MWEInfo["verbal_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["novrbl_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("13. Nonverbal Communication -- " +
                          MWEInfo["novrbl_2"].ToString().Replace("(MW Deficit)", ""), "safety"));
                      if (j == 2) MWDeficits.Text += "13. Nonverbal Communication -- " +
                          MWEInfo["novrbl_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["social_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("14. Social Interaction -- " +
                          MWEInfo["social_2"].ToString().Replace("(MW Deficit)", ""), "social"));
                      if (j == 2) MWDeficits.Text += "14. Social Interaction -- " +
                          MWEInfo["social_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["disbhv_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("15. Disruptive Social Behavior -- " +
                          MWEInfo["disbhv_2"].ToString().Replace("(MW Deficit)", ""), "disbhv"));
                      if (j == 2) MWDeficits.Text += "15. Disruptive Social Behavior -- " +
                          MWEInfo["disbhv_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["aggrsn_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("16. Aggressive Social Behavior -- " +
                          MWEInfo["aggrsn_2"].ToString().Replace("(MW Deficit)", ""), "aggrsn"));
                      if (j == 2) MWDeficits.Text += "16. Aggressive Social Behavior -- " +
                          MWEInfo["aggrsn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["sevsi_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("17. Self-Injurious Behavior -- " +
                          MWEInfo["sevsi_2"].ToString().Replace("(MW Deficit)", ""), "sevsi"));
                      if (j == 2) MWDeficits.Text += "17. Self-Injurious Behavior -- " +
                          MWEInfo["sevsi_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["dstrpr_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("18. Destruction of Property -- " +
                          MWEInfo["dstrpr_2"].ToString().Replace("(MW Deficit)", ""), "dstrpr"));
                      if (j == 2) MWDeficits.Text += "18. Destruction of Property -- " +
                          MWEInfo["dstrpr_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["rnwnd_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("19. Running or Wandering Away -- " +
                          MWEInfo["rnwnd_2"].ToString().Replace("(MW Deficit)", ""), "rnwnd"));
                      if (j == 2) MWDeficits.Text += "19. Running or Wandering Away -- " +
                          MWEInfo["rnwnd_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }

                  if (MWEInfo["emoout_1"].ToString() == "Y")
                  {
                      mwc_deficits.Items.Add(new ListItem("20. Emotional Outbursts -- " +
                          MWEInfo["emoout_2"].ToString().Replace("(MW Deficit)", ""), "emoout"));
                      if (j == 2) MWDeficits.Text += "20. Emotional Outbursts -- " +
                          MWEInfo["emoout_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                  }
              }
              /*
              string mwc_deficits_str = MweDT.Rows[0]["mwc_deficits"].ToString().TrimEnd();
              
              string[] recordstrs = mwc_deficits_str.Split('|');
              string[] itemstrs;
              for (int j = 2; j<=8; j++)
              {
                CheckBoxList mwc_deficits=(CheckBoxList)FindControl("Tab"+j.ToString().TrimEnd()+"Deficits");
                for (int i = 0; i < recordstrs.Length; i++)
                {
                  itemstrs = recordstrs[i].Split(',');
                  switch (itemstrs[0])
                  {
                    case "walkng":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow walkngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 02", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Walking -- " + walkngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "walkng," + itemstrs[1]));
                           if (j==2) MWDeficits.Text += "Walking -- " + walkngDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "whluse":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow whluseDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 03", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Using a Wheelchair -- " + whluseDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "whluse," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Using a Wheelchair -- " + whluseDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "takmed":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow takmedDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 04", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Taking Prescription Medication -- " + takmedDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "takmed," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Taking Prescription Medication -- " + takmedDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "eating":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow eatingDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 05", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Eating -- " + eatingDR["deficit"].ToString().Replace("(MW Deficit)", ""), 
                            "eating," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Eating -- " + eatingDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "tltng":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow tltngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 06", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Toileting  -- " + tltngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "tltng," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Toileting  -- " + tltngDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "bbctrl":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow bbctrlDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 07", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Bladder and Bowel Control -- " + bbctrlDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "bbctrl," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Bladder and Bowel Control -- " + bbctrlDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "prshyg":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow prshygDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 08", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Personal Care -- " + prshygDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "prshyg," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Personal Care -- " + prshygDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "drssng":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow drssngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 09", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Dressing -- " + drssngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "drssng," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Dressing -- " + drssngDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "safety":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow safetyDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 10", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Safety Awareness -- " + safetyDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "safety," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Safety Awareness -- " + safetyDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "disbhv":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow disbhvDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 15", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Disruptive Social Behavior -- " + disbhvDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "disbhv," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Disruptive Social Behavior -- " + disbhvDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "aggrsn":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow aggrsnDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 16", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Aggressive Social Behavior -- " + aggrsnDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "aggrsn," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Aggressive Social Behavior -- " + aggrsnDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "sevsi":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow sevsiDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 17", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Self-Injurious Behavior -- " + sevsiDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "sevsi," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Self-Injurious Behavior -- " + sevsiDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "dstrpr":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow dstrprDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 18", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Destruction of Property -- " + dstrprDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "dstrpr," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Destruction of Property -- " + dstrprDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "rnwnd":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow rnwndDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 19", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Running or Wandering Away -- " + rnwndDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "rnwnd," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Running or Wandering Away -- " + rnwndDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                    case "deficit":
                        if (itemstrs[2] == "Y")
                        {
                           DataRow emooutDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 20", itemstrs[1], Session["UserAct"].ToString());
                           mwc_deficits.Items.Add(new ListItem("Emotional Outbursts -- " + emooutDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                            "deficit," + itemstrs[1]));
                           if (j == 2) MWDeficits.Text += "Emotional Outbursts -- " + emooutDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
                        }
                        break;
                         
                    //case "deficitsformwe":
                    //    mwc_deficits.Items.Add(new ListItem("Diagnostic Information -- " + Cder08Info["DeficitsForMwe"].ToString().Replace("(MW Deficit)", ""),
                    //        "deficitsformwe,0"));
                    //    break;
                           
                   }
                 }
              }
              */
            }
        }

        private void setCheckBoxListOnClick()
        {
            for (int j = 2; j <= 8; j++)
            {
                CheckBoxList mwc_deficits = (CheckBoxList)FindControl("Tab" + j.ToString().TrimEnd() + "Deficits");
                HiddenField mwc_hid = (HiddenField)FindControl("hdnMWChecked" + j.ToString().TrimEnd());
                string chkID = mwc_deficits.ClientID;
                string hidID = mwc_hid.ClientID;
                foreach (ListItem liD in mwc_deficits.Items)
                {
                    if (liD.Selected)
                    {
                        mwc_hid.Value = "1";
                    }
                    liD.Attributes.Add("onclick", "checkMWSelection('" + j.ToString().TrimEnd() + "');");
                }
            }

            //ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SetMWPlan",
            //              "<script>setMWCPlan4();</script>");
        }

        private void showsubmittedtabs()
        {
            if ((ViewState["Tab2Status"].ToString().TrimEnd() == "0") || (ViewState["Tab2Status"].ToString().TrimEnd() == ""))
            {
                TAB2.BgColor = "Gray";
                TAB2.Attributes.Remove("onclick");
            }
            else // 1 is for submmitted, 2 is for waiting for submit, 3 fro refresh (not used here) 
            {
                TAB2.BgColor = "";
                TAB2.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab2Status"].ToString().TrimEnd() == "1")
                {
                    // alway open the Submit button
                    //this.btnSubmitTab2.Enabled = false;
                    this.btnSubmitTab2.Enabled = true;
                    this.btnSubmitTab2.Text = "ReConfirm";
                }
                else  // it can be 2 or 3
                {
                    this.btnSubmitTab2.Enabled = true;
                    if (ViewState["Tab2Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab2.Text = "Next >>";
                }
            }
            if ((ViewState["Tab3Status"].ToString().TrimEnd() == "0") || (ViewState["Tab3Status"].ToString().TrimEnd() == ""))
            {
                TAB3.BgColor = "Gray";
                TAB3.Attributes.Remove("onclick");
            }
            else
            {
                TAB3.BgColor = "";
                TAB3.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab3Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab3.Enabled = false;
                    this.btnSubmitTab3.Enabled = true;
                    this.btnSubmitTab3.Text = "ReConfirm";
                }
                else
                {
                    this.btnSubmitTab3.Enabled = true;
                    if (ViewState["Tab3Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab3.Text = "Next >>";
                }
            }
            if ((ViewState["Tab4Status"].ToString().TrimEnd() == "0") || (ViewState["Tab4Status"].ToString().TrimEnd() == ""))
            {
                TAB4.BgColor = "Gray";
                TAB4.Attributes.Remove("onclick");
            }
            else
            {
                TAB4.BgColor = "";
                TAB4.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab4Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab4.Enabled = false;
                    this.btnSubmitTab4.Enabled = true;
                    this.btnSubmitTab4.Text = "ReConfirm";
                }
                else
                {
                    this.btnSubmitTab4.Enabled = true;
                    if (ViewState["Tab4Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab4.Text = "Next >>";
                }
            }
            if ((ViewState["Tab5Status"].ToString().TrimEnd() == "0") || (ViewState["Tab5Status"].ToString().TrimEnd() == ""))
            {
                TAB5.BgColor = "Gray";
                TAB5.Attributes.Remove("onclick");
            }
            else
            {
                TAB5.BgColor = "";
                TAB5.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab5Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab5.Enabled = false;
                    this.btnSubmitTab5.Enabled = true;
                    this.btnSubmitTab5.Text = "ReConfirm";
                }
                else
                {
                    this.btnSubmitTab5.Enabled = true;
                    if (ViewState["Tab5Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab5.Text = "Next >>";
                }
            }
            if ((ViewState["Tab6Status"].ToString().TrimEnd() == "0") || (ViewState["Tab6Status"].ToString().TrimEnd() == ""))
            {
                TAB6.BgColor = "Gray";
                TAB6.Attributes.Remove("onclick");
            }
            else
            {
                TAB6.BgColor = "";
                TAB6.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab6Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab6.Enabled = false;
                    this.btnSubmitTab6.Enabled = true;
                    this.btnSubmitTab6.Text = "ReConfirm";
                }
                else
                {
                    this.btnSubmitTab6.Enabled = true;
                    if (ViewState["Tab6Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab6.Text = "Next >>";
                }
            }
            if ((ViewState["Tab7Status"].ToString().TrimEnd() == "0") || (ViewState["Tab7Status"].ToString().TrimEnd() == ""))
            {
                TAB7.BgColor = "Gray";
                TAB7.Attributes.Remove("onclick");
            }
            else
            {
                TAB7.BgColor = "";
                TAB7.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab7Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab7.Enabled = false;
                    this.btnSubmitTab7.Enabled = true;
                    this.btnSubmitTab7.Text = "ReConfirm";
                }
                else
                {
                    this.btnSubmitTab7.Enabled = true;
                    if (ViewState["Tab7Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab7.Text = "Next >>";
                }
            }
            if ((ViewState["Tab8Status"].ToString().TrimEnd() == "0") || (ViewState["Tab8Status"].ToString().TrimEnd() == ""))
            {
                TAB8.BgColor = "Gray";
                TAB8.Attributes.Remove("onclick");
            }
            else
            {
                TAB8.BgColor = "";
                TAB8.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab8Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab8.Enabled = false;
                    this.btnSubmitTab8.Enabled = true;
                    this.btnSubmitTab8.Text = "ReConfirm";
                }
                else
                {
                    this.btnSubmitTab8.Enabled = true;
                    if (ViewState["Tab8Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab8.Text = "Next >>";
                }
            }
        }

        private void ShowLogs(DataRow FormIPPInfo)
        {
            string strLogs = "";
            DateTimeTemplate getDate = new DateTimeTemplate();

            string convStr = getDate.fixDates(FormIPPInfo["Tab2Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for Living Arrangements --------\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab3Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for Skills Demonstrated in Life --------\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab4Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for Challenging Behaviors -----\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab5Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for School, Work or Day Activity -----\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab6Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for Community and Social Life -----\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab7Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for Health and Safety -----\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab8Logs"].ToString().TrimEnd());
            strLogs += "-------- Logs for Legal ------\r\n" + convStr + "\r\n\r\n";

            convStr = getDate.fixDates(FormIPPInfo["Tab9Logs"].ToString().TrimEnd());
            strLogs += convStr + "\r\n\r\n";

            Logs.Text = strLogs;

            if ((FormIPPInfo["Tab2Status"].ToString().TrimEnd() == "1") &&
                 (FormIPPInfo["Tab3Status"].ToString().TrimEnd() == "1") &&
                 (FormIPPInfo["Tab4Status"].ToString().TrimEnd() == "1") &&
                 (FormIPPInfo["Tab5Status"].ToString().TrimEnd() == "1") &&
                 (FormIPPInfo["Tab6Status"].ToString().TrimEnd() == "1") &&
                 (FormIPPInfo["Tab7Status"].ToString().TrimEnd() == "1") &&
                 (FormIPPInfo["Tab8Status"].ToString().TrimEnd() == "1")) // &&
            //     (FormIPPInfo["ipp_signature"].ToString().TrimEnd() == ""))
            {
                Statuses.Text = "All the TABs have been confirmed.";
                if ((this.IsAdminPM.Value == "1") &&
                    (FormIPPInfo["ipp_verify"].ToString().TrimEnd() != ""))
                {
                    approved_no.Enabled = true;
                    approved_yes.Enabled = true;
                    btnSign.Disabled = false;
                    sign_comments.Attributes.Remove("readonly");
                    sign_comments.CssClass = "inface";
                    if (approved_yes.Checked == false)
                    {
                        setOneControlEnable(Tab2Comments);
                        setOneControlEnable(Tab3Comments);
                        setOneControlEnable(Tab4Comments);
                        setOneControlEnable(Tab5Comments);
                        setOneControlEnable(Tab6Comments);
                        setOneControlEnable(Tab7Comments);
                        setOneControlEnable(Tab8Comments);
                    }
                    else
                    {
                        setOneControlReadOnly(Tab2Comments);
                        setOneControlReadOnly(Tab3Comments);
                        setOneControlReadOnly(Tab4Comments);
                        setOneControlReadOnly(Tab5Comments);
                        setOneControlReadOnly(Tab6Comments);
                        setOneControlReadOnly(Tab7Comments);
                        setOneControlReadOnly(Tab8Comments);
                    }
                   /* //string sTab2Def = FormIPPInfo["Tab2Deficits"].ToString().TrimEnd();
                    //if ((sTab2Def == "") || (!sTab2Def.Contains(",Y")))
                    DataTable sTab2 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "2", Session["UserAct"].ToString());
                    if (sTab2.Rows.Count == 0)
                    {
                        TAB2.BgColor = "Gray";
                        TAB2.Attributes.Remove("onclick");
                    }
                    //string sTab3Def = FormIPPInfo["Tab3Deficits"].ToString().TrimEnd();
                    //if ((sTab3Def == "") || (!sTab3Def.Contains(",Y")))
                    DataTable sTab3 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "3", Session["UserAct"].ToString());
                    if (sTab3.Rows.Count == 0)
                    {
                        TAB3.BgColor = "Gray";
                        TAB3.Attributes.Remove("onclick");
                    }
                    //string sTab4Def = FormIPPInfo["Tab4Deficits"].ToString().TrimEnd();
                    //if ((sTab4Def == "") || (!sTab4Def.Contains(",Y")))
                    DataTable sTab4 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "4", Session["UserAct"].ToString());
                    if (sTab4.Rows.Count == 0)
                    {
                        TAB4.BgColor = "Gray";
                        TAB4.Attributes.Remove("onclick");
                    }
                    //string sTab5Def = FormIPPInfo["Tab5Deficits"].ToString().TrimEnd();
                    //if ((sTab5Def == "") || (!sTab5Def.Contains(",Y")))
                    DataTable sTab5 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "5", Session["UserAct"].ToString());
                    if (sTab5.Rows.Count == 0)
                    {
                        TAB5.BgColor = "Gray";
                        TAB5.Attributes.Remove("onclick");
                    }
                    //string sTab6Def = FormIPPInfo["Tab6Deficits"].ToString().TrimEnd();
                    //if ((sTab6Def == "") || (!sTab6Def.Contains(",Y")))
                    DataTable sTab6 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "6", Session["UserAct"].ToString());
                    if (sTab6.Rows.Count == 0)
                    {
                        TAB6.BgColor = "Gray";
                        TAB6.Attributes.Remove("onclick");
                    }
                    //string sTab7Def = FormIPPInfo["Tab7Deficits"].ToString().TrimEnd();
                    //if ((sTab7Def == "") || (!sTab7Def.Contains(",Y")))
                    DataTable sTab7 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "7", Session["UserAct"].ToString());
                    if (sTab7.Rows.Count == 0)
                    {
                        TAB7.BgColor = "Gray";
                        TAB7.Attributes.Remove("onclick");
                    }
                    //string sTab8Def = FormIPPInfo["Tab8Deficits"].ToString().TrimEnd();
                    //if ((sTab8Def == "") || (!sTab8Def.Contains(",Y")))
                    DataTable sTab8 = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "8", Session["UserAct"].ToString());
                    if (sTab8.Rows.Count == 0)
                    {
                        TAB8.BgColor = "Gray";
                        TAB8.Attributes.Remove("onclick");
                    }*/
                }
                else
                {
                    approved_no.Enabled = false;
                    approved_yes.Enabled = false;
                    btnSign.Disabled = true;
                    sign_comments.Attributes.Add("readonly", "true");
                    sign_comments.CssClass = "infaceText";

                    if (approved_yes.Checked == false)
                    {
                        setOneControlEnable(Tab2Comments);
                        setOneControlEnable(Tab3Comments);
                        setOneControlEnable(Tab4Comments);
                        setOneControlEnable(Tab5Comments);
                        setOneControlEnable(Tab6Comments);
                        setOneControlEnable(Tab7Comments);
                        setOneControlEnable(Tab8Comments);
                    }
                    else
                    {
                        setOneControlReadOnly(Tab2Comments);
                        setOneControlReadOnly(Tab3Comments);
                        setOneControlReadOnly(Tab4Comments);
                        setOneControlReadOnly(Tab5Comments);
                        setOneControlReadOnly(Tab6Comments);
                        setOneControlReadOnly(Tab7Comments);
                        setOneControlReadOnly(Tab8Comments);
                    }
                }
                 if ( ((Session["UserFullName"].ToString().TrimEnd() == FormIPPInfo["enteredby"].ToString().TrimEnd()) ||
                      (Session["UserID"].ToString().TrimEnd() == FormIPPInfo["enteredby_id"].ToString().TrimEnd()) ||
                     // (Session["UserID"].ToString().TrimEnd() == cm_id.SelectedValue)) && 
                      (Session["UserID"].ToString().TrimEnd() == this.consumer_cm_id.Value)) && 
                     (FormIPPInfo["ipp_verify"].ToString().TrimEnd() == "") )
                    btnVerify.Disabled = false;
               // else
                   // btnVerify.Disabled = true;
            }
            else
            {
                string sTabS = "";
                if (FormIPPInfo["Tab2Status"].ToString().TrimEnd() != "1")
                    sTabS += "Living-Arrangements  ";
                if (FormIPPInfo["Tab3Status"].ToString().TrimEnd() != "1")
                    sTabS += "Skills-Demonstrated-in-Life  ";
                if (FormIPPInfo["Tab4Status"].ToString().TrimEnd() != "1")
                    sTabS += "Challenging-Behaviors  ";
                if (FormIPPInfo["Tab5Status"].ToString().TrimEnd() != "1")
                    sTabS += "School-Work-or-Day-Activity  ";
                if (FormIPPInfo["Tab6Status"].ToString().TrimEnd() != "1")
                    sTabS += "Community-and-Social-Life  ";
                if (FormIPPInfo["Tab7Status"].ToString().TrimEnd() != "1")
                    sTabS += "Health-and-Safety  ";
                if (FormIPPInfo["Tab8Status"].ToString().TrimEnd() != "1")
                    sTabS += "Legal  ";

                Statuses.Text = "TABs have NOT been confirmed: "+sTabS;
                approved_no.Enabled = false;
                approved_yes.Enabled = false;
                btnVerify.Disabled = true;
                btnSign.Disabled = true;
                sign_comments.Attributes.Add("readonly", "false");
                sign_comments.CssClass = "infaceText";

                if (approved_yes.Checked == false)
                {
                    setOneControlEnable(Tab2Comments);
                    setOneControlEnable(Tab3Comments);
                    setOneControlEnable(Tab4Comments);
                    setOneControlEnable(Tab5Comments);
                    setOneControlEnable(Tab6Comments);
                    setOneControlEnable(Tab7Comments);
                    setOneControlEnable(Tab8Comments);
                }
                else
                {
                    setOneControlReadOnly(Tab2Comments);
                    setOneControlReadOnly(Tab3Comments);
                    setOneControlReadOnly(Tab4Comments);
                    setOneControlReadOnly(Tab5Comments);
                    setOneControlReadOnly(Tab6Comments);
                    setOneControlReadOnly(Tab7Comments);
                    setOneControlReadOnly(Tab8Comments);
                }
            }
        }

        private void setConsumerInfo(DataRow ConsumerInfo)
        {
            ClientName.Text = ConsumerInfo["ConsumerName"].ToString();
            UCI.Text = ConsumerInfo["c_uci"].ToString();
            if ((ConsumerInfo["c_dob"] != System.DBNull.Value)
                && (ConsumerInfo["c_dob"].ToString().Trim(null) != ""))
            {
                ClientDOB.Text = ((DateTime)ConsumerInfo["c_dob"]).ToString("MM/dd/yyyy");
            }
            //ClientLang.SelectedValue = ConsumerInfo["c_language"].ToString();
            ClientLangPref.SelectedValue = ConsumerInfo["c_preferred_language"].ToString();
            ClientLangDocu.SelectedValue = ConsumerInfo["c_document_language"].ToString();
            MedicaidWaiver.SelectedValue = ConsumerInfo["c_medicaid_waiver"].ToString();
        }

        private void BindDropDownLists()
        {
            DataTable LanguageDT = VirDBAccess.DbCommon.getTablesList("LANG", Session["UserAct"].ToString());
            ClientLangPref.DataSource = LanguageDT;
            ClientLangPref.DataBind();
            ClientLangDocu.DataSource = LanguageDT;
            ClientLangDocu.DataBind();
        }

        private void showdata(DataRow FormIPPInfo)
        {
            setTextBox(FormIPPInfo, "ClientName");
            setLabel(FormIPPInfo, "UCI");
            setTextBox(FormIPPInfo, "ClientDOB");
            setTextBox(FormIPPInfo, "ReviewDate");
            setRadioBox(FormIPPInfo, "ReviewPurpose");
            setDropDownList(FormIPPInfo, "MedicaidWaiver");
            setDropDownList(FormIPPInfo, "ClientLangPref");
            setDropDownList(FormIPPInfo, "ClientLangDocu");     
            setTextBox(FormIPPInfo, "MWDeficits");
            setTextBox(FormIPPInfo, "Participants");
            setTextBox(FormIPPInfo, "Tab2Comments");
            setTextBox(FormIPPInfo, "Tab3Comments");
            setTextBox(FormIPPInfo, "Tab4Comments");
            setTextBox(FormIPPInfo, "Tab5Comments");
            setTextBox(FormIPPInfo, "Tab6Comments");
            setTextBox(FormIPPInfo, "Tab7Comments");
            setTextBox(FormIPPInfo, "Tab8Comments");

            string mwc_deficits_str="";
            string[] recordstrs;
            string[] itemstrs;

            for (int j = 2; j <= 8; j++)
            {
                mwc_deficits_str = FormIPPInfo["Tab" + j.ToString().TrimEnd() + "Deficits"].ToString();
                if (mwc_deficits_str != "")
                {
                    recordstrs = mwc_deficits_str.Split('|');

                    CheckBoxList mwc_deficits = (CheckBoxList)FindControl("Tab" + j.ToString().TrimEnd() + "Deficits");
                    for (int i = 0; i < recordstrs.Length; i++)
                    {
                        itemstrs = recordstrs[i].Split('^');

                        if (itemstrs.Length == 3)
                        {
                            mwc_deficits.Items.Add(new ListItem(itemstrs[0], itemstrs[1]));
                            if (itemstrs[2] == "Y")
                                mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                        }
                        /*
                        switch (itemstrs[0])
                        {
                            case "walkng":
                                DataRow walkngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 02", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Walking -- " + walkngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "walkng," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "whluse":
                                DataRow whluseDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 03", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Using a Wheelchair -- " + whluseDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "whluse," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "takmed":
                                DataRow takmedDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 04", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Taking Prescription Medication -- " + takmedDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "takmed," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "eating":
                                DataRow eatingDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 05", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Eating -- " + eatingDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "eating," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "tltng":
                                DataRow tltngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 06", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Toileting  -- " + tltngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "tltng," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "bbctrl":
                                DataRow bbctrlDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 07", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Bladder and Bowel Control -- " + bbctrlDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "bbctrl," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "prshyg":
                                DataRow prshygDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 08", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Personal Care -- " + prshygDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "prshyg," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "drssng":
                                DataRow drssngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 09", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Dressing -- " + drssngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "drssng," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "safety":
                                DataRow safetyDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 10", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Safety Awareness -- " + safetyDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "safety," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "disbhv":
                                DataRow disbhvDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 15", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Disruptive Social Behavior -- " + disbhvDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "disbhv," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "aggrsn":
                                DataRow aggrsnDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 16", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Aggressive Social Behavior -- " + aggrsnDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "aggrsn," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "sevsi":
                                DataRow sevsiDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 17", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Self-Injurious Behavior -- " + sevsiDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "sevsi," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "dstrpr":
                                DataRow dstrprDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 18", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Destruction of Property -- " + dstrprDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "dstrpr," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "rnwnd":
                                DataRow rnwndDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 19", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Running or Wandering Away -- " + rnwndDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "rnwnd," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                            case "deficit":
                                DataRow emooutDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 20", itemstrs[1], Session["UserAct"].ToString());
                                mwc_deficits.Items.Add(new ListItem("Emotional Outbursts -- " + emooutDR["deficit"].ToString().Replace("(MW Deficit)", ""),
                                 "deficit," + itemstrs[1]));
                                if (itemstrs[2] == "Y")
                                    mwc_deficits.Items[mwc_deficits.Items.Count - 1].Selected = true;
                                break;
                      
                        
                      //case "deficitsformwe":
                      //    mwc_deficits.Items.Add(new ListItem("Diagnostic Information -- " + Cder08Info["DeficitsForMwe"].ToString().Replace("(MW Deficit)", ""),
                      //        "deficitsformwe,0"));
                      //    break;
                         
                        }
                       */
                    }
                }
            }

            //setRadioBox(FormIPPInfo, "approved");
            if (FormIPPInfo["approved"].ToString().TrimEnd() == "Y")
            {
                DisableControls();
                approved_yes.Checked = true;
                btnAddPlanTab2.Visible = false;
                btnAddPlanTab3.Visible = false;
                btnAddPlanTab4.Visible = false;
                btnAddPlanTab5.Visible = false;
                btnAddPlanTab6.Visible = false;
                btnAddPlanTab7.Visible = false;
                btnAddPlanTab8.Visible = false;
            }
            else if (FormIPPInfo["approved"].ToString().TrimEnd() == "N")
                approved_no.Checked = true;

            setLabel(FormIPPInfo, "ipp_verify");
            setLabel(FormIPPInfo, "ipp_verify_date");
            setLabel(FormIPPInfo, "ipp_signature");
            setLabel(FormIPPInfo, "ipp_signature_date");

            setTextBox(FormIPPInfo, "sign_comments");
        }

        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.dg_plan_tab2.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab2_ItemDataBound);
            this.dg_plan_tab3.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab3_ItemDataBound);
            this.dg_plan_tab4.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab4_ItemDataBound);
            this.dg_plan_tab5.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab5_ItemDataBound);
            this.dg_plan_tab6.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab6_ItemDataBound);
            this.dg_plan_tab7.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab7_ItemDataBound);
            this.dg_plan_tab8.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab8_ItemDataBound);
        }

        private void getdata(DataRow FormIPPInfo)
        {
            getTextBox(FormIPPInfo, "ClientName", 0);
            getLabel(FormIPPInfo, "UCI", 0);
            getTextBox(FormIPPInfo, "ClientDOB", 2);
            getTextBox(FormIPPInfo, "ReviewDate", 2);
            getSPRadioBox(FormIPPInfo, "ReviewPurpose", 3);
            getDropDownList(FormIPPInfo, "MedicaidWaiver", 0);
            getDropDownList(FormIPPInfo, "ClientLangPref", 0);
            getDropDownList(FormIPPInfo, "ClientLangDocu", 0);     
            getTextBox(FormIPPInfo, "MWDeficits", 0);
            getTextBox(FormIPPInfo, "Participants", 0);
            getTextBox(FormIPPInfo, "Tab2Comments", 0);
            getTextBox(FormIPPInfo, "Tab3Comments", 0);
            getTextBox(FormIPPInfo, "Tab4Comments", 0);
            getTextBox(FormIPPInfo, "Tab5Comments", 0);
            getTextBox(FormIPPInfo, "Tab6Comments", 0);
            getTextBox(FormIPPInfo, "Tab7Comments", 0);
            getTextBox(FormIPPInfo, "Tab8Comments", 0);

            string mwc_deficits_str="";
            for (int j = 2; j <= 8; j++)
            {
                mwc_deficits_str = "";
                CheckBoxList mwc_deficits = (CheckBoxList)FindControl("Tab" + j.ToString().TrimEnd() + "Deficits");

                foreach (ListItem liD in mwc_deficits.Items)
                {
                    if (mwc_deficits_str != "")
                        mwc_deficits_str += "|";
                    mwc_deficits_str += liD.Text.TrimEnd()+"^"+liD.Value.TrimEnd();
                    if (liD.Selected)
                        mwc_deficits_str += "^Y";
                    else mwc_deficits_str += "^N";
                }
                FormIPPInfo["Tab" + j.ToString().TrimEnd() + "Deficits"] = mwc_deficits_str;
            }
        }

        private void SaveData(bool popupMsg)
        {
            System.Data.SqlClient.SqlDataAdapter FormIPPAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet FormIPPSet = new DataSet();
            string sqlstr = string.Format("select * from FormIPPFDLRC where IPPID='{0}'", this.entrykey.Value);
            DataRow FormIPPInfo = VirDBAccess.DbForm.constructFormIPPTableFDLRC(FormIPPAD, FormIPPSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];

            getdata(FormIPPInfo);

            if (VirDBAccess.DbForm.updateFormIPPInfoFDLRC(FormIPPAD, FormIPPSet) == 0)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>alert('Update unsuccessful! Please try again.');</script>");
            }
            else
            {
                ShowLogs(FormIPPInfo);
                if (popupMsg)
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveSuc", "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                else
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveSuc", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }

            FormIPPAD.Dispose();
            cn.close();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            SaveData(true);
        }

        private void AddData(bool popupMsg)
        {
            System.Data.SqlClient.SqlDataAdapter FormIPPAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet FormIPPSet = new DataSet();
            string sqlstr = string.Format("select top 1 * from FormIPPFDLRC");

            DataRow FormIPPInfo = VirDBAccess.DbForm.constructFormIPPTableFDLRC(FormIPPAD, FormIPPSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();
            FormIPPInfo["IPPID"] = this.entrykey.Value;
            FormIPPInfo["uci"] = this.consumer_key.Value;
            FormIPPInfo["createdate"] = DateTime.Parse(DateTime.Now.ToString());
            FormIPPInfo["enteredby"] = Session["userFullName"].ToString();
            FormIPPInfo["enteredby_id"] = Session["userID"].ToString();
            FormIPPInfo["Tab2Status"] = 2;
            getdata(FormIPPInfo);

            if (VirDBAccess.DbForm.addFormIPPInfoFDLRC(FormIPPAD, FormIPPSet, FormIPPInfo) == 0)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>alert('Update unsuccessful!String or binary data would be truncated.The statement has been terminated');</script>");
            }
            else
            {
                if (popupMsg)
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveSuc", "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                else
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveSuc", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                btnAdd.Visible = false;
                btnEdit.Visible = true;
                btnPrint.Visible = true;
            }

            FormIPPAD.Dispose();
            cn.close();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            AddData(true);
        }

        protected void DeleteIPPOutPlan(string IPPOutID, string TabNo)
        {
            if (VirDBAccess.DbForm.delFormIPPOut(IPPOutID, Session["UserAct"].ToString()) == 1)
            {
                if (TabNo == "2")
                    showPlanTab2List();
                else if (TabNo=="3")
                  showPlanTab3List();
                else if (TabNo=="4")
                    showPlanTab4List();
                else if (TabNo == "5")
                    showPlanTab5List();
                else if (TabNo == "6")
                    showPlanTab6List();
                else if (TabNo == "7")
                    showPlanTab7List();
                else if (TabNo == "8")
                    showPlanTab8List();
            }
        }

        private void showPlanTab2List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "2", Session["UserAct"].ToString());
                    dg_plan_tab2.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab2.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab2_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();

                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '2');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '2');return false;");

                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab2.Visible = false;
                    btnAddPlanTab2.Visible = false;
                }
            }
        }

        private void showPlanTab3List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "3", Session["UserAct"].ToString());
                    dg_plan_tab3.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab3.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab3_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();


                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '3');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '3');return false;");

                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab3.Visible = false;
                    btnAddPlanTab3.Visible = false;
                }
            }
        }

        private void showPlanTab4List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "4", Session["UserAct"].ToString());
                    dg_plan_tab4.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab4.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab4_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();


                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '4');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '4');return false;");

                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab4.Visible = false;
                    btnAddPlanTab4.Visible = false;
                }
            }
        }

        private void showPlanTab5List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "5", Session["UserAct"].ToString());
                    dg_plan_tab5.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab5.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab5_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();


                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '5');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '5');return false;");
                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab5.Visible = false;
                    btnAddPlanTab5.Visible = false;
                }
            }
        }

        private void showPlanTab6List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "6", Session["UserAct"].ToString());
                    dg_plan_tab6.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab6.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab6_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();


                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '6');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '6');return false;");
                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab6.Visible = false;
                    btnAddPlanTab6.Visible = false;
                }
            }
        }

        private void showPlanTab7List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "7", Session["UserAct"].ToString());
                    dg_plan_tab7.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab7.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab7_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();


                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '7');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '7');return false;");
                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab7.Visible = false;
                    btnAddPlanTab7.Visible = false;
                }
            }
        }

        private void showPlanTab8List()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "8", Session["UserAct"].ToString());
                    dg_plan_tab8.DataSource = FormIPPOut.DefaultView;
                    dg_plan_tab8.DataBind();
                }
                //catch { }
            }
        }

        private void dg_plan_tab8_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Header)
            {
            }
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (hdnPlanTitle1.Value != "")
                    ((Label)e.Item.FindControl("l_plan1")).Text = hdnPlanTitle1.Value;
                if (hdnPlanTitle2.Value != "")
                    ((Label)e.Item.FindControl("l_plan2")).Text = hdnPlanTitle2.Value;
                if (hdnPlanTitle3.Value != "")
                    ((Label)e.Item.FindControl("l_plan3")).Text = hdnPlanTitle3.Value;
                if (hdnPlanTitle4.Value != "")
                    ((Label)e.Item.FindControl("l_plan4")).Text = hdnPlanTitle4.Value;

                DataTable FormIPPOutPlan1 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "1", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataSource = FormIPPOutPlan1.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_1")).DataBind();
                DataTable FormIPPOutPlan2 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "2", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataSource = FormIPPOutPlan2.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_2")).DataBind();
                DataTable FormIPPOutPlan3 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "3", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataSource = FormIPPOutPlan3.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_3")).DataBind();
                DataTable FormIPPOutPlan4 = VirDBAccess.DbForm.getFormIPPOutPlanList(e.Item.Cells[0].Text.TrimEnd(), "4", Session["UserAct"].ToString());
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataSource = FormIPPOutPlan4.DefaultView;
                ((DataGrid)e.Item.FindControl("dg_plan_tab_4")).DataBind();

                ((Button)e.Item.FindControl("btnEditPlanTab")).Attributes.Add("onclick", "EditOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '8');return false;");
                ((Button)e.Item.FindControl("btnDeletePlanTab")).Attributes.Add("onclick", "DeleteOutPlan('" + e.Item.Cells[0].Text.TrimEnd() + "', '8');return false;");
                if (approved_yes.Checked == true)
                {
                    e.Item.FindControl("btnEditPlanTab").Visible = false;
                    e.Item.FindControl("btnDeletePlanTab").Visible = false;
                    btnSubmitTab8.Visible = false;
                    btnAddPlanTab8.Visible = false;
                }
            }
        }
    }
}
