using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string pageName = "";
    protected PageTBx notification;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Get page name
        pageName = Path.GetFileName(Request.Url.AbsolutePath).Replace(".aspx", "").ToLower();
        PageManager PM = new PageManager();
        notification = PM.GetByName("get-deal");
    }
}
