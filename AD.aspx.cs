using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkbtnAddNewUser_Click(object sender, EventArgs e)
    {
        SwitchControl(pnlNewAccount, lnkbtnAddNewUser);
    }

    private void SwitchControl(Panel Targetpanel, LinkButton Targetbtn)
    {
        string[] totPanel =
        {
            "pnlNewAccount","pnlModifyAccount", "pnlDisableAccount", "pnlResetAccount", "pnlConfigureLDAP", "pnlReport"
        };
        string[] totbtns =
        {
            "lnkbtnAddNewUser","lnkbtnModifyAccount", "lnkbtnDisableAccount", "lnkbtnResetAccount", "lnkbtnConfigureLDAP", "lnkbtnReport"
        };

        foreach (string s in totPanel)
        {
            if (s == Targetpanel.ID.ToString())
            {
                Targetpanel.Visible = true;
            }
            else
            {
                Panel pnl = pnlMain.FindControl(s) as Panel;
                pnl.Visible = false;
            }
        }
        foreach (string s in totbtns)
        {
            if (s == Targetbtn.ID.ToString())
            {
                Targetbtn.Attributes.Add("class", "active lnkbtn");
            }
            else
            {
                LinkButton btn = pnlMain.FindControl(s) as LinkButton;
                btn.Attributes.Remove("class");

            }
        }
    }
    protected void lnkbtnModifyAccount_Click(object sender, EventArgs e)
    {
        SwitchControl(pnlModifyAccount, lnkbtnModifyAccount);
    }
    protected void lnkbtnDisableAccount_Click(object sender, EventArgs e)
    {
        SwitchControl(pnlDisableAccount, lnkbtnDisableAccount);
    }
    protected void lnkbtnResetAccount_Click(object sender, EventArgs e)
    {
        SwitchControl(pnlResetAccount, lnkbtnResetAccount);

    }
    protected void lnkbtnConfigureLDAP_Click(object sender, EventArgs e)
    {
        SwitchControl(pnlConfigureLDAP, lnkbtnConfigureLDAP);
    }
    protected void lnkbtnReport_Click(object sender, EventArgs e)
    {
        SwitchControl(pnlReport, lnkbtnReport);
    }
}