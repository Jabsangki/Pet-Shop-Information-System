using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for globalSubPic
/// </summary>
public class globalSubPic
{
    static string _SubpicData;

    public static string SubpicData
    {
        get
        {
            return _SubpicData;
        }
        set
        {
            _SubpicData = value;
        }
    }
}