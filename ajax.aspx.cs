using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

    }

    #region WebMethods For Assets
    [WebMethod]
    public static string AddNews(News d)
    {
        //Database process

        return "OK";
    }


    [WebMethod]
    public static void SetStudentInfo(List<Student> Students)
    {
        foreach (Student s in Students)
        {
            //Do whatever here System.Console.WriteLine(s.name);
        }
    }
    #endregion

    public class News
    {
        public string Title;
        public string Summary;
        public string Content;

        public News()
        {
        }
    }
}