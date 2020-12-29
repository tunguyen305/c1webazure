using C1.Web.Wijmo.Controls.C1ComboBox;
using C1.Web.Wijmo.Controls.C1GridView;
using GridViewIntro.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewIntro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            C1GridView1.DataSource = GetDataTable();
            C1GridView1.DataBind();
        }
        public DataTable GetDataTable()
        {
            DataTable dt;
            if (Session["S030dt"] != null)
            {
                dt = Session["S030dt"] as DataTable;
            }
            else
            {
                dt = SampleData.GetTable(0, 50);
                Session["S030dt"] = dt;
            }
            return dt;
        }

        public DataTable GetNewData()
        {
            return SampleData.GetTable(0, 50);
        }
        //protected void C1GridView1_RowEditing(object sender, C1GridViewEditEventArgs e)
        //{
        //    C1GridView1.EditIndex = e.NewEditIndex;
        //    C1GridView1.DataSource = GetDataTable();
        //    C1GridView1.DataBind();
        //}

        //protected void C1GridView1_RowUpdating(object sender, C1GridViewUpdateEventArgs e)
        //{
        //    C1GridView1.DataSource = GetDataTable();
        //    C1GridView1.Update();
        //    C1GridView1.EditIndex = -1;
        //    C1GridView1.DataSource = GetDataTable();
        //    C1GridView1.DataBind();
        //}

        //protected void C1GridView1_RowUpdated(object sender, C1GridViewUpdatedEventArgs e)
        //{
        //    DataTable dt = GetDataTable() as DataTable;
        //    dt.AcceptChanges();
        //}

        //protected void C1GridView1_RowDataBound(object sender, C1GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowIndex == C1GridView1.EditIndex && e.Row.RowIndex != -1)
        //    {
        //        var cmb1 = (C1GridView1.Rows[e.Row.RowIndex].Cells[0].FindControl("C1ComboBox1") as C1ComboBox);
        //        if (cmb1 != null)
        //        {
        //            DataTable dt = new DataTable();
        //            dt.Columns.Add(new DataColumn("Dosage"));

        //            dt.Columns.Add(new DataColumn("Selected", typeof(Boolean)));

        //            for (int i = 0; i < 50; i++)
        //            {
        //                DataRow row1 = dt.NewRow();
        //                row1["Dosage"] = i.ToString();
        //                row1["Selected"] = false;
        //                dt.Rows.Add(row1);
        //            }
        //            cmb1.DataSource = dt;
        //            cmb1.DataBind();
        //        }
        //        var cmb2 = (C1GridView1.Rows[e.Row.RowIndex].Cells[1].FindControl("C1ComboBox2") as C1ComboBox);
        //        if (cmb2 != null)
        //        {
        //            //cmb2.DataSource = GetDataTable();
        //            //cmb2.DataBind();
        //        }
        //    }
        //}

        //protected void C1ComboBox2_CallbackDataBind(object sender, C1ComboBoxCallbackEventArgs args)
        //{
        //    var cmb1 = (C1GridView1.Rows[C1GridView1.EditIndex].Cells[0].FindControl("C1ComboBox1") as C1ComboBox);
        //    var text = cmb1.Text;
        //    DataTable dt = new DataTable();
        //    dt.Columns.Add(new DataColumn("Patient"));
            
        //    dt.Columns.Add(new DataColumn("Selected", typeof(Boolean)));

        //    for (int i = 0; i < 5; i++)
        //    {
        //        DataRow row1 = dt.NewRow();
        //        row1["Patient"] = text + " Change " + i.ToString();
        //        row1["Selected"] = false;
        //        dt.Rows.Add(row1);
        //    }
        //    args.DataSource = dt;
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Label1.Text = new DateTime(1970, 1, 1).AddMilliseconds(long.Parse(C1GridView1.Rows[0].Cells[4].Text)).ToString();
        //}
    }
}