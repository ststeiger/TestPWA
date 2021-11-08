
using Microsoft.AspNetCore.Builder;

using SixLabors.ImageSharp.Processing; // For Mutate
using SixLabors.ImageSharp.Drawing.Processing; // For Clear, DrawText


// namespace TestPWA.Code.DB
namespace AnySqlWebAdmin
{


    public class VerticalTextImageMiddleware2
    {

        protected readonly Microsoft.AspNetCore.Http.RequestDelegate _next;


        public VerticalTextImageMiddleware2(Microsoft.AspNetCore.Http.RequestDelegate next)
        {
            this._next = next;
        }


        // https://localhost:44314/cgi-bin/GenerateImage2.ashx?no_cache=1636308667021&bgcolor=%23FFF&rotate=true&text=COR_ObjektRechte%0D%0ASchreiben
        public async System.Threading.Tasks.Task Invoke(Microsoft.AspNetCore.Http.HttpContext context)
        {
            // context.Response.Headers["X-Error-Message"] = exception.Message;

            string strText = null;
            string strRotate = null;
            string strBGcolor = null;
            string strFGcolor = null;

            if (context.Request.QueryString.HasValue)
            {
                strText = context.Request.Query["text"].ToString();
                strRotate = context.Request.Query["rotate"].ToString();
                strBGcolor = context.Request.Query["bgcolor"].ToString();
                strFGcolor = context.Request.Query["fgcolor"].ToString();
            } // End if (context.Request.QueryString.HasValue) 

            bool bRotate = true;

            if (string.IsNullOrEmpty(strText))
                strText = " ";

            if (!string.IsNullOrEmpty(strRotate))
                bool.TryParse(strRotate, out bRotate);

            context.Response.StatusCode = (int)System.Net.HttpStatusCode.OK;
            context.Response.ContentType = "image/png";
            byte[] buffer = RenderPNG(strText, bRotate, strBGcolor, strFGcolor);
            await context.Response.Body.WriteAsync(buffer, 0, buffer.Length);
        } // End Task Invoke 


        private static float PixelFromCentimeter(float dpi, float cm)
        {
            cm *= 0.393700787f * dpi;
            return cm;
        } // End Function Cm2Pixel


        // https://github.com/SixLabors/Samples/blob/master/ImageSharp/DrawingTextAlongAPath/Program.cs
        public static byte[] RenderPNG(string text, bool bRotate, string strBackgroundColor, string strForegroundColor)
        {
            byte[] data = null;

            SixLabors.ImageSharp.Color bgColor = SixLabors.ImageSharp.Color.White;
            SixLabors.ImageSharp.Color fgColor = InvertMeAColour(bgColor);

            if (!string.IsNullOrWhiteSpace(strBackgroundColor))
                SixLabors.ImageSharp.Color.TryParseHex(strBackgroundColor, out bgColor);

            if (!string.IsNullOrWhiteSpace(strForegroundColor))
                SixLabors.ImageSharp.Color.TryParseHex(strForegroundColor, out fgColor);

            SixLabors.Fonts.FontFamily fo = SixLabors.Fonts.SystemFonts.Find("Arial");
            SixLabors.Fonts.Font font = new SixLabors.Fonts.Font(fo, 12, SixLabors.Fonts.FontStyle.Regular);

            SixLabors.Fonts.FontRectangle size = SixLabors.Fonts.TextMeasurer.Measure(text, new SixLabors.Fonts.RendererOptions(font));

            // Create the bmpImage again with the correct size for the text and font.
            SixLabors.ImageSharp.Image<SixLabors.ImageSharp.PixelFormats.Argb32> bmpEndImage =
                new SixLabors.ImageSharp.Image<SixLabors.ImageSharp.PixelFormats.Argb32>((int)size.Width, (int)size.Height);


            SixLabors.ImageSharp.Drawing.Processing.DrawingOptions textGraphicOptions = new SixLabors.ImageSharp.Drawing.Processing.DrawingOptions();
            textGraphicOptions.TextOptions.ApplyKerning = true;
            textGraphicOptions.TextOptions.TabWidth = 8; // a tab renders as 8 spaces wide
            // textGraphicOptions.TextOptions.FallbackFonts
            textGraphicOptions.TextOptions.HorizontalAlignment = SixLabors.Fonts.HorizontalAlignment.Left;
            textGraphicOptions.TextOptions.VerticalAlignment = SixLabors.Fonts.VerticalAlignment.Top;
            textGraphicOptions.TextOptions.DpiX = 96;
            textGraphicOptions.TextOptions.DpiY = 96;
            // greater than zero so we will word wrap at 'WrapTextWidth' pixels wide
            // textGraphicOptions.TextOptions.WrapTextWidth = PixelFromCentimeter(textGraphicOptions.TextOptions.DpiX, 4.5f);
            // textGraphicOptions.TextOptions.LineSpacing = 2;

            //SixLabors.ImageSharp.Drawing.Processing.Brushes.Horizontal
            SixLabors.ImageSharp.Drawing.Processing.SolidBrush brush = new SixLabors.ImageSharp.Drawing.Processing.SolidBrush(fgColor);

            // var graphicsOptions = new SixLabors.ImageSharp.GraphicsOptions { AlphaCompositionMode = PixelAlphaCompositionMode.Clear };
            // RectangleF rectangle = new RectangleF(0, 0, bmpEndImage.Width, bmpEndImage.Height);
            // bmpEndImage.Mutate(i => i.Fill(graphicsOptions, c, rectangle));

            // https://github.com/SixLabors/ImageSharp.Drawing/issues/26
            if (bRotate)
                bmpEndImage.Mutate(i => i.Clear(bgColor));

            // bmpEndImage.Mutate(context => context.DrawText(text, font, brush, new SixLabors.ImageSharp.PointF(0, 0)).BackgroundColor(new SixLabors.ImageSharp.PixelFormats.Rgba32(12, 12, 221)));
            bmpEndImage.Mutate(context => context.DrawText(text, font, brush, new SixLabors.ImageSharp.PointF(0, 0)));


            // Rotate the text layer
            bmpEndImage.Mutate(ctx => ctx.Rotate(RotateMode.Rotate270));


            using (System.IO.MemoryStream ms = new System.IO.MemoryStream())
            {
                bmpEndImage.Save(ms, new SixLabors.ImageSharp.Formats.Png.PngEncoder());
                data = ms.ToArray();
            }

            return data;
        }


        private static SixLabors.ImageSharp.Color InvertMeAColour(SixLabors.ImageSharp.Color colourToInvert)
        {
            const byte RGBMAX = 255;
            SixLabors.ImageSharp.PixelFormats.Argb32 rgbData = 
                new SixLabors.ImageSharp.PixelFormats.Argb32(((System.Numerics.Vector4)colourToInvert));

            SixLabors.ImageSharp.PixelFormats.Argb32 invertedRgbData = 
                new SixLabors.ImageSharp.PixelFormats.Argb32(
                  RGBMAX - rgbData.R
                , RGBMAX - rgbData.G
                , RGBMAX - rgbData.B
                , rgbData.A
            );

            return new SixLabors.ImageSharp.Color(invertedRgbData);
        } // InvertMeAColour


    } // End Class VerticalTextImageMiddleware2 


    public static class VerticalTextImageMiddleware2Extensions
    {


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
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
                    appBuilder.UseMiddleware<VerticalTextImageMiddleware2>();
                    //appBuilder.UseExceptionHandler("/apierror/500");
                }
            );

            return app;
        } // End Function UseVerticalImage2 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
            params string[] startSegments
        )
        {
            return UseVerticalImage2(app, System.StringComparison.InvariantCultureIgnoreCase, startSegments);
        }



        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
           this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
           System.Collections.Generic.IEnumerable<string> startSegments,
           System.StringComparison comparison
       )
        {
            System.Collections.Generic.List<string> ls = new System.Collections.Generic.List<string>(startSegments);
            return UseVerticalImage2(app, comparison, ls.ToArray());
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
            System.Collections.Generic.IEnumerable<string> startSegments
        )
        {
            return UseVerticalImage2(app, startSegments, System.StringComparison.InvariantCultureIgnoreCase);
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, string startSegment, System.StringComparison comparison)
        {
            app.UseWhen(
                delegate (Microsoft.AspNetCore.Http.HttpContext context)
                {
                    return context.Request.Path.StartsWithSegments(startSegment, comparison);
                }
                , delegate (Microsoft.AspNetCore.Builder.IApplicationBuilder appBuilder)
                {
                    appBuilder.UseMiddleware<VerticalTextImageMiddleware2>();
                }
            );

            return app;
        } // End Function UseVerticalImage2 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
          this Microsoft.AspNetCore.Builder.IApplicationBuilder app, string startSegment)
        {
            return UseVerticalImage2(app, startSegment, System.StringComparison.InvariantCultureIgnoreCase);
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, System.StringComparison comparison)
        {
            return UseVerticalImage2(app, comparison, "/GenerateImage2", "/cgi-bin/GenerateImage2.ashx");
        } // End Function UseVerticalImage2 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage2(
          this Microsoft.AspNetCore.Builder.IApplicationBuilder app)
        {
            return UseVerticalImage2(app, System.StringComparison.InvariantCultureIgnoreCase);
        } // End Function UseVerticalImage2 


    } // End Class VerticalTextImageMiddleware2Extensions 


} // End Namespace AnySqlWebAdmin 


