using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalFantasyI;

namespace FinalFantasyIDB
{
    public partial class Armors : System.Web.UI.Page
    {
        List<Armor> armors = new List<Armor>();
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewArmors.DataSource = repository.GetArmors();
            GridViewArmors.DataBind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            List<Armor> armorsfilter = new List<Armor>();
            armors = repository.GetArmors();
            if (textfilter.Text == "All" || textfilter.Text == "all")
            {
                GridViewArmors.DataSource = repository.GetArmors();
                GridViewArmors.DataBind();
            }
            else
            {
                for (int i = 0; i < armors.Count(); i++)
                {
                    if (textfilter.Text == armors[i].ArmorType.ToString())
                    {
                        armorsfilter.Add(armors[i]);
                    }
                }
                GridViewArmors.DataSource = armorsfilter;
                GridViewArmors.DataBind();
            }
        }
    }
}