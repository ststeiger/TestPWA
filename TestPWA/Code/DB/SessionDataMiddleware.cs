
using Microsoft.AspNetCore.Builder;



// https://docs.microsoft.com/en-us/aspnet/core/fundamentals/middleware/?view=aspnetcore-2.1&tabs=aspnetcore2x
// https://www.thomaslevesque.com/2018/03/27/understanding-the-asp-net-core-middleware-pipeline/
// https://stackoverflow.com/questions/38630076/asp-net-core-web-api-exception-handling
// https://dusted.codes/error-handling-in-aspnet-core
// https://blog.dudak.me/2017/error-handling-in-asp-net-core-applications/
// https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
// namespace TestPWA.Code.DB
namespace AnySqlWebAdmin
{


    public class SessionDataMiddleware
    {

        protected SqlFactory m_service;
        protected readonly Microsoft.AspNetCore.Http.RequestDelegate _next;
        protected readonly string m_sqlRootPath;


        public SessionDataMiddleware(Microsoft.AspNetCore.Http.RequestDelegate next, SqlFactory service, Microsoft.Extensions.Hosting.IHostEnvironment env)
        {
            this._next = next;
            this.m_service = service;
            System.Console.WriteLine();

            this.m_sqlRootPath = System.IO.Path.Combine(env.ContentRootPath, "Code", "SQL");

            System.Console.WriteLine(env.ApplicationName);
        }


        public async System.Threading.Tasks.Task Invoke(Microsoft.AspNetCore.Http.HttpContext context)
        {
            // Do some request logic here.
            // await this._next.Invoke(context).ConfigureAwait(false);

            try
            {
                System.Text.Json.JsonSerializerOptions options =
                    new System.Text.Json.JsonSerializerOptions()
                    {
                        Converters = {
                            new TestPWA.HttpContextConverter()
                        },
                        IncludeFields = true,
                        WriteIndented = true
                        // ,PropertyNamingPolicy = System.Text.Json.JsonNamingPolicy.CamelCase 
                        // ,ReferenceHandler = System.Text.Json.Serialization.ReferenceHandler.Preserve
                        // Where has ReferenceLoopHandling.Ignore gone ? 
                };
                
                await System.Text.Json.JsonSerializer.SerializeAsync(context.Response.Body, context, context.GetType(), options);
            } // End Try 
            catch (System.Exception ex)
            {
                // header($_SERVER['SERVER_PROTOCOL'] . ' 500 Internal Server Error', true, 500);
                // header("HTTP/1.0 500 Internal Server Error");
                // header('HTTP/1.1 200 OK');

                // https://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html#sec6.1.1
                // 1xx: Informational - Request received, continuing process
                // 2xx: Success - The action was successfully received, understood, and accepted
                // 3xx: Redirection - Further action must be taken in order to complete the request
                // 4xx: Client Error -The request contains bad syntax or cannot be fulfilled
                // 5xx: Server Error -The server failed to fulfill an apparently valid request

                //  "400"  ; Section 10.4.1: Bad Request


                // context.Response.Headers["HTTP/1.0 500 Internal Server Error"] = "";
                await TransmitError(context, ex, null, null);
            } // End Catch 

        } // End Async Invoke 


        public async System.Threading.Tasks.Task TransmitError(
            Microsoft.AspNetCore.Http.HttpContext context,
            System.Exception exception,
            string sql,
            RequestParameters pars = null)
        {
            try
            {
                context.Response.StatusCode = (int)System.Net.HttpStatusCode.InternalServerError;
                context.Response.Headers["X-Error-Message"] = exception.Message;
                context.Response.ContentType = "application/json";
                SqlException se = new SqlException(exception.Message, sql, pars, context, exception);
                await se.ToJSON(context.Response.Body);
            }
            catch (System.Exception ex2)
            {
                System.Console.WriteLine(ex2.Message);
                System.Console.WriteLine(ex2.StackTrace);
            }
        }


    } // End Class SessionDataMiddleware 


    public static class SessionDataMiddlewareExtensions
    {


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, 
            System.StringComparison comparison, params string[] startSegments
        )
        {
            // return app.UseMiddleware<SqlMiddleware>();
            // app.UseWhen(context => context.Request.Path.StartsWithSegments("/blob"), appBuilder => { }

            // https://www.devtrends.co.uk/blog/conditional-middleware-based-on-request-in-asp.net-core
            app.UseWhen(
                delegate (Microsoft.AspNetCore.Http.HttpContext context)
                {
                    for (int i = 0; i < startSegments.Length; ++i)
                    {
                        if (context.Request.Path.StartsWithSegments(startSegments[i], comparison))
                            return true;
                    }

                    return false;
                }
                , delegate (Microsoft.AspNetCore.Builder.IApplicationBuilder appBuilder)
                {
                    // appBuilder.UseStatusCodePagesWithReExecute("/apierror/{0}");
                    appBuilder.UseMiddleware<SessionDataMiddleware>();
                    //appBuilder.UseExceptionHandler("/apierror/500");
                }
            );

            return app;
        } // End Function UseSqlMiddleware 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, 
            params string[] startSegments
        )
        {
            return UseSessionDataHandler(app, System.StringComparison.InvariantCultureIgnoreCase, startSegments);
        }



        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
           this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
           System.Collections.Generic.IEnumerable<string> startSegments,
           System.StringComparison comparison 
       )
        {
            System.Collections.Generic.List<string> ls = new System.Collections.Generic.List<string>(startSegments);
            return UseSessionDataHandler(app, comparison, ls.ToArray());
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
            System.Collections.Generic.IEnumerable<string> startSegments
        )
        {
            return UseSessionDataHandler(app, startSegments, System.StringComparison.InvariantCultureIgnoreCase);
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, string startSegment, System.StringComparison comparison)
        {
            app.UseWhen(
                delegate (Microsoft.AspNetCore.Http.HttpContext context)
                {
                    return context.Request.Path.StartsWithSegments(startSegment, comparison);
                }
                , delegate (Microsoft.AspNetCore.Builder.IApplicationBuilder appBuilder)
                {
                    appBuilder.UseMiddleware<SessionDataMiddleware>();
                }
            );

            return app;
        } // End Function UseSqlMiddleware 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
          this Microsoft.AspNetCore.Builder.IApplicationBuilder app, string startSegment)
        {
            return UseSessionDataHandler(app, startSegment, System.StringComparison.InvariantCultureIgnoreCase);
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, System.StringComparison comparison)
        {
            return UseSessionDataHandler(app, comparison, "/session", "/ajax/CurrentSession.ashx");
        } // End Function UseSqlMiddleware 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseSessionDataHandler(
          this Microsoft.AspNetCore.Builder.IApplicationBuilder app)
        {
            return UseSessionDataHandler(app, System.StringComparison.InvariantCultureIgnoreCase);
        } // End Function UseSqlMiddleware 


    } // End Class SessionDataMiddlewareExtensions 


} // End Namespace AnySqlWebAdmin 
