using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Promotion : System.Web.UI.Page
{
    protected PageTBx promotion;
    protected void Page_Load(object sender, EventArgs e)
    {
        PageManager PM = new PageManager();
        promotion = PM.GetByName("promotion");
    }
}