using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC5Project.Models;

namespace MVC5Project.Controllers
{
    public class KuluplerController : Controller
    {
        // GET: Kulupler
        DbMvcOkulEntities db=new DbMvcOkulEntities();
        public ActionResult Index()
        {
            var kulup = db.Kulupler.ToList();
            return View(kulup);
     
        }
        [HttpGet]
        public ActionResult YeniEkle()
        {
            
            return View();

        }
        [HttpPost]
        public ActionResult YeniEkle(Kulupler p)
        {
           db.Kulupler.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");

        }
      
        public ActionResult Sil(int id)
         {
      
            var sil = db.Kulupler.Find(id);
        
            db.Kulupler.Remove(sil);
            db.SaveChanges();
            return RedirectToAction("Index");

        }
      
        public ActionResult Getir(int id)
        {
            var kulup = db.Kulupler.Find(id);
            return View("Getir",kulup);
        }
        public ActionResult Guncelle(Kulupler p)
        {
            var update = db.Kulupler.Find(p.KulupID);
            update.KulupAd = p.KulupAd;
            db.SaveChanges();
            return RedirectToAction("Index", "Kulupler");
        }
    }
}