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
    public partial class webResourceInfo : webCommonPage 
	{
        string View_Flag = "Y", Edit_Flag = "Y", Edit_Dropdown = "N", Delete_Flag = "Y";
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

            if (Request.QueryString["isAjax"] != null && Request.QueryString["isAjax"].ToUpper() == "TRUE")
            {
                string i = Request.QueryString["index"].ToString();
                AjaxgetResServerTabData(i);
                return;
            }

            if (Int32.Parse(Session["ResourceLevel"].ToString()) > 8)
                Edit_Flag = "Y";
            else
                Edit_Flag = "N";

            if (Session["Usertype"].ToString() == "A")
                Delete_Flag = "Y";
            else
                Delete_Flag = "N";

			if(!Page.IsPostBack)
			{
                //buttons setup
                /*
                DataTable DT_ButtonsSet = (DataTable)Session["userbuttons"];
                if (DT_ButtonsSet.Rows.Count > 0)
                {
                    btnEdit.Text = DT_ButtonsSet.Rows[0]["l_Save"].ToString().TrimEnd();
                }
                */
                //
                body.Attributes.Add("onload", "javascript:onloadsizechg(70);");
                body.Attributes.Add("onresize", "javascript:onloadsizechg(70);");

                string strType = "";
                if (Request.QueryString["type"] != null)
                    strType = Request.QueryString["type"].ToString();
                string scriptstr = "";

                string strKey = "";
                if (Request.QueryString["r_resource_id"] != null)
                {
                    strKey = Request.QueryString["r_resource_id"].ToString().TrimEnd();
                    Session["ResourceSel"] = strKey;
                }
                else
                {
                    if (Request.QueryString["type"] == null)
                    {
                        if ((Session["ResourceSel"] == null) || (Session["ResourceSel"].ToString().TrimEnd() == ""))
                        {
                            scriptstr = "<script type='text/javascript'>alert('There is no Active " + Session["ResourceDisp"].ToString() +
                                 ". Please Select A " + Session["ResourceDisp"].ToString() + " from the " + Session["ResourceDisp"].ToString() + " List.');document.location.replace('webResourceList.aspx');</script>";
                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                            return;
                        }
                        else
                            strKey = Session["ResourceSel"].ToString().TrimEnd();
                    }
                }

                this.r_resource_id.Value = strKey;
                this.UserAct.Value = Session["UserAct"].ToString();

                Session["Searchflag"] = "2";

                if (strType == "add")
                {
                    btnEdit.Visible = false;
                    btnAdd.Visible = true;
                    btnPrint.Visible = false;
                }
                else if (Edit_Flag == "Y")
                {
                    btnEdit.Visible = true;
                    btnPrint.Visible = true;
                    btnAdd.Visible = false;
                }
                if(string.IsNullOrEmpty(r_last_mod_date.Text))   
                { 
                    r_last_mod_date.Text = DateTime.Today.ToString("MM/dd/yyyy");
                } 
                BindDropDownLists(); 

                if ((Session["gic_label_sets"].ToString() == "") || (Session["gic_label_sets"] == null))
                {
                    Session["gic_label_sets"] = "1";
                }
                DataRow ResourceLabelInfo = VirDBAccess.DbDispOption.getResourceLabelDetailInfo(Session["UserAct"].ToString(), Session["gic_label_sets"].ToString());

                showLabel_basic(ResourceLabelInfo);
                showLabel_site(ResourceLabelInfo);
                showLabel_profile(ResourceLabelInfo);
                showLabel_reports(ResourceLabelInfo);
                showLabel_comment(ResourceLabelInfo);
                showLabel_service(ResourceLabelInfo);

                showPosList();
                showSirList();//SIR List

                if (Session["DefRegName"].ToString() == "FDLRC")
                    Profile_FDLRC.Visible = true;

                if (strType != "add")
                {
                    //try
                    {
                        DataRow ResourceInfo = VirDBAccess.DbResource.getResourceInfo(strKey, Session["UserAct"].ToString());

                        string InfoStr = "";
                        InfoStr = Session["ResourceDisp"].ToString() + ": " + ResourceInfo["r_resource_id"].ToString().TrimEnd() + " " +
                            ResourceInfo["r_service_code"].ToString().TrimEnd() + " - " + ResourceInfo["r_resource_name"];
                        InfoStr = InfoStr.Replace("'", "`");
                        Info.Text = "";
                        string maindispstr = "<script type='text/javascript'>DisplayTitleInfo('" + InfoStr + "','" +
                            Session["ResourceDisp"].ToString() + " Profile')</script>";
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "DisplayTitleInfo", maindispstr);

                        showdata_bi(ResourceInfo);
                        showdata_si(ResourceInfo);
                        showdata_pr(ResourceInfo);
                        showdata_rp(ResourceInfo);
                        showdata_cm(ResourceInfo);
                        showdata_sf(ResourceInfo);
                    }
                    //catch { }
                }

                if (Edit_Flag != "Y")
                {
                    Disabled_Control();
                }
                else
                {
                    if (!VirDBAccess.DbCommon.checkCodeExistInTables("QA Specialist", Session["UserID"].ToString(), Session["UserAct"].ToString()))
                    {
                        setReadOnly("r_annual_visit_type", "d");
                        setReadOnly("r_annual_visit_month", "d");
                        setReadOnly("r_annual_visit_year", "t");
                        setReadOnly("r_unan_visit_month", "d");
                        setReadOnly("r_unan_visit_year", "t");
                        //setReadOnly("r_cap_visit_month", "d");
                        //setReadOnly("r_cap_visit_year", "t");
                        setReadOnly("r_kea_monitor", "d");
                    }
                }

                if (Request.QueryString["tabflag"] != null)
                {
                    now_div_flag.Value = Request.QueryString["tabflag"].ToString().TrimEnd();
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                }

                VirDBAccess.DbOperTrace.addOperLog(Session["userid"].ToString(), "resource_all", this.r_resource_id.Value.ToString().TrimEnd(), "", "",
                       Session["UserAct"].ToString());


                // maps fix
                // 7-30-2019
                scriptstr = "<script async defer src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAddress'></script>";

                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                
            }
		}

        private void AjaxgetResServerTabData(string i)
        {
            int index = Int32.Parse(i);
            DataTable ds = (DataTable)Session["ResServerTab"];

            string sb = "{";

            sb += "psrvnd:'" + ds.Rows[index]["psrvnd"].ToString() + "',";
            sb += "pvsrcd:'" + ds.Rows[index]["pvsrcd"].ToString() + "',";
            sb += "pvssub:'" + ds.Rows[index]["pvssub"].ToString() + "',";
            sb += "tablesNameRS:'" + ds.Rows[index]["tablesNameRS"].ToString() + "',";
            sb += "psrdes:'" + ds.Rows[index]["psrdes"].ToString() + "',";
            sb += "psrcom:'" + ds.Rows[index]["psrcom"].ToString() + "',";
            sb += "prsutp:'" + ds.Rows[index]["prsutp"].ToString() + "',";
            sb += "psrbeg:'" + ds.Rows[index]["psrbeg"].ToString() + "',";
            sb += "psrcur:'" + ds.Rows[index]["psrcur"].ToString() + "',";
            sb += "psrend:'" + ds.Rows[index]["psrend"].ToString() + "',";

            sb += "Success:true,ErrMsg:''}";

            Response.Clear();
            //Response.ContentType = "application/json";
            Response.Write(sb);
            Response.Flush();
            Response.End();
        }

        private void Disabled_Control()
        {
            setControlReadOnly(this.ResourceInfo);
        }

        private void BindDropDownLists()
        {
            DataTable LanguageDT = VirDBAccess.DbCommon.getTablesList("LANG", Session["UserAct"].ToString());
            r_language_1.DataSource = LanguageDT;
            r_language_1.DataBind();
            r_language_1.SelectedValue = "11";
            r_language_2.DataSource = LanguageDT;
            r_language_2.DataBind();
            r_language_2.SelectedValue = "11";
            r_language_1_SP.DataSource = LanguageDT;
            r_language_1_SP.DataBind();
            r_language_1_SP.SelectedValue = "11";
            r_language_2_SP.DataSource = LanguageDT;
            r_language_2_SP.DataBind();
            r_language_2_SP.SelectedValue = "11";
            DataTable SpecialityDT = VirDBAccess.DbCommon.getTablesList("SPECIALTY", Session["UserAct"].ToString());
            r_f_1.DataSource = SpecialityDT;
            r_f_1.DataBind();
            r_f_2.DataSource = SpecialityDT;
            r_f_2.DataBind();
            DataTable LicenseTypeDT = VirDBAccess.DbCommon.getTablesList("LICENSE TYPE", Session["UserAct"].ToString());
            r_license_type.DataSource = LicenseTypeDT;
            r_license_type.DataBind();
            
            DataTable GenderPrefDT = VirDBAccess.DbCommon.getTablesList("RESOURCE GENDER PREF", Session["UserAct"].ToString());
            r_gender_pref.DataSource = GenderPrefDT;
            r_gender_pref.DataBind();

            DataTable AmbStatusDT = VirDBAccess.DbCommon.getTablesList("RESOURCE AMB STATUS", Session["UserAct"].ToString());
            r_amb_status.DataSource = AmbStatusDT;
            r_amb_status.DataBind();

            DataTable ResourceStatusDT = VirDBAccess.DbCommon.getTablesList("RESOURCE STATUS", Session["UserAct"].ToString());
            r_status.DataSource = ResourceStatusDT;
            r_status.DataBind();
            DataTable srvcDT = VirDBAccess.DbCommon.getFullTablesList("SERVICE CODE", Session["UserAct"].ToString());
            r_service_code.DataSource = srvcDT;
            r_service_code.DataBind();
            DataTable srvcsubDT = VirDBAccess.DbCommon.getFullTablesList("SUB CODE", Session["UserAct"].ToString());
            r_sub_code.DataSource = srvcsubDT;
            r_sub_code.DataBind();
            DataTable UsersDT = VirDBAccess.DbUser.getUsersList(Session["UserAct"].ToString());
            r_last_mod_by.DataSource = UsersDT;
            r_last_mod_by.DataBind();
            r_last_mod_by.Items.Insert(0, new ListItem("", ""));
            r_staff_liaison.DataSource = UsersDT;
            r_staff_liaison.DataBind();
            r_staff_liaison.Items.Insert(0, new ListItem("", ""));
            DataTable AddrCodeDT = VirDBAccess.DbCommon.getTablesList("ADDR CODE", Session["UserAct"].ToString());
            r_mail_code.DataSource = AddrCodeDT;
            r_mail_code.DataBind();

            DataTable ConsultantTypeDT = VirDBAccess.DbCommon.getTablesList("CONSULTANTTYPE", Session["UserAct"].ToString());
            r_consultant_type.DataSource = ConsultantTypeDT;
            r_consultant_type.DataBind();
            r_consultant_type.Items.Insert(0, new ListItem("", ""));

            DataTable QAUsersDT = VirDBAccess.DbUser.getUsersListForQAMonitor(Session["UserAct"].ToString());
            r_qa_monitor.DataSource = QAUsersDT;
            r_qa_monitor.DataBind();
            r_qa_monitor.Items.Insert(0, new ListItem("", ""));
            r_kea_monitor.DataSource = QAUsersDT;
            r_kea_monitor.DataBind();
            r_kea_monitor.Items.Insert(0, new ListItem("", ""));
        }

        private void showPosList()
        {
            if (Session["ResourceSel"] != null)
            {
                //try
                {
                    DataTable PosDT = VirDBAccess.DbPos.getPosListForResource(Session["ResourceSel"].ToString(), Session["UserAct"].ToString());
                    DataView dv = PosDT.DefaultView;
                    if (ViewState["possortkey"] != null)
                    {
                        dv.Sort = ViewState["possortkey"].ToString();
                    }
                    else
                    {
                        dv.Sort = "rap_start_dt desc";
                        ViewState["possortkey"] = dv.Sort;
                        ViewState["possortcolumn"] = "rap_start_dt";
                        ViewState["possortorder"] = "DESC";
                    }
                    dg_PosList.DataSource = dv;
                    dg_PosList.DataBind();
                }
                //catch { }
            }
        }

        private void showSirList()
        {
            DataTable SirDT = VirDBAccess.DbSir.getSirListForResource(Session["ResourceSel"].ToString(), Session["UserAct"].ToString());
            DataView dv = SirDT.DefaultView;
            if (ViewState["sortkey"] != null)
            {
                dv.Sort = ViewState["sortkey"].ToString();
            }
            else
            {
                dv.Sort = "s_rpt_date desc";
                ViewState["sortkey"] = dv.Sort;
                ViewState["sortcolumn"] = "s_rpt_date";
                ViewState["sortorder"] = "DESC";
            }
            dg_sir.DataSource = dv;
            dg_sir.DataBind();
        }


        #region Web
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }


        private void InitializeComponent()
        {
            this.dg_PosList.SortCommand += new System.Web.UI.WebControls.DataGridSortCommandEventHandler(this.dg_PosList_SortCommand);
            this.dg_PosList.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_PosList_ItemDataBound);
            this.dg_sir.SortCommand += new System.Web.UI.WebControls.DataGridSortCommandEventHandler(this.dg_sir_SortCommand);
            this.dg_sir.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dg_sir_ItemDataBound);
        }
        #endregion

        private void dg_PosList_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                e.Item.Cells[1].Text = "<a href='javascript:display_consumerinfo(\"" + e.Item.Cells[1].Text.ToString().TrimEnd() + "\")'><U>" + e.Item.Cells[1].Text + "</U></a>";                

                string enddate_color = e.Item.Cells[6].Text.TrimEnd();
                if (enddate_color == "red")
                {
                    e.Item.Cells[4].ForeColor = Color.Red;
                }
            }
        }

        private void dg_PosList_SortCommand(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
        {
            if ((ViewState["possortcolumn"] != null) && (e.SortExpression.ToString() == ViewState["possortcolumn"].ToString()))
            {
                //Reverse the sort order
                if (ViewState["possortorder"].ToString() == "ASC")
                {
                    ViewState["possortkey"] = e.SortExpression.ToString() + " DESC";
                    ViewState["possortorder"] = "DESC";
                }
                else
                {
                    ViewState["possortkey"] = e.SortExpression.ToString() + " ASC";
                    ViewState["possortorder"] = "ASC";
                }
            }
            else
            {
                //Different column selected, so default to ascending order
                ViewState["possortkey"] = e.SortExpression.ToString() + " ASC";
                ViewState["possortorder"] = "ASC";
            }
            ViewState["possortcolumn"] = e.SortExpression.ToString();

            showPosList();

            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
        }

        private void dg_sir_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                if (VirDBAccess.DbSir.checkSirAddInfo(e.Item.Cells[0].Text, Session["UserAct"].ToString()))
                    e.Item.Cells[5].Text = "Yes";
                else
                    e.Item.Cells[5].Text = "No";

                if (VirDBAccess.DbSir.checkSirAddsubstInfo(e.Item.Cells[0].Text, Session["UserAct"].ToString()))
                    e.Item.Cells[6].Text = "Yes";
                else
                    e.Item.Cells[6].Text = "No";

                e.Item.Attributes.Add("OnDblClick", "document.location.replace('../FormList/FormSirInfo.aspx?uci=" + e.Item.Cells[10].Text + "&s_key=" + e.Item.Cells[0].Text + "&type=RI');");
                e.Item.Attributes.Add("onclick", "SetRowColorAfterClick(this);");
                ((HyperLink)e.Item.FindControl("hy_edit")).Attributes.Add("onclick", "document.location.replace('../FormList/FormSirInfo.aspx?uci=" + e.Item.Cells[10].Text + "&s_key=" + e.Item.Cells[0].Text + "&type=RI');");
                if (e.Item.Cells[7].Text == "Reportable")
                {
                    e.Item.ForeColor = Color.Red;
                }
            }
        }

        private void dg_sir_SortCommand(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
        {
            if ((ViewState["sortcolumn"] != null) && (e.SortExpression.ToString() == ViewState["sortcolumn"].ToString()))
            {
                //Reverse the sort order
                if (ViewState["sortorder"].ToString() == "ASC")
                {
                    ViewState["sortkey"] = e.SortExpression.ToString() + " DESC";
                    ViewState["sortorder"] = "DESC";
                }
                else
                {
                    ViewState["sortkey"] = e.SortExpression.ToString() + " ASC";
                    ViewState["sortorder"] = "ASC";
                }
            }
            else
            {
                //Different column selected, so default to ascending order
                ViewState["sortkey"] = e.SortExpression.ToString() + " ASC";
                ViewState["sortorder"] = "ASC";
            }
            ViewState["sortcolumn"] = e.SortExpression.ToString();

            showSirList();

            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
        }


        private void showdata_bi(DataRow ResourceInfo)
		{
			//show bi baseinfo
			setTextBox(ResourceInfo, "r_vendor_number");
            setTextBox(ResourceInfo, "r_resource_name");
            setDropDownList(ResourceInfo, "r_service_code");
            setDropDownList(ResourceInfo, "r_sub_code");
            setDropDownList(ResourceInfo, "r_status");
            setTextBox(ResourceInfo, "r_administrator");
            setTextBox(ResourceInfo, "r_address_line_1");
            setTextBox(ResourceInfo, "r_address_line_2");
            setTextBox(ResourceInfo, "r_address_city");
            setTextBox(ResourceInfo, "r_address_state");
            setTextBox(ResourceInfo, "r_address_zip");
            setDropDownList(ResourceInfo, "r_mail_code");
            setTextBox(ResourceInfo, "r_phone_1");
            setTextBox(ResourceInfo, "r_phone_2");
            setTextBox(ResourceInfo, "r_cell_pager");
            setTextBox(ResourceInfo, "r_fax");
            setTextBox(ResourceInfo, "r_email");
            setTextBox(ResourceInfo, "r_tax_id_number");
            setTextBox(ResourceInfo, "r_tax_name");
            setTextBox(ResourceInfo, "r_rate");
            setTextBox(ResourceInfo, "r_ratio");
            setTextBox(ResourceInfo, "r_level");
            setTextBox(ResourceInfo, "r_unit");
            setDropDownList(ResourceInfo, "r_last_mod_by");
            setTextBox(ResourceInfo, "r_last_mod_date");
		}

        private void showdata_si(DataRow ResourceInfo)
        {
            //show si baseinfo
            setTextBox(ResourceInfo, "r_site_name");
            setTextBox(ResourceInfo, "r_site_address_line_1");
            setTextBox(ResourceInfo, "r_site_address_line_2");
            setTextBox(ResourceInfo, "r_site_address_city");
            setTextBox(ResourceInfo, "r_site_address_state");
            setTextBox(ResourceInfo, "r_site_address_zip");
            setTextBox(ResourceInfo, "r_site_mail_code");
            setTextBox(ResourceInfo, "r_site_phone_1");
            setTextBox(ResourceInfo, "r_county");
            setTextBox(ResourceInfo, "r_regional_center");
            setRadioBox(ResourceInfo, "r_provider_relations");
            setDropDownList(ResourceInfo, "r_qa_monitor");
            setDropDownList(ResourceInfo, "r_staff_liaison");
            setTextBox(ResourceInfo, "r_out_of_county_rc");
            setTextBox(ResourceInfo, "r_license_number");
            setTextBox(ResourceInfo, "r_licensee");
            setDropDownList(ResourceInfo, "r_license_type");
            setTextBox(ResourceInfo, "r_license_exp_date");
            setTextBox(ResourceInfo, "r_insurance_name");
            setTextBox(ResourceInfo, "r_insurance_exp_date");
            setTextBox(ResourceInfo, "r_medi_cal");
            setTextBox(ResourceInfo, "r_medi_cal_claim_cert");
            setDropDownList(ResourceInfo, "r_language_1");
            setDropDownList(ResourceInfo, "r_language_2");
            setTextBox(ResourceInfo, "r_category_budget");
            setTextBox(ResourceInfo, "r_capacity");
            setTextBox(ResourceInfo, "r_age_range");
            setCheckBox(ResourceInfo, "r_coffelt_only");
            setDropDownList(ResourceInfo, "r_gender_pref");
            setDropDownList(ResourceInfo, "r_amb_status");
            setTextBox(ResourceInfo, "r_ambulatory");
            setTextBox(ResourceInfo, "r_nonambulatory");
            setTextBox(ResourceInfo, "r_amb_m");
            setTextBox(ResourceInfo, "r_amb_f");
            setTextBox(ResourceInfo, "r_nonamb_m");
            setTextBox(ResourceInfo, "r_nonamb_f");
            setTextBox(ResourceInfo, "r_consultant_name");
            setTextBox(ResourceInfo, "r_consultant_contact");
            setDropDownList(ResourceInfo, "r_consultant_type");
            setTextBox(ResourceInfo, "r_consultant_licensed_staff"); 
        }

        private void showdata_pr(DataRow ResourceInfo)
		{
			//show pr baseinfo
            setTextBox(ResourceInfo, "r_client_type");
            setDropDownList(ResourceInfo, "r_profile_mr");
            setDropDownList(ResourceInfo, "r_profile_mr_profound");
            setDropDownList(ResourceInfo, "r_profile_mr_severe");
            setDropDownList(ResourceInfo, "r_profile_mr_moderate");
            setDropDownList(ResourceInfo, "r_profile_mr_mild");
            setDropDownList(ResourceInfo, "r_profile_mr_border");
            setDropDownList(ResourceInfo, "r_profile_autism");
            setDropDownList(ResourceInfo, "r_profile_cp");
            setDropDownList(ResourceInfo, "r_profile_seiz");
            setDropDownList(ResourceInfo, "r_profile_seiz_cont");
            setDropDownList(ResourceInfo, "r_profile_seiz_uncont");
            setDropDownList(ResourceInfo, "r_profile_toilet");
            setDropDownList(ResourceInfo, "r_profile_incontinent");
            setDropDownList(ResourceInfo, "r_profile_bedwetting");
            setDropDownList(ResourceInfo, "r_profile_dual_dx");
            setDropDownList(ResourceInfo, "r_profile_behaviors");
            setDropDownList(ResourceInfo, "r_profile_severe");
            setDropDownList(ResourceInfo, "r_profile_noncomp");
            setDropDownList(ResourceInfo, "r_profile_tantrum");
            setDropDownList(ResourceInfo, "r_profile_verb_aggr");
            setDropDownList(ResourceInfo, "r_profile_phys_aggr");
            setDropDownList(ResourceInfo, "r_profile_prop_destr");
            setDropDownList(ResourceInfo, "r_profile_biting");
            setDropDownList(ResourceInfo, "r_profile_self_abuse");
            setDropDownList(ResourceInfo, "r_profile_elope");
            setDropDownList(ResourceInfo, "r_profile_sex");
            setDropDownList(ResourceInfo, "r_profile_pica");
            setDropDownList(ResourceInfo, "r_profile_smear");
            setDropDownList(ResourceInfo, "r_profile_theft");
            setDropDownList(ResourceInfo, "r_profile_hearing");
            setDropDownList(ResourceInfo, "r_profile_bates");
            setDropDownList(ResourceInfo, "r_profile_diabetes");
            setDropDownList(ResourceInfo, "r_profile_gtube");
            setDropDownList(ResourceInfo, "r_profile_nurse");
            setDropDownList(ResourceInfo, "r_profile_other");
            setTextBox(ResourceInfo, "r_profile_other_desc");
            setDropDownList(ResourceInfo, "r_profile_smoking");
            setDropDownList(ResourceInfo, "r_profile_smoke_in");
            setDropDownList(ResourceInfo, "r_profile_smoke_out");
            setDropDownList(ResourceInfo, "r_profile_csd");
            setDropDownList(ResourceInfo, "r_profile_grants");
        }

        private void showdata_rp(DataRow ResourceInfo)
		{
			//show rp baseinfo
            setDropDownList(ResourceInfo, "r_base_month");
            setTextBox(ResourceInfo, "r_vendor_register_date");
            setTextBox(ResourceInfo, "r_qa_evaluation_date");
            setTextBox(ResourceInfo, "r_qa_eval_exit");
            setTextBox(ResourceInfo, "r_fiscal_evaluation_date");
            setTextBox(ResourceInfo, "r_rate_review_date");
            setTextBox(ResourceInfo, "r_ar_checklist_date");
            setTextBox(ResourceInfo, "r_ar_follow_up");
            setTextBox(ResourceInfo, "r_sir_date");
            setTextBox(ResourceInfo, "r_technical_assistance");
            setTextBox(ResourceInfo, "r_corrective_action_date");
            setTextBox(ResourceInfo, "r_ad_hoc");
            setTextBox(ResourceInfo, "r_rate_effective_date");
            setTextBox(ResourceInfo, "r_unannounced_visit_1");
            setTextBox(ResourceInfo, "r_unannounced_visit_2");
            setTextBox(ResourceInfo, "r_monitor_date");
            setTextBox(ResourceInfo, "r_ccl_hcl_lic_date");
            setTextBox(ResourceInfo, "r_sanction_date_start");
            setTextBox(ResourceInfo, "r_sanction_date_end");
            setTextBox(ResourceInfo, "r_dds_review_date");
            setTextBox(ResourceInfo, "r_delete_date");

            string curyear = DateTime.Now.Year.ToString().TrimEnd();
            setDropDownList(ResourceInfo, "r_annual_visit_type");
            setDropDownList(ResourceInfo, "r_annual_visit_month");
            setTextBox(ResourceInfo, "r_annual_visit_year");
            if (r_annual_visit_year.Text.TrimEnd() == "")
                r_annual_visit_year.Text = curyear;
            setDropDownList(ResourceInfo, "r_unan_visit_month");
            setTextBox(ResourceInfo, "r_unan_visit_year");
            if (r_unan_visit_year.Text.TrimEnd() == "")
                r_unan_visit_year.Text = curyear; 
            setDropDownList(ResourceInfo, "r_cap_visit_month");
            setTextBox(ResourceInfo, "r_cap_visit_year");
            if (r_cap_visit_year.Text.TrimEnd() == "")
                r_cap_visit_year.Text = curyear;
            setDropDownList(ResourceInfo, "r_kea_monitor");
        }

        private void showdata_cm(DataRow ResourceInfo)
		{
			//show cm baseinfo
            setDropDownList(ResourceInfo, "r_f_1");
            setDropDownList(ResourceInfo, "r_f_2");
            setDropDownList(ResourceInfo, "r_language_1_SP");
            setDropDownList(ResourceInfo, "r_language_2_SP");
            setTextBox(ResourceInfo, "r_s1_1");
            setTextBox(ResourceInfo, "r_comment_1");
            setTextBox(ResourceInfo, "r_comment_2");
            setTextBox(ResourceInfo, "r_comment_3");
            setTextBox(ResourceInfo, "r_comment_4");
            setTextBox(ResourceInfo, "r_comment_5");
            setTextBox(ResourceInfo, "r_comment_6");
        }
        
        //get service info
        private void showdata_sf(DataRow ResourceInfo)
        {
            //show sf baseinfo
            Session["r_vendor_number"] = ResourceInfo["r_vendor_number"];
            DataTable ServiceDT = VirDBAccess.DbResource.getResourceSVCList(ResourceInfo["r_vendor_number"].ToString(), Session["UserAct"].ToString());
            for (int i = 0; i < ServiceDT.Rows.Count; i++)
                ServiceList.Items.Add(new ListItem(ServiceDT.Rows[i]["pvsrcd"] + "   " + ServiceDT.Rows[i]["pvssub"]));
            Session["ResServerTab"] = ServiceDT;
        }

        private void setSFActive()
        {
            string strScript;
            string strKey;
            int i;
            //script content
            strScript = "<script>doseltdbyid('RE_SF');</script>";
            //reg Key
            strKey = System.DateTime.Now.ToString();
            //loop find not reg key
            for (i = 0; i < 10000; i++)
                if (!ClientScript.IsStartupScriptRegistered(strKey + i.ToString()))
                    break;
            ClientScript.RegisterStartupScript(Type.GetType("System.String"), strKey + i.ToString(), strScript);
        }

        protected  void ServiceList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataRow sevDetailInfo = VirDBAccess.DbResource.getResourceSVCInfo(Session["r_vendor_number"].ToString(), ServiceList.SelectedItem.ToString(), Session["UserAct"].ToString());
            setTextBox(sevDetailInfo, "psrvnd");
            setTextBox(sevDetailInfo, "pvsrcd");
            setTextBox(sevDetailInfo, "pvssub");
            setTextBox(sevDetailInfo, "tablesNameRS");
            setTextBox(sevDetailInfo, "psrdes");
            setTextBox(sevDetailInfo, "psrcom");
            setTextBox(sevDetailInfo, "prsutp");
            setTextBox(sevDetailInfo, "psrbeg");
            setTextBox(sevDetailInfo, "psrcur");
            setTextBox(sevDetailInfo, "psrend");
            setSFActive();
        }


        private void getdata_bi(DataRow ResourceInfo)
        {
            //get bi baseinfo
            getTextBox(ResourceInfo, "r_vendor_number", 0);
            getTextBox(ResourceInfo, "r_resource_name", 0);
            getDropDownList(ResourceInfo, "r_service_code", 0);
            getDropDownList(ResourceInfo, "r_sub_code", 0);
            getDropDownList(ResourceInfo, "r_status", 0);
            getTextBox(ResourceInfo, "r_administrator", 0);
            getTextBox(ResourceInfo, "r_address_line_1", 0);
            getTextBox(ResourceInfo, "r_address_line_2", 0);
            getTextBox(ResourceInfo, "r_address_city", 0);
            getTextBox(ResourceInfo, "r_address_state", 0);
            getTextBox(ResourceInfo, "r_address_zip", 0);
            getDropDownList(ResourceInfo, "r_mail_code", 0);
            getTextBox(ResourceInfo, "r_phone_1", 0);
            getTextBox(ResourceInfo, "r_phone_2", 0);
            getTextBox(ResourceInfo, "r_cell_pager", 0);
            getTextBox(ResourceInfo, "r_fax", 0);
            getTextBox(ResourceInfo, "r_email", 0);
            getTextBox(ResourceInfo, "r_tax_id_number", 0);
            getTextBox(ResourceInfo, "r_tax_name", 0);
            getTextBox(ResourceInfo, "r_rate", 0);
            getTextBox(ResourceInfo, "r_ratio", 0);
            getTextBox(ResourceInfo, "r_level", 0);
            getTextBox(ResourceInfo, "r_unit", 0);
            getDropDownList(ResourceInfo, "r_last_mod_by", 0);
            getTextBox(ResourceInfo, "r_last_mod_date", 0);
        }

        private void getdata_si(DataRow ResourceInfo)
        {
            //get si baseinfo
            getTextBox(ResourceInfo, "r_site_name", 0);
            getTextBox(ResourceInfo, "r_site_address_line_1", 0);
            getTextBox(ResourceInfo, "r_site_address_line_2", 0);
            getTextBox(ResourceInfo, "r_site_address_city", 0);
            getTextBox(ResourceInfo, "r_site_address_state", 0);
            getTextBox(ResourceInfo, "r_site_address_zip", 0);
            getTextBox(ResourceInfo, "r_site_mail_code", 0);
            getTextBox(ResourceInfo, "r_site_phone_1", 0);
            getTextBox(ResourceInfo, "r_county", 0);
            getTextBox(ResourceInfo, "r_regional_center", 0);
            getRadioBox(ResourceInfo, "r_provider_relations", 0);
            getDropDownList(ResourceInfo, "r_qa_monitor", 0);
            getDropDownList(ResourceInfo, "r_staff_liaison", 0);
            getTextBox(ResourceInfo, "r_out_of_county_rc", 0);
            getTextBox(ResourceInfo, "r_license_number", 0);
            getTextBox(ResourceInfo, "r_licensee", 0);
            getDropDownList(ResourceInfo, "r_license_type", 0);
            getTextBox(ResourceInfo, "r_license_exp_date", 2);
            getTextBox(ResourceInfo, "r_insurance_name", 0);
            getTextBox(ResourceInfo, "r_insurance_exp_date", 2);
            getTextBox(ResourceInfo, "r_medi_cal", 0);
            getTextBox(ResourceInfo, "r_medi_cal_claim_cert", 0);
            getDropDownList(ResourceInfo, "r_language_1", 0);
            getDropDownList(ResourceInfo, "r_language_2", 0);
            getTextBox(ResourceInfo, "r_category_budget", 1);
            getTextBox(ResourceInfo, "r_capacity", 0);
            getTextBox(ResourceInfo, "r_age_range", 0);
            getCheckBox(ResourceInfo, "r_coffelt_only", 0);
            getDropDownList(ResourceInfo, "r_gender_pref", 0);
            getDropDownList(ResourceInfo, "r_amb_status", 0);
            getTextBox(ResourceInfo, "r_ambulatory", 0);
            getTextBox(ResourceInfo, "r_nonambulatory", 0);
            getTextBox(ResourceInfo, "r_amb_m", 0);
            getTextBox(ResourceInfo, "r_amb_f", 0);
            getTextBox(ResourceInfo, "r_nonamb_m", 0);
            getTextBox(ResourceInfo, "r_nonamb_f", 0);
            getTextBox(ResourceInfo, "r_consultant_name", 0);
            getTextBox(ResourceInfo, "r_consultant_contact", 0);
            getDropDownList(ResourceInfo, "r_consultant_type", 0);
            getTextBox(ResourceInfo, "r_consultant_licensed_staff", 0);
        }

        private void getdata_pr(DataRow ResourceInfo)
        {
            //get pr baseinfo
            getTextBox(ResourceInfo, "r_client_type", 0);
            getDropDownList(ResourceInfo, "r_profile_mr", 0);
            getDropDownList(ResourceInfo, "r_profile_mr_profound", 0);
            getDropDownList(ResourceInfo, "r_profile_mr_severe", 0);
            getDropDownList(ResourceInfo, "r_profile_mr_moderate", 0);
            getDropDownList(ResourceInfo, "r_profile_mr_mild", 0);
            getDropDownList(ResourceInfo, "r_profile_mr_border", 0);
            getDropDownList(ResourceInfo, "r_profile_autism", 0);
            getDropDownList(ResourceInfo, "r_profile_cp", 0);
            getDropDownList(ResourceInfo, "r_profile_seiz", 0);
            getDropDownList(ResourceInfo, "r_profile_seiz_cont", 0);
            getDropDownList(ResourceInfo, "r_profile_seiz_uncont", 0);
            getDropDownList(ResourceInfo, "r_profile_toilet", 0);
            getDropDownList(ResourceInfo, "r_profile_incontinent", 0);
            getDropDownList(ResourceInfo, "r_profile_bedwetting", 0);
            getDropDownList(ResourceInfo, "r_profile_dual_dx", 0);
            getDropDownList(ResourceInfo, "r_profile_behaviors", 0);
            getDropDownList(ResourceInfo, "r_profile_severe", 0);
            getDropDownList(ResourceInfo, "r_profile_noncomp", 0);
            getDropDownList(ResourceInfo, "r_profile_tantrum", 0);
            getDropDownList(ResourceInfo, "r_profile_verb_aggr", 0);
            getDropDownList(ResourceInfo, "r_profile_phys_aggr", 0);
            getDropDownList(ResourceInfo, "r_profile_prop_destr", 0);
            getDropDownList(ResourceInfo, "r_profile_biting", 0);
            getDropDownList(ResourceInfo, "r_profile_self_abuse", 0);
            getDropDownList(ResourceInfo, "r_profile_elope", 0);
            getDropDownList(ResourceInfo, "r_profile_sex", 0);
            getDropDownList(ResourceInfo, "r_profile_pica", 0);
            getDropDownList(ResourceInfo, "r_profile_smear", 0);
            getDropDownList(ResourceInfo, "r_profile_theft", 0);
            getDropDownList(ResourceInfo, "r_profile_hearing", 0);
            getDropDownList(ResourceInfo, "r_profile_bates", 0);
            getDropDownList(ResourceInfo, "r_profile_diabetes", 0);
            getDropDownList(ResourceInfo, "r_profile_gtube", 0);
            getDropDownList(ResourceInfo, "r_profile_nurse", 0);
            getDropDownList(ResourceInfo, "r_profile_other", 0);
            getTextBox(ResourceInfo, "r_profile_other_desc", 0);
            getDropDownList(ResourceInfo, "r_profile_smoking", 0);
            getDropDownList(ResourceInfo, "r_profile_smoke_in", 0);
            getDropDownList(ResourceInfo, "r_profile_smoke_out", 0);
            getDropDownList(ResourceInfo, "r_profile_csd", 0);
            getDropDownList(ResourceInfo, "r_profile_grants", 0);
        }

        private void getdata_rp(DataRow ResourceInfo)
        {
            //get rp baseinfo
            getDropDownList(ResourceInfo, "r_base_month", 0);
            getTextBox(ResourceInfo, "r_vendor_register_date", 2);
            getTextBox(ResourceInfo, "r_qa_evaluation_date", 2);
            getTextBox(ResourceInfo, "r_qa_eval_exit", 2);
            getTextBox(ResourceInfo, "r_fiscal_evaluation_date", 2);
            getTextBox(ResourceInfo, "r_rate_review_date", 2);
            getTextBox(ResourceInfo, "r_ar_checklist_date", 2);
            getTextBox(ResourceInfo, "r_ar_follow_up", 2);
            getTextBox(ResourceInfo, "r_sir_date", 2);
            getTextBox(ResourceInfo, "r_technical_assistance", 2);
            getTextBox(ResourceInfo, "r_corrective_action_date", 2);
            getTextBox(ResourceInfo, "r_ad_hoc", 2);
            getTextBox(ResourceInfo, "r_rate_effective_date", 2);
            getTextBox(ResourceInfo, "r_unannounced_visit_1", 2);
            getTextBox(ResourceInfo, "r_unannounced_visit_2", 2);
            getTextBox(ResourceInfo, "r_monitor_date", 2);
            getTextBox(ResourceInfo, "r_ccl_hcl_lic_date", 2);
            getTextBox(ResourceInfo, "r_sanction_date_start", 2);
            getTextBox(ResourceInfo, "r_sanction_date_end", 2);
            getTextBox(ResourceInfo, "r_dds_review_date", 2);
            getTextBox(ResourceInfo, "r_delete_date", 2);

            getDropDownList(ResourceInfo, "r_annual_visit_type", 0);
            getDropDownList(ResourceInfo, "r_annual_visit_month", 0);
            getTextBox(ResourceInfo, "r_annual_visit_year", 0);
            getDropDownList(ResourceInfo, "r_unan_visit_month", 0);
            getTextBox(ResourceInfo, "r_unan_visit_year", 0);
            getDropDownList(ResourceInfo, "r_cap_visit_month", 0);
            getTextBox(ResourceInfo, "r_cap_visit_year", 0);
            getDropDownList(ResourceInfo, "r_kea_monitor", 0);
        }

        private void getdata_cm(DataRow ResourceInfo)
        {
            //get cm baseinfo
            getDropDownList(ResourceInfo, "r_f_1", 0);
            getDropDownList(ResourceInfo, "r_f_2", 0);
            //getDropDownList(ResourceInfo, "r_language_1_SP", 0);
            //getDropDownList(ResourceInfo, "r_language_2_SP", 0);
            getTextBox(ResourceInfo, "r_s1_1", 0);
            getTextBox(ResourceInfo, "r_comment_1", 0);
            getTextBox(ResourceInfo, "r_comment_2", 0);
            getTextBox(ResourceInfo, "r_comment_3", 0);
            getTextBox(ResourceInfo, "r_comment_4", 0);
            getTextBox(ResourceInfo, "r_comment_5", 0);
            getTextBox(ResourceInfo, "r_comment_6", 0);
        }

        //get service info
        private void getdata_sf(DataRow ResourceInfo)
        {
            //get sf baseinfo
            
        }

        protected void btnAdd_Click(object sender, System.EventArgs e)
		{
			//try
			{
                System.Data.SqlClient.SqlDataAdapter ResourceAD = new System.Data.SqlClient.SqlDataAdapter();
                VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
                DataSet ResourceSet = new DataSet();
                string sqlstr = string.Format("select top 1 * from resource_all");

                DataRow ResourceInfo = VirDBAccess.DbResource.constructResourceTable(ResourceAD, ResourceSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();

                getdata_bi(ResourceInfo);
                getdata_si(ResourceInfo);
                getdata_pr(ResourceInfo);
                getdata_rp(ResourceInfo);
                getdata_cm(ResourceInfo);
                getdata_sf(ResourceInfo);

                if (VirDBAccess.DbResource.addResourceInfo(ResourceAD, ResourceSet, ResourceInfo, Session["useract"].ToString()) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                }

                ResourceAD.Dispose();
                cn.close();
			}
			//catch{}
		}
		
        protected void btnEdit_Click(object sender, System.EventArgs e)
		{
			//try
			{
                System.Data.SqlClient.SqlDataAdapter ResourceAD = new System.Data.SqlClient.SqlDataAdapter();
                VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
                DataSet ResourceSet = new DataSet();
                string sqlstr = string.Format("select * from resource_all where r_resource_id='{0}'", Session["ResourceSel"].ToString());
                DataRow ResourceInfo = VirDBAccess.DbResource.constructResourceTable(ResourceAD, ResourceSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];

                getdata_bi(ResourceInfo);
                getdata_si(ResourceInfo);
                getdata_pr(ResourceInfo);
                getdata_rp(ResourceInfo);
                getdata_cm(ResourceInfo);
                getdata_sf(ResourceInfo);

                if (VirDBAccess.DbResource.updateResourceInfo(ResourceAD, ResourceSet) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(0);doseltdbyflag(" + now_div_flag.Value.ToString().TrimEnd() + ");</script>");
                }

                ResourceAD.Dispose();
                cn.close();
			}
			//catch{}
		}       
               
        private void showLabel_basic(DataRow ResourceLabelInfo)
        {
            setLabel(ResourceLabelInfo, "l_r_vendor_number");
            setLabel(ResourceLabelInfo, "l_r_resource_name");
            setLabel(ResourceLabelInfo, "l_r_service_code");
            setLabel(ResourceLabelInfo, "l_r_sub_code");
            setLabel(ResourceLabelInfo, "l_r_status");
            setLabel(ResourceLabelInfo, "l_r_administrator");
            setLabel(ResourceLabelInfo, "l_r_phone_1");
            setLabel(ResourceLabelInfo, "l_r_address_line_1");
            setLabel(ResourceLabelInfo, "l_r_phone_2");
            setLabel(ResourceLabelInfo, "l_r_address_line_2");
            setLabel(ResourceLabelInfo, "l_r_cell_pager");
            setLabel(ResourceLabelInfo, "l_r_address_city");
            //setLabel(ResourceLabelInfo, "l_r_address_state");
            setLabel(ResourceLabelInfo, "l_r_fax");
            setLabel(ResourceLabelInfo, "l_r_address_zip");
            //setLabel(ResourceLabelInfo, "l_r_mail_code");
            setLabel(ResourceLabelInfo, "l_r_email");
            setLabel(ResourceLabelInfo, "l_r_tax_id_number");
            setLabel(ResourceLabelInfo, "l_r_ratio");
            setLabel(ResourceLabelInfo, "l_r_tax_name");
            setLabel(ResourceLabelInfo, "l_r_level");
            setLabel(ResourceLabelInfo, "l_r_rate");
            setLabel(ResourceLabelInfo, "l_r_unit");
            setLabel(ResourceLabelInfo, "l_r_last_mod_by");
            setLabel(ResourceLabelInfo, "l_r_last_mod_date"); 
        }

        private void showLabel_site(DataRow ResourceLabelInfo)
        {
            setLabel(ResourceLabelInfo, "l_r_site_name");
            setLabel(ResourceLabelInfo, "l_r_provider_relations");
            setLabel(ResourceLabelInfo, "l_r_site_address_line_1");
            setLabel(ResourceLabelInfo, "l_r_qa_monitor");
            setLabel(ResourceLabelInfo, "l_r_site_address_line_2");
            setLabel(ResourceLabelInfo, "l_r_staff_liaison");
            setLabel(ResourceLabelInfo, "l_r_site_address_city");
            //setLabel(ResourceLabelInfo, "l_r_site_address_state");
            setLabel(ResourceLabelInfo, "l_r_site_address_zip");
            //setLabel(ResourceLabelInfo, "l_r_site_mail_code");
            setLabel(ResourceLabelInfo, "l_r_out_of_county_rc");
            setLabel(ResourceLabelInfo, "l_r_site_phone_1");
            setLabel(ResourceLabelInfo, "l_r_county");
            setLabel(ResourceLabelInfo, "l_r_regional_center");
            setLabel(ResourceLabelInfo, "l_r_language_1");
            setLabel(ResourceLabelInfo, "l_r_language_2");
            setLabel(ResourceLabelInfo, "l_r_license_number");
            setLabel(ResourceLabelInfo, "l_r_category_budget");
            setLabel(ResourceLabelInfo, "l_r_capacity");
            setLabel(ResourceLabelInfo, "l_r_licensee");
            setLabel(ResourceLabelInfo, "l_r_age_range");
            //setLabel(ResourceLabelInfo, "l_r_coffelt_only");
            setLabel(ResourceLabelInfo, "l_r_license_type");
            setLabel(ResourceLabelInfo, "l_r_gender_pref");
            setLabel(ResourceLabelInfo, "l_r_license_exp_date");
            setLabel(ResourceLabelInfo, "l_r_amb_status");
            setLabel(ResourceLabelInfo, "l_r_insurance_name");
            setLabel(ResourceLabelInfo, "l_r_ambulatory");
            setLabel(ResourceLabelInfo, "l_r_nonambulatory");
            setLabel(ResourceLabelInfo, "l_r_insurance_exp_date");
            setLabel(ResourceLabelInfo, "l_r_amb_m");
            setLabel(ResourceLabelInfo, "l_r_amb_f");
            setLabel(ResourceLabelInfo, "l_r_medi_cal");
            setLabel(ResourceLabelInfo, "l_r_medi_cal_claim_cert");
            setLabel(ResourceLabelInfo, "l_r_nonamb_m");
            setLabel(ResourceLabelInfo, "l_r_nonamb_f");
            setLabel(ResourceLabelInfo, "l_r_consultant_name");
            setLabel(ResourceLabelInfo, "l_r_consultant_contact");
            setLabel(ResourceLabelInfo, "l_r_consultant_type");
            setLabel(ResourceLabelInfo, "l_r_consultant_licensed_staff"); 
        }

        private void showLabel_profile(DataRow ResourceLabelInfo)
        {
            setLabel(ResourceLabelInfo, "l_r_client_type");
            setLabel(ResourceLabelInfo, "l_r_profile_mr");
            setLabel(ResourceLabelInfo, "l_r_profile_dual_dx");
            setLabel(ResourceLabelInfo, "l_r_profile_mr_profound");
            setLabel(ResourceLabelInfo, "l_r_profile_hearing");
            setLabel(ResourceLabelInfo, "l_r_profile_mr_severe");
            setLabel(ResourceLabelInfo, "l_r_profile_behaviors");
            setLabel(ResourceLabelInfo, "l_r_profile_bates");
            setLabel(ResourceLabelInfo, "l_r_profile_mr_moderate");
            setLabel(ResourceLabelInfo, "l_r_profile_severe");
            setLabel(ResourceLabelInfo, "l_r_profile_diabetes");
            setLabel(ResourceLabelInfo, "l_r_profile_mr_mild");
            setLabel(ResourceLabelInfo, "l_r_profile_noncomp");
            setLabel(ResourceLabelInfo, "l_r_profile_gtube");
            setLabel(ResourceLabelInfo, "l_r_profile_mr_border");
            setLabel(ResourceLabelInfo, "l_r_profile_tantrum");
            setLabel(ResourceLabelInfo, "l_r_profile_nurse");
            setLabel(ResourceLabelInfo, "l_r_profile_verb_aggr");
            setLabel(ResourceLabelInfo, "l_r_profile_other");
            setLabel(ResourceLabelInfo, "l_r_profile_autism");
            setLabel(ResourceLabelInfo, "l_r_profile_phys_aggr");
            setLabel(ResourceLabelInfo, "l_r_profile_cp");
            setLabel(ResourceLabelInfo, "l_r_profile_prop_destr");
            setLabel(ResourceLabelInfo, "l_r_profile_biting");
            setLabel(ResourceLabelInfo, "l_r_profile_seiz");
            setLabel(ResourceLabelInfo, "l_r_profile_self_abuse");
            setLabel(ResourceLabelInfo, "l_r_profile_seiz_cont");
            setLabel(ResourceLabelInfo, "l_r_profile_elope");
            setLabel(ResourceLabelInfo, "l_r_profile_seiz_uncont");
            setLabel(ResourceLabelInfo, "l_r_profile_sex");
            setLabel(ResourceLabelInfo, "l_r_profile_pica");
            setLabel(ResourceLabelInfo, "l_r_profile_smoking");
            setLabel(ResourceLabelInfo, "l_r_profile_toilet");
            setLabel(ResourceLabelInfo, "l_r_profile_smear");
            setLabel(ResourceLabelInfo, "l_r_profile_smoke_out");
            setLabel(ResourceLabelInfo, "l_r_profile_incontinent");
            setLabel(ResourceLabelInfo, "l_r_profile_theft");
            setLabel(ResourceLabelInfo, "l_r_profile_smoke_in");
            setLabel(ResourceLabelInfo, "l_r_profile_bedwetting");
            setLabel(ResourceLabelInfo, "l_r_profile_csd");
            setLabel(ResourceLabelInfo, "l_r_profile_grants");
        }

        private void showLabel_reports(DataRow ResourceLabelInfo)
        {
            setLabel(ResourceLabelInfo, "l_r_base_month");
            setLabel(ResourceLabelInfo, "l_r_rate_effective_date");
            setLabel(ResourceLabelInfo, "l_r_vendor_register_date");
            setLabel(ResourceLabelInfo, "l_r_qa_evaluation_date");
            setLabel(ResourceLabelInfo, "l_r_unannounced_visit_1");
            setLabel(ResourceLabelInfo, "l_r_qa_eval_exit");
            setLabel(ResourceLabelInfo, "l_r_unannounced_visit_2");
            setLabel(ResourceLabelInfo, "l_r_fiscal_evaluation_date");
            setLabel(ResourceLabelInfo, "l_r_monitor_date");
            setLabel(ResourceLabelInfo, "l_r_rate_review_date");
            setLabel(ResourceLabelInfo, "l_r_ccl_hcl_lic_date");
            setLabel(ResourceLabelInfo, "l_r_ar_checklist_date");
            setLabel(ResourceLabelInfo, "l_r_ar_follow_up");
            setLabel(ResourceLabelInfo, "l_r_sanction_date_start");
            setLabel(ResourceLabelInfo, "l_r_sir_date");
            setLabel(ResourceLabelInfo, "l_r_sanction_date_end");
            setLabel(ResourceLabelInfo, "l_r_technical_assistance");
            setLabel(ResourceLabelInfo, "l_r_dds_review_date");
            setLabel(ResourceLabelInfo, "l_r_corrective_action_date");
            setLabel(ResourceLabelInfo, "l_r_ad_hoc");
            setLabel(ResourceLabelInfo, "l_r_delete_date"); 
        }

        private void showLabel_comment(DataRow ResourceLabelInfo)
        {
            setLabel(ResourceLabelInfo, "l_r_f_1");
            setLabel(ResourceLabelInfo, "l_r_language_1_SP");
            setLabel(ResourceLabelInfo, "l_r_f_2");
            setLabel(ResourceLabelInfo, "l_r_language_2_SP");
            setLabel(ResourceLabelInfo, "l_r_s1_1");
            setLabel(ResourceLabelInfo, "l_r_comment_1");
            setLabel(ResourceLabelInfo, "l_r_comment_2");
            setLabel(ResourceLabelInfo, "l_r_comment_3");
            setLabel(ResourceLabelInfo, "l_r_comment_4");
            setLabel(ResourceLabelInfo, "l_r_comment_5");
            setLabel(ResourceLabelInfo, "l_r_comment_6"); 
        }

        private void showLabel_service(DataRow ResourceLabelInfo)
        {
            setLabel(ResourceLabelInfo, "l_ServiceList");
            setLabel(ResourceLabelInfo, "l_psrvnd");
            setLabel(ResourceLabelInfo, "l_pvsrcd");
            setLabel(ResourceLabelInfo, "l_srvcNameRS");
            setLabel(ResourceLabelInfo, "l_pvssub");
            setLabel(ResourceLabelInfo, "l_psrdes");
            setLabel(ResourceLabelInfo, "l_psrcom");
            setLabel(ResourceLabelInfo, "l_prsutp");
            setLabel(ResourceLabelInfo, "l_psrcur");
            setLabel(ResourceLabelInfo, "l_psrbeg");
            setLabel(ResourceLabelInfo, "l_psrend");  
        }
	}
}