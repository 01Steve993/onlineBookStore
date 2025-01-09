using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using YF.Model;

public partial class inc_top : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null && ((User)Session["user"]).Username == "admin")
        {
            a1.NavigateUrl = "/admin/main.aspx";
        }
    }
}