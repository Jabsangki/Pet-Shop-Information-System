using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for globalTag
/// </summary>
public class globalTag
{
    static string _tagidData;

    public static string tagidData
    {
        get
        {
            return _tagidData;

        }
        set
        {
            _tagidData = value;

        }
    }
}