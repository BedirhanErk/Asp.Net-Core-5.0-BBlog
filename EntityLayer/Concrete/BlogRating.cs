using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer.Concrete
{
    public class BlogRating
    {
        [Key]
        public int BlogRatingId { get; set; }
        public int BlogId { get; set; }
        public int TotalPoint { get; set; }
        public int CommentNumber { get; set; }
    }
}
