using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Text = Session["fullname"].ToString();
  
    }
    public void clears()
    {
        txtnewpassword.Text = "";
        txtconpassword.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try{

         SqlConnection con = new SqlConnection("Data Source=DESKTOP-1AA6JF8\\SQLEXPRESS;Initial Catalog=OnlineMobilePhoneSystem;Integrated Security=True");
         SqlCommand cmd = new SqlCommand("UPDATE       registration_mst SET pass=@pass, conpass=@conpass where fullname='" + Session["fullname"] + "'", con);
           con.Open();
            cmd.Parameters.AddWithValue("@pass", txtnewpassword.Text);
            cmd.Parameters.AddWithValue("@conpass", txtconpassword.Text);

           
          
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Updated Scussfully.....................*";
            cmd.ExecuteNonQuery();
           con.Close();
           clears();
        }
        catch(Exception ex)
        {
            
            throw ex;
        }
    
}
    }
    
