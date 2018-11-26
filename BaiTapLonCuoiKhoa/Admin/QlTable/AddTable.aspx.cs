using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OrderTable_AddTable : System.Web.UI.Page
{
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void add_Click(object sender, EventArgs e)
    {
        try
        {
            table tb = new table();
            tb.table_name = txthoten.Text;
            tb.Mota = txtdiachi.Text;
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