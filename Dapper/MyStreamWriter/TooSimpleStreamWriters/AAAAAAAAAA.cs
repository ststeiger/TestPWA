
namespace Dapper
{


    public class AAAAAAAAAA
        : System.IO.StreamWriter
    {
        // https://github.com/microsoft/referencesource/blob/master/mscorlib/system/io/streamwriter.cs
        // https://referencesource.microsoft.com/#mscorlib/system/io/streamwriter.cs,f922405b11eca536


        public AAAAAAAAAA(System.IO.Stream stream) : base(stream)
        { }

        public AAAAAAAAAA(string path) : base(path)
        { }

        public AAAAAAAAAA(System.IO.Stream stream, System.Text.Encoding encoding)
            : base(stream, encoding)
        { }

        public AAAAAAAAAA(string path, bool append)
            : base(path, append)
        { }

        public AAAAAAAAAA(System.IO.Stream stream, System.Text.Encoding encoding, int bufferSize)
            : base(stream, encoding, bufferSize)
        { }

        public AAAAAAAAAA(string path, bool append, System.Text.Encoding encoding)
            : base(path, append, encoding)
        { }

        public AAAAAAAAAA(System.IO.Stream stream, System.Text.Encoding encoding, int bufferSize, bool leaveOpen)
            : base(stream, encoding, bufferSize, leaveOpen)
        { }

        public AAAAAAAAAA(string path, bool append, System.Text.Encoding encoding, int bufferSize)
            : base(path, append, encoding, bufferSize)
        { }



        public delegate System.Exception FetchException_t();

        public FetchException_t ExceptionFetcher;

        protected System.Exception Exception
        {
            get
            {
                if (ExceptionFetcher == null)
                    return null;

                return ExceptionFetcher();
            }
        }

        bool m_autoFlush;


        public override bool AutoFlush
        {
            get
            {
                if (Exception != null)
                    return false;

                return this.m_autoFlush;
            }
            set
            {
                m_autoFlush = value;
            }
        }

        // We don't guarantee thread safety on MyStreamWriter, but we should at
        // least prevent users from trying to write anything while an Async
        // write from the same thread is in progress.
        private System.Threading.Tasks.Task _asyncWriteTask = System.Threading.Tasks.Task.CompletedTask;


        [System.Diagnostics.CodeAnalysis.DoesNotReturn]
        private static void ThrowAsyncIOInProgress() => throw new System.InvalidOperationException("InvalidOperation_AsyncIOInProgress");

        private void CheckAsyncTaskInProgress()
        {
            // We are not locking the access to _asyncWriteTask because this is not meant to guarantee thread safety.
            // We are simply trying to deter calling any Write APIs while an async Write from the same thread is in progress.
            if (!_asyncWriteTask.IsCompleted)
            {
                ThrowAsyncIOInProgress();
            }
        }

        protected bool _disposed = false;

        protected override void Dispose(bool disposing)
        {
            try
            {
                // We need to flush any buffered data if we are being closed/disposed.
                // Also, we never close the handles for stdout & friends.  So we can safely
                // write any buffered data to those streams even during finalization, which
                // is generally the right thing to do.
                if (!_disposed && disposing)
                {
                    this._disposed = true;
                    // Note: flush on the underlying stream can throw (ex., low disk space)
                    CheckAsyncTaskInProgress();

                    //if(this.Exception == null)
                    // Flush(flushStream: true, flushEncoder: true);
                    // wtf ? 
                    this.Flush();
                }
            }
            finally
            {
                CloseStreamFromDispose(disposing);
            }
        }

        private void CloseStreamFromDispose(bool disposing)
        {
            /*
            // Dispose of our resources if this MyStreamWriter is closable.
            if (_closable && !_disposed)
            {
                try
                {
                    // Attempt to close the stream even if there was an IO error from Flushing.
                    // Note that Stream.Close() can potentially throw here (may or may not be
                    // due to the same Flush error). In this case, we still need to ensure
                    // cleaning up internal resources, hence the finally block.
                    if (disposing)
                    {
                        _stream.Close();
                    }
                }
                finally
                {
                    _disposed = true;
                    _charLen = 0;
                    base.Dispose(disposing);
                }
            }
            */
        }

        /*
        protected async override void Dispose(bool disposing)
        {
            System.Console.WriteLine("foo");

            try
            {
                if(false)//if (Exception == null)
                    base.Dispose(disposing);
                else
                {
                    await FlushAsync();

                    bool leaveOpen = true;

                    if (base.BaseStream != null)
                    {
                        // Note: flush on the underlying stream can throw (ex., low disk space)
                        if (disposing && !leaveOpen)
                        {
                            base.BaseStream.Dispose();
                        }
                    }
                }
            }
            catch (System.Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
        }
        */


        public override void Flush()
        {
            if (this.Exception == null)
                base.Flush();
            // await base.FlushAsync();
            //await this.BaseStream.FlushAsync();
        }


        public override System.Threading.Tasks.Task FlushAsync()
        {
            if (this.Exception == null)
                return base.FlushAsync();
            // return this.BaseStream.FlushAsync();

            return System.Threading.Tasks.Task.CompletedTask;
        }

    }


}