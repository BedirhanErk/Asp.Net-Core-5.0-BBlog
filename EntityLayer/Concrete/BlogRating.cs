using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class BlogRating
    {
        [Key]
        public int BlogRatingId { get; set; }
        public int BlogId { get; set; }
        public int TotalPoint { get; set; }
        public int CommentNumber { get; set; }
        public List<Blog> Blogs { get; set; }
    }
}
