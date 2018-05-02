using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class globalUserImg
{
    static string _UserImgData;

    public static string UserImgData
    {
        get {
            return _UserImgData;
                
            }
        set
        {
            _UserImgData = value;

        }

    }

}
