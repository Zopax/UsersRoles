using System;
using System.Collections.Generic;

namespace UsersRoles.Models;

public partial class User
{
    public int Id { get; set; }

    public string? Login { get; set; } = null!;

    public string Pasword { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string Surname { get; set; } = null!;

    public int? IdRole { get; set; } = null!;
        
    public virtual Role? IdRoleNavigation { get; set; }
}
