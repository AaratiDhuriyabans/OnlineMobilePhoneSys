using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_CategoryMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
   
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
             SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spcatSave";
            cmd.Parameters.AddWithValue("@catnm", txtcatnm.Text);
            cmd.Parameters.Add("@result", SqlDbType.VarChar, 100);
            cmd.Parameters["@result"].Direction = ParameterDirection.Output;
            cmd = SQLHelper.ExecuteNonQuerySp(cmd);
          //  cmd.ExecuteNonQuery();
            lblmsg.Text = cmd.Parameters["@result"].Value.ToString();
          GridView1.DataBind();
            txtcatnm.Text = "";
            lblmsg.Text = " ";
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
    }
