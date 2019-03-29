using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class do_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request["name"];
        string email = Request["email"];
        string phone = Request["phone"];
        string content = Request["content"];
      
        ContactManager cm = new ContactManager();
        ContactTBx contact = new ContactTBx();
        contact.Name = name;
        contact.Email = email;
        contact.Phone = phone;
        contact.CreateDay = DateTime.Now;
        contact.BodyContent = content;
        contact.Status = 1;
        cm.AddNew(contact);
        cm.Save();
        Response.Write(1);


    }
}