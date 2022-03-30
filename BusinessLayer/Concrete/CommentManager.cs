using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;
using System.Linq;

namespace BusinessLayer.Concrete
{
    public class CommentManager : ICommentService
    {
        ICommentDal _commentDal;

        public CommentManager(ICommentDal commentDal)
        {
            _commentDal = commentDal;
        }

        public void Add(Comment comment)
        {
            _commentDal.Add(comment);
        }

        public List<Comment> GetAll(int id)
        {
            return _commentDal.GetAll(x=>x.BlogId == id);
        }

        public long GetCommentCount()
        {
            return _commentDal.GetAll().Count();
        }

        public List<Comment> GetCommentListWithBlog()
        {
            return _commentDal.GetCommentListWithBlog();
        }

        public List<Comment> GetList()
        {
            return _commentDal.GetAll();
        }
    }
}
