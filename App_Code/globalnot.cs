﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public static class globalnot
{
    static string _importantData;

    public static string ImportantData
    {
        get {
            return _importantData;
                
            }
        set
        {
            _importantData = value;

        }

    }
    

}