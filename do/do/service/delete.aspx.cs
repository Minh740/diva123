using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cp_do_service_delete : System.Web.UI.Page
{
    public ServicesTBx delete;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["id"]);
        ServicesManager sm = new ServicesManager();
        delete = sm.GetByID(id);   
        delete.Status = -1;
        sm.Save();
        Response.Write(1);
    }
}