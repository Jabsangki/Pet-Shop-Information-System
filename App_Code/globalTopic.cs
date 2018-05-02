using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for globalTopic
/// </summary>
public class globalTopic
{
    static string _TopicData;

    public static string TopicData
    {
        get
        {
            return _TopicData;
        }

        set
        {
            _TopicData = value;
        }
    
    }
}