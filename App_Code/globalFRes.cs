using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class globalFRes
{
    static string _FResData;

    public static string FResData
    {
        get
        {
            return _FResData;

        }
        set
        {
            _FResData = value;

        }
    }
}