using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class globalUType
{
    static string _UserTypeData;

    public static string UserTypeData
    {
        get {
            return _UserTypeData;
                
            }
        set
        {
            _UserTypeData = value;

        }

    }

}
