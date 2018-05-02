using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GlobalTdetails
/// </summary>
public class GlobalTdetails
{
    static string _Details;

    public static string Tdetails
    {
        get
        {
            return _Details;

        }
        set
        {
            _Details = value;

        }
    }
}