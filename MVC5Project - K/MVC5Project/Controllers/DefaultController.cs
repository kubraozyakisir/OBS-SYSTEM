using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC5Project.Models;


namespace MVC5Project.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        DbMvcOkulEntities db=new DbMvcOkulEntities();
        public ActionResult Index()
        {
            
            var dersler=db.Dersler.ToList();
            return View(dersler);   
        }
 
        [HttpGet]
        public ActionResult DersEkle()
        {
            return View();
        }
        [HttpPost]
     
        public ActionResult DersEkle(Dersler P)
        {
            db.Dersler.Add(P);
            db.SaveChanges();
            return View();
        }
        public ActionResult Sil(int id)
        {
            var delete = db.Dersler.Find(id);
            db.Dersler.Remove(delete);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Getir(int id)
        {
            var getir = db.Dersler.Find(id);
            return RedirectToAction("Getir",getir);
        }
        public ActionResult Guncelle(Dersler p)
        { 
          
            var update = db.Dersler.Find(p.DersID);
            update.DersAd = p.DersAd;
            db.SaveChanges();
            return RedirectToAction("Index","Default");
        }
    }
}