using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class Student
{
    private int _id;
    private string _name;
    public string name
    {
        get { return _name; }
        set { _name = value; }
    }
    public int id
    {
        get { return _id; }
        set { _id = value; }
    }
}
