using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default16 : System.Web.UI.Page
{
    private void SetInitialRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
      
        dt.Columns.Add(new DataColumn("Column3", typeof(string)));
        dr = dt.NewRow();
       
        dr["Column3"] = string.Empty;
        dt.Rows.Add(dr);

        //Store the DataTable in ViewState
        ViewState["CurrentTable"] = dt;

        Gridview1.DataSource = dt;
        Gridview1.DataBind();
    }
    private void AddNewRowToGrid()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                   
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[0].FindControl("TextBox3");
                    drCurrentRow = dtCurrentTable.NewRow();
                    dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;
                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                Gridview1.DataSource = dtCurrentTable;
                Gridview1.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }

        //Set Previous Data on Postbacks
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[0].FindControl("TextBox3");
                    box3.Text = dt.Rows[i]["Column3"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetInitialRow();
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRowToGrid();
    }
    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
