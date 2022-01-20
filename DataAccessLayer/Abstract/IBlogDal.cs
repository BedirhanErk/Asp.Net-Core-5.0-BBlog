using EntityLayer.Concrete;
using System.Collections.Generic;

namespace DataAccessLayer.Abstract
{
    public interface IBlogDal : IGenericDal<Blog>
    {
        List<Blog> GetListWithCategory();
        List<Blog> GetListWithCategoryByWriter(int id);
        List<Blog> GetListWithCategoryAndRatings(int id);
        List<long> GetMyBlogsId(int id);
        string GetMyBlogsRating(int id);
        string GetNumberOfCommentOnMyBlog(int id);
    }
}
