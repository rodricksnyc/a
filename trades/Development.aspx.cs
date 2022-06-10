

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Careers_trades_Development : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal breadCrumb = (Literal)this.Master.FindControl("litBreadCrumb");
        if (HttpContext.Current.Request.Url.AbsolutePath.ToLower().Contains("/careers/"))
        {
            breadCrumb.Text = "<li><a href='/home.aspx'>Syngenta US</a> &rsaquo;</li> " +
                "<li>Careers </li> ";


        }

    }
}