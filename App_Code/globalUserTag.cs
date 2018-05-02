using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for globalUserTag
/// </summary>
public class globalUserTag
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