
using Microsoft.AspNetCore.Builder;


// namespace TestPWA.Code.DB
namespace AnySqlWebAdmin
{


    public class VerticalTextImageMiddleware
    {

        protected readonly Microsoft.AspNetCore.Http.RequestDelegate _next;


        public VerticalTextImageMiddleware(Microsoft.AspNetCore.Http.RequestDelegate next)
        {
            this._next = next;
        }


        // <div style="background-image: url(&quot;cgi-bin/GenerateImage.ashx?no_cache=1636365998076&amp;bgcolor=%233D3D3D&amp;rotate=true&amp;text=COR_ObjektRechte_Schreiben&quot;);"></div>
        // https://localhost:44314/cgi-bin/GenerateImage.ashx?no_cache=1636308667021&bgcolor=%23FFF&rotate=true&text=COR_ObjektRechte%0D%0ASchreiben
        public async System.Threading.Tasks.Task Invoke(Microsoft.AspNetCore.Http.HttpContext context)
        {
            // context.Response.Headers["X-Error-Message"] = exception.Message;
            
            string strText = null; 
            string strRotate = null;
            string strBGcolor = null;
            string strFGcolor = null;
            string strFontFamily = null;
            int fontSize = 11;
            int fontStyle = (int)System.Drawing.FontStyle.Regular;

            if (context.Request.QueryString.HasValue)
            {
                strText = context.Request.Query["text"].ToString();
                strRotate = context.Request.Query["rotate"].ToString();
                strBGcolor = context.Request.Query["bgcolor"].ToString();
                strFGcolor = context.Request.Query["fgcolor"].ToString();

                strFontFamily = context.Request.Query["fontFamily"].ToString();
                if (string.IsNullOrWhiteSpace(strFontFamily))
                    strFontFamily = "Arial";

                string strFontSize = context.Request.Query["fontSize"].ToString();
                if(!string.IsNullOrWhiteSpace(strFontSize))
                    int.TryParse(strFontSize, out fontSize);

                string strFontStyle = context.Request.Query["fontStyle"].ToString();
                if (!string.IsNullOrWhiteSpace(strFontStyle))
                    int.TryParse(strFontStyle, out fontStyle);
            } // End if (context.Request.QueryString.HasValue) 

            bool bRotate = true;

            if (string.IsNullOrEmpty(strText))
                strText = " ";

            if (!string.IsNullOrEmpty(strRotate))
                bool.TryParse(strRotate, out bRotate);

            using (System.IO.MemoryStream msTempOutputStream = new System.IO.MemoryStream())
            {
                // Dim img As System.Drawing.Image = GenerateImage(strText, "Arial", bRotate)
                using (System.Drawing.Image img = CreateBitmapImage(strFontFamily, fontSize, fontStyle, strText, bRotate, strBGcolor, strFGcolor))
                {
                    img.Save(msTempOutputStream, System.Drawing.Imaging.ImageFormat.Png);
                    msTempOutputStream.Flush();

                    context.Response.StatusCode = (int)System.Net.HttpStatusCode.OK;
                    context.Response.ContentType = "image/png";
                    byte[] buffer = msTempOutputStream.ToArray();
                    await context.Response.Body.WriteAsync(buffer, 0, buffer.Length);
                } // img

            } // msTempOutputStream

        } // End Task Invoke 


        private System.Drawing.Color InvertMeAColour(System.Drawing.Color ColourToInvert)
        {
            const int RGBMAX = 255;
            return System.Drawing.Color.FromArgb(RGBMAX - ColourToInvert.R, RGBMAX - ColourToInvert.G, RGBMAX - ColourToInvert.B);
        } // InvertMeAColour


        private System.Drawing.Image CreateBitmapImage(string fontFamily, int fontSize, int fontStyle, string strImageText, bool bRotate, string strBackgroundColor, string strForegroundColor)
        {
            System.Drawing.Bitmap bmpEndImage = null/* TODO Change to default(_) if this is not a reference type */;

            if (string.IsNullOrEmpty(strBackgroundColor))
                strBackgroundColor = "#E0E0E0";

            int intWidth = 0;
            int intHeight = 0;


            System.Drawing.Color bgColor = System.Drawing.Color.LemonChiffon; // LightGray
            bgColor = System.Drawing.ColorTranslator.FromHtml(strBackgroundColor);

            System.Drawing.Color TextColor = System.Drawing.Color.Black;
            if (string.IsNullOrEmpty(strForegroundColor))
                TextColor = InvertMeAColour(bgColor);
            else
                TextColor = System.Drawing.ColorTranslator.FromHtml(strForegroundColor);

            // TextColor = Color.FromArgb(102, 102, 102)

            // Create the Font object for the image text drawing.
            using (System.Drawing.Font fntThisFont = new System.Drawing.Font(fontFamily, fontSize, (System.Drawing.FontStyle)fontStyle, System.Drawing.GraphicsUnit.Pixel))
            {

                // Create a graphics object to measure the text's width and height.
                using (System.Drawing.Bitmap bmpInitialImage = new System.Drawing.Bitmap(1, 1))
                {
                    using (System.Drawing.Graphics gStringMeasureGraphics = System.Drawing.Graphics.FromImage(bmpInitialImage))
                    {
                        // This is where the bitmap size is determined.
                        intWidth = System.Convert.ToInt32(gStringMeasureGraphics.MeasureString(strImageText, fntThisFont).Width);
                        intHeight = System.Convert.ToInt32(gStringMeasureGraphics.MeasureString(strImageText, fntThisFont).Height);

                        // Create the bmpImage again with the correct size for the text and font.
                        bmpEndImage = new System.Drawing.Bitmap(bmpInitialImage, new System.Drawing.Size(intWidth, intHeight));

                        // Add the colors to the new bitmap.
                        using (System.Drawing.Graphics gNewGraphics = System.Drawing.Graphics.FromImage(bmpEndImage))
                        {
                            // Set Background color
                            // gNewGraphics.Clear(Color.White)
                            gNewGraphics.Clear(bgColor);
                            gNewGraphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
                            gNewGraphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;


                            // '''

                            // gNewGraphics.TranslateTransform(bmpEndImage.Width, bmpEndImage.Height)
                            // gNewGraphics.RotateTransform(180)
                            // gNewGraphics.RotateTransform(0)
                            // gNewGraphics.TextRenderingHint = System.Drawing.Text.TextRenderingHint.SystemDefault


                            gNewGraphics.DrawString(strImageText, fntThisFont, new System.Drawing.SolidBrush(TextColor), 0, 0);

                            gNewGraphics.Flush();

                            if (bRotate)
                                // bmpEndImage = rotateImage(bmpEndImage, 90)
                                // bmpEndImage = RotateImage(bmpEndImage, New PointF(0, 0), 90)
                                // bmpEndImage.RotateFlip(RotateFlipType.Rotate90FlipNone)
                                bmpEndImage.RotateFlip(System.Drawing.RotateFlipType.Rotate270FlipNone); // bRotate
                        } // gNewGraphics
                    } // gStringMeasureGraphics
                } // bmpInitialImage
            } // fntThisFont

            return bmpEndImage;
        } // CreateBitmapImage


    } // End Class VerticalTextImageMiddleware 


    public static class VerticalTextImageMiddlewareExtensions
    {


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
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
                    appBuilder.UseMiddleware<VerticalTextImageMiddleware>();
                    //appBuilder.UseExceptionHandler("/apierror/500");
                }
            );

            return app;
        } // End Function UseVerticalImage 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
            params string[] startSegments
        )
        {
            return UseVerticalImage(app, System.StringComparison.InvariantCultureIgnoreCase, startSegments);
        }



        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
           this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
           System.Collections.Generic.IEnumerable<string> startSegments,
           System.StringComparison comparison
       )
        {
            System.Collections.Generic.List<string> ls = new System.Collections.Generic.List<string>(startSegments);
            return UseVerticalImage(app, comparison, ls.ToArray());
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app,
            System.Collections.Generic.IEnumerable<string> startSegments
        )
        {
            return UseVerticalImage(app, startSegments, System.StringComparison.InvariantCultureIgnoreCase);
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, string startSegment, System.StringComparison comparison)
        {
            app.UseWhen(
                delegate (Microsoft.AspNetCore.Http.HttpContext context)
                {
                    return context.Request.Path.StartsWithSegments(startSegment, comparison);
                }
                , delegate (Microsoft.AspNetCore.Builder.IApplicationBuilder appBuilder)
                {
                    appBuilder.UseMiddleware<VerticalTextImageMiddleware>();
                }
            );

            return app;
        } // End Function UseVerticalImage 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
          this Microsoft.AspNetCore.Builder.IApplicationBuilder app, string startSegment)
        {
            return UseVerticalImage(app, startSegment, System.StringComparison.InvariantCultureIgnoreCase);
        }


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
            this Microsoft.AspNetCore.Builder.IApplicationBuilder app, System.StringComparison comparison)
        {
            return UseVerticalImage(app, comparison, "/GenerateImage", "/cgi-bin/GenerateImage.ashx");
        } // End Function UseVerticalImage 


        public static Microsoft.AspNetCore.Builder.IApplicationBuilder UseVerticalImage(
          this Microsoft.AspNetCore.Builder.IApplicationBuilder app)
        {
            return UseVerticalImage(app, System.StringComparison.InvariantCultureIgnoreCase);
        } // End Function UseVerticalImage 


    } // End Class VerticalTextImageMiddlewareExtensions 


} // End Namespace AnySqlWebAdmin 


