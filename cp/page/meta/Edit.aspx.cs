using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cp_page_meta_Edit : System.Web.UI.Page
{
    protected MetaTBx editmeta;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        MetaManager mm = new MetaManager();

        editmeta = mm.GetByID(id);

    }
}