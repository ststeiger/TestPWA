
class AJAXException
{
    protected m_Exception: any; //Exception;
    public message: string; // property 


    constructor(message: string, exBaseException: any) // exception
    {
        this.m_Exception = exBaseException
        this.message = message;
    }




    public sessionExpired: boolean; // property
    //get sessionExpired(): boolean
    //{
    //    if (this.m_Exception)
    //    {
    //        if (typeof(this.m_Exception) === "SessionExpiredException")
    //            return true;
    //    }

    //    return false;
    //}


    // public originalMessage: string; // property
    get originalMessage(): string
    {
        if (this.m_Exception)
        {
            if (this.m_Exception.Message)
                return this.m_Exception.Message;
        }

        return "";
    }


    // public source: string; // property
    get source(): string
    {
        if (this.m_Exception)
        {
            if (this.m_Exception.Source)
                return this.m_Exception.Source;
        }

        return "";
    }


    // public stackTrace: string; // property
    get stackTrace(): string
    {
        if (this.m_Exception)
        {
            if (this.m_Exception.StackTrace)
                return this.m_Exception.StackTrace;
        }

        return "";
    }

    // public innerException: any; // Exception, property
    get innerException(): any
    {
        return this.m_Exception;
    }

}

class cAjaxResult
{
    public data: any;
    public error: AJAXException;
    //public hasError: boolean;

    get hasError(): boolean
    {
        if (this.error)
            return true;

        return false;
    }

}


interface IDotNetException
{
    Message: string;
    InnerException: IDotNetException;
    StackTrace: string;
    Source: string;
    HelpLink: string;
    // TargetSite: any;
    Data: { [key: string]: any };// IDictionary
}


interface IAjaxException
{
    sessionExpired: boolean;
    message: string;
    originalMessage: string;
    source: string;
    stackTrace: string;
    innerException: IDotNetException;
}

// Result of AnyInsert.ashx
interface IAjaxResult<T>
{
    data: T;
    error: IAjaxException;
    // hasError(): boolean;
    hasError: boolean;
}
