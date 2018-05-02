using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class3
/// </summary>
public class globalL

{
    static string _LnameData;

    public static string LnameData
    {
        get
        {
            return _LnameData;

        }
        set
        {
            _LnameData = value;

        }
    }
}