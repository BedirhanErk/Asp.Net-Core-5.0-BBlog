using DataAccessLayer.Abstract;
using DataAccessLayer.Concrete;
using DataAccessLayer.Repositories;
using EntityLayer.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DataAccessLayer.EntityFramework
{
    public class EfBlogRepository : GenericRepository<Blog>, IBlogDal
    {
        public List<Blog> GetListWithCategory()
        {
            using (Context c = new Context())
            {
                return c.Blogs.Include(x => x.Category).ToList();
            }
        }

        public List<Blog> GetListWithCategoryAndRatings(int id)
        {
            using (Context c = new Context())
            {
                return c.Blogs.Include(x => x.Category).Where(x => x.WriterId == id).Include(x => x.BlogRating).ToList();
            }
        }

        public List<Blog> GetListWithCategoryByWriter(int id)
        {
            using (Context c = new Context())
            {
                return c.Blogs.Include(x => x.Category).Where(x => x.WriterId == id).ToList();
            }
        }

        public List<long> GetMyBlogsId(int id)
        {
            using (Context c = new Context())
            {
                List<long> blogs = new List<long>();
                foreach (var item in c.Blogs)
                {
                    if (item.WriterId == id)
                    {
                        blogs.Add(item.BlogId);
                    }
                }

                return blogs;
            }
        }

        public string GetMyBlogsRating(int id)
        {
            using (Context c = new Context())
            {
                List<long> blogs = GetMyBlogsId(id);
                string number = GetNumberOfCommentOnMyBlog(id);

                decimal point = new decimal();
                foreach (var blog in blogs)
                {
                    foreach (var rating in c.BlogRatings)
                    {
                        if (rating.BlogId == blog)
                        {
                            point = point + rating.TotalPoint;
                        }
                    }
                }

                point = point / Convert.ToInt32(number);

                return point.ToString("N2");
            }            
        }

        public string GetNumberOfCommentOnMyBlog(int id)
        {
            using (Context c = new Context())
            {
                List<long> blogs = GetMyBlogsId(id);

                long number = new long();
                foreach (var blog in blogs)
                {
                    foreach (var rating in c.BlogRatings)
                    {
                        if (rating.BlogId == blog)
                        {
                            number = number + rating.CommentNumber;
                        }
                    }
                }

                return number.ToString();
            }
        }
    }
}
