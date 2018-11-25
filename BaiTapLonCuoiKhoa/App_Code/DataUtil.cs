using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;


/// <summary>
/// Summary description for DataUtil
/// </summary>
public class DataUtil
{
    SqlConnection con;
    public DataUtil()
    {
        string sqlcon = @"Data Source=WIN-BPJ44D603CR\SQLEXPRESS;Initial Catalog=WebsiteNhaHang;Integrated Security=True";
        con = new SqlConnection(sqlcon);

    }
    public List<OrderTable> dsOrderTable()
    {
        List<OrderTable> li = new List<OrderTable>();
        string sqlslOrderTable = "select * from OrderTable";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlslOrderTable, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            OrderTable s = new OrderTable();
            s.ordertable_id = (int)dr["ordertable_id"];
            s.ordertable_timeset = (DateTime)dr["ordertable_timeset"];
            s.ordertable_quantity = (int)dr["ordertable_quantity"];
            s.ordertable_status = (int)dr["ordertable_status"];
            s.ordertable_iduser = (int)dr["ordertable_iduser"];
            li.Add(s);

        }
        con.Close();
        return li;
    }

}