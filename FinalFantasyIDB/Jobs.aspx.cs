using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalFantasyI;

namespace FinalFantasyIDB
{
    public partial class Jobs : System.Web.UI.Page
    {
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewJobs.DataSource = repository.GetJobs();
            GridViewJobs.DataBind();
        }
    }
}