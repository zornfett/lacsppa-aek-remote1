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
using System.Collections.Generic;

namespace Virweb2.WebList
{
    public partial class webConsumerMapInfo : webCommonPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.CacheControl = "no-cache";
            Response.AddHeader("Pragma", "no-cache");
            Response.Expires = -1;
            string str_display_at_once;

            if ((Session["UserID"] == null) || (Session["UserID"].ToString() == ""))
            {
                string scriptstr = "<script type='text/javaScript'>PopupMessage(11);var opener=window.dialogArguments;window.close();opener.top.location.replace('../default.aspx');</script>";
                ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                return;
            }

         // Response.AppendHeader("Refresh", Convert.ToString(Session.Timeout * 60 + 10));

            if (!Page.IsPostBack)
            {
                DataTable consumer_dt = new DataTable();
                if (Request.QueryString["select_consumer"] != null)              
                {
                    string str_select_consumer = Request.QueryString["select_consumer"].ToString().TrimEnd();
                    consumer_dt = VirDBAccess.DbConsumer.getConsumerListForConsumer_MAP(str_select_consumer, Session["UserAct"].ToString());

                    if (consumer_dt.Rows.Count <= 0)
                    {
                        string scriptstr = "<script type='text/javaScript'>javascript:self.close();</script>";
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        return;
                    }

                    try
                    {
                        string street = "", city = "", state = "", zip = "", area = "";
                        string uci = "", uci_name = "";
                        List<string> addresses = new List<string>();

                        int j = 0;
                        string scriptstr = "";
                        //scriptstr = "<script type='text/javaScript'>";
                        for (int i = 0; i < consumer_dt.DefaultView.Count; i++)
                        {
                            street = consumer_dt.Rows[i]["c_address_line_1"].ToString().TrimEnd();
                            city = consumer_dt.Rows[i]["c_address_city"].ToString().TrimEnd();
                            state = consumer_dt.Rows[i]["c_address_state"].ToString().TrimEnd();
                            zip = consumer_dt.Rows[i]["c_address_zip"].ToString().TrimEnd();

                            street = street.ToUpper();

                            // try to clean up the street name
                            if (street.Contains("STREET"))
                            {
                                street = street.Substring(0, street.IndexOf("STREET") + 6);
                            }
                            if (street.Contains("ROAD"))
                            {
                                street = street.Substring(0, street.IndexOf("ROAD") + 4);
                            }
                            if (street.Contains("AVENUE"))
                            {
                                street = street.Substring(0, street.IndexOf("AVENUE") + 6);
                            }
                            if (street.Contains("AVE"))
                            {
                                street = street.Substring(0, street.IndexOf("AVE") + 3);
                            }
                            if (street.Contains("RD"))
                            {
                                street = street.Substring(0, street.IndexOf("RD") + 2);
                            }
                            if (street.Contains("ST"))
                            {
                                street = street.Substring(0, street.IndexOf("ST") + 2);
                            }

                            // maybe we can just break if street is blank? lets check the value first
                            if ((street != "") && (city != "") && (state != "") && (zip != ""))
                            {
                                j = j + 1;
                                area = street + "," + city + "," + state + "," + zip;
                                uci = consumer_dt.Rows[i]["c_uci"].ToString().TrimEnd();
                                uci_name = consumer_dt.Rows[i]["c_name_first"].ToString().TrimEnd() + " " + consumer_dt.Rows[i]["c_name_last"].ToString().TrimEnd();
                                area = area.Replace("'", "`");
                                uci_name = uci_name.Replace("'", "`");
                                int k;
                                for (k = 0; k < area.Length; k++)
                                {
                                    if ((area[k] >= 127) || (area[k] <= 31))
                                        area = area.Remove(k, 1);
                                }
                                for (k = 0; k < uci_name.Length; k++)
                                {
                                    if ((uci_name[k] >= 127) || (uci_name[k] <= 31))
                                        uci_name = uci_name.Remove(k, 1);
                                }

                                // make sure don't add blanks
                                if (area.Length > 0)
                                    addresses.Add(area);

                                //scriptstr += "showAddress(\'" + area + "\',\'" + uci + "\',\'" + uci_name + "\');";
                            }
                        }

                        if (addresses.Count == 1)
                        {
                            scriptstr += "<script type='text/javaScript'>setoneaddr(\'" + addresses[0] + "\');</script>";
                            scriptstr += "<script async defer src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAddress'></script>";

                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        }
                        else
                        {
                            scriptstr = "<script type='text/javaScript'>";


                            for (int k = 0; k < addresses.Count; k++)
                            {
                                scriptstr += "setMultiAddress(\'" + addresses[k] + "\');";
                            }
                            //scriptstr += "showAddressMulti(\'" + "Sacramento, CA" + "\');";

                            scriptstr += "</script><script async defer src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAddressMulti'></script>";
                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        }

                    }
                    catch { }

                }
                else if (Request.QueryString["display_at_once"] != null)
                {
                    string scriptstr = "";
                    str_display_at_once = Request.QueryString["display_at_once"].ToString().TrimEnd();
                    scriptstr += "<script type='text/javaScript'>setoneaddr(\'" + str_display_at_once + "\');</script>";
                    scriptstr += "<script async defer src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAtOnce'></script>";

                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                }
                else
                {
                    consumer_dt = VirDBAccess.DbConsumer.getConsumerListForCM_MAP(Session["userid"].ToString(), Session["UserAct"].ToString());

                    if (consumer_dt.Rows.Count <= 0)
                    {
                        string scriptstr = "<script type='text/javaScript'>javascript:self.close();</script>";
                        ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        return;
                    }

                    try
                    {
                        string street = "", city = "", state = "", zip = "", area = "";
                        string uci = "", uci_name = "";
                        List<string> addresses = new List<string>();

                        int j = 0;
                        string scriptstr = "";
                        //scriptstr = "<script type='text/javaScript'>";
                        for (int i = 0; i < consumer_dt.DefaultView.Count; i++)
                        {
                            street = consumer_dt.Rows[i]["c_address_line_1"].ToString().TrimEnd();
                            city = consumer_dt.Rows[i]["c_address_city"].ToString().TrimEnd();
                            state = consumer_dt.Rows[i]["c_address_state"].ToString().TrimEnd();
                            zip = consumer_dt.Rows[i]["c_address_zip"].ToString().TrimEnd();

                            street = street.ToUpper();

                            // try to clean up the street name
                            if (street.Contains("STREET"))
                            {
                                street = street.Substring(0, street.IndexOf("STREET") + 6);
                            }
                            if (street.Contains("ROAD"))
                            {
                                street = street.Substring(0, street.IndexOf("ROAD") + 4);
                            }
                            if (street.Contains("AVENUE"))
                            {
                                street = street.Substring(0, street.IndexOf("AVENUE") + 6);
                            }
                            if (street.Contains("AVE"))
                            {
                                street = street.Substring(0, street.IndexOf("AVE") + 3);
                            }
                            if (street.Contains("RD"))
                            {
                                street = street.Substring(0, street.IndexOf("RD") + 2);
                            }
                            if (street.Contains("ST"))
                            {
                                street = street.Substring(0, street.IndexOf("ST") + 2);
                            }

                            // maybe we can just break if street is blank? lets check the value first
                            if ((street != "") && (city != "") && (state != "") && (zip != ""))
                            {
                                j = j + 1;
                                area = street + "," + city + "," + state + "," + zip;
                                uci = consumer_dt.Rows[i]["c_uci"].ToString().TrimEnd();
                                uci_name = consumer_dt.Rows[i]["c_name_first"].ToString().TrimEnd() + " " + consumer_dt.Rows[i]["c_name_last"].ToString().TrimEnd();
                                area = area.Replace("'", "`");
                                uci_name = uci_name.Replace("'", "`");
                                int k;
                                for (k = 0; k < area.Length; k++)
                                {
                                    if ((area[k] >= 127) || (area[k] <= 31))
                                        area = area.Remove(k, 1);
                                }
                                for (k = 0; k < uci_name.Length; k++)
                                {
                                    if ((uci_name[k] >= 127) || (uci_name[k] <= 31))
                                        uci_name = uci_name.Remove(k, 1);
                                }

                                // make sure don't add blanks
                                if (area.Length > 0)
                                    addresses.Add(area);

                                //scriptstr += "showAddress(\'" + area + "\',\'" + uci + "\',\'" + uci_name + "\');";
                            }
                        }

                        if (addresses.Count == 1)
                        {
                            scriptstr += "<script type='text/javaScript'>setoneaddr(\'" + addresses[0] + "\');</script>";
                            scriptstr += "<script async defer src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAddress'></script>";

                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        }
                        else
                        {
                            scriptstr = "<script type='text/javaScript'>";


                            for (int k = 0; k < addresses.Count; k++)
                            {
                                scriptstr += "setMultiAddress(\'" + addresses[k] + "\');";
                            }
                            //scriptstr += "showAddressMulti(\'" + "Sacramento, CA" + "\');";

                            scriptstr += "</script><script async defer src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAHTDmYXtSpmCKwd7Qcd34unmN2K4NxTN4&callback=showAddressMulti'></script>";
                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "", scriptstr);
                        }

                    }
                    catch { }
                }              
               
                 
            }

        }



    }
}
