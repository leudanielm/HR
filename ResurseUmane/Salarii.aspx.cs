﻿using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResurseUmane
{
    public partial class Salarii : System.Web.UI.Page
    {

        private BusinessLogic.BusinessLogic bl = new BusinessLogic.BusinessLogic();
        private DataTable dtSalariiAngajati;

        protected void Page_PreInit(object sender, EventArgs e)
        {

            var salariiTable = bl.Citeste("getSalariiAngajati");
            dtSalariiAngajati = salariiTable;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                gridSalarii.DataSource = dtSalariiAngajati;
                gridSalarii.DataBind();
            }
        }

        protected void btnAdaugaSalariu_Click(object sender, EventArgs e)
        {
            double brut = 0;
            Double.TryParse(txtSalariuBrut.Text, out brut);
            DateTime dataSalariu;
            DateTime.TryParse(txtDataPlata.Value, out dataSalariu);

            lblSalarii.Text = bl.AdaugaSalariu(new Entities.Entities.Salarii()
            {
                SalariuBrut=brut,
                DataSalariu=dataSalariu

            }) ? "Salariul a fost adaugat" : "Salariul nu a putut fi adaugat";
        }

        protected void gridSalarii_RowCommand(object sender, EventArgs e)
        {

        }

        protected void gridSalarii_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowNumber = Int32.Parse(e.CommandArgument.ToString());
            GridViewRow gdrow = gridSalarii.Rows[rowNumber];
            var file = e.CommandName == "EditRow" ? "Edit.aspx" : "Delete.aspx";
            string str = Path.GetFileName(Request.PhysicalPath).ToString();
            Response.Redirect(file + "?ID=" + Convert.ToInt32(gdrow.Cells[2].Text) + "&Type=" + str.Substring(0, str.IndexOf('.')).ToLower());
        }
    }
}