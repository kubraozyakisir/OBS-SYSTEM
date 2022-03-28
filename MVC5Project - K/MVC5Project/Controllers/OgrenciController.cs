using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC5Project.Models;

namespace MVC5Project.Controllers
{
    public class OgrenciController : Controller
    {
        // GET: Ogrenci
        DbMvcOkulEntities db = new DbMvcOkulEntities();
        public ActionResult Index()
        {
            var ogrenciler = db.Ogrenciler.ToList();
            return View(ogrenciler);
        }
        [HttpGet]
        public ActionResult Ekle()
        {
            List<SelectListItem> degerler = (from i in db.Kulupler.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KulupAd,
                                                 Value = i.KulupID.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View();
        }
        [HttpPost]
        public ActionResult Ekle(Ogrenciler p)
        {
            var klp = db.Kulupler.Where(m => m.KulupID == p.Kulupler.KulupID).FirstOrDefault();
            p.Kulupler = klp;
            db.Ogrenciler.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int id)
        {
            var sil = db.Ogrenciler.Find(id);
            db.Ogrenciler.Remove(sil);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Getir(int id)
        {
            var getir = db.Ogrenciler.Find(id);
            return View("Index", getir);
        }
        public ActionResult Guncelle(Ogrenciler p)
        {
            var update = db.Ogrenciler.Find(p.OgrenciID);
            update.OgrAd = p.OgrAd;
            update.OgrSoyad = p.OgrSoyad;
            update.OgrFotograf = p.OgrFotograf;
            update.OgrCinsiyet = p.OgrCinsiyet;
            update.OgrKulup = p.OgrKulup;
            db.SaveChanges();
            return View("Index", "Ogrenci");
        }
    }
}