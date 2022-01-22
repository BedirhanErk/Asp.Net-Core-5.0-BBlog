using BusinessLayer.Abstract;
using DataAccessLayer.Abstract;
using EntityLayer.Concrete;
using System.Collections.Generic;
using System.Linq;

namespace BusinessLayer.Concrete
{
    public class NotificationManager : INotificationService
    {
        INotificationDal _notificationDal;
        public NotificationManager(INotificationDal notificationDal)
        {
            _notificationDal = notificationDal;
        }
        public void Add(Notification t)
        {
            _notificationDal.Add(t);
        }

        public void Delete(Notification t)
        {
            _notificationDal.Delete(t);
        }

        public List<Notification> GetAll()
        {
            return _notificationDal.GetAll();
        }

        public Notification GetById(int id)
        {
            return _notificationDal.GetById(id);
        }

        public List<Notification> GetLastThreeAndActiveNotification()
        {
            return _notificationDal.GetAll().Where(x => x.Status == true).TakeLast(3).OrderByDescending(x => x.Date).ToList();
        }

        public void Update(Notification t)
        {
            _notificationDal.Update(t);
        }
    }
}
