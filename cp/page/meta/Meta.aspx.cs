using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cp_page_meta_Meta : System.Web.UI.Page
{
    protected List<MetaTBx> listMeta;
    protected void Page_Load(object sender, EventArgs e)
    {
        MetaManager MM = new MetaManager();
        listMeta = MM.GetList();
    }
}