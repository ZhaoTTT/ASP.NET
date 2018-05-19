using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web6b;
using Web6b.Models;

namespace Web6b.Controllers
{
    public class ProductController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult OrderedBy(string id)
        {
            BusinessLogic b = new BusinessLogic();
            ViewBag.customer = b.GetCustomer(id);
            ViewBag.products = b.GetProductsOrderedBy(id);
            return View();
        }
    }
}