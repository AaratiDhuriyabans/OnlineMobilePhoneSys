using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_CompanyCategoryMapping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spcompanycategorymapping";
            
           cmd.Parameters.AddWithValue("@catnm",ddlcategory.SelectedItem.Text);
           cmd.Parameters.AddWithValue("@catid", ddlcategory.SelectedValue);
           cmd.Parameters.AddWithValue("@companyid", ddlcompany.SelectedValue);
            cmd.Parameters.AddWithValue("@companyname",ddlcompany.SelectedItem.Text);
            cmd.Parameters.Add("@result",SqlDbType.VarChar,100);
            cmd.Parameters["@result"].Direction=ParameterDirection.Output;
            cmd=SQLHelper.ExecuteNonQuerySp(cmd);

            lblmsg.Text = cmd.Parameters["@result"].Value.ToString();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }

    }
