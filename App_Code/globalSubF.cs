using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for globalSubF
/// </summary>
public class globalSubF
{
    static string _FnameData;

    public static string FnameData
    {
        get
        {
            return _FnameData;

        }
        set
        {
            _FnameData = value;

        }
    }
}