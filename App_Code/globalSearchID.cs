using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class globalSearchID
{
	static string _SearchIdData;

    public static string SearchIdData
    {
        get {
            return _SearchIdData;
                
            }
        set
        {
            _SearchIdData = value;

        }

    }

	}
