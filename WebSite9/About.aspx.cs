using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            MultiView1.ActiveViewIndex = 0;
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int a=0;
        try
        {
             a = Int32.Parse(args.Value);
        }
        catch(Exception c)
        {
            args.IsValid = false;
        }
        if (a > 5)
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
            
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt16(txtIskustvo.Text) < 5)
            Label3.Text = "Недоволно искуство";
        else
            Label3.Text = "Успешно креиран корисник: " + txtID.Text + "@finki.ukim.mk";

        MultiView1.ActiveViewIndex = 3;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        txtIme.Text = "";
        txtPrezime.Text = "";
        txtTel.Text = "";
        txtAd.Text = "";
        txtLozinka.Text = "";
        txtLozinka2.Text = "";
        txtIskustvo.Text = "";
        RadioButtonList1.ClearSelection();
        Calendar1.SelectedDates.Clear();
        DropDownList1.ClearSelection();
        txtID.Text = "";
    }
}