using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace gridchkall
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void Filldata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlDataAdapter da = new SqlDataAdapter("select * from emp1", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "emp1");
            Gridv1.DataSource = ds;
            Gridv1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                Filldata();
            }

        }

        protected void chkall_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in Gridv1.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("CheckBox1");
                if (chkall.Checked)
                {
                    chk.Checked = true;
                }
                else
                {
                    chk.Checked = false;
                }
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in Gridv1.Rows)
            {
                CheckBox chk = (CheckBox)row.FindControl("CheckBox1");
                if (chk.Checked)
                {
                    Label l1 = (Label)row.FindControl("Label1");
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                    con.Open();
                    string query = "delete from emp1 where eno='" + l1.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Filldata();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Gridv1.ShowFooter = true;
            Filldata();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            GridViewRow row = Gridv1.FooterRow;
            TextBox t1 = (TextBox)row.FindControl("TextBox4");
            TextBox t2 = (TextBox)row.FindControl("TextBox5");
            TextBox t3 = (TextBox)row.FindControl("TextBox6");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query="insert into emp1 values('"+t1.Text+"','"+t2.Text+"','"+t3.Text+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Gridv1.ShowFooter = false;
            Filldata();   
        }

      
    }
}