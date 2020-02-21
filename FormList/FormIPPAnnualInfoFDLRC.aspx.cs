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

namespace Virweb2.FormList
{
    public partial class FormIPPAnnualInfoFDLRC : webCommonPage
    {
        protected string Edit_Flag = "Y", Delete_Flag = "Y";
        public string MedicalString = string.Empty;
        public string ClientIDVar = string.Empty;
        public string ReviewDateVar = string.Empty;
        public string ClientDateVar = string.Empty;
        public string CurrentOpenedTab = string.Empty;
        //public string chk_flag = "N";
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
            CurrentOpenedTab = CurrentTab.Value;

            //if (Page.IsPostBack)
            //{

            //    if (this.SignVerify.Value == "1")  // verify from SC
            //    {
            //        string SignDate = DateTime.Now.ToString();
            //        ipp_verify.Text = Session["userFullName"].ToString();
            //        ipp_verify_date.Text = SignDate;
            //        VirDBAccess.DbForm.VerifyFormIPPAnnualFDLRC(this.entrykey.Value, ipp_verify.Text, SignDate, Session["UserID"].ToString(), Session["UserAct"].ToString());
            //        DisableControls();

            //        DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
            //        ShowLogs(FormIPPInfo);

            //        this.SignVerify.Value = "";
            //        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Verify",
            //                "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");

            //        return;
            //    }

            //    if (this.SignVerify.Value == "2")  //return
            //    {
            //        string SignDate = DateTime.Now.ToString();
            //        // ipp_signature.Text = Session["userFullName"].ToString();
            //        ipp_signature.Text = "";
            //        ipp_signature_date.Text = SignDate;
            //        ipp_verify.Text = "";
            //        ipp_verify_date.Text = "";
            //        VirDBAccess.DbForm.ReturnFormIPPFDLRC(this.entrykey.Value, Session["userFullName"].ToString(), SignDate, sign_comments.Text, Session["UserAct"].ToString());

            //        DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
            //        ShowLogs(FormIPPInfo);

            //        this.SignVerify.Value = "";
            //        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Return",
            //                "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");

            //        return;
            //    }

            //    if (this.SignUserName.Value != "")  // final sign with password verification from Case Manager
            //    {
            //        string SignDate = DateTime.Now.ToString();
            //        ipp_signature.Text = this.SignUserName.Value;
            //        ipp_signature_date.Text = SignDate;
            //        var email = ipp_signature_msg.SelectedItem.Value.TrimEnd();
            //        VirDBAccess.DbForm.SignFormIPPAnnualFDLRC(this.entrykey.Value, this.SignUserName.Value, Session["UserID"].ToString(), SignDate, sign_comments.Text, Session["UserAct"].ToString());

            //        DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
            //        ShowLogs(FormIPPInfo);

            //        this.SignUserName.Value = "";
            //        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Sign",
            //                "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");


            //        //if (!String.IsNullOrEmpty(email))
            //        //{
            //        //   // var url = "../weblist/WebMessageNew.aspx?prefill=ANNUAL&email=" + tx_uci;

            //        //    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SubmitTab",
            //        //   "<script>popupDialog('../weblist/WebMessageNew.aspx?prefill=ANNUAL&email=" + email.ToString().TrimEnd() + "');</script>");
            //        //}
            //        return;
            //    }
            //}


            if (!Page.IsPostBack) //|| !CurrentOpenedTab.Equals("")
            {

                body.Attributes.Add("onload", "javascript:onloadsizechg(90)");
                body.Attributes.Add("onresize", "javascript:onloadsizechg(90);");

                string strKey = Request.QueryString["uci"].ToString().TrimEnd();
                Session["ConsumerSel"] = strKey;

                string strType = "";
                if (Request.QueryString["type"] != null)
                    strType = Request.QueryString["type"].ToString().TrimEnd();
                string strIPPID = "";
                if (Request.QueryString["IPPAnnualID"] != null)
                    strIPPID = Request.QueryString["IPPAnnualID"].ToString().TrimEnd();
                if (Request.QueryString["goback"] != null)
                    gobackPage.Value = Request.QueryString["goback"].ToString().TrimEnd();
                if ((Session["usertype"].ToString() == "A") || (Session["EmployeeType"].ToString() == "D") ||
                    (Session["EmployeeType"].ToString() == "AD") || (Session["EmployeeType"].ToString() == "RM") || (Session["EmployeeType"].ToString() == "M"))
                    this.IsAdminPM.Value = "1";
                else this.IsAdminPM.Value = "0";

                DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(strKey, Session["UserAct"].ToString());
                DataRow FinancialInfo = VirDBAccess.DbConsumer.getFinancialInfo(strKey, Session["UserAct"].ToString());
                DataRow MedicalInfo = VirDBAccess.DbConsumer.getMedicalInfo(strKey, Session["UserAct"].ToString());
                //DataRow ChkAnnualExist = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(strIPPID.ToString().Trim(), Session["UserAct"].ToString());

                string InfoStr = "";
                if (ConsumerInfo["c_dob"].ToString() == "")
                    InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"];
                else
                    InfoStr = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"] + "    DOB: " + ((DateTime)ConsumerInfo["c_dob"]).ToShortDateString();
                InfoStr += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                InfoStr += Session["CoordDisp"].ToString() + ": " + ConsumerInfo["CaseMgrName"];
                InfoStr = InfoStr.Replace("'", "`");
                Info.Text = "";
                string maindispstr = "<script type='text/javascript'>DisplayTitleInfo('" + InfoStr + "','Annual Review / Quarterly')</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DisplayTitleInfo", maindispstr);

                this.entrykey.Value = strIPPID;
                this.UserAct.Value = Session["UserAct"].ToString();
                this.consumer_cm_id.Value = ConsumerInfo["c_cm_id"].ToString();
                this.consumer_key.Value = strKey;

                BindDropDownLists();

                if (ConsumerInfo["c_gender"].ToString() == "M")
                {
                    women_health.Visible = false;
                    men_health.Visible = true;
                }
                else
                {
                    women_health.Visible = true;
                    men_health.Visible = false;
                }


                if (strType == "" )
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

                // doesn't need for annual project hide for now
                l_statuses.Visible = false;
                Statuses.Visible = false;

                DataRow FormIPPInfo;
                if (this.entrykey.Value != "")
                {
                    FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    btnPrint.Visible = true;
                    showdata(FormIPPInfo);
                    FetchNewInfo(ConsumerInfo, FinancialInfo, MedicalInfo);
                    //setCheckBoxListOnClick();



                    showPlanTab3List();
                    showPlanTab4List();
                    //showPlanTab5List();


                    // ShowLogs(FormIPPInfo); //Show log at the end which including enable/disable the verify/approval buttons 
                }
                else
                {
                    this.entrykey.Value = (this.consumer_key.Value + "_" + DateTime.Parse(DateTime.Now.ToString())).TrimEnd();

                    FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualNewInfoFDLRC(Session["UserAct"].ToString());

                    showdata(FormIPPInfo);

                    FetchNewInfo(ConsumerInfo, FinancialInfo, MedicalInfo);



                    //setCheckBoxListOnClick();

                    //FormIPPInfo["Tab2Status"] = 2;

                    if (Request.QueryString["Prefill"] != null)
                    {
                        VirDBAccess.DbForm.IPPCopyPrevOutcomeFDLRC(this.entrykey.Value, this.consumer_key.Value, Session["UserAct"].ToString());

                        //showPlanTab2List();
                        showPlanTab3List();
                        showPlanTab4List();
                        //showPlanTab5List();

                    }
                }

                ViewState["Tab1Status"] = FormIPPInfo["Tab1Status"].ToString().TrimEnd();
                ViewState["Tab2Status"] = FormIPPInfo["Tab2Status"].ToString().TrimEnd();
                ViewState["Tab3Status"] = FormIPPInfo["Tab3Status"].ToString().TrimEnd();
                ViewState["Tab4Status"] = FormIPPInfo["Tab4Status"].ToString().TrimEnd();
                ViewState["Tab5Status"] = FormIPPInfo["Tab5Status"].ToString().TrimEnd();
                ViewState["Tab6Status"] = FormIPPInfo["Tab6Status"].ToString().TrimEnd();
                ViewState["Tab7Status"] = FormIPPInfo["Tab7Status"].ToString().TrimEnd();
                ViewState["Tab8Status"] = FormIPPInfo["Tab8Status"].ToString().TrimEnd();

                if (strType != "")
                {
                    //this.btnAddPlanTab2.Attributes.Add("onclick", "AddOutPlan('2');return false;");
                    //this.btnAddPlanTab3.Attributes.Add("onclick", "AddOutPlan('3');return false;");
                    //this.btnAddPlanTab4.Attributes.Add("onclick", "AddOutPlan('4');return false;");

                    this.btnSubmitTab2.Attributes.Add("onclick", "ReadyToSubmitTab(2);return false;");
                    this.btnSubmitTab3.Attributes.Add("onclick", "ReadyToSubmitTab(3);return false;");
                    this.btnSubmitTab4.Attributes.Add("onclick", "ReadyToSubmitTab(4);return false;");
                    //this.btnSubmitTab5.Attributes.Add("onclick", "ReadyToSubmitTab(5);return false;");
                    // this.btnSubmitTab6.Attributes.Add("onclick", "ReadyToSubmitTab(6);return false;");
                    //this.btnSubmitTab7.Attributes.Add("onclick", "ReadyToSubmitTab(7);return false;");
                    //this.CheckBox5.Attributes.Add("onclick", "ReadyToSubmitTab(5);return false;");
                    //this.CheckBox6.Attributes.Add("onclick", "ReadyToSubmitTab(6);return false;");
                    //this.CheckBox7.Attributes.Add("onclick", "ReadyToSubmitTab(7);return false;");
                    //this.CheckBox7.Attributes.Add("onclick", "ReadyToSubmitTab(7);return false;");

                    //this.btnSubmitTab8.Attributes.Add("onclick", "ReadyToSubmitTab(8);return false;");

                    showsubmittedtabs();
                    showPosList();
                    showSchoolList();
                    showEmploymentList();
                    showOutcomesNarratives();
                }
                else
                {
                    DisableControls();
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
                    VirDBAccess.DbForm.VerifyFormIPPAnnualFDLRC(this.entrykey.Value, ipp_verify.Text, SignDate, Session["UserID"].ToString(), Session["UserAct"].ToString());
                    DisableControls();
                    ipp_signature_msg.Enabled = true;

                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
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

                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
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
                    VirDBAccess.DbForm.SignFormIPPAnnualFDLRC(this.entrykey.Value, this.SignUserName.Value, Session["UserID"].ToString(), SignDate, sign_comments.Text, Session["UserAct"].ToString(), ipp_signature_msg.Text);

                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    ShowLogs(FormIPPInfo);

                    this.SignUserName.Value = "";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "Sign",
                            "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");

                    return;
                }

                if (this.SubmitTabNo.Value != "")  // After Confirm a page, the status/logs is changed
                {
                    DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(this.entrykey.Value, Session["UserAct"].ToString());
                    ShowLogs(FormIPPInfo);

                    ViewState["Tab1Status"] = FormIPPInfo["Tab1Status"].ToString().TrimEnd();
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
                        "<script>popupDialog('FormIPPAnnualSubmitFDLRC.aspx?IPPAnnualID=" + this.entrykey.Value + "&UCI=" + this.consumer_key.Value + "&TabNo=" + this.ReadyToSubmitTabNo.Value.ToString().TrimEnd() + "');</script>");
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
                        if (hdnRefreshData.Value == "3")
                            showPlanTab3List();
                        else if (hdnRefreshData.Value == "4")
                            showPlanTab4List();
                        //else if (hdnRefreshData.Value == "5")
                        //showPlanTab5List();

                    }

                    hdnRefreshData.Value = "0";
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "refIPP",
                        "<script>DataChanged();doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                }
            }
            ClientIDVar = this.consumer_key.Value;
            ReviewDateVar = this.ReviewDate.Text;
            ClientDateVar = (this.consumer_key.Value + "_" + DateTime.Parse(DateTime.Now.ToString())).TrimEnd();
            setCheckBoxListOnClick();
        }

        private void DisableControls()
        {
            setControlReadOnly(this.IPPInfo);

            btnAdd.Visible = false;
            btnEdit.Visible = false;

            this.submitted.Value = "1";
        }

        private void FetchNewInfo(DataRow ConsumerInfo, DataRow FinancialInfo, DataRow MedicalInfo)
        {
            setConsumerInfo(ConsumerInfo);
            setFinancialInfo(FinancialInfo);
            setMedicalInfo(MedicalInfo);
            //DisplayMWEList(ConsumerInfo);
        }



        //private void DisplayMWEList(DataRow ConsumerInfo)
        //{
        //    //DataTable MweDT = VirDBAccess.DbForm.getFormMWEList(ConsumerInfo["c_uci"].ToString(), Session["UserAct"].ToString());
        //    DataTable MweDT = VirDBAccess.DbForm.getFormMWEListWithSign(ConsumerInfo["c_uci"].ToString(), Session["UserAct"].ToString());

        //    if (MweDT.Rows.Count > 0)
        //    {
        //      DataRow MWEInfo = MweDT.Rows[0];
        //      for (int j = 2; j <= 8; j++)
        //      {
        //          CheckBoxList mwc_deficits = (CheckBoxList)FindControl("Tab" + j.ToString().TrimEnd() + "Deficits");
        //          if (MWEInfo["antcnv_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("31. Consumer takes anticonvulsant medication -- " + 
        //                  MWEInfo["antcnv_2"].ToString().Replace("(MW Deficit)", ""), "antcnv"));
        //              if (j == 2) MWDeficits.Text += "31. Consumer takes anticonvulsant medication -- " +
        //                  MWEInfo["antcnv_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["stepls_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("32. Status Epilepticus -- " +
        //                  MWEInfo["stepls_2"].ToString().Replace("(MW Deficit)", ""), "stepls"));
        //              if (j == 2) MWDeficits.Text += "32. Status Epilepticus -- " +
        //                  MWEInfo["stepls_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrmc1_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("54a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc1_2"].ToString().Replace("(MW Deficit)", ""), "chrmc1"));
        //              if (j == 2) MWDeficits.Text += "54a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrim1_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("54b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim1_2"].ToString().Replace("(MW Deficit)", ""), "chrim1"));
        //              if (j == 2) MWDeficits.Text += "54b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["chrmc2_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("55a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc2_2"].ToString().Replace("(MW Deficit)", ""), "chrmc2"));
        //              if (j == 2) MWDeficits.Text += "55a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrim2_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("55b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim2_2"].ToString().Replace("(MW Deficit)", ""), "chrim2"));
        //              if (j == 2) MWDeficits.Text += "55b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["chrmc3_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("56a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc3_2"].ToString().Replace("(MW Deficit)", ""), "chrmc3"));
        //              if (j == 2) MWDeficits.Text += "56a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrim3_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("56b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim3_2"].ToString().Replace("(MW Deficit)", ""), "chrim3"));
        //              if (j == 2) MWDeficits.Text += "56b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["chrmc4_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("57a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc4_2"].ToString().Replace("(MW Deficit)", ""), "chrmc4"));
        //              if (j == 2) MWDeficits.Text += "57a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrim4_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("57b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim4_2"].ToString().Replace("(MW Deficit)", ""), "chrim4"));
        //              if (j == 2) MWDeficits.Text += "57b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["chrmc5_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("58a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc5_2"].ToString().Replace("(MW Deficit)", ""), "chrmc5"));
        //              if (j == 2) MWDeficits.Text += "58a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrim5_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("58b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim5_2"].ToString().Replace("(MW Deficit)", ""), "chrim5"));
        //              if (j == 2) MWDeficits.Text += "58b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["chrmc6_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("59a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc6_2"].ToString().Replace("(MW Deficit)", ""), "chrmc6"));
        //              if (j == 2) MWDeficits.Text += "59a. Chronic Major Medical Conditions -- " +
        //                  MWEInfo["chrmc6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //          if (MWEInfo["chrim6_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("59b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim6_2"].ToString().Replace("(MW Deficit)", ""), "chrim6"));
        //              if (j == 2) MWDeficits.Text += "59b. Chronic Major Medical Impact -- " +
        //                  MWEInfo["chrim6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["hrngun_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("60. Level of Hearing Loss Uncorrected -- " +
        //                  MWEInfo["hrngun_2"].ToString().Replace("(MW Deficit)", ""), "hrngun"));
        //              if (j == 2) MWDeficits.Text += "60. Level of Hearing Loss Uncorrected -- " +
        //                  MWEInfo["hrngun_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["hrngcr_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("61. Level of Hearing Loss Corrected -- " +
        //                  MWEInfo["hrngcr_2"].ToString().Replace("(MW Deficit)", ""), "hrngcr"));
        //              if (j == 2) MWDeficits.Text += "61. Level of Hearing Loss Corrected -- " +
        //                  MWEInfo["hrngcr_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["vsnun_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("62. Level of Vision Loss Uncorrected -- " +
        //                  MWEInfo["vsnun_2"].ToString().Replace("(MW Deficit)", ""), "vsnun"));
        //              if (j == 2) MWDeficits.Text += "62. Level of Vision Loss Uncorrected -- " +
        //                  MWEInfo["vsnun_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["vsncr_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("63. Level of Vision Loss Corrected -- " +
        //                  MWEInfo["vsncr_2"].ToString().Replace("(MW Deficit)", ""), "vsncr"));
        //              if (j == 2) MWDeficits.Text += "63. Level of Vision Loss Corrected -- " +
        //                  MWEInfo["vsncr_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["apsymn_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("64. Behavior Modifying Drugs: Anti-Psychotic -- " +
        //                  MWEInfo["apsymn_2"].ToString().Replace("(MW Deficit)", ""), "apsymn"));
        //              if (j == 2) MWDeficits.Text += "64. Behavior Modifying Drugs: Anti-Psychotic -- " +
        //                  MWEInfo["apsymn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["adepmn_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("65. Behavior Modifying Drugs: Anti-Depressant -- " +
        //                  MWEInfo["adepmn_2"].ToString().Replace("(MW Deficit)", ""), "adepmn"));
        //              if (j == 2) MWDeficits.Text += "65. Behavior Modifying Drugs: Anti-Depressant -- " +
        //                  MWEInfo["adepmn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["aanxmn_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("66. Behavior Modifying Drugs: Anti-Anxiety -- " +
        //                  MWEInfo["aanxmn_2"].ToString().Replace("(MW Deficit)", ""), "aanxmn"));
        //              if (j == 2) MWDeficits.Text += "66. Behavior Modifying Drugs: Anti-Anxiety -- " +
        //                  MWEInfo["aanxmn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sedhyp_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("67. Behavior Modifying Drugs: Sedative/Hypnotic -- " +
        //                  MWEInfo["sedhyp_2"].ToString().Replace("(MW Deficit)", ""), "sedhyp"));
        //              if (j == 2) MWDeficits.Text += "67. Behavior Modifying Drugs: Sedative/Hypnotic -- " +
        //                  MWEInfo["sedhyp_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["stmlnt_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("68. Behavior Modifying Drugs: Stimulant -- " +
        //                  MWEInfo["stmlnt_2"].ToString().Replace("(MW Deficit)", ""), "stmlnt"));
        //              if (j == 2) MWDeficits.Text += "68. Behavior Modifying Drugs: Stimulant -- " +
        //                  MWEInfo["stmlnt_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["othdrg_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("69. Behavior Modifying Drugs: Other -- " +
        //                  MWEInfo["othdrg_2"].ToString().Replace("(MW Deficit)", ""), "othdrg"));
        //              if (j == 2) MWDeficits.Text += "69. Behavior Modifying Drugs: Other -- " +
        //                  MWEInfo["othdrg_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["histpm_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("70. History of Prescribed Medication for Maladaptive Behavior -- " +
        //                  MWEInfo["histpm_2"].ToString().Replace("(MW Deficit)", ""), "histpm"));
        //              if (j == 2) MWDeficits.Text += "70. History of Prescribed Medication for Maladaptive Behavior -- " +
        //                  MWEInfo["histpm_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc1_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("76. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc1_2"].ToString().Replace("(MW Deficit)", ""), "sphc1"));
        //              if (j == 2) MWDeficits.Text += "76. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc2_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("77. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc2_2"].ToString().Replace("(MW Deficit)", ""), "sphc2"));
        //              if (j == 2) MWDeficits.Text += "77. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc3_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("78. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc3_2"].ToString().Replace("(MW Deficit)", ""), "sphc3"));
        //              if (j == 2) MWDeficits.Text += "78. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc4_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("79. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc4_2"].ToString().Replace("(MW Deficit)", ""), "sphc4"));
        //              if (j == 2) MWDeficits.Text += "79. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc5_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("80. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc5_2"].ToString().Replace("(MW Deficit)", ""), "sphc5"));
        //              if (j == 2) MWDeficits.Text += "80. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc6_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("81. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc6_2"].ToString().Replace("(MW Deficit)", ""), "sphc6"));
        //              if (j == 2) MWDeficits.Text += "81. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc7_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("82. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc7_2"].ToString().Replace("(MW Deficit)", ""), "sphc7"));
        //              if (j == 2) MWDeficits.Text += "82. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc7_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc8_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("83. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc8_2"].ToString().Replace("(MW Deficit)", ""), "sphc8"));
        //              if (j == 2) MWDeficits.Text += "83. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc8_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc9_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("84. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc9_2"].ToString().Replace("(MW Deficit)", ""), "sphc9"));
        //              if (j == 2) MWDeficits.Text += "84. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc9_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sphc10_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("85. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc10_2"].ToString().Replace("(MW Deficit)", ""), "sphc10"));
        //              if (j == 2) MWDeficits.Text += "85. Special Health Care Requirements -- " +
        //                  MWEInfo["sphc10_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn1_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("86. Does the client display maladaptive sexual behavior? -- " +
        //                  MWEInfo["spcn1_2"].ToString().Replace("(MW Deficit)", ""), "spcn1"));
        //              if (j == 2) MWDeficits.Text += "86. Does the client display maladaptive sexual behavior? -- " +
        //                  MWEInfo["spcn1_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn2_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("87. Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death? -- " +
        //                  MWEInfo["spcn2_2"].ToString().Replace("(MW Deficit)", ""), "spcn2"));
        //              if (j == 2) MWDeficits.Text += "87. Has the client engaged in any assaultive behaviors that could have resulted in serious bodily injury or death? -- " +
        //                  MWEInfo["spcn2_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn3_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("88. Has the client attempted suicide in past 5 years? -- " +
        //                  MWEInfo["spcn3_2"].ToString().Replace("(MW Deficit)", ""), "spcn3"));
        //              if (j == 2) MWDeficits.Text += "88. Has the client attempted suicide in past 5 years? -- " +
        //                  MWEInfo["spcn3_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn4_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("89. Does the client habitually engage in theft in past 5 years? -- " +
        //                  MWEInfo["spcn4_2"].ToString().Replace("(MW Deficit)", ""), "spcn4"));
        //              if (j == 2) MWDeficits.Text += "89. Does the client habitually engage in theft in past 5 years? -- " +
        //                  MWEInfo["spcn4_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn5_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("90. Has the client participated in acts of vandalism or acts of property destruction in past 5 years? -- " +
        //                  MWEInfo["spcn5_2"].ToString().Replace("(MW Deficit)", ""), "spcn5"));
        //              if (j == 2) MWDeficits.Text += "90. Has the client participated in acts of vandalism or acts of property destruction in past 5 years? -- " +
        //                  MWEInfo["spcn5_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn6_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("91. Has the client been convicted of any substance abuse or alcohol related offenses in past 5 years? -- " +
        //                  MWEInfo["spcn6_2"].ToString().Replace("(MW Deficit)", ""), "spcn6"));
        //              if (j == 2) MWDeficits.Text += "91. Has the client been convicted of any substance abuse or alcohol related offenses in past 5 years? -- " +
        //                  MWEInfo["spcn6_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn7_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("92. Does the client have a recent history of abusing drugs or alcohol currently abusing/within past 3 years? -- " +
        //                  MWEInfo["spcn7_2"].ToString().Replace("(MW Deficit)", ""), "spcn7"));
        //              if (j == 2) MWDeficits.Text += "92. Does the client have a recent history of abusing drugs or alcohol currently abusing/within past 3 years? -- " +
        //                  MWEInfo["spcn7_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn8_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("93. Does the client have a history of habitual lying in past 3 years? -- " +
        //                  MWEInfo["spcn8_2"].ToString().Replace("(MW Deficit)", ""), "spcn8"));
        //              if (j == 2) MWDeficits.Text += "93. Does the client have a history of habitual lying in past 3 years? -- " +
        //                  MWEInfo["spcn8_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["spcn9_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("94. Does the client display behaviors which could result or have resulted in fire setting? -- " +
        //                  MWEInfo["spcn9_2"].ToString().Replace("(MW Deficit)", ""), "spcn9"));
        //              if (j == 2) MWDeficits.Text += "94. Does the client display behaviors which could result or have resulted in fire setting? -- " +
        //                  MWEInfo["spcn9_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["handus_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("1. Using Hands -- " +
        //                  MWEInfo["handus_2"].ToString().Replace("(MW Deficit)", ""), "handus"));
        //              if (j == 2) MWDeficits.Text += "1. Using Hands -- " +
        //                  MWEInfo["handus_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["walkng_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("2. Walking -- " +
        //                  MWEInfo["walkng_2"].ToString().Replace("(MW Deficit)", ""), "walkng"));
        //              if (j == 2) MWDeficits.Text += "2. Walking -- " +
        //                  MWEInfo["walkng_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["whluse_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("3. Using a Wheelchair -- " +
        //                  MWEInfo["whluse_2"].ToString().Replace("(MW Deficit)", ""), "whluse"));
        //              if (j == 2) MWDeficits.Text += "3. Using a Wheelchair -- " +
        //                  MWEInfo["whluse_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["takmed_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("4. Taking Prescription Medication -- " +
        //                  MWEInfo["takmed_2"].ToString().Replace("(MW Deficit)", ""), "takmed"));
        //              if (j == 2) MWDeficits.Text += "4. Taking Prescription Medication -- " +
        //                  MWEInfo["takmed_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["eating_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("5. Eating -- " +
        //                  MWEInfo["eating_2"].ToString().Replace("(MW Deficit)", ""), "eating"));
        //              if (j == 2) MWDeficits.Text += "5. Eating -- " +
        //                  MWEInfo["eating_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["tltng_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("6. Toileting -- " +
        //                  MWEInfo["tltng_2"].ToString().Replace("(MW Deficit)", ""), "tltng"));
        //              if (j == 2) MWDeficits.Text += "6. Toileting -- " +
        //                  MWEInfo["tltng_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["bbctrl_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("7. Bladder and Bowel Control -- " +
        //                  MWEInfo["bbctrl_2"].ToString().Replace("(MW Deficit)", ""), "bbctrl"));
        //              if (j == 2) MWDeficits.Text += "7. Bladder and Bowel Control -- " +
        //                  MWEInfo["bbctrl_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["prshyg_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("8. Personal Care -- " +
        //                  MWEInfo["prshyg_2"].ToString().Replace("(MW Deficit)", ""), "prshyg"));
        //              if (j == 2) MWDeficits.Text += "8. Personal Care -- " +
        //                  MWEInfo["prshyg_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["drssng_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("9. Dressing -- " +
        //                  MWEInfo["drssng_2"].ToString().Replace("(MW Deficit)", ""), "drssng"));
        //              if (j == 2) MWDeficits.Text += "9. Dressing -- " +
        //                  MWEInfo["drssng_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["safety_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("10. Safety Awareness -- " +
        //                  MWEInfo["safety_2"].ToString().Replace("(MW Deficit)", ""), "safety"));
        //              if (j == 2) MWDeficits.Text += "10. Safety Awareness -- " +
        //                  MWEInfo["safety_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["focus_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("11. Focusing on Tasks and Activities -- " +
        //                  MWEInfo["focus_2"].ToString().Replace("(MW Deficit)", ""), "focus"));
        //              if (j == 2) MWDeficits.Text += "11. Focusing on Tasks and Activities -- " +
        //                  MWEInfo["focus_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["verbal_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("12. Verbal Communication -- " +
        //                  MWEInfo["verbal_2"].ToString().Replace("(MW Deficit)", ""), "verbal"));
        //              if (j == 2) MWDeficits.Text += "12. Verbal Communication -- " +
        //                  MWEInfo["verbal_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["novrbl_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("13. Nonverbal Communication -- " +
        //                  MWEInfo["novrbl_2"].ToString().Replace("(MW Deficit)", ""), "safety"));
        //              if (j == 2) MWDeficits.Text += "13. Nonverbal Communication -- " +
        //                  MWEInfo["novrbl_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["social_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("14. Social Interaction -- " +
        //                  MWEInfo["social_2"].ToString().Replace("(MW Deficit)", ""), "social"));
        //              if (j == 2) MWDeficits.Text += "14. Social Interaction -- " +
        //                  MWEInfo["social_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["disbhv_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("15. Disruptive Social Behavior -- " +
        //                  MWEInfo["disbhv_2"].ToString().Replace("(MW Deficit)", ""), "disbhv"));
        //              if (j == 2) MWDeficits.Text += "15. Disruptive Social Behavior -- " +
        //                  MWEInfo["disbhv_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["aggrsn_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("16. Aggressive Social Behavior -- " +
        //                  MWEInfo["aggrsn_2"].ToString().Replace("(MW Deficit)", ""), "aggrsn"));
        //              if (j == 2) MWDeficits.Text += "16. Aggressive Social Behavior -- " +
        //                  MWEInfo["aggrsn_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["sevsi_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("17. Self-Injurious Behavior -- " +
        //                  MWEInfo["sevsi_2"].ToString().Replace("(MW Deficit)", ""), "sevsi"));
        //              if (j == 2) MWDeficits.Text += "17. Self-Injurious Behavior -- " +
        //                  MWEInfo["sevsi_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["dstrpr_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("18. Destruction of Property -- " +
        //                  MWEInfo["dstrpr_2"].ToString().Replace("(MW Deficit)", ""), "dstrpr"));
        //              if (j == 2) MWDeficits.Text += "18. Destruction of Property -- " +
        //                  MWEInfo["dstrpr_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["rnwnd_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("19. Running or Wandering Away -- " +
        //                  MWEInfo["rnwnd_2"].ToString().Replace("(MW Deficit)", ""), "rnwnd"));
        //              if (j == 2) MWDeficits.Text += "19. Running or Wandering Away -- " +
        //                  MWEInfo["rnwnd_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }

        //          if (MWEInfo["emoout_1"].ToString() == "Y")
        //          {
        //              mwc_deficits.Items.Add(new ListItem("20. Emotional Outbursts -- " +
        //                  MWEInfo["emoout_2"].ToString().Replace("(MW Deficit)", ""), "emoout"));
        //              if (j == 2) MWDeficits.Text += "20. Emotional Outbursts -- " +
        //                  MWEInfo["emoout_2"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //          }
        //      }
        //      /*
        //      string mwc_deficits_str = MweDT.Rows[0]["mwc_deficits"].ToString().TrimEnd();

        //      string[] recordstrs = mwc_deficits_str.Split('|');
        //      string[] itemstrs;
        //      for (int j = 2; j<=8; j++)
        //      {
        //        CheckBoxList mwc_deficits=(CheckBoxList)FindControl("Tab"+j.ToString().TrimEnd()+"Deficits");
        //        for (int i = 0; i < recordstrs.Length; i++)
        //        {
        //          itemstrs = recordstrs[i].Split(',');
        //          switch (itemstrs[0])
        //          {
        //            case "walkng":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow walkngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 02", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Walking -- " + walkngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "walkng," + itemstrs[1]));
        //                   if (j==2) MWDeficits.Text += "Walking -- " + walkngDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "whluse":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow whluseDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 03", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Using a Wheelchair -- " + whluseDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "whluse," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Using a Wheelchair -- " + whluseDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "takmed":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow takmedDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 04", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Taking Prescription Medication -- " + takmedDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "takmed," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Taking Prescription Medication -- " + takmedDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "eating":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow eatingDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 05", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Eating -- " + eatingDR["deficit"].ToString().Replace("(MW Deficit)", ""), 
        //                    "eating," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Eating -- " + eatingDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "tltng":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow tltngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 06", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Toileting  -- " + tltngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "tltng," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Toileting  -- " + tltngDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "bbctrl":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow bbctrlDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 07", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Bladder and Bowel Control -- " + bbctrlDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "bbctrl," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Bladder and Bowel Control -- " + bbctrlDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "prshyg":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow prshygDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 08", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Personal Care -- " + prshygDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "prshyg," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Personal Care -- " + prshygDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "drssng":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow drssngDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 09", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Dressing -- " + drssngDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "drssng," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Dressing -- " + drssngDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "safety":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow safetyDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 10", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Safety Awareness -- " + safetyDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "safety," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Safety Awareness -- " + safetyDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "disbhv":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow disbhvDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 15", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Disruptive Social Behavior -- " + disbhvDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "disbhv," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Disruptive Social Behavior -- " + disbhvDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "aggrsn":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow aggrsnDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 16", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Aggressive Social Behavior -- " + aggrsnDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "aggrsn," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Aggressive Social Behavior -- " + aggrsnDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "sevsi":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow sevsiDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 17", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Self-Injurious Behavior -- " + sevsiDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "sevsi," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Self-Injurious Behavior -- " + sevsiDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "dstrpr":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow dstrprDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 18", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Destruction of Property -- " + dstrprDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "dstrpr," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Destruction of Property -- " + dstrprDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "rnwnd":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow rnwndDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 19", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Running or Wandering Away -- " + rnwndDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "rnwnd," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Running or Wandering Away -- " + rnwndDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;
        //            case "deficit":
        //                if (itemstrs[2] == "Y")
        //                {
        //                   DataRow emooutDR = VirDBAccess.DbForm.getMWDeficits("CDER08 EVAL 20", itemstrs[1], Session["UserAct"].ToString());
        //                   mwc_deficits.Items.Add(new ListItem("Emotional Outbursts -- " + emooutDR["deficit"].ToString().Replace("(MW Deficit)", ""),
        //                    "deficit," + itemstrs[1]));
        //                   if (j == 2) MWDeficits.Text += "Emotional Outbursts -- " + emooutDR["deficit"].ToString().Replace("(MW Deficit)", "") + "\r\n";
        //                }
        //                break;

        //            //case "deficitsformwe":
        //            //    mwc_deficits.Items.Add(new ListItem("Diagnostic Information -- " + Cder08Info["DeficitsForMwe"].ToString().Replace("(MW Deficit)", ""),
        //            //        "deficitsformwe,0"));
        //            //    break;

        //           }
        //         }
        //      }
        //      */
        //    }
        //}

        private void setCheckBoxListOnClick()
        {


            //ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SetMWPlan",
            //              "<script>setMWCPlan4();</script>");
        }

        private void showsubmittedtabs()
        {
            if (Session["annual_chk_flag"] == "Y")
            {
                return;
            }

            // tab1
            if ((ViewState["Tab1Status"].ToString().TrimEnd() == "0") || (ViewState["Tab1Status"].ToString().TrimEnd() == ""))
            {
                TAB1.BgColor = "Pink";

                //TAB1.Attributes.Remove("onclick");
                TAB1.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB1.BgColor = "";
                chktab1.Enabled = false;
                chktab1.Checked = true;
                TAB1.Attributes.Add("onclick", "doseltd(this);");
            }

            // tab2
            if ((ViewState["Tab2Status"].ToString().TrimEnd() == "0") || (ViewState["Tab2Status"].ToString().TrimEnd() == ""))
            {
                TAB2.BgColor = "Pink";
                //TAB2.Attributes.Remove("onclick");
                TAB2.Attributes.Add("onclick", "doseltd(this);");
            }

            else // 1 is for submmitted, 2 is for waiting for submit, 3 fro refresh (not used here) 
            {
                TAB2.BgColor = "";
                chktab2.Enabled = false;
                chktab2.Checked = true;
                TAB2.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab2Status"].ToString().TrimEnd() == "1")
                {
                    // alway open the Submit button
                    //this.btnSubmitTab2.Enabled = false;
                    this.btnSubmitTab2.Visible = true;
                    this.btnSubmitTab2.Value = "ReConfirm";
                }
                else  // it can be 2 or 3
                {
                    this.btnSubmitTab2.Visible = true;
                    if (ViewState["Tab2Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab2.Value = "Next >>";
                }
            }

            // tab3
            if ((ViewState["Tab3Status"].ToString().TrimEnd() == "0") || (ViewState["Tab3Status"].ToString().TrimEnd() == ""))
            {
                TAB3.BgColor = "Pink";
                //TAB3.Attributes.Remove("onclick");
                TAB3.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB3.BgColor = "";
                chktab3.Enabled = false;
                chktab3.Checked = true;
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
                TAB4.BgColor = "Pink";
                //TAB4.Attributes.Remove("onclick");
                TAB4.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB4.BgColor = "";
                chktab4.Enabled = false;
                chktab4.Checked = true;
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
                TAB5.BgColor = "Pink";
                //TAB5.Attributes.Remove("onclick");
                TAB5.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB5.BgColor = "";
                chktab5.Enabled = false;
                chktab5.Checked = true;
                TAB5.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab5Status"].ToString().TrimEnd() == "1")
                {
                    //this.CheckBox6.Checked = true;
                    //this.btnSubmitTab5.Enabled = false;
                    this.btnSubmitTab5.Enabled = true;
                    this.btnSubmitTab5.Text = "ReConfirm";
                }
                else
                {
                    //this.CheckBox6.Checked = false;
                    this.btnSubmitTab5.Enabled = true;
                    if (ViewState["Tab5Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab5.Text = "Next >>";
                }
            }
            if ((ViewState["Tab6Status"].ToString().TrimEnd() == "0") || (ViewState["Tab6Status"].ToString().TrimEnd() == ""))
            {
                TAB6.BgColor = "Pink";
                //TAB6.Attributes.Remove("onclick");
                TAB6.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB6.BgColor = "";
                chktab6.Enabled = false;
                chktab6.Checked = true;
                TAB6.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab6Status"].ToString().TrimEnd() == "1")
                {
                    //this.btnSubmitTab6.Enabled = false;
                    //this.CheckBox6.Checked = true;
                    this.btnSubmitTab6.Enabled = true;
                    this.btnSubmitTab6.Text = "ReConfirm";
                }
                else
                {
                    //this.CheckBox6.Checked = false;
                    this.btnSubmitTab6.Enabled = true;
                    if (ViewState["Tab6Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab6.Text = "Next >>";
                }
            }
            if ((ViewState["Tab7Status"].ToString().TrimEnd() == "0") || (ViewState["Tab7Status"].ToString().TrimEnd() == ""))
            {
                TAB7.BgColor = "Pink";
                //TAB7.Attributes.Remove("onclick");
                TAB7.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB7.BgColor = "";
                chktab7.Enabled = false;
                chktab7.Checked = true;
                TAB7.Attributes.Add("onclick", "doseltd(this);");
                if (ViewState["Tab7Status"].ToString().TrimEnd() == "1")
                {
                    //this.CheckBox6.Checked = true;
                    //this.btnSubmitTab7.Enabled = false;
                    this.btnSubmitTab7.Enabled = true;
                    this.btnSubmitTab7.Text = "ReConfirm";
                }
                else
                {
                    //this.CheckBox6.Checked = false;
                    this.btnSubmitTab7.Enabled = true;
                    if (ViewState["Tab7Status"].ToString().TrimEnd() == "2")
                        this.btnSubmitTab7.Text = "Next >>";
                }
            }
            if ((ViewState["Tab8Status"].ToString().TrimEnd() == "0") || (ViewState["Tab8Status"].ToString().TrimEnd() == ""))
            {
                TAB8.BgColor = "Pink";
                //TAB8.Attributes.Remove("onclick");
                TAB8.Attributes.Add("onclick", "doseltd(this);");
            }
            else
            {
                TAB8.BgColor = "";
                chktab8.Enabled = false;
                chktab8.Checked = true;
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
            string tab1s = string.Empty;
            string tab2s = string.Empty;
            string tab3s = string.Empty;
            string tab4s = string.Empty;
            string tab5s = string.Empty;
            string tab6s = string.Empty;
            string tab7s = string.Empty;
            string tab8s = string.Empty;
            string tab9s = string.Empty;
            string tab10s = string.Empty;
            if (ViewState["Tab1Status"].ToString().TrimEnd() == "1")
            {
                tab1s = "is Finished";
            }
            else
            {
                tab1s = "not done";
            }

            if (ViewState["Tab2Status"].ToString().TrimEnd() == "1")
            {
                tab2s = "is Finished";
            }
            else
            {
                tab2s = "not done";
            }

            if (ViewState["Tab3Status"].ToString().TrimEnd() == "1")
            {
                tab3s = "is Finished";
            }
            else
            {
                tab3s = "not done";
            }
            if (ViewState["Tab4Status"].ToString().TrimEnd() == "1")
            {
                tab4s = "is Finished";
            }
            else
            {
                tab4s = "not done";
            }
            if (ViewState["Tab5Status"].ToString().TrimEnd() == "1")
            {
                tab5s = "is Finished";
            }
            else
            {
                tab5s = "not done";
            }
            if (ViewState["Tab6Status"].ToString().TrimEnd() == "1")
            {
                tab6s = "is Finished";
            }
            else
            {
                tab6s = "not done";
            }
            if (ViewState["Tab7Status"].ToString().TrimEnd() == "1")
            {
                tab7s = "is Finished";
            }
            else
            {
                tab7s = "not done";
            }
            if (ViewState["Tab8Status"].ToString().TrimEnd() == "1")
            {
                tab8s = "is Finished";
            }
            else
            {
                tab8s = "not done";
            }



            strLogs += "-------- Logs for Header --------\r\n" + tab1s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Health Status --------\r\n" + tab2s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Well Being & Safety -----\r\n" + tab3s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Financial -----\r\n" + tab4s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Purchase of Services -----\r\n" + tab5s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Work/Education -----\r\n" + tab6s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Outcomes Narative ------\r\n" + tab7s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Comments ------\r\n" + tab8s.ToString().TrimEnd() +
            "\r\n\r\n";
            //strLogs += FormIPPInfo["Tab9Logs"].ToString().TrimEnd() +
            //    "\r\n\r\n";
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

                    ipp_signature_msg.Attributes.Remove("readonly");
                    //ipp_signature_msg.CssClass = "inface";

                    //setOneControlEnable(Tab2Comments);
                    //setOneControlEnable(Tab3Comments);
                    //setOneControlEnable(Tab4Comments);
                    //setOneControlEnable(Tab5Comments);

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

                    ipp_signature_msg.Attributes.Add("readonly", "true");

                    //setOneControlReadOnly(Tab2Comments);
                    //setOneControlReadOnly(Tab3Comments);
                    //setOneControlReadOnly(Tab4Comments);
                    //setOneControlReadOnly(Tab5Comments);


                }
                if (((Session["UserFullName"].ToString().TrimEnd() == FormIPPInfo["enteredby"].ToString().TrimEnd()) ||
                     (Session["UserID"].ToString().TrimEnd() == FormIPPInfo["enteredby_id"].ToString().TrimEnd()) ||
                    // (Session["UserID"].ToString().TrimEnd() == cm_id.SelectedValue)) && 
                     (Session["UserID"].ToString().TrimEnd() == this.consumer_cm_id.Value)) &&
                    (FormIPPInfo["ipp_verify"].ToString().TrimEnd() == ""))
                    btnVerify.Disabled = false;
                // else
                // btnVerify.Disabled = true;
            }
            else
            {
                string sTabS = "";

                if (ViewState["Tab2Status"].ToString().TrimEnd() != "1")
                    sTabS += "Header";
                if (ViewState["Tab3Status"].ToString().TrimEnd() != "1")
                    sTabS += "Health & Status  ";
                if (ViewState["Tab4Status"].ToString().TrimEnd() != "1")
                    sTabS += "Well Being & Safety  ";
                if (ViewState["Tab5Status"].ToString().TrimEnd() != "1")
                    sTabS += "Financial  ";
                if (ViewState["Tab6Status"].ToString().TrimEnd() != "1")
                    sTabS += "Purchase of Service  ";
                if (ViewState["Tab7Status"].ToString().TrimEnd() != "1")
                    sTabS += "Work/Education  ";
                if (ViewState["Tab8Status"].ToString().TrimEnd() != "1")
                    sTabS += "Outcomes Narative  ";
                /*   if (FormIPPInfo["Tab9Status"].ToString().TrimEnd() != "1")
                       sTabS += "Comments  ";
                   if (FormIPPInfo["Tab10Status"].ToString().TrimEnd() != "1")
                       sTabS += "Signature  ";

                   if (FormIPPInfo["Tab11Status"].ToString().TrimEnd() != "1")
                       sTabS += "Profile  ";
                   if (FormIPPInfo["Tab12Status"].ToString().TrimEnd() != "1")
                       sTabS += "CDER  ";
                   if (FormIPPInfo["Tab13Status"].ToString().TrimEnd() != "1")
                       sTabS += "Medical  ";*/
                Statuses.Text = "TABs have NOT been confirmed: " + sTabS;
                approved_no.Enabled = false;
                approved_yes.Enabled = false;
                btnVerify.Disabled = true;
                btnSign.Disabled = true;
                sign_comments.Attributes.Add("readonly", "false");
                sign_comments.CssClass = "infaceText";

                ipp_signature_msg.Attributes.Add("readonly", "false");

                //setOneControlReadOnly(Tab2Comments);
                //setOneControlReadOnly(Tab3Comments);
                //setOneControlReadOnly(Tab4Comments);
                //setOneControlReadOnly(Tab5Comments);

            }
        }

        private void ShowLogs()
        {
            string strLogs = "";
            string tab1s = string.Empty;
            string tab2s = string.Empty;
            string tab3s = string.Empty;
            string tab4s = string.Empty;
            string tab5s = string.Empty;
            string tab6s = string.Empty;
            string tab7s = string.Empty;
            string tab8s = string.Empty;
            string tab9s = string.Empty;
            string tab10s = string.Empty;
            if (ViewState["Tab1Status"].ToString().TrimEnd() == "1")
            {
                tab1s = "is Finished";
            }
            else
            {
                tab1s = "not done";
            }

            if (ViewState["Tab2Status"].ToString().TrimEnd() == "1")
            {
                tab2s = "is Finished";
            }
            else
            {
                tab2s = "not done";
            }

            if (ViewState["Tab3Status"].ToString().TrimEnd() == "1")
            {
                tab3s = "is Finished";
            }
            else
            {
                tab3s = "not done";
            }
            if (ViewState["Tab4Status"].ToString().TrimEnd() == "1")
            {
                tab4s = "is Finished";
            }
            else
            {
                tab4s = "not done";
            }
            if (ViewState["Tab5Status"].ToString().TrimEnd() == "1")
            {
                tab5s = "is Finished";
            }
            else
            {
                tab5s = "not done";
            }
            if (ViewState["Tab6Status"].ToString().TrimEnd() == "1")
            {
                tab6s = "is Finished";
            }
            else
            {
                tab6s = "not done";
            }
            if (ViewState["Tab7Status"].ToString().TrimEnd() == "1")
            {
                tab7s = "is Finished";
            }
            else
            {
                tab7s = "not done";
            }
            if (ViewState["Tab8Status"].ToString().TrimEnd() == "1")
            {
                tab8s = "is Finished";
            }
            else
            {
                tab8s = "not done";
            }



            strLogs += "-------- Logs for Header --------\r\n" + tab1s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Health Status --------\r\n" + tab2s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Well Being & Safety -----\r\n" + tab3s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Financial -----\r\n" + tab4s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Purchase of Services -----\r\n" + tab5s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Work/Education -----\r\n" + tab6s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Outcomes Narative ------\r\n" + tab7s.ToString().TrimEnd() +
                "\r\n\r\n";
            strLogs += "-------- Logs for Comments ------\r\n" + tab8s.ToString().TrimEnd() +
            "\r\n\r\n";
            //strLogs += FormIPPInfo["Tab9Logs"].ToString().TrimEnd() +
            //    "\r\n\r\n";
            Logs.Text = strLogs;

        }

        private void setConsumerInfo(DataRow ConsumerInfo)
        {
            // tab2
            if (dentistval.Trim() == "")
                hea_dentist.Text = "None.";
            else
                hea_dentist.Text = dentistval;

            if (doctor_val.Trim() == "")
                hea_pri_phy.Text = "None";
            else
                hea_pri_phy.Text = doctor_val;

            if (optoval.Trim() == "")
                hea_opto.Text = "None.";
            else
                hea_opto.Text = optoval;

            if (psyval.Trim() == "")
                hea_psychiatrist.Text = "None.";
            else
                hea_psychiatrist.Text = psyval;

            if (psy_con_val.Trim() == "")
                hea_psy_con.Text = "None.";
            else
                hea_psy_con.Text = psy_con_val;

            // tab 7
            if (MedicalWaiverDeficitVal.Trim() == "")
                MedicalWaiverDeficit.Text = "No waiver plan for this outcome.";
            else
                MedicalWaiverDeficit.Text = MedicalWaiverDeficitVal;

            if (outStrVal.Trim() == "")
                out_liv_arr.Text = "None.";
            else
                out_liv_arr.Text = outStrVal;

            if (outPlanVal2.Trim() == "")
                out_ski_dem.Text = "None.";
            else
                out_ski_dem.Text = outPlanVal2;

            if (outPlanVal3.Trim() == "")
                out_ch_beh.Text = "None.";
            else
                out_ch_beh.Text = outPlanVal3;

            if (outPlanVal4.Trim() == "")
                out_sch_wor.Text = "None.";
            else
                out_sch_wor.Text = outPlanVal4;

            if (outPlanVal5.Trim() == "")
                out_com_soc.Text = "None.";
            else
                out_com_soc.Text = outPlanVal5;

            if (outPlanVal6.Trim() == "")
                out_hea_saf.Text = "None.";
            else
                out_hea_saf.Text = outPlanVal6;

            if (outPlanVal7.Trim() == "")
                out_leg.Text = "None.";
            else
                out_leg.Text = outPlanVal7;

            if (outPlanVal8.Trim() == "")
                out_plan_mewa.Text = "No waiver plan for this outcome.";
            else
                out_plan_mewa.Text = outPlanVal8;


            ClientName.Text = ConsumerInfo["ConsumerName"].ToString();
            UCI.Text = ConsumerInfo["c_uci"].ToString();
            if ((ConsumerInfo["c_dob"] != System.DBNull.Value)
                && (ConsumerInfo["c_dob"].ToString().Trim(null) != ""))
            {
                ClientDOB.Text = ((DateTime)ConsumerInfo["c_dob"]).ToString("MM/dd/yyyy");
            }
            //ClientLang.SelectedValue = ConsumerInfo["c_language"].ToString();


            //ClientLangPref.SelectedValue = ConsumerInfo["c_preferred_language"].ToString();
            //ClientLangDocu.SelectedValue = ConsumerInfo["c_document_language"].ToString();
            //MedicaidWaiver.SelectedValue = ConsumerInfo["c_medicaid_waiver"].ToString();

            // TONY annual tab1 header
            header_address1.Text = ConsumerInfo["c_address_line_2"].ToString();
            //header_address2.Text = ConsumerInfo["c_address_line_2"].ToString();
            header_city.Text = ConsumerInfo["c_address_city"].ToString() + " " + ConsumerInfo["c_address_state"].ToString();
            header_phone.Text = ConsumerInfo["c_phone_1"].ToString();
            header_cell.Text = ConsumerInfo["c_phone_2"].ToString();
            header_zip.Text = ConsumerInfo["c_address_zip"].ToString();
            header_sc_nm.Text = ConsumerInfo["c_cm_name"].ToString();
            header_ethnicity.Text = ConsumerInfo["EthnicityName"].ToString();
            header_dia.Text = ConsumerInfo["c_diagnoses"].ToString();

            // annual tab4 financial
            fin_ssn.Text = ConsumerInfo["c_ssn"].ToString();
            fin_medi_num.Text = ConsumerInfo["c_medicare_number"].ToString();
            fin_medi_cal_num.Text = ConsumerInfo["c_medicaid_number"].ToString();

            fin_ihss_ttl_hr.Text = ConsumerInfo["c_ihss_hrs"].ToString();

            DataRow MediTypeDT = VirDBAccess.DbCommon.getTablesInfo(ConsumerInfo["c_medical_type"].ToString(), "Medi-Cal Type", Session["UserAct"].ToString());
            if (MediTypeDT != null)
            {
                fin_medi_cal_type.Text = MediTypeDT["tb_entry_text"].ToString().TrimEnd();
            }
         
            //fin_medi_cal_type

        }

        private void setFinancialInfo(DataRow FinancialInfo)
        {
            if (FinancialInfo == null) return;
            //fin_medi_cal_type.Text = FinancialInfo["medical_provider"].ToString();

            if (FinancialInfo["primary_med"].ToString().TrimEnd() == "Y")
                fin_pri_ins.Text = "Medi-Cal";
            if (FinancialInfo["primary_medicare"].ToString().TrimEnd() == "Y")
                fin_pri_ins.Text = "MediCare";
            if (FinancialInfo["secondary_med"].ToString().TrimEnd() == "Y")
                fin_sec_ins.Text = "Medi-Cal";
            if (FinancialInfo["secondary_medicare"].ToString().TrimEnd() == "Y")
                fin_sec_ins.Text = "MediCare";

            fin_prot_hr.Text = FinancialInfo["spec_surpervision_hrs"].ToString();
        }

        private void setMedicalInfo(DataRow MedicalInfo)
        {
            if (MedicalInfo == null) return;
            hea_pri_phy.Text = MedicalInfo["s_name_last"].ToString() + " " + MedicalInfo["s_name_first"].ToString();
            hea_address.Text = MedicalInfo["s_address_line_1"].ToString() + " " + MedicalInfo["s_address_city"].ToString() + " " + MedicalInfo["s_address_state"].ToString() + " " + MedicalInfo["s_address_zip"].ToString();
            hea_tel.Text = MedicalInfo["s_phone_1"].ToString();
            hea_fax.Text = MedicalInfo["s_phone_2"].ToString();

        }

        private void BindDropDownLists()
        {
            DataTable LanguageDT = VirDBAccess.DbCommon.getTablesList("LANG", Session["UserAct"].ToString());
            //ClientLangPref.DataSource = LanguageDT;
            //ClientLangPref.DataBind();
            //ClientLangDocu.DataSource = LanguageDT;
            //ClientLangDocu.DataBind();

            DataTable UserListDT;
            UserListDT = VirDBAccess.DbUser.getUsersList(Session["UserAct"].ToString());
            ipp_signature_msg.DataSource = UserListDT;
            ipp_signature_msg.DataBind();
            ipp_signature_msg.Items.Insert(0, new ListItem("", ""));            
        }

        string outStrVal;
        string outPlanVal2;
        string outPlanVal3;
        string outPlanVal4;
        string outPlanVal5;
        string outPlanVal6;
        string outPlanVal7;
        string MedicalWaiverDeficitVal;
        string outPlanVal8;

        string dentistval, optoval, psyval, psy_con_val, doctor_val;
    
        private void showdata(DataRow FormIPPInfo)
        {
            // tab1 header

            //setTextBox(FormIPPInfo, "ClientName");
            //setTextBox(FormIPPInfo, "UCI");
            //setTextBox(FormIPPInfo, "ClientDOB");
            //setTextBox(FormIPPInfo, "header_address1");
            //setTextBox(FormIPPInfo, "header_address2");
            //setTextBox(FormIPPInfo, "header_phone");
            //setTextBox(FormIPPInfo, "header_city");
            //setTextBox(FormIPPInfo, "header_cell");
            //setTextBox(FormIPPInfo, "header_zip");
            //setTextBox(FormIPPInfo, "header_email");
            //setTextBox(FormIPPInfo, "header_sc_nm");
            setTextBox(FormIPPInfo, "header_location");
            setTextBox(FormIPPInfo, "header_ipp_dt");
            setTextBox(FormIPPInfo, "header_qt_dt");
            setTextBox(FormIPPInfo, "header_annual_dt");
            setTextBox(FormIPPInfo, "header_face");
            setTextBox(FormIPPInfo, "header_comment");
            setTextBox(FormIPPInfo, "header_ethnicity");
            setTextBox(FormIPPInfo, "header_leg");
            setTextBox(FormIPPInfo, "header_dia");
            setTextBox(FormIPPInfo, "header_live");
            setTextBox(FormIPPInfo, "header_desc_consumer");
            setTextBox(FormIPPInfo, "header_situ");
            setTextBox(FormIPPInfo, "header_address");
            setTextBox(FormIPPInfo, "header_ext");
            
            // tab2 health

            dentistval = FormIPPInfo["hea_dentist"].ToString();
            optoval = FormIPPInfo["hea_opto"].ToString();
            psyval = FormIPPInfo["hea_psychiatrist"].ToString();
            psy_con_val = FormIPPInfo["hea_psy_con"].ToString();
            doctor_val = FormIPPInfo["hea_pri_phy"].ToString();

            setTextBox(FormIPPInfo, "hea_pri_phy");
            setTextBox(FormIPPInfo, "hea_address");
            setTextBox(FormIPPInfo, "hea_lst_dt");
            setTextBox(FormIPPInfo, "hea_tel");
            setTextBox(FormIPPInfo, "hea_fax");
            setTextBox(FormIPPInfo, "hea_ho_em_visit");
            setTextBox(FormIPPInfo, "hea_cur_hea_iss");
            setTextBox(FormIPPInfo, "hea_pre_hea");
            setTextBox(FormIPPInfo, "hea_lst_rap");
            setTextBox(FormIPPInfo, "hea_gyn");
            setTextBox(FormIPPInfo, "hea_lst_mam");
            setTextBox(FormIPPInfo, "hea_lst_men");
            setTextBox(FormIPPInfo, "hea_geg_men");
            setTextBox(FormIPPInfo, "hea_bir_con");
            setTextBox(FormIPPInfo, "hea_bir_con_type");
            setTextBox(FormIPPInfo, "hea_lst_pro_exm");
            setTextBox(FormIPPInfo, "hea_flu");
            setTextBox(FormIPPInfo, "hea_col");
            setTextBox(FormIPPInfo, "hea_pne");
            setTextBox(FormIPPInfo, "hea_nur_sta");
            setTextBox(FormIPPInfo, "hea_spe");
            setTextBox(FormIPPInfo, "hea_add_sp");
            setTextBox(FormIPPInfo, "hea_dentist");
            setTextBox(FormIPPInfo, "hea_dentist_health");
            setTextBox(FormIPPInfo, "hea_audio");
            setTextBox(FormIPPInfo, "hea_cur_hear");
            setTextBox(FormIPPInfo, "hea_opto");
            setTextBox(FormIPPInfo, "hea_cur_vision");
            setTextBox(FormIPPInfo, "hea_neur");
            setTextBox(FormIPPInfo, "hea_curr_neur");
            setTextBox(FormIPPInfo, "hea_psy_con");
            setTextBox(FormIPPInfo, "hea_cur_issue");
            setTextBox(FormIPPInfo, "hea_psychiatrist");
            setTextBox(FormIPPInfo, "hea_cur_mental");
            setTextBox(FormIPPInfo, "hea_other_doc");
            setTextBox(FormIPPInfo, "hea_cur_other_doc");
            setTextBox(FormIPPInfo, "hea_cur_medi");
            setTextBox(FormIPPInfo, "last_hea_dentist");
            setTextBox(FormIPPInfo, "last_hea_audio");
            setTextBox(FormIPPInfo, "last_hea_opto");
            setTextBox(FormIPPInfo, "last_hea_neur");
            setTextBox(FormIPPInfo, "last_hea_psy_con");
            setTextBox(FormIPPInfo, "last_hea_psychiatrist");

            // tab3
            setTextBox(FormIPPInfo, "well_sense");
            setTextBox(FormIPPInfo, "well_freedom");
            setTextBox(FormIPPInfo, "well_safe");
            setTextBox(FormIPPInfo, "well_consumer");
            setTextBox(FormIPPInfo, "well_vote");
            setTextBox(FormIPPInfo, "well_nvra");
            // tab4 financial
            setTextBox(FormIPPInfo, "fin_ssn");
            setTextBox(FormIPPInfo, "fin_medi_num");
            setTextBox(FormIPPInfo, "fin_medi_cal_num");
            setTextBox(FormIPPInfo, "fin_medi_cal_type");
            setTextBox(FormIPPInfo, "fin_ssi_amt");
            setTextBox(FormIPPInfo, "fin_ssi_pay");
            setTextBox(FormIPPInfo, "fin_ssa_amt");
            setTextBox(FormIPPInfo, "fin_ssa_pay");
            setTextBox(FormIPPInfo, "fin_pri_ins");
            setTextBox(FormIPPInfo, "fin_sec_ins");
            setTextBox(FormIPPInfo, "fin_ihss_ttl_hr");
            setTextBox(FormIPPInfo, "fin_prot_hr");
            setTextBox(FormIPPInfo, "fin_ccs");
            setTextBox(FormIPPInfo, "fin_fcpp_dt");
            setTextBox(FormIPPInfo, "fin_share");
            setTextBox(FormIPPInfo, "fin_meet1");
            setTextBox(FormIPPInfo, "fin_afpf_dt");
            setTextBox(FormIPPInfo, "fin_fee_amt");
            setTextBox(FormIPPInfo, "fin_meet2");

            // this is for tab7, we are checking if there is any data in this "outcome" before setting it to "none" or "No waiver plan for this outcome."
            MedicalWaiverDeficitVal = FormIPPInfo["MedicalWaiverDeficit"].ToString();
            outStrVal = FormIPPInfo["out_liv_arr"].ToString();
            outPlanVal2 = FormIPPInfo["out_ski_dem"].ToString();
            outPlanVal3 = FormIPPInfo["out_ch_beh"].ToString();
            outPlanVal4 = FormIPPInfo["out_sch_wor"].ToString();
            outPlanVal5 = FormIPPInfo["out_com_soc"].ToString();
            outPlanVal6 = FormIPPInfo["out_hea_saf"].ToString();
            outPlanVal7 = FormIPPInfo["out_leg"].ToString();
            outPlanVal8 = FormIPPInfo["out_plan_mewa"].ToString();
            
            // tab7 Outcomes Narative
            setTextBox(FormIPPInfo, "MedicalWaiverDeficit");
            setTextBox(FormIPPInfo, "out_liv_arr");
            setTextBox(FormIPPInfo, "out_plan_mewa");
            setTextBox(FormIPPInfo, "out_li_comm");
            setTextBox(FormIPPInfo, "out_ski_dem");
            setTextBox(FormIPPInfo, "out_plan_mewa2");
            setTextBox(FormIPPInfo, "out_li_comm2");
            setTextBox(FormIPPInfo, "out_ch_beh");
            setTextBox(FormIPPInfo, "out_plan_mewa3");
            setTextBox(FormIPPInfo, "out_li_comm3");
            setTextBox(FormIPPInfo, "out_sch_wor");
            setTextBox(FormIPPInfo, "out_plan_mewa4");
            setTextBox(FormIPPInfo, "out_li_comm4");
            setTextBox(FormIPPInfo, "out_com_soc");
            setTextBox(FormIPPInfo, "out_plan_mewa5");
            setTextBox(FormIPPInfo, "out_li_comm5");
            setTextBox(FormIPPInfo, "out_hea_saf");
            setTextBox(FormIPPInfo, "out_plan_mewa6");
            setTextBox(FormIPPInfo, "out_li_comm6");
            setTextBox(FormIPPInfo, "out_leg");
            setTextBox(FormIPPInfo, "out_plan_mewa7");
            setTextBox(FormIPPInfo, "out_li_comm7");


            setCheckBox(FormIPPInfo, "out_cb1");
            setCheckBox(FormIPPInfo, "out_cb2");
            setCheckBox(FormIPPInfo, "out_cb3");
            setCheckBox(FormIPPInfo, "out_cb4");
            setCheckBox(FormIPPInfo, "out_cb5");
            setCheckBox(FormIPPInfo, "out_cb6");
            setCheckBox(FormIPPInfo, "out_cb7");

            // tab 8 commtns 
            setTextBox(FormIPPInfo, "SelfDeterminationProgram");
            




            // OLD IPP tabs
            setTextBox(FormIPPInfo, "ReviewDate");
            setRadioBox(FormIPPInfo, "ReviewPurpose");
            //setDropDownList(FormIPPInfo, "MedicaidWaiver");
            //setDropDownList(FormIPPInfo, "ClientLangPref");
            //setDropDownList(FormIPPInfo, "ClientLangDocu");     
            /*setTextBox(FormIPPInfo, "MWDeficits");
            setTextBox(FormIPPInfo, "Participants");
            setTextBox(FormIPPInfo, "Tab2Comments");
            setTextBox(FormIPPInfo, "Tab3Comments");
            setTextBox(FormIPPInfo, "Tab4Comments");
            setTextBox(FormIPPInfo, "Tab5Comments");
            setTextBox(FormIPPInfo, "Tab6Comments");
            setTextBox(FormIPPInfo, "Tab7Comments");
            setTextBox(FormIPPInfo, "Tab8Comments");*/

            //string mwc_deficits_str = "";
            //string[] recordstrs;
            //string[] itemstrs;

            //for (int j = 2; j <= 8; j++)
            //{
            //}

            //setRadioBox(FormIPPInfo, "approved");
            if (FormIPPInfo["approved"].ToString().TrimEnd() == "Y")
                approved_yes.Checked = true;
            else if (FormIPPInfo["approved"].ToString().TrimEnd() == "N")
                approved_no.Checked = true;

            setLabel(FormIPPInfo, "ipp_verify");
            setLabel(FormIPPInfo, "ipp_verify_date");
            setLabel(FormIPPInfo, "ipp_signature");
            setLabel(FormIPPInfo, "ipp_signature_date");

            setTextBox(FormIPPInfo, "sign_comments");
            //setDropDownList(FormIPPInfo, "sign_msg_to");

            // msg to 
            foreach (ListItem li in ipp_signature_msg.Items)
            {
                if (li.Value.TrimEnd() == FormIPPInfo["sign_msg_to"].ToString().TrimEnd())
                    li.Selected = true;
                else
                    li.Selected = false;
            }
        }

        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            //this.dg_plan_tab2.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab2_ItemDataBound);
            //this.dg_plan_tab3.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab3_ItemDataBound);
            //this.dg_plan_tab4.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab4_ItemDataBound);
            //this.dg_plan_tab5.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab5_ItemDataBound);
            // this.dg_plan_tab7.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab7_ItemDataBound);
            //this.dg_plan_tab8.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_plan_tab8_ItemDataBound);
        }

        private void getdata(DataRow FormIPPInfo)
        {


            // tab1 header
            getTextBox(FormIPPInfo, "ClientName", 0);
            getTextBox(FormIPPInfo, "UCI", 0);
            getTextBox(FormIPPInfo, "ClientDOB", 2);
            getTextBox(FormIPPInfo, "ReviewDate", 2);
            getTextBox(FormIPPInfo, "header_address1", 0);
            getTextBox(FormIPPInfo, "header_address2", 0);
            getTextBox(FormIPPInfo, "header_phone", 0);
            getTextBox(FormIPPInfo, "header_city", 0);
            getTextBox(FormIPPInfo, "header_cell", 0);
            getTextBox(FormIPPInfo, "header_zip", 0);
            getTextBox(FormIPPInfo, "header_email", 0);
            getTextBox(FormIPPInfo, "header_sc_nm", 0);
            getTextBox(FormIPPInfo, "header_location", 0);
            getTextBox(FormIPPInfo, "header_ipp_dt", 2);
            getTextBox(FormIPPInfo, "header_qt_dt", 2);
            getTextBox(FormIPPInfo, "header_annual_dt", 2);
            getTextBox(FormIPPInfo, "header_face", 0);
            getTextBox(FormIPPInfo, "header_comment", 0);
            getTextBox(FormIPPInfo, "header_ethnicity", 0);
            getTextBox(FormIPPInfo, "header_leg", 0);
            getTextBox(FormIPPInfo, "header_dia", 0);
            getTextBox(FormIPPInfo, "header_live", 0);
            getTextBox(FormIPPInfo, "header_desc_consumer", 0);
            getTextBox(FormIPPInfo, "header_situ", 0);
            getTextBox(FormIPPInfo, "header_address", 0);
            getTextBox(FormIPPInfo, "header_ext", 0);

            // tab2 health

            getTextBox(FormIPPInfo, "hea_pri_phy", 0);
            getTextBox(FormIPPInfo, "hea_address", 0);
            getTextBox(FormIPPInfo, "hea_lst_dt", 2);
            getTextBox(FormIPPInfo, "hea_tel", 0);
            getTextBox(FormIPPInfo, "hea_fax", 0);
            getTextBox(FormIPPInfo, "hea_ho_em_visit", 0);
            getTextBox(FormIPPInfo, "hea_cur_hea_iss", 0);
            getTextBox(FormIPPInfo, "hea_pre_hea", 0);
            getTextBox(FormIPPInfo, "hea_lst_rap", 0);
            getTextBox(FormIPPInfo, "hea_gyn", 0);
            getTextBox(FormIPPInfo, "hea_lst_mam", 0);
            getTextBox(FormIPPInfo, "hea_lst_men", 0);
            getTextBox(FormIPPInfo, "hea_geg_men", 0);
            getTextBox(FormIPPInfo, "hea_bir_con", 0);
            getTextBox(FormIPPInfo, "hea_bir_con_type", 0);
            getTextBox(FormIPPInfo, "hea_lst_pro_exm", 0);
            getTextBox(FormIPPInfo, "hea_flu", 0);
            getTextBox(FormIPPInfo, "hea_col", 0);
            getTextBox(FormIPPInfo, "hea_pne", 0);
            getTextBox(FormIPPInfo, "hea_nur_sta", 0);
            getTextBox(FormIPPInfo, "hea_spe", 0);
            getTextBox(FormIPPInfo, "hea_add_sp", 0);
            getTextBox(FormIPPInfo, "hea_dentist", 0);
            getTextBox(FormIPPInfo, "hea_dentist_health", 0);
            getTextBox(FormIPPInfo, "hea_audio", 0);
            getTextBox(FormIPPInfo, "hea_cur_hear", 0);
            getTextBox(FormIPPInfo, "hea_opto", 0);
            getTextBox(FormIPPInfo, "hea_cur_vision", 0);
            getTextBox(FormIPPInfo, "hea_neur", 0);
            getTextBox(FormIPPInfo, "hea_curr_neur", 0);
            getTextBox(FormIPPInfo, "hea_psy_con", 0);
            getTextBox(FormIPPInfo, "hea_cur_issue", 0);
            getTextBox(FormIPPInfo, "hea_psychiatrist", 0);
            getTextBox(FormIPPInfo, "hea_cur_mental", 0);
            getTextBox(FormIPPInfo, "hea_other_doc", 0);
            getTextBox(FormIPPInfo, "hea_cur_other_doc", 0);
            getTextBox(FormIPPInfo, "hea_cur_medi", 0);
            getTextBox(FormIPPInfo, "last_hea_dentist", 2);
            getTextBox(FormIPPInfo, "last_hea_audio", 2);
            getTextBox(FormIPPInfo, "last_hea_opto", 2);
            getTextBox(FormIPPInfo, "last_hea_neur", 2);
            getTextBox(FormIPPInfo, "last_hea_psy_con", 2);
            getTextBox(FormIPPInfo, "last_hea_psychiatrist", 2);

            //tab3

            getTextBox(FormIPPInfo, "well_sense", 0);
            getTextBox(FormIPPInfo, "well_freedom", 0);
            getTextBox(FormIPPInfo, "well_safe", 0);
            getTextBox(FormIPPInfo, "well_consumer", 0);
            getTextBox(FormIPPInfo, "well_vote", 0);
            getTextBox(FormIPPInfo, "well_nvra", 0);

            //tab4 
            getTextBox(FormIPPInfo, "fin_ssn", 0);
            getTextBox(FormIPPInfo, "fin_medi_num", 0);
            getTextBox(FormIPPInfo, "fin_medi_cal_num", 0);
            getTextBox(FormIPPInfo, "fin_medi_cal_type", 0);
            getTextBox(FormIPPInfo, "fin_ssi_amt", 1);
            getTextBox(FormIPPInfo, "fin_ssi_pay", 0);
            getTextBox(FormIPPInfo, "fin_ssa_amt", 1);
            getTextBox(FormIPPInfo, "fin_ssa_pay", 0);
            getTextBox(FormIPPInfo, "fin_pri_ins", 0);
            getTextBox(FormIPPInfo, "fin_sec_ins", 0);
            getTextBox(FormIPPInfo, "fin_ihss_ttl_hr", 1);
            getTextBox(FormIPPInfo, "fin_prot_hr", 1);
            getTextBox(FormIPPInfo, "fin_ccs", 0);
            getTextBox(FormIPPInfo, "fin_fcpp_dt", 2);
            getTextBox(FormIPPInfo, "fin_share", 0);
            getTextBox(FormIPPInfo, "fin_meet1", 0);
            getTextBox(FormIPPInfo, "fin_afpf_dt", 2);
            getTextBox(FormIPPInfo, "fin_fee_amt", 1);
            getTextBox(FormIPPInfo, "fin_meet2", 0);


            // tab5 getdata
            getTextBox(FormIPPInfo, "MedicalWaiverDeficit", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab2$ctl02$LivingArrangements", 0);
            getTextBox(FormIPPInfo, "LivingPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "LivingComments", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab3$ctl02$Skills", 0);
            getTextBox(FormIPPInfo, "SkillsPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "SkillsComments", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab4$ctl02$Challenging", 0);
            getTextBox(FormIPPInfo, "ChallengingPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "ChallengingComments", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab5$ctl02$School", 0);
            getTextBox(FormIPPInfo, "SchoolPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "SchoolComments", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab6$ctl02$Community", 0);
            getTextBox(FormIPPInfo, "CommunityPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "CommunityComments", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab7$ctl02$HealthSafety", 0);
            getTextBox(FormIPPInfo, "HealthSafetyPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "HealthSafetyComments", 0);
            getTextBox(FormIPPInfo, "dg_plan_tab8$ctl02$Legal", 0);
            getTextBox(FormIPPInfo, "LegalPlanForWaiver", 0);
            getTextBox(FormIPPInfo, "LegalComments", 0);


            //tab6 getdata
            getTextBox(FormIPPInfo, "dg_employment$ctl02$SchoolName", 0);
            getTextBox(FormIPPInfo, "dg_employment$ctl02$SchoolAddressPhone", 0);

            // tab7 outcome narative
            getTextBox(FormIPPInfo, "MedicalWaiverDeficit", 0);
            getTextBox(FormIPPInfo, "out_liv_arr", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa", 0);
            getTextBox(FormIPPInfo, "out_li_comm", 0);
            getTextBox(FormIPPInfo, "out_ski_dem", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa2", 0);
            getTextBox(FormIPPInfo, "out_li_comm2", 0);
            getTextBox(FormIPPInfo, "out_ch_beh", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa3", 0);
            getTextBox(FormIPPInfo, "out_li_comm3", 0);
            getTextBox(FormIPPInfo, "out_sch_wor", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa4", 0);
            getTextBox(FormIPPInfo, "out_li_comm4", 0);
            getTextBox(FormIPPInfo, "out_com_soc", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa5", 0);
            getTextBox(FormIPPInfo, "out_li_comm5", 0);
            getTextBox(FormIPPInfo, "out_hea_saf", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa6", 0);
            getTextBox(FormIPPInfo, "out_li_comm6", 0);
            getTextBox(FormIPPInfo, "out_leg", 0);
            getTextBox(FormIPPInfo, "out_plan_mewa7", 0);
            getTextBox(FormIPPInfo, "out_li_comm7", 0);

            getCheckBox(FormIPPInfo, "out_cb1", 0);
            getCheckBox(FormIPPInfo, "out_cb2", 0);
            getCheckBox(FormIPPInfo, "out_cb3", 0);
            getCheckBox(FormIPPInfo, "out_cb4", 0);
            getCheckBox(FormIPPInfo, "out_cb5", 0);
            getCheckBox(FormIPPInfo, "out_cb6", 0);
            getCheckBox(FormIPPInfo, "out_cb7", 0);




            //tab 8 getdata
            getTextBox(FormIPPInfo, "SelfDeterminationProgram", 0);
            //getTextBox(FormIPPInfo, "c_address_line_1", 0);
            //getTextBox(FormIPPInfo, "c_address_line_2", 0);
            //getTextBox(FormIPPInfo, "c_address_city", 0);
            //getTextBox(FormIPPInfo, "c_phone_1", 0);
            //getTextBox(FormIPPInfo, "c_phone_2", 0);
            //getTextBox(FormIPPInfo, "c_address_zip", 0);
            //getTextBox(FormIPPInfo, "header_email", 0);
            //getTextBox(FormIPPInfo, "header_sc_nm", 0);
            //getTextBox(FormIPPInfo, "header_location", 0);
            //getTextBox(FormIPPInfo, "header_ipp_dt", 2);
            //getTextBox(FormIPPInfo, "header_qt_dt", 2);
            //getTextBox(FormIPPInfo, "header_annual_dt", 2);
            //getTextBox(FormIPPInfo, "header_face", 0);
            //getTextBox(FormIPPInfo, "header_comment", 0);
            //getTextBox(FormIPPInfo, "header_ethnicity", 0);
            //getTextBox(FormIPPInfo, "header_leg", 0);
            //getTextBox(FormIPPInfo, "header_dia", 0);
            //getTextBox(FormIPPInfo, "header_live", 0);
            //getTextBox(FormIPPInfo, "header_desc_consumer", 0);
            //getTextBox(FormIPPInfo, "header_situ", 0);
            //getTextBox(FormIPPInfo, "header_address", 0);
            //getTextBox(FormIPPInfo, "header_ext", 0);

            // tab2 well being 



            // old ipp tabs
            //getSPRadioBox(FormIPPInfo, "ReviewPurpose", 3);
            //getDropDownList(FormIPPInfo, "MedicaidWaiver", 0);
            //getDropDownList(FormIPPInfo, "ClientLangPref", 0);
            //getDropDownList(FormIPPInfo, "ClientLangDocu", 0);     
            //getTextBox(FormIPPInfo, "MWDeficits", 0);
            /*getTextBox(FormIPPInfo, "Participants", 0);
            getTextBox(FormIPPInfo, "Tab2Comments", 0);
            getTextBox(FormIPPInfo, "Tab3Comments", 0);
            getTextBox(FormIPPInfo, "Tab4Comments", 0);
            getTextBox(FormIPPInfo, "Tab5Comments", 0);
            getTextBox(FormIPPInfo, "Tab6Comments", 0);
            getTextBox(FormIPPInfo, "Tab7Comments", 0);
            getTextBox(FormIPPInfo, "Tab8Comments", 0);*/


        }

        private void SaveData(bool popupMsg)
        {
            string enterKey_tmp = string.Empty;
            //Session["annual_chk_flag"] = "Y";
            if (Session["annual_enterKey"] == null)
            {
                //if (string.IsNullOrEmpty(Session["annual_enterKey"].ToString()))
                //{
                Session["annual_enterKey"] = this.entrykey.Value;
                //}
            }

            enterKey_tmp = Session["annual_enterKey"].ToString();

            System.Data.SqlClient.SqlDataAdapter FormIPPAnnualAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet FormIPPAnnualSet = new DataSet();
            string sqlstr = string.Format("select * from FormIPPAnnualFDLRC where IPPAnnualID='{0}'", enterKey_tmp);
            DataRow FormIPPAnnualInfo = VirDBAccess.DbForm.constructFormAnnualTableFDLRC(FormIPPAnnualAD, FormIPPAnnualSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];

            getdata(FormIPPAnnualInfo);

            if (VirDBAccess.DbForm.updateFormIPPAnnualInfoFDLRC(FormIPPAnnualAD, FormIPPAnnualSet) == 0)
            {
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>alert('Update unsuccessful! Please try again.');</script>");
            }
            else
            {
                ShowLogs(FormIPPAnnualInfo);
                if (popupMsg)
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveSuc", "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                else
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "SaveSuc", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
            }

            FormIPPAnnualAD.Dispose();
            cn.close();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            SaveData(true);
        }

        private void AddData(bool popupMsg)
        {



            //System.Data.SqlClient.SqlDataAdapter FormIPPAnnualAD = new System.Data.SqlClient.SqlDataAdapter();
            //VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            //DataSet FormIPPAnnualSet = new DataSet();
            //string sqlstr = string.Format("select * from FormIPPAnnualFDLRC where IPPAnnualID='{0}'", Session["annual_enterKey"].ToString());
            //DataTable FormIPPAnnualInfo = VirDBAccess.DbForm.constructFormAnnualTableFDLRC(FormIPPAnnualAD, FormIPPAnnualSet, cn, sqlstr, Session["UserAct"].ToString());

            //if (FormIPPAnnualInfo.Rows.Count > 0)  return;

            System.Data.SqlClient.SqlDataAdapter FormIPPAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet FormIPPSet = new DataSet();
            string sqlstr = string.Format("select top 1 * from FormIPPAnnualFDLRC");

            DataRow FormIPPInfo = VirDBAccess.DbForm.constructFormAnnualTableFDLRC(FormIPPAD, FormIPPSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();
            FormIPPInfo["IPPAnnualID"] = this.entrykey.Value;
            FormIPPInfo["uci"] = this.consumer_key.Value;
            FormIPPInfo["createdate"] = DateTime.Parse(DateTime.Now.ToString());
            FormIPPInfo["enteredby"] = Session["userFullName"].ToString();
            FormIPPInfo["enteredby_id"] = Session["userID"].ToString();
            FormIPPInfo["Tab1Status"] = 1;
            getdata(FormIPPInfo);

            if (VirDBAccess.DbForm.addFormAnnualInfoFDLRC(FormIPPAD, FormIPPSet, FormIPPInfo) == 0)
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
            //   AddData(true);
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            string enterKey_tmp = string.Empty;
            Session["annual_chk_flag"] = "Y";
            if (Session["annual_enterKey"] == null)
            {
                Session["annual_enterKey"] = this.entrykey.Value;
            }

            enterKey_tmp = Session["annual_enterKey"].ToString();
            System.Data.SqlClient.SqlDataAdapter FormIPPAnnualAD = new System.Data.SqlClient.SqlDataAdapter();
            VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
            DataSet FormIPPAnnualSet = new DataSet();
            string sqlstr = string.Format("select * from FormIPPAnnualFDLRC where IPPAnnualID='{0}'", enterKey_tmp);
            DataTable FormIPPAnnualInfo = VirDBAccess.DbForm.constructFormAnnualTableFDLRC(FormIPPAnnualAD, FormIPPAnnualSet, cn, sqlstr, Session["UserAct"].ToString());

            if (FormIPPAnnualInfo.Rows.Count > 0)
            {
                SaveData(false);
                string selection = "1";
                string Logs = "User: " + Session["UserName"] + " ID: " + Session["UserID"].ToString().TrimEnd() + " On: " + DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss") + "\r\n";
                string uci = "";
                if (Request.QueryString["UCI"] != null)
                    uci = Request.QueryString["UCI"].ToString().TrimEnd();

                DataRow FormIPPInfo = VirDBAccess.DbForm.getFormIPPAnnualInfoFDLRC(enterKey_tmp.ToString().Trim(), Session["UserAct"].ToString());
                string NextTab = "0";
                //if (this.Tab.Value != "9")
                //NextTab = (Int16.Parse(this.SubmitTabNo.Value) + 1).ToString().TrimEnd();

                int Res = VirDBAccess.DbForm.updateFormAnnualIPPInfoSubmitFDLRC(enterKey_tmp.ToString().Trim(), now_div_flag.Value, NextTab, Logs, selection, Session["UserAct"].ToString());
                //if (Res == 2) // reconfirm not next
                //NextTab = this.SubmitTabNo.Value;
                //NextTab = (now_div_flag.Value + 1).ToString();                
                string scriptStr = "<script>PostText('" + NextTab + "');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "PostTab", scriptStr);
            }
            else
            {
                AddData(false);

            }
            chgTabColor();
            ShowLogs();

        }

        protected void chgTabColor()
        {
            if (now_div_flag.Value.ToString() == "1")
            {
                ViewState["Tab1Status"] = "1";
                chktab1.Enabled = false;
                TAB1.BgColor = "lightgrey";
            }

            if (now_div_flag.Value.ToString() == "2")
            {
                ViewState["Tab2Status"] = "1";
                chktab2.Enabled = false;
                TAB2.BgColor = "lightgrey";
            }

            if (now_div_flag.Value.ToString() == "3")
            {
                ViewState["Tab3Status"] = "1";
                chktab3.Enabled = false;
                TAB3.BgColor = "lightgrey";
            }

            if (now_div_flag.Value.ToString() == "4")
            {
                ViewState["Tab4Status"] = "1";
                chktab4.Enabled = false;
                TAB4.BgColor = "lightgrey";
            }
            if (now_div_flag.Value.ToString() == "5")
            {
                ViewState["Tab5Status"] = "1";
                chktab5.Enabled = false;
                TAB5.BgColor = "lightgrey";
            }

            if (now_div_flag.Value.ToString() == "6")
            {
                ViewState["Tab6Status"] = "1";
                chktab6.Enabled = false;
                TAB6.BgColor = "lightgrey";
            }
            if (now_div_flag.Value.ToString() == "7")
            {
                ViewState["Tab7Status"] = "1";
                chktab7.Enabled = false;
                TAB7.BgColor = "lightgrey";
            }
            if (now_div_flag.Value.ToString() == "8")
            {
                ViewState["Tab8Status"] = "1";
                chktab8.Enabled = false;
                TAB8.BgColor = "lightgrey";
            }

        }

        protected void DeleteIPPOutPlan(string IPPOutID, string TabNo)
        {
            if (VirDBAccess.DbForm.delFormIPPOut(IPPOutID, Session["UserAct"].ToString()) == 1)
            {
                if (TabNo == "3")
                    showPlanTab3List();
                else if (TabNo == "4")
                    showPlanTab4List();
                //else if (TabNo == "5")
                //showPlanTab5List();

            }
        }

        private void showOutcomesNarratives()
        {
            if (this.entrykey.Value.ToString().TrimEnd() != "")
            {
                DataTable tempData = new DataTable();
                DataRow dtrow;
                tempData.Columns.Add("desiredoutcome", typeof(string));
                tempData.Columns.Add("ippoutid", typeof(string));
                DataColumn dtcol, dtcol1, dtcol2;
                dtcol = new DataColumn();
                dtcol1 = new DataColumn();
                dtcol2 = new DataColumn();
                for (int i = 0; i < 1; i++)
                {
                    dtrow = tempData.NewRow();
                    dtrow["desiredoutcome"] = "";
                    dtrow["ippoutid"] = "";
                    tempData.Rows.Add(dtrow);

                }
                //try
                {
                    //DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "2", Session["UserAct"].ToString());
                    //dg_plan_tab2.DataSource = FormIPPOut.DefaultView;
                    //if (FormIPPOut.DefaultView.Count == 0)
                    //{
                    //    dg_plan_tab2.DataSource = tempData;
                    //}
                    //dg_plan_tab2.DataBind();
                    //FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "3", Session["UserAct"].ToString());
                    //dg_plan_tab3.DataSource = FormIPPOut.DefaultView;
                    //if (FormIPPOut.DefaultView.Count == 0)
                    //{
                    //    dg_plan_tab2.DataSource = tempData;
                    //}
                    //dg_plan_tab3.DataBind();
                    //FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "4", Session["UserAct"].ToString());
                    //dg_plan_tab4.DataSource = FormIPPOut.DefaultView;
                    //if (FormIPPOut.DefaultView.Count == 0)
                    //{
                    //    dg_plan_tab2.DataSource = tempData;
                    //}
                    //dg_plan_tab4.DataBind();
                    //FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "5", Session["UserAct"].ToString());

                    //if (FormIPPOut.DefaultView.Count == 0)
                    //{
                    //    dg_plan_tab2.DataSource = tempData;
                    //}

                    //dg_plan_tab5.DataBind();
                    //FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "6", Session["UserAct"].ToString());
                    //dg_plan_tab6.DataSource = FormIPPOut.DefaultView;
                    //if (FormIPPOut.DefaultView.Count == 0)
                    //{
                    //    dg_plan_tab2.DataSource = tempData;
                    //}
                    //dg_plan_tab6.DataBind();
                    //FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "7", Session["UserAct"].ToString());
                    //dg_plan_tab7.DataSource = FormIPPOut.DefaultView;
                    //if (FormIPPOut.DefaultView.Count == 0)
                    //{
                    //    dg_plan_tab2.DataSource = tempData;
                    //}
                    //dg_plan_tab7.DataBind();
                    //FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "3", Session["UserAct"].ToString());
                    //dg_plan_tab3.DataSource = FormIPPOut.DefaultView;
                    //dg_plan_tab3.DataBind();
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
            }
        }

        private void showPlanTab3List()
        {
            //if (this.entrykey.Value.ToString().TrimEnd() != "")
            //{
            //    //try
            //    {
            //        DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "3", Session["UserAct"].ToString());
            //        dg_plan_tab3.DataSource = FormIPPOut.DefaultView;
            //        dg_plan_tab3.DataBind();
            //    }
            //    //catch { }
            //}
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
            }
        }

        private void showPlanTab4List()
        {
            //if (this.entrykey.Value.ToString().TrimEnd() != "")
            //{
            //    //try
            //    {
            //        DataTable FormIPPOut = VirDBAccess.DbForm.getFormIPPOutList(this.entrykey.Value.ToString().TrimEnd(), "4", Session["UserAct"].ToString());
            //        dg_plan_tab4.DataSource = FormIPPOut.DefaultView;
            //        dg_plan_tab4.DataBind();
            //    }
            //    //catch { }
            //}
        }
        private void showSchoolList()
        {
            if (this.consumer_key.Value.ToString().TrimEnd() != "")
            {
                //try
                {
                    DataTable SchoolDT = VirDBAccess.DbConsumer.getSchoolList(this.consumer_key.Value.ToString().TrimEnd(), Session["UserAct"].ToString());
                    DataView dv = SchoolDT.DefaultView;
                    dg_school.DataSource = dv;
                    dg_school.DataBind();
                }
                //catch { }
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
                    dg_employment.DataSource = dv;
                    dg_employment.DataBind();
                }
                //catch { }
            }
        }
        private void showPosList()
        {
            //try
            {
                DataTable PosUfsDT = VirDBAccess.DbPos.getPosUfsList(this.consumer_key.Value.ToString().TrimEnd(), "1", Session["UserAct"].ToString(), 1);
                DataView dv = PosUfsDT.DefaultView;
                if (ViewState["sortkeyposufs"] != null)
                {
                    dv.Sort = ViewState["sortkeyposufs"].ToString();
                }
                else
                {
                    dv.Sort = "rap_term_dt desc";
                }
                dg_posufs.DataSource = dv;
                dg_posufs.DataBind();
            }
            //catch { }
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
            }
        }

        /*private void showPlanTab5List()
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
        }*/

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
            }
        }





    }
}
