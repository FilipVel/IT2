using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String[] meseci = {"Месец" , "Јануари", "Фебруари", "Март", "Април", "Мај", "Јуни", "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември" };
            ddlMesec.DataSource = meseci;
            ddlMesec.DataBind();
            ddlDen.Items.Add("Ден");
            for (int i = 0; i <= 31; i++) 
                ddlDen.Items.Add(i.ToString());
            ddlGodina.Items.Add("Година");
            for (int j = 2018; j < 2023; j++)
                ddlGodina.Items.Add(j.ToString());
            ddlVreme.Items.Add("Време");
            for (int i = 0; i < 24; i++)
            {
                if (i < 10)
                    ddlVreme.Items.Add("0" + i + ":00");
                else
                    ddlVreme.Items.Add(i + ":00");

            }
            Panel1.Font.Size = 12;
            Panel1.Font.Name = "TimesNewRoman";
            Panel1.Visible = false;
        }
    }

    protected void btnPodnesi_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblPatnik.Text = txtIme.Text+ " " +txtPrezime.Text;

        lblSredstvo.Text = lstSredstvo.SelectedItem.Text;
        lblOd.Text = ddlOd.SelectedItem.Text;
        lblDo.Text = ddlDo.SelectedItem.Text;
        lblVreme.Text = ddlDen.SelectedItem.Text + " " + ddlMesec.SelectedItem.Text + " " + ddlGodina.SelectedItem.Text + " во " + ddlVreme.SelectedItem.Text;
        lblZona.Text = rblZona.SelectedItem.Text;
        lblKlasa.Text = rblKlasa.SelectedItem.Text;
        lblPosluga.Text = cblPosluga.SelectedItem.Text;
        img.ImageUrl = lstSredstvo.SelectedItem.Value;

    }
}