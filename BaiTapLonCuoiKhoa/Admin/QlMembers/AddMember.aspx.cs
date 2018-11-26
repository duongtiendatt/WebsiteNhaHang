using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlMembers_AddMember : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
    }



    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
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
            data.AddNewUser(user);
            msg.Text = "Add success!";
            msg.ForeColor = System.Drawing.Color.Green;
            ReloadPage();
        }
        catch (Exception)
        {
            msg.Text = "Add Fail. Let try!";
            msg.ForeColor = System.Drawing.Color.Red;
        }
    }

    private void ReloadPage()
    {
        txtemail.Text = "";
        txtfullname.Text = "";
        txtphone.Text = "";
        txtusername.Text = "";
    }
}