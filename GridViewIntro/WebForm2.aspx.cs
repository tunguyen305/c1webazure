using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GridViewIntro.Models;
namespace GridViewIntro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        public DataTable GetDataTable()
        {
            DataTable dt = new DataTable();
            if (Session["GridData"] == null)
            {
                Session["GridData"] = SampleData.GetFieldsData();
            }
            return Session["GridData"] as DataTable;
        }
        private void BindGrid()
        {
            UltraWebGrid1.DataSource = GetDataTable();
            UltraWebGrid1.DataBind();
        }
        protected void btnDeleteRow_ServerClick(object sender, EventArgs e)
        {

        }

        protected void UltraWebGrid1_RowUpdating(object sender, C1.Web.Wijmo.Controls.C1GridView.C1GridViewUpdateEventArgs e)
        {

        }

       
        protected void btnAddRow_ServerClick(object sender, EventArgs e)
        {
            DataTable dt = GetDataTable();
            var count = dt.Rows.Count;
            for (int i = count; i < count+5; i++)
            {
                dt.Rows.Add("Field B" + i.ToString(), i.ToString()+" - Field C");
            }
            dt.AcceptChanges();
            BindGrid();

        }
    }
}