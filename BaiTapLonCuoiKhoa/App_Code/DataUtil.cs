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
        string sqlcon = @"Data Source=.\SQLEXPRESS;Initial Catalog=WebsiteNhaHang;Integrated Security=True";
        con = new SqlConnection(sqlcon);

    }

    public List<table> dsTable()
    {
        List<table> li = new List<table>();
        string sqlslTable = "select * from qlTable";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlslTable, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            table tb = new table();
            tb.table_id = (int)dr["table_id"];
            tb.table_name = (string)dr["table_name"];
            tb.table_status = (int)dr["table_status"];
            tb.table_description = (string)dr["table_description"];

            li.Add(tb);

        }
        con.Close();
        return li;
    }


    public void AddTable(table tb)
    {
        string sqladdtb = "insert into qlTable values(@nametb,@stt,@mota)";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqladdtb, con);
        cmd.Parameters.AddWithValue("nametb", tb.table_name);
        cmd.Parameters.AddWithValue("stt", tb.table_status);
        cmd.Parameters.AddWithValue("mota", tb.table_description);

        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void xoatb(int matb)
    {
        string sqlxoatb = "delete from qlTable where table_id=@matb";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlxoatb, con);
        cmd.Parameters.AddWithValue("matb", matb);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public table lay1tb(int matb)
    {

        string sqlsl = "select * from qlTable where table_id=@matb";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlsl, con);
        cmd.Parameters.AddWithValue("matb", matb);
        SqlDataReader dr = cmd.ExecuteReader();
        table tb = null;
        while (dr.Read())
        {
            tb = new table();
            tb.table_id = (int)dr["table_id"];
            tb.table_name = (string)dr["table_name"];
            tb.table_status = (int)dr["table_status"];
            tb.table_description = (string)dr["table_description"];



        }
        con.Close();
        return tb;
    }
    public void suatb(table tb)
    {
        string sqlsuqtb = "update  qlTable set table_name=@table_name,table_status=@table_status,table_description=@table_description where table_id=@table_id";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlsuqtb, con);
        cmd.Parameters.AddWithValue("table_name", tb.table_name);
        cmd.Parameters.AddWithValue("table_status", tb.table_status);
        cmd.Parameters.AddWithValue("table_description", tb.table_description);
        cmd.Parameters.AddWithValue("table_id",tb.table_id);
        
        cmd.ExecuteNonQuery();
        con.Close();
    }






    /// <summary>
    /// Get list members
    /// created by : Dat 25-11-2018
    /// </summary>
    /// <returns></returns>
    public List<Member> GetListMembers()
    {
        List<Member> listMember = new List<Member>();
        string sqlslTable = "select * from Member";
        con.Open();
        SqlCommand cmd = new SqlCommand(sqlslTable, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Member mb = new Member();
            mb.member_id = (int)dr["member_id"];
            mb.member_status = (int)dr["member_status"];
            mb.member_type = (int)dr["member_type"];
            mb.member_fullname = (string)dr["member_fullname"];
            mb.member_mail = (string)dr["member_mail"];
            mb.member_password = (string)dr["member_password"];
            mb.member_phone = (string)dr["member_phone"];
            mb.member_username = (string)dr["member_username"];

            listMember.Add(mb);

        }
        con.Close();
        return listMember;
    }

}


