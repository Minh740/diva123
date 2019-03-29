<%@ WebHandler Language="C#" Class="login" %>

using System;
using System.Web;
using Newtonsoft.Json;

public class login : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        try
        {
            UserManager UM = new UserManager();
            string email = context.Request["email"];
            UserTBx user = UM.GetByEmail(email);
            if (email == null)
            {
                context.Response.Write(JsonConvert.SerializeObject(new
                {
                    success = 0,
                    message = "Account not existed"
                }));
                return;
            }
            user = new UserTBx();
            user.FirstName = context.Request["firstName"];
            user.LastName = context.Request["lastName"];
            user.Email = context.Request["email"];
            user.Phone = context.Request["phone"];
            user.Birthday = DateTime.Parse(context.Request["birthday"]);
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