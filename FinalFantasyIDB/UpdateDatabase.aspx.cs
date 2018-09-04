using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalFantasyI;

namespace FinalFantasyIDB
{
    public partial class UpdateDatabase : System.Web.UI.Page
    {
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnaddjob_Click(object sender, EventArgs e)
        {
            repository.AddJob(textboxnewjob.Text);
        }

        protected void btndeletejob_Click(object sender, EventArgs e)
        {
            repository.DeleteJob(textboxdeletejob.Text);
            if (repository.DeleteJob(textboxdeletejob.Text) == false)
            {
                Response.Write("<script>alert('This Job is Not Exist')</script>");
            }
            if (repository.DeleteJob(textboxdeletejob.Text) == true)
            {
                Response.Write("<script>alert('job deleted sucessfully')</script>");
            }
        }

        protected void btnaddarmor_Click(object sender, EventArgs e)
        {
            int armortype = 0;
            if (dropdownliastnewarmortype.Text == "Armor")
            {
                armortype = 1;
            }
            else if (dropdownliastnewarmortype.Text == "Shield")
            {
                armortype = 2;
            }
            else if (dropdownliastnewarmortype.Text == "Helm")
            {
                armortype = 3;
            }
            else if (dropdownliastnewarmortype.Text == "Gauntlet")
            {
                armortype = 4;
            }
            repository.AddArmor(textboxnewarmor.Text, armortype, Convert.ToInt32(textboxabsorb.Text), Convert.ToInt32(textboxevade.Text));
        }

        protected void btndeletearmor_Click(object sender, EventArgs e)
        {
            repository.DeleteArmor(textboxdeletejob.Text);
            if (repository.DeleteArmor(textboxdeletearmor.Text) == false)
            {
                Response.Write("<script>alert('This Armor is Not Exist')</script>");
            }
            if (repository.DeleteArmor(textboxdeletearmor.Text) == true)
            {
                Response.Write("<script>alert('Armor deleted sucessfully')</script>");
            }
        }

        protected void btnaddweapon_Click(object sender, EventArgs e)
        {
            repository.AddWeapon(textboxweapon.Text, Convert.ToInt32(textboxdamage.Text), Convert.ToInt32(textboxhit.Text));
        }

        protected void btndeleteweapon_Click(object sender, EventArgs e)
        {
            repository.DeleteWeapon(textboxdeleteweapon.Text);
            if (repository.DeleteWeapon(textboxdeleteweapon.Text) == false)
            {
                Response.Write("<script>alert('This Weapon is Not Exist')</script>");
            }
            if (repository.DeleteWeapon(textboxdeleteweapon.Text) == true)
            {
                Response.Write("<script>alert('Weapon deleted sucessfully')</script>");
            }
        }
    }
}