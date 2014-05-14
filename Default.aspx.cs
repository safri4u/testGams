using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtx = new DataTable();
        dtx.Columns.Add("Ranking");
        for (int i = 0; i <= 5; i++)
        {
            DataRow dr = dtx.NewRow();
            dr["Ranking"] = i.ToString();
            dtx.Rows.Add(dr);
        }
        GridView1.DataSource = dtx;
        GridView1.DataBind();
        if (!Page.IsPostBack)
        {
            FirstGridViewRow();
        }
    }

    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRow();
    }

    private void FirstGridViewRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;

        dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        dr = dt.NewRow();

        dr["Col5"] = string.Empty;
        dt.Rows.Add(dr);

        ViewState["CurrentTable"] = dt;

        grvStudentDetails.DataSource = dt;
        grvStudentDetails.DataBind();
    }
    private void AddNewRow()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            var dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    var textBoxName =
                      (TextBox)grvStudentDetails.Rows[rowIndex].Cells[0].FindControl("txtName");

                    drCurrentRow = dtCurrentTable.NewRow();
                    // drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentTable.Rows[i - 1]["Col5"] = textBoxName.Text;

                    rowIndex++;
                }
                if (drCurrentRow != null) dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                grvStudentDetails.DataSource = dtCurrentTable;
                grvStudentDetails.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
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

                    TextBox TextBoxName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[0].FindControl("txtName");
                    TextBoxName.Text = Convert.ToString(dt.Rows[i]["Col5"]);
                        rowIndex++;

                }
            }
        }
    }
    protected void grvStudentDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowData();
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (dt.Rows.Count > 1)
            {
                dt.Rows.Remove(dt.Rows[rowIndex]);
               // drCurrentRow = dt.NewRow();
                ViewState["CurrentTable"] = dt;
                grvStudentDetails.DataSource = dt;
                grvStudentDetails.DataBind();

                for (int i = 0; i < grvStudentDetails.Rows.Count - 1; i++)
                {
                    grvStudentDetails.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousData();
            }
        }
    }
    private void SetRowData()
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
                    TextBox TextBoxName = (TextBox)grvStudentDetails.Rows[rowIndex].Cells[1].FindControl("txtName");

                    rowIndex++;
                }

                ViewState["CurrentTable"] = dtCurrentTable;
                grvStudentDetails.DataSource = dtCurrentTable;
                grvStudentDetails.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousData();
    }

    [WebMethod]
    public static string Gteme(string name)
    {
        return name;
    }
}