<%@ WebHandler Language="C#" Class="contact" %>

using System;
using System.Web;
using Newtonsoft.Json;
public class contact : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        try
        {
            string name = context.Request["name"];
            string email = context.Request["email"];
            string phone = context.Request["phone"];
            string content = context.Request["content"];

            ContactManager cm = new ContactManager();
            ContactTBx contact = new ContactTBx();
            contact.Name = name;
            contact.Email = email;
            contact.Phone = phone;
            contact.CreateDay = DateTime.UtcNow;
            contact.BodyContent = content;
            contact.Ip = UTIL.GetIPAddress();
            contact.Status = 1;
            cm.AddNew(contact);
            context.Response.Write(JsonConvert.SerializeObject(new
            {
                success = 1
            }));
        }
        catch (Exception ex)
        {
            context.Response.Write(JsonConvert.SerializeObject(new
            {
                success = -1,
                error = ex
            }));
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}