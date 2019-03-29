using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected PageTBx contact;
    protected void Page_Load(object sender, EventArgs e)
    {
        PageManager PM = new PageManager();
        contact = PM.GetByName("contact");

    }
}