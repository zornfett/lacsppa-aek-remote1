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
    public partial class webMedicalDoctor : webCommonPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.CacheControl = "no-cache";
            Response.AddHeader("Pragma", "no-cache");
            Response.Expires = -1;

            if ((Session["UserID"] == null) || (Session["UserID"].ToString() == ""))
            {
                string scriptstr = "<script type='text/javaScript'>PopupMessage(11);var opener=window.dialogArguments;window.close();opener.top.location.replace('../default.aspx');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                return;
            }

         // Response.AppendHeader("Refresh", Convert.ToString(Session.Timeout * 60 + 10));

            if (!Page.IsPostBack)
            {
                //buttons setup
                /*
                DataTable DT_ButtonsSet = (DataTable)Session["userbuttons"];
                if (DT_ButtonsSet.Rows.Count > 0)
                {
                    btnEdit.Text = DT_ButtonsSet.Rows[0]["l_Save"].ToString().TrimEnd();
                    btnAdd.Text = DT_ButtonsSet.Rows[0]["l_Save"].ToString().TrimEnd();
                    btnPrint.Value = DT_ButtonsSet.Rows[0]["l_Print"].ToString().TrimEnd();
                    btnHelp.Value = DT_ButtonsSet.Rows[0]["l_Help"].ToString().TrimEnd();
                }
                */
                DataRow ConsumerInfo = VirDBAccess.DbConsumer.getConsumerInfo(Request.QueryString["s_key"], Session["UserAct"].ToString());
                if (ConsumerInfo["c_dob"].ToString() == "")
                    Info.Text = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"];
                else
                    Info.Text = Session["ClientDisp"].ToString() + ": " + ConsumerInfo["c_name_first"] + " " + ConsumerInfo["c_name_last"] + " - " + ConsumerInfo["c_uci"] + "    DOB: " + ((DateTime)ConsumerInfo["c_dob"]).ToShortDateString();
                Info.Text += "<br>";
                Info.Text += Session["CoordDisp"].ToString() + ": " + ConsumerInfo["CaseMgrName"];

                if (Request.QueryString["type"] != null)
                {
                    if (Request.QueryString["type"].ToString().TrimEnd() == "edit")
                    {
                        body.Attributes.Add("onbeforeunload", "HandleOnClose(event, 1)");
                        body.Attributes.Add("onkeyup", "DataChanged()");
                    }
                }

                string lastvisitdoc = ConsumerInfo["c_medical_date"].ToString();

                if (lastvisitdoc.Trim() == "")
                    last_hea_psy_con.Text = "NA";
                else
                    last_hea_psy_con.Text = lastvisitdoc;

                this.UserAct.Value = Session["UserAct"].ToString();
                this.consumer_key.Value = Request.QueryString["s_key"].ToString().TrimEnd();

                DataRow SignificantOtherInfo;

                //try
                {
                    if (Request.QueryString["s_number"] != null)
                    {
                        SignificantOtherInfo = VirDBAccess.DbConsumer.getSignificantOtherInfo(Request.QueryString["s_key"].ToString().TrimEnd(), Request.QueryString["s_number"].ToString().TrimEnd(),
                            "MED", Session["UserAct"].ToString());
                        this.s_number.Value = Request.QueryString["s_number"].ToString().TrimEnd();
                    }
                    else
                    {
                        SignificantOtherInfo = VirDBAccess.DbConsumer.getSignificantOtherNewInfo(Session["UserAct"].ToString());
                        SignificantOtherInfo["s_key"] = Request.QueryString["s_key"];
                        SignificantOtherInfo["s_group"] = "MED";
                    }

                    BindDropDownLists();

                    DisplaySignificantOtherInfo(SignificantOtherInfo);
                }
                //catch { }

                switch (Request.QueryString["type"])
                {
                    case "edit":
                        btnEdit.Visible = true;
                        btnPrint.Visible = true;
                        break;
                    case "add":
                        btnAdd.Visible = true;
                        btnPrint.Visible = false;
                        break;
                }

                if (Request.QueryString["type"] == null)
                {
                    setControlReadOnly(this.MedicalDT);
                    btnPrint.Disabled = false;
                }
            }
            else
            {
                if (hdtoSaveData.Value == "PageClosed")
                {
                    if (btnEdit.Visible)
                        SaveData();
                    else if (btnAdd.Visible)
                        AddData();
                }
            }
        }

        private void BindDropDownLists()
        {
            DataTable RelationshipDT = VirDBAccess.DbCommon.getTables2InfoList("MED", "CONTACT TYPE", Session["UserAct"].ToString());
            s_relationship.DataSource = RelationshipDT;
            s_relationship.DataBind();
            DataTable AddrCodeDT = VirDBAccess.DbCommon.getTablesList("ADDR CODE", Session["UserAct"].ToString());
            s_mail_code.DataSource = AddrCodeDT;
            s_mail_code.DataBind();
            s_work_mail_code.DataSource = AddrCodeDT;
            s_work_mail_code.DataBind();
            DataTable Phone3LabelDT = VirDBAccess.DbCommon.getTablesList("PHONE LABEL", Session["UserAct"].ToString());
            s_phone_3_label.DataSource = Phone3LabelDT;
            s_phone_3_label.DataBind();
        }

        private void DisplaySignificantOtherInfo(DataRow SignificantOtherInfo)
        {
            setTable2Value(SignificantOtherInfo, "s_group", "CONTACT GROUP");
            setDropDownList(SignificantOtherInfo, "s_relationship");
            setTextBox(SignificantOtherInfo, "s_name_last");
            setTextBox(SignificantOtherInfo, "s_name_first");
            setTextBox(SignificantOtherInfo, "s_name_mi");
            setCheckBox(SignificantOtherInfo, "s_previousprovider");
            setCheckBox(SignificantOtherInfo, "s_primary_doctor");            
            setDropDownList(SignificantOtherInfo, "s_phone_3_label");
            //setTextBox(SignificantOtherInfo, "s_phone_1");
            if ((SignificantOtherInfo["s_phone_1"] != System.DBNull.Value) && (SignificantOtherInfo["s_phone_1"].ToString().Trim(null).Length >= 10))
            {
                s_phone_1_1.Text = SignificantOtherInfo["s_phone_1"].ToString().Substring(0, 3);
                s_phone_1_2.Text = SignificantOtherInfo["s_phone_1"].ToString().Substring(3, 3);
                s_phone_1_3.Text = SignificantOtherInfo["s_phone_1"].ToString().Substring(6, 4);
            }
            //setTextBox(SignificantOtherInfo, "s_phone_2");
            if ((SignificantOtherInfo["s_phone_2"] != System.DBNull.Value) && (SignificantOtherInfo["s_phone_2"].ToString().Trim(null).Length >= 10))
            {
                s_phone_2_1.Text = SignificantOtherInfo["s_phone_2"].ToString().Substring(0, 3);
                s_phone_2_2.Text = SignificantOtherInfo["s_phone_2"].ToString().Substring(3, 3);
                s_phone_2_3.Text = SignificantOtherInfo["s_phone_2"].ToString().Substring(6, 4);
            }
            //setTextBox(SignificantOtherInfo, "s_phone_3");
            if ((SignificantOtherInfo["s_phone_3"] != System.DBNull.Value) && (SignificantOtherInfo["s_phone_3"].ToString().Trim(null).Length >= 10))
            {
                s_phone_3_1.Text = SignificantOtherInfo["s_phone_3"].ToString().Substring(0, 3);
                s_phone_3_2.Text = SignificantOtherInfo["s_phone_3"].ToString().Substring(3, 3);
                s_phone_3_3.Text = SignificantOtherInfo["s_phone_3"].ToString().Substring(6, 4);
            }
            setTextBox(SignificantOtherInfo, "s_email");
            setTextBox(SignificantOtherInfo, "s_address_name");
            setTextBox(SignificantOtherInfo, "s_address_line_1");
            setTextBox(SignificantOtherInfo, "s_address_line_2");
            setTextBox(SignificantOtherInfo, "s_address_city");
            setTextBox(SignificantOtherInfo, "s_address_state");
            setTextBox(SignificantOtherInfo, "s_address_zip");
            setDropDownList(SignificantOtherInfo, "s_mail_code");
            setTextBox(SignificantOtherInfo, "s_employer");
            setTextBox(SignificantOtherInfo, "s_work_address_line_1");
            setTextBox(SignificantOtherInfo, "s_work_address_line_2");
            setTextBox(SignificantOtherInfo, "s_work_address_city");
            setTextBox(SignificantOtherInfo, "s_work_address_state");
            setTextBox(SignificantOtherInfo, "s_work_address_zip");
            setDropDownList(SignificantOtherInfo, "s_work_mail_code");
            setTextBox(SignificantOtherInfo, "s_comment_1");
            setTextBox(SignificantOtherInfo, "s_comment_2");
            setTextBox(SignificantOtherInfo, "s_comment_3");
        }

        private void RetrieveSignificantOtherInfo(DataRow SignificantOtherInfo)
        {
            getDropDownList(SignificantOtherInfo, "s_relationship", 0);
            getTextBox(SignificantOtherInfo, "s_name_last", 0);
            getTextBox(SignificantOtherInfo, "s_name_first", 0);
            getTextBox(SignificantOtherInfo, "s_name_mi", 0);
            getCheckBox(SignificantOtherInfo, "s_previousprovider", 0);
            getCheckBox(SignificantOtherInfo, "s_primary_doctor", 0);            
            getDropDownList(SignificantOtherInfo, "s_phone_3_label", 0);
            //getTextBox(SignificantOtherInfo, "s_phone_1", 0);
            if (s_phone_1_1.Text.TrimEnd().Length == 3 && s_phone_1_2.Text.TrimEnd().Length == 3 && s_phone_1_3.Text.TrimEnd().Length == 4)
                SignificantOtherInfo["s_phone_1"] = s_phone_1_1.Text + s_phone_1_2.Text + s_phone_1_3.Text;
            else if (s_phone_1_1.Text.TrimEnd().Length == 0 && s_phone_1_2.Text.TrimEnd().Length == 0 && s_phone_1_3.Text.TrimEnd().Length == 0)
                SignificantOtherInfo["s_phone_1"] = "";
            //getTextBox(SignificantOtherInfo, "s_phone_2", 0);
            if (s_phone_2_1.Text.TrimEnd().Length == 3 && s_phone_2_2.Text.TrimEnd().Length == 3 && s_phone_2_3.Text.TrimEnd().Length == 4)
                SignificantOtherInfo["s_phone_2"] = s_phone_2_1.Text + s_phone_2_2.Text + s_phone_2_3.Text;
            else if (s_phone_2_1.Text.TrimEnd().Length == 0 && s_phone_2_2.Text.TrimEnd().Length == 0 && s_phone_2_3.Text.TrimEnd().Length == 0)
                SignificantOtherInfo["s_phone_2"] = "";
            //getTextBox(SignificantOtherInfo, "s_phone_3", 0);
            if (s_phone_3_1.Text.TrimEnd().Length == 3 && s_phone_3_2.Text.TrimEnd().Length == 3 && s_phone_3_3.Text.TrimEnd().Length == 4)
                SignificantOtherInfo["s_phone_3"] = s_phone_3_1.Text + s_phone_3_2.Text + s_phone_3_3.Text;
            else if (s_phone_3_1.Text.TrimEnd().Length == 0 && s_phone_3_2.Text.TrimEnd().Length == 0 && s_phone_3_3.Text.TrimEnd().Length == 0)
                SignificantOtherInfo["s_phone_3"] = "";

            getTextBox(SignificantOtherInfo, "s_email", 0);
            getTextBox(SignificantOtherInfo, "s_address_name", 0);
            getTextBox(SignificantOtherInfo, "s_address_line_1", 0);
            getTextBox(SignificantOtherInfo, "s_address_line_2", 0);
            getTextBox(SignificantOtherInfo, "s_address_city", 0);
            getTextBox(SignificantOtherInfo, "s_address_state", 0);
            getTextBox(SignificantOtherInfo, "s_address_zip", 0);
            getDropDownList(SignificantOtherInfo, "s_mail_code", 0);
            getTextBox(SignificantOtherInfo, "s_employer", 0);
            getTextBox(SignificantOtherInfo, "s_work_address_line_1", 0);
            getTextBox(SignificantOtherInfo, "s_work_address_line_2", 0);
            getTextBox(SignificantOtherInfo, "s_work_address_city", 0);
            getTextBox(SignificantOtherInfo, "s_work_address_state", 0);
            getTextBox(SignificantOtherInfo, "s_work_address_zip", 0);
            getDropDownList(SignificantOtherInfo, "s_work_mail_code", 0);
            getTextBox(SignificantOtherInfo, "s_comment_1", 0);
            getTextBox(SignificantOtherInfo, "s_comment_2", 0);
            getTextBox(SignificantOtherInfo, "s_comment_3", 0);

            SignificantOtherInfo["s_last_mod_date"] = DateTime.Now.ToString("MM/dd/yyyy HH:mm:ss");
            SignificantOtherInfo["s_last_mod_by"] = Session["userid"].ToString().TrimEnd();
        }

        private void AddData()
        {
            //try
            {
                System.Data.SqlClient.SqlDataAdapter SignificantOtherAD = new System.Data.SqlClient.SqlDataAdapter();
                VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
                DataSet SignificantOtherSet = new DataSet();
                string sqlstr = string.Format("select top 1 * from Significant_Other where s_key='{0}'", Request.QueryString["s_key"]);

                DataRow SignificantOtherInfo = VirDBAccess.DbConsumer.constructSignificantOtherTable(SignificantOtherAD, SignificantOtherSet, cn, sqlstr, Session["UserAct"].ToString()).NewRow();

                RetrieveSignificantOtherInfo(SignificantOtherInfo);
                SignificantOtherInfo["s_key"] = Request.QueryString["s_key"];
                SignificantOtherInfo["s_group"] = "MED";

                if (VirDBAccess.DbConsumer.addSignificantOtherInfo(Request.QueryString["s_key"], SignificantOtherAD, SignificantOtherSet, SignificantOtherInfo,
                    Session["DefRegName"].ToString(), Session["UserAct"].ToString()) == 0)
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(0);RefreshParent(1);</script>");
                }

                SignificantOtherAD.Dispose();
                cn.close();
            }
            //catch { }
        }

        protected void btnAdd_Click(object sender, System.EventArgs e)
        {
            AddData();
        }

        private void SaveData()
        {
            //try
            {
                System.Data.SqlClient.SqlDataAdapter SignificantOtherAD = new System.Data.SqlClient.SqlDataAdapter();
                VirDBAccess.DbConnect cn = new VirDBAccess.DbConnect();
                DataSet SignificantOtherSet = new DataSet();
                string sqlstr = string.Format("select * from Significant_Other where s_key='{0}' and s_number='{1}' and s_group='MED'",
                    Request.QueryString["s_key"], Request.QueryString["s_number"]);
                
                DataRow SignificantOtherInfo = VirDBAccess.DbConsumer.constructSignificantOtherTable(SignificantOtherAD, SignificantOtherSet, cn, sqlstr, Session["UserAct"].ToString()).Rows[0];
                if(s_primary_doctor.Checked)
                    VirDBAccess.DbConsumer.clearPrimaryDoctor(sqlstr, Session["UserAct"].ToString());
                RetrieveSignificantOtherInfo(SignificantOtherInfo);

                string usraccnt = Request.QueryString["s_key"]; 
                if (last_hea_psy_con.Text.Length > 1)
                {
                    string sqlstr_med_date = "UPDATE consumer_all SET c_medical_date = '" + last_hea_psy_con.Text + "' WHERE c_key = '" + usraccnt+"';";
                    VirDBAccess.DbConsumer.updateDateLastVisit(sqlstr_med_date, Session["UserAct"].ToString());
                } 


                if (VirDBAccess.DbConsumer.updateSignificantOtherInfo(SignificantOtherAD, SignificantOtherSet) == 0)
                {

                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(1);</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", "<script>PopupMessage(0);RefreshParent(0);</script>");
                }

                SignificantOtherAD.Dispose();
                cn.close();
            }
            //catch { }
        }

        protected void btnEdit_Click(object sender, System.EventArgs e)
        {
            SaveData();
        }
    }
}