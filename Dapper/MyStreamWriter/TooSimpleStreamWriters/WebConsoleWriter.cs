
namespace Dapper
{


    public class WebConsoleWriter
        : System.IO.TextWriter
    {

        System.IO.Stream Response;
        bool autoFlush = true;

        bool LeaveOpen = true;


        public override void Close()
        {
            Dispose(true);
            System.GC.SuppressFinalize(this);
        }

        protected override void Dispose(bool disposing)
        {
            try
            {
                if (Response != null)
                {
                    // Flush();

                    // Note: flush on the underlying stream can throw (ex., low disk space)
                    if (disposing && !LeaveOpen)
                    {
                        this.Response.Dispose();
                    }
                }
            }
            catch (System.Exception)
            { }
        }



        public WebConsoleWriter(System.IO.Stream strm)
        {
            this.Response = strm;
        }

        public override void Write(char[] buffer)
        {
            byte[] charBuffer = this.Encoding.GetBytes(buffer);
            Response.Write(charBuffer, 0, charBuffer.Length);
            if (autoFlush) this.Response.Flush();
        }


        public override void Write(char[] buffer, int index, int count)
        {
            byte[] charBuffer = this.Encoding.GetBytes(buffer);
            Response.Write(charBuffer, 0, charBuffer.Length);
            if (autoFlush) this.Response.Flush();
        }


        public override System.Threading.Tasks.Task WriteAsync(char[] buffer, int index, int count)
        {
            byte[] charBuffer = this.Encoding.GetBytes(buffer);
            return Response.WriteAsync(charBuffer, 0, charBuffer.Length);
        }



        public override void Write(string value)
        {
            byte[] buffer = this.Encoding.GetBytes(value);
            Response.Write(buffer, 0, buffer.Length);
            if (autoFlush) this.Response.Flush();
        }

        public override System.Threading.Tasks.Task WriteAsync(string value)
        {
            byte[] buffer = this.Encoding.GetBytes(value + "\n");
            return Response.WriteAsync(buffer, 0, buffer.Length);
        }


        public override void WriteLine(string value)
        {
            byte[] buffer = this.Encoding.GetBytes(value + "\n");
            Response.Write(buffer, 0, buffer.Length);
            if (autoFlush) this.Response.Flush();
        }

        public override System.Threading.Tasks.Task WriteLineAsync(string value)
        {
            byte[] buffer = this.Encoding.GetBytes(value + "\n");
            return Response.WriteAsync(buffer, 0, buffer.Length);
        }


        public override void WriteLine()
        {
            byte[] buffer = this.Encoding.GetBytes("\n");
            Response.Write(buffer, 0, buffer.Length);
            if (autoFlush) this.Response.Flush();
        }

        public override System.Threading.Tasks.Task WriteLineAsync()
        {
            byte[] buffer = this.Encoding.GetBytes("\n");
            return Response.WriteAsync(buffer, 0, buffer.Length);
        }


        public override void Flush()
        {
            Response.Flush();
        }

        public override System.Text.Encoding Encoding
        {
            get { return System.Text.Encoding.UTF8; }
        }


    }


}
