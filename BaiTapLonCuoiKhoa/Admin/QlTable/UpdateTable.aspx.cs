using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlTable_UpdateTable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void addtb_Click(object sender, EventArgs e)
    {
        try
        {
            table tb = new table();
            tb.table_name = txthoten.Text;
            s.diachi = txtdiachi.Text;
            s.dienthoai = txtdienthoai.Text;
            s.malop = int.Parse(drlop.SelectedValue);
            data.them(s);
            mss.Text = "them thanh cong";
            mss.ForeColor = System.Drawing.Color.Blue;
        }
        catch (Exception)
        {

            mss.Text = "them khong thanh cong";
            mss.ForeColor = System.Drawing.Color.Red;
        }


    }
}