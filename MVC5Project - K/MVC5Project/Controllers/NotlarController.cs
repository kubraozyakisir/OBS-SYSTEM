using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC5Project.Models;

namespace MVC5Project.Controllers
{
    public class NotlarController : Controller
    {
        // GET: Notlar
        DbMvcOkulEntities db = new DbMvcOkulEntities();
        public ActionResult Index()
        {
            var notlar = db.Notlar.ToList();
            return View(notlar);
        }
        [HttpGet]
        public ActionResult NotEkle()
        {

            return View();
        }
        [HttpPost]
        public ActionResult NotEkle(Notlar p)
        {
            db.Notlar.Add(p);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int id)
        {
            var delete = db.Notlar.Find(id);
            db.Notlar.Remove(delete);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult NotGetir(int id)
        {
            var notlar = db.Notlar.Find(id);
            return View("NotGetir", notlar);
        }
        [HttpPost]
        public ActionResult NotGetir(Class1 model, Notlar p,int Sınav1=0,int Sınav2 = 0,int Sınav3 = 0,int Proje=0)
        {
           
            if (model.islem == "HESAPLA")
            {
                //islem 1
                int Ortalama = (Sınav1 + Sınav2 + Sınav3 + Proje) / 4;
                ViewBag.ort = Ortalama;

            }
            if (model.islem == "NOTGUNCELLE"){
                var update = db.Notlar.Find(p.NotID);
                update.Sınav1 = p.Sınav1;
                update.Sınav2 = p.Sınav2;
                update.Sınav3 = p.Sınav3;
                update.Proje = p.Proje;
                update.Ortalama = p.Ortalama;
                update.Durum = p.Durum;
                db.SaveChanges();
                return RedirectToAction("Index", "Notlar");
            }

            return View();
        }
    }
}