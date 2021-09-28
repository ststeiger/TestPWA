
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace TestPWA.Controllers
{


    public class HomeController 
        : Controller
    {


        public IActionResult Index()
        {
            return Content(@"<!doctype html>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <h1>Hi</h1>
</body>
</html>", "text/html");
        }


    }


}
