using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserManager
/// </summary>
public class UserManager
{
    DataClassesDataContext DB = new DataClassesDataContext();
    public void Save()
    {
        DB.SubmitChanges();
    }

    public void Add(UserTBx ele)
    {
        DB.UserTBxes.InsertOnSubmit(ele);
        DB.SubmitChanges();
    }

    public UserTBx GetByID(int ID)
    {
        return DB.UserTBxes.FirstOrDefault(e => e.Status != -1 && e.ID == ID);
    }


    public UserTBx GetByEmail(string email)
    {
        return DB.UserTBxes.FirstOrDefault(e => e.Status != -1 && e.Email == email);
    }


    public UserTBx GetByPhone(string phone)
    {
        return DB.UserTBxes.FirstOrDefault(e => e.Status != -1 && e.Phone == phone);
    }

    public List<UserTBx> GetList()
    {
        return DB.UserTBxes.Where(e => e.Status != -1).ToList();
    }

}