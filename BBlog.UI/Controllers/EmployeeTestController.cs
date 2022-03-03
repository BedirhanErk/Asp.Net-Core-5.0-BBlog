﻿using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BBlog.UI.Controllers
{
    public class Class1
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
    public class EmployeeTestController : Controller
    {
        public async Task<IActionResult> Index()
        {
            var httpClient = new HttpClient();
            var responseMessage = await httpClient.GetAsync("https://localhost:44305/api/Employee");
            var jsonString = await responseMessage.Content.ReadAsStringAsync();
            var values = JsonConvert.DeserializeObject<List<Class1>>(jsonString);
            return View(values);
        }
        [HttpGet]
        public IActionResult AddEmployee()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> AddEmployee(Class1 class1)
        {
            if (class1.Name != "" && class1.Name != null)
            {
                var httpClient = new HttpClient();
                var jsonEmployee = JsonConvert.SerializeObject(class1);
                StringContent content = new StringContent(jsonEmployee, Encoding.UTF8, "application/json");
                var responseMessage = await httpClient.PostAsync("https://localhost:44305/api/Employee", content);
                if (responseMessage.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                return View(class1);
            }
            return View();
        }
    }
}
