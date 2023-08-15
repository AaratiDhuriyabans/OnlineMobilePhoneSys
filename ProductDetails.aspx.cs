using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           GridView1.DataBind();
        }
    }
    private void clears()
    {
        txtproductname.Text = "";
        txtprice.Text="";
        txtos.Text = "";
        txtram.Text = "";
             txtitemweight.Text="";
            txtproductdiamension.Text="";
            txtbatteries.Text="";
           txtitemmodelnumber.Text="";
             txtwct.Text="";
           txtct.Text="";
            txtfeatures.Text="";
             txtdisplay.Text="";
            txtothercamera.Text="";
            txtformfactor.Text="";
            txtweight.Text = "";
             txtcolor.Text="";
           txtbattery.Text="";
            txtphonetalktime.Text="";
           txtphonetime.Text="";
          txtquestion.Text="";

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        string strsavename = "";
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spSaveProduct";

            cmd.Parameters.AddWithValue("@companyid", ddlcompany.SelectedValue);
            cmd.Parameters.AddWithValue("@cateogry", ddlcompany.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@catid", ddlcategory.SelectedValue);
           // cmd.Parameters.AddWithValue(, ddlcategory.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@pname", txtproductname.Text);
            cmd.Parameters.AddWithValue("@price", txtprice.Text);
            cmd.Parameters.AddWithValue("@os", txtos.Text);
            cmd.Parameters.AddWithValue("@ram", txtram.Text);
            cmd.Parameters.AddWithValue("@itemweight", txtitemweight.Text);
            cmd.Parameters.AddWithValue("@productdiamensions", txtproductdiamension.Text);
            cmd.Parameters.AddWithValue("@batteries", txtbatteries.Text);
            cmd.Parameters.AddWithValue("@itemmodelnumber", txtitemmodelnumber.Text);
            cmd.Parameters.AddWithValue("@wirelesscommunicationtechnologies", txtwct.Text);
            cmd.Parameters.AddWithValue("@connectivitytechnologies", txtct.Text);
            cmd.Parameters.AddWithValue("@specialfeatures", txtfeatures.Text);
            cmd.Parameters.AddWithValue("@displaytechnology", txtdisplay.Text);
            cmd.Parameters.AddWithValue("@othercamerafeatures", txtothercamera.Text);
            cmd.Parameters.AddWithValue("@formfactor", txtformfactor.Text);
            cmd.Parameters.AddWithValue("@w", txtweight.Text);
            cmd.Parameters.AddWithValue("@color", txtcolor.Text);
            cmd.Parameters.AddWithValue("@batterypowerrating", txtbattery.Text);
            cmd.Parameters.AddWithValue("@phonetalktime", txtphonetalktime.Text);
            cmd.Parameters.AddWithValue("@phonestandbytime", txtphonetime.Text);
            cmd.Parameters.AddWithValue("@whatinthebox", txtquestion.Text);
            if (FileUpload1.HasFile)
            {
                string strext = Path.GetExtension(FileUpload1.FileName);
                strext = strext.ToLower();
                if (strext == ".jpg" || strext == ".jpeg" || strext == ".png")
                {
                    string strpath = Server.MapPath("~//ImageFiles//");
                    string strdir = Guid.NewGuid().ToString();
                    Directory.CreateDirectory(strpath + strdir);
                    strsavename = "~//ImageFiles//" + strdir + "//" + FileUpload1.FileName;
                    FileUpload1.SaveAs(strpath+strdir+"//"+FileUpload1.FileName);
                }
            }
            cmd.Parameters.AddWithValue("@picture", strsavename);
            cmd.Parameters.Add("@result", SqlDbType.VarChar, 100);
            cmd.Parameters["@result"].Direction = ParameterDirection.Output;
            cmd = SQLHelper.ExecuteNonQuerySp(cmd);
            lblmsg.Text = cmd.Parameters["@result"].Value.ToString();
           GridView1.DataBind();
           clears();
           lblmsg.Text = "";
        }
        catch (Exception ex)
        {

            throw ex;
        }

    }

    public object strsavename { get; set; }
}