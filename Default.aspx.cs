using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected List<MetaTBx> listMeta;
    protected List<SliderTBx> listSlider;
    protected PageTBx pageAbout;
    protected PageTBx pageService;
    protected void Page_Load(object sender, EventArgs e)
    {
        SliderManager SM = new SliderManager();
        listSlider = SM.GetList();
        PageManager PM = new PageManager();
        pageAbout = PM.GetByName("about-us");
        pageService = PM.GetByName("home-service");
        MetaManager mm = new MetaManager();
        listMeta = mm.GetList();
        
    }
}