using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Policy : System.Web.UI.Page
{
    protected PageTBx policy;
    protected void Page_Load(object sender, EventArgs e)
    {
        PageManager PM = new PageManager();
        policy = PM.GetByName("policy");
    }
}