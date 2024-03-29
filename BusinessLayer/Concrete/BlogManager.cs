﻿using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;
using System.Linq;

namespace BusinessLayer.Concrete
{
    public class BlogManager : IBlogService
    {
        IBlogDal _blogDal;
        public BlogManager(IBlogDal blogDal)
        {
            _blogDal = blogDal;
        }
        public void Add(Blog t)
        {
            _blogDal.Add(t);
        }

        public void Delete(Blog t)
        {
            _blogDal.Delete(t);
        }

        public List<Blog> GetAll()
        {
            return _blogDal.GetAll();
        }

        public List<Blog> GetLast3Blog()
        {
            return _blogDal.GetAll().TakeLast(3).ToList();
        }

        public List<Blog> GetAll(int id)
        {
            return _blogDal.GetAll(x => x.BlogId == id);
        }

        public List<Blog> GetBlogListWithCategory()
        {
            return _blogDal.GetListWithCategory();
        }

        public Blog GetById(int id)
        {
            return _blogDal.GetById(id);
        }

        public void Update(Blog t)
        {
            _blogDal.Update(t);
        }

        public List<Blog> GetBlogListWithCategoryByWriter(int id)
        {
            return _blogDal.GetListWithCategoryByWriter(id);
        }

        public List<Blog> GetBlogListByWriter(int id)
        {
            return _blogDal.GetAll(x => x.WriterId == id);
        }

        public List<Blog> GetBlogListWithCategoryLastTen()
        {
            return _blogDal.GetListWithCategory().TakeLast(10).ToList();
        }

        public long GetBlogCount()
        {
            return _blogDal.GetAll().Count();
        }

        public long GetMyBlogCount(int id)
        {
            return _blogDal.GetAll(x => x.WriterId == id).Count();
        }

        public string GetMyBlogsRatings(int id)
        {
            return _blogDal.GetMyBlogsRating(id);
        }

        public string GetNumberOfCommentOnMyBlog(int id)
        {
            return _blogDal.GetNumberOfCommentOnMyBlog(id);
        }

        public List<Blog> GetListWithCategoryAndRatings(int id)
        {
            return _blogDal.GetListWithCategoryAndRatings(id);
        }

        public long GetBlogCommentCount(int id)
        {
            return _blogDal.GetBlogCommentCount(id);
        }
    }
}
