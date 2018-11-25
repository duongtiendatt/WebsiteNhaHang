using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QlTable_ListTable : System.Web.UI.Page
{

    DataUtil data = new DataUtil();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            hienthi();
        }


    }
    public void hienthi()
    {
        dstb.DataSource = data.dsTable();
        DataBind();
    }
}