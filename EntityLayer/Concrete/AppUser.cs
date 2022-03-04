﻿using Microsoft.AspNetCore.Identity;

namespace EntityLayer.Concrete
{
    public class AppUser : IdentityUser<int>
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Image { get; set; }
    }
}
