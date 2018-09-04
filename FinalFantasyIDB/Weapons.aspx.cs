using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalFantasyI;

namespace FinalFantasyIDB
{
    public partial class Weapons : System.Web.UI.Page
    {
        List<Weapon> weapons = new List<Weapon>();
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewWeapons.DataSource = repository.GetWeapons();
            GridViewWeapons.DataBind();
        }

        protected void searchhit(object sender, EventArgs e)
        {
            List<Weapon> weaponsfilter = new List<Weapon>();
            weapons = repository.GetWeapons();
            if (textboxfilter.Text == "All" || textboxfilter.Text == "all")
            {
                GridViewWeapons.DataSource = repository.GetWeapons();
                GridViewWeapons.DataBind();
            }
            else
            {
                for (int i = 0; i < weapons.Count(); i++)
                {
                    if (textboxfilter.Text == weapons[i].Hit.ToString())
                    {
                        weaponsfilter.Add(weapons[i]);
                    }
                }
                GridViewWeapons.DataSource = weaponsfilter;
                GridViewWeapons.DataBind();
            }
        }
    }
}