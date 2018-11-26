using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlTable_UpdateTable : System.Web.UI.Page
{
<<<<<<< HEAD
    protected void Page_Load(object sender, EventArgs e)
    {

=======
    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        ShowInfoTable();
        txtidtb.Enabled = false;
    }
    private void ShowInfoTable()
    {
        var id = Request.QueryString["idtable"];
        if (!string.IsNullOrEmpty(id))
        {
            var tb = data.lay1tb(Convert.ToInt16(id));
            Session["idtb"] = id;
            txtidtb.Text = tb.table_id.ToString();
            txtnametb.Text = tb.table_name;
            txtmota.Text = tb.table_description;
            if (tb.table_status==true)
            {
                rdoddd.Checked = true;
            }
            else
            {
                rdocdd.Checked = true;
            }
            
        }
>>>>>>> b8bf9fcfe19b53adda305f766dce55e4a9ac7200
    }



<<<<<<< HEAD
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


=======


    protected void updattb_Click(object sender, EventArgs e)
    {
        try
        {
            Boolean ttdd;
            if (rdoddd.Checked==true)
            {
                ttdd = true;
            }
            else
            {
                ttdd=false;
            }

            var tb = new table()
            {
                table_name = txtnametb.Text,
                table_description = txtmota.Text,
                table_status =ttdd,
                table_id = Convert.ToInt16(Session["idtb"].ToString())
            };
            data.suatb(tb);
            mss.Text = "Update success!";
            mss.ForeColor = System.Drawing.Color.Green;
            ShowInfoTable();
        }
        catch (Exception ex)
        {
            mss.Text = "Update Fail. Erorr: " + ex.Message + ". Let try!";
            mss.ForeColor = System.Drawing.Color.Red;
        }
>>>>>>> b8bf9fcfe19b53adda305f766dce55e4a9ac7200
    }
}