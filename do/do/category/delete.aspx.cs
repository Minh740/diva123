using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cp_do_category_delete : System.Web.UI.Page
{
    public CategoryTBx delete;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        CategoryManager cm = new CategoryManager();
        delete = cm.GetByID(id);
        delete.Status = -1;
        cm.Save();
        Response.Write(1);
    }
}