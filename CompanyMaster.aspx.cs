using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_CompanyMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spCompanySave";
            cmd.Parameters.AddWithValue("@companyname", txtcompanynm.Text);
            cmd.Parameters.Add("@result", SqlDbType.VarChar, 100);
            cmd.Parameters["@result"].Direction = ParameterDirection.Output;
            cmd = SQLHelper.ExecuteNonQuerySp(cmd);
            lblmsg.Text = cmd.Parameters["@result"].Value.ToString();
            txtcompanynm.Text = "";
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }

    }
