using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class globalSearch
{
    static string _SrData;

    public static string SrData
    {
        get {
            return _SrData;
                
            }
        set
        {
            _SrData = value;

        }

    }
    

}