using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services : System.Web.UI.Page
{

    protected List<CategoryService> listCategoryService;
    protected void Page_Load(object sender, EventArgs e)
    {
        ServicesManager SM = new ServicesManager();
        List<ServicesTBx> listService = SM.GetList();

        CategoryManager CM = new CategoryManager();

        ImageCategoryManager ICM = new ImageCategoryManager();

        listCategoryService = CM.GetList().Where(ele => ele.ParentID == null).Select(ele => new CategoryService
        {
            categoryID = ele.ID,
            categoryName = ele.Name,
            categoryDescription = ele.Description,
            listChildCategory = ele.CategoryTBxes.Where(element => element.Status == 1).Select(element => new CategoryChild
            {
                categoryID = element.ID,
                categoryName = element.Name,
                listService = listService.Where(element2 => element2.CategoryID == element.ID).ToList()
            }).ToList(),
            listImageCategory = ICM.GetByCategoryID(ele.ID),
            listService = listService.Where(element => element.CategoryID == ele.ID).ToList()
        }).ToList();


    }
    public class CategoryService
    {
        public int categoryID;
        public string categoryName;
        public string categoryDescription;
        public List<ImageCategoryTBx> listImageCategory;
        public List<CategoryChild> listChildCategory;
        public List<ServicesTBx> listService;
    }

    public class CategoryChild
    {
        public int categoryID;
        public string categoryName;
        public List<ServicesTBx> listService;
    }
}