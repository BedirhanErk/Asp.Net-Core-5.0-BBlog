using System;
using System.ComponentModel.DataAnnotations;

namespace EntityLayer.Concrete
{
    public class Comment
    {
        [Key]
        public int CommentId { get; set; }
        public string UserName { get; set; }
        public string Title { get; set; }
        public string CommentContent { get; set; }
        public DateTime CreDate { get; set; }
        public int Point { get; set; }
        public bool Status { get; set; }
        public int BlogId { get; set; }
        public Blog Blog { get; set; }
    }
}
