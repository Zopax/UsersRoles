using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UsersRoles.Models;

namespace UsersRoles;
public class Helper
{
    private static UserRolesContext _db;

    public static UserRolesContext GetContext()
    {
        if (_db == null)
        {
            _db = new UserRolesContext();
        }

        return _db;
    }
}
