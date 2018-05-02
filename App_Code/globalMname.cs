using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class2
/// </summary>
public class globalM
{
    static string _MnameData;

    public static string MnameData
    {
        get
        {
            return _MnameData;

        }
        set
        {
            _MnameData = value;

        }
    }
}