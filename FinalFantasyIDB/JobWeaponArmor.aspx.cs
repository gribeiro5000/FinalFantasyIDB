using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalFantasyI;

namespace FinalFantasyIDB
{
    public partial class JobWeaponArmor : System.Web.UI.Page
    {
        List<JobWeaponArmo> jobWeaponArmors = new List<JobWeaponArmo>();
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewJWA.DataSource = repository.GetJobWeaponArmos();
            GridViewJWA.DataBind();
        }

        protected void searchjob(object sender, EventArgs e)
        {
            jobWeaponArmors = repository.GetJobWeaponArmos();
            List<JobWeaponArmo> jobWeaponArmorsFilter = new List<JobWeaponArmo>();
            if (textboxfilter.Text == "All" || textboxfilter.Text == "all")
            {
                GridViewJWA.DataSource = repository.GetJobWeaponArmos();
                GridViewJWA.DataBind();
            }
            else
            {
                for (int i = 0; i < jobWeaponArmors.Count(); i++)
                {
                    if (textboxfilter.Text == jobWeaponArmors[i].job)
                    {
                        jobWeaponArmorsFilter.Add(jobWeaponArmors[i]);
                    }
                }
                GridViewJWA.DataSource = jobWeaponArmorsFilter;
                GridViewJWA.DataBind();
            }
        }
        protected void GridViewJWA_PreRender(object sender, EventArgs e)
        {
            var rows = GridViewJWA.Rows;
            for (int i = rows.Count - 2; i >= 0; i--)
            {
                for (int j = 0; j < rows[i].Cells.Count; j++)
                {
                    var cellDeCima = rows[i].Cells[j];
                    var cellDeBaixo = rows[i + 1].Cells[j];
                    if (cellDeCima.Text == cellDeBaixo.Text)
                    {
                        if (rows[i + 1].Cells[j].RowSpan < 2)
                        {
                            rows[i].Cells[j].RowSpan = 2;
                        }
                        else
                        {
                            rows[i].Cells[j].RowSpan = rows[i + 1].Cells[j].RowSpan + 1;
                        }

                        rows[i + 1].Cells[j].Visible = false;
                    }
                }                
            }            
        }


        protected void Search(Job job)
        {

        }
    }
}