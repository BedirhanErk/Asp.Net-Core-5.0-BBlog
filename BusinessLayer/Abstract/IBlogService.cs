using EntityLayer.Concrete;
using System.Collections.Generic;

namespace BusinessLayer.Abstract
{
    public interface IBlogService : IGenericService<Blog>
    {
        List<Blog> GetAll(int id);
        List<Blog> GetBlogListWithCategory();
        List<Blog> GetBlogListWithCategoryLastTen();
        List<Blog> GetBlogListByWriter(int id);
        List<Blog> GetBlogListWithCategoryByWriter(int id);
        long GetBlogCount();
        long GetMyBlogCount(int id);
        string GetMyBlogsRatings(int id);
        string GetNumberOfCommentOnMyBlog(int id);
    }
}
