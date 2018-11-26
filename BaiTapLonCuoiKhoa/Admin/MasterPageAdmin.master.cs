using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = new Member
        {
            member_fullname = "Đatj"
        };
        var member = (Member)Session["User"];
        if (member != null)
        {
            nameuser.Text = member.member_fullname;
        }
        else
        {
            Response.Redirect("/Admin/AdminLogin.aspx");
        }
    }
}
