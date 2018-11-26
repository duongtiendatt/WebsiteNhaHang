using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlMembers_AddMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnsubmit.Click += btnsubmit_Click;
    }



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtfullname.Text.Length < 6 || txtfullname.Text.Length > 100)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage();", true);
            }
            else
            {
                var user = new Member()
                {
                    member_fullname = txtfullname.Text,
                    member_mail = txtemail.Text,
                    member_password = txtpassword.Text,
                    member_phone = txtphone.Text,
                    member_username = txtusername.Text,
                    member_status = 1, ///Active
                };
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}