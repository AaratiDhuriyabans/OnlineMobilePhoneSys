using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Text = Session["fullname"].ToString();
 
    }
    public void clears()
    {
        txtusername.Text="";
        txtaddress.Text="";
        txtmail.Text="";
        txtmobno.Text = "";
        txtquery.Text = "";
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-1AA6JF8\\SQLEXPRESS;Initial Catalog=OnlineMobilePhoneSystem;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into feedback_mst (fullname,address,email,mobile,query)values(@fullname,@address,@email,@mobile,@query)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@fullname", txtusername.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@email", txtmail.Text);
            cmd.Parameters.AddWithValue("@mobile", txtmobno.Text);
            cmd.Parameters.AddWithValue("@query", txtquery.Text);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Thanks .....................*";
            con.Close();
            clears();
 
        }
        catch (Exception ex)
        {
            
            throw ex;
        }
    }
}