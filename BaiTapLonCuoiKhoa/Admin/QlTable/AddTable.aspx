<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddTable.aspx.cs" Inherits="Admin_OrderTable_AddTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LinkPageAdmin" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" Runat="Server">
       <div class="col-12 mt-5">
        <div class="card">
            <form action="/" method="post">
                <div class="card-body">
                    <h4 class="header-title">Add a new Table to website</h4>
                    <div class="form-group">
                        <label for="example-text-input" class="col-form-label">Name Table</label>
                        <input class="form-control" type="text"  id="NameTable">
                    </div>
                    <div class="form-group">
                        <label for="example-search-input" class="col-form-label">Mô tả</label>
                        <input class="form-control" type="text"  id="Mota">
                    </div>
 
                <asp:Button Text="Thêm" runat="server" class="btn btn-primary mt-4 pr-4 pl-4" ID="addtb" OnClick="addtb_Click"  />
                   <asp:Button Text="Cancel" runat="server" class="btn btn-primary mt-4 pr-4 pl-4" ID="resetaaddtb"  />
                 <br />
                <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4" id="listtb" >Danh sách bàn</button>
            </form>

        </div>
    </div>
</asp:Content>

