
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Routing;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;


using AnySqlWebAdmin;


namespace TestPWA
{


    public class Startup
    {


        public IConfiguration Configuration { get; }


        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        } // End Constructor 


        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // https://stackoverflow.com/questions/47735133/asp-net-core-synchronous-operations-are-disallowed-call-writeasync-or-set-all

#if false
            // If using Kestrel:
            services.Configure<Microsoft.AspNetCore.Server.Kestrel.Core.KestrelServerOptions>(options =>
            {
                options.AllowSynchronousIO = true;
            });

            // If using IIS:
            services.Configure<IISServerOptions>(options =>
            {
                options.AllowSynchronousIO = true;
            });
#endif 

            services.AddSingleton<AnySqlWebAdmin.SqlFactory>();

            services.AddRazorPages();
            services.AddMvc();
        } // End Sub ConfigureServices 


        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            string virtualDirectory = "/Virt_DIR";
            virtualDirectory = "/";

            if (virtualDirectory.EndsWith("/"))
                virtualDirectory = virtualDirectory.Substring(0, virtualDirectory.Length - 1);

            if (string.IsNullOrWhiteSpace(virtualDirectory))
                ConfigureMapped(app, env); // Don't map if you don't have to 
            // (wonder what the framework does or does not  do for that case)
            else
                app.Map(virtualDirectory,
                    delegate (IApplicationBuilder mappedApp) { ConfigureMapped(mappedApp, env); }
                );
        } // End Sub Configure 


        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void ConfigureMapped(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();


            app.UseDefaultFiles(new DefaultFilesOptions()
            {
                DefaultFileNames = new System.Collections.Generic.List<string>()
                {
                    "index.htm", "index.html", "slick.htm"
                }
            });


            app.UseStaticFiles(
                new Microsoft.AspNetCore.Builder.StaticFileOptions()
                {
                    ServeUnknownFileTypes = true,
                    DefaultContentType = "application/octet-stream",
                    ContentTypeProvider = new ExtensionContentTypeProvider(),

                    OnPrepareResponse = delegate (Microsoft.AspNetCore.StaticFiles.StaticFileResponseContext context)
                    {
                        // https://stackoverflow.com/questions/49547/how-do-we-control-web-page-caching-across-all-browsers

                        // The Cache-Control is per the HTTP 1.1 spec for clients and proxies
                        // If you don't care about IE6, then you could omit Cache-Control: no-cache.
                        // (some browsers observe no-store and some observe must-revalidate)
                        context.Context.Response.Headers["Cache-Control"] = "no-cache, no-store, must-revalidate, max-age=0";
                        // Other Cache-Control parameters such as max-age are irrelevant 
                        // if the abovementioned Cache-Control parameters (no-cache,no-store,must-revalidate) are specified.


                        // Expires is per the HTTP 1.0 and 1.1 specs for clients and proxies. 
                        // In HTTP 1.1, the Cache-Control takes precedence over Expires, so it's after all for HTTP 1.0 proxies only.
                        // If you don't care about HTTP 1.0 proxies, then you could omit Expires.
                        context.Context.Response.Headers["Expires"] = "-1, 0, Tue, 01 Jan 1980 1:00:00 GMT";

                        // The Pragma is per the HTTP 1.0 spec for prehistoric clients, such as Java WebClient
                        // If you don't care about IE6 nor HTTP 1.0 clients 
                        // (HTTP 1.1 was introduced 1997), then you could omit Pragma.
                        context.Context.Response.Headers["pragma"] = "no-cache";


                        // On the other hand, if the server auto-includes a valid Date header, 
                        // then you could theoretically omit Cache-Control too and rely on Expires only.

                        // Date: Wed, 24 Aug 2016 18:32:02 GMT
                        // Expires: 0

                        // But that may fail if e.g. the end-user manipulates the operating system date 
                        // and the client software is relying on it.
                        // https://stackoverflow.com/questions/21120882/the-date-time-format-used-in-http-headers
                    } // End Sub OnPrepareResponse 

                }
            );

            app.UseRouting();


            // https://stackoverflow.com/questions/60791843/changing-routedata-in-asp-net-core-3-1-in-middleware
            // Note: Sequence matters ! After app.UseRouting, but before app.UseEndpoints
            app.Use(
                async delegate (Microsoft.AspNetCore.Http.HttpContext context, System.Func<System.Threading.Tasks.Task> next)
                {
                    string url = context.Request.Headers["HOST"];
                    string[] splittedUrl = url.Split('.');

                    if (splittedUrl != null && (splittedUrl.Length > 0))
                    {
                        context.GetRouteData().Values.Add("Host", splittedUrl[0]);
                        context.Items["Host2"] = url;

                        //foreach (System.Collections.Generic.KeyValuePair<System.Type, object> kvp in context.Features)
                        //{
                        //    System.Console.WriteLine(kvp.Key.FullName);
                        //}

                    } // End if (splittedUrl != null && (splittedUrl.Length > 0)) 

                    // Call the next delegate/middleware in the pipeline
                    await next();
                }
            );

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapRazorPages();
                // https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-controller?view=aspnetcore-5.0&tabs=visual-studio
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}"
                );
            });

            app.UseAnySqlSelect();
            app.UseAnySqlInsert();
            app.UseTestHandler();
            app.UseSessionDataHandler();
            app.UseChecklistExportHandler();


            app.UseVerticalImage();
            app.UseVerticalImage2();
        } // End Sub Configure 


    } // End Class Startup 


} // End Namespace TestPWA 
