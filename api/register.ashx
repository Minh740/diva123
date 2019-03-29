    <%@ WebHandler Language="C#" Class="register" %>

using System;
using System.Web;
using Newtonsoft.Json;
public class register : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        try
        {
            UserManager UM = new UserManager();
            string email = context.Request["sEmail"];
            string phone = context.Request["sPhone"]; ;
            UserTBx user = UM.GetByEmail(email);
            if (user != null)
            {
                context.Response.Write(JsonConvert.SerializeObject(new
                {
                    success = 0,
                }));
                return;
            }
            user = UM.GetByPhone(phone);
            if (user != null)
            {
                context.Response.Write(JsonConvert.SerializeObject(new
                {
                    success = 0,
                }));
                return;
            }
            user = new UserTBx();
            user.FirstName = context.Request["sFirstName"];
            user.LastName = context.Request["sLastName"];
            user.Email = email;
            user.Phone = phone;
            DateTime birthday = new DateTime();
            DateTime.TryParse(context.Request["sBirthDate"], out birthday);
            user.Birthday = birthday;
            user.CreateDate = DateTime.UtcNow;
            user.Status = 1;
            UM.Add(user);
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