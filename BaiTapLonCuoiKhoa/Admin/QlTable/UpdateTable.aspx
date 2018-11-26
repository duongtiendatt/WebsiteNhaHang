<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="UpdateTable.aspx.cs" Inherits="Admin_QlTable_UpdateTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LinkPageAdmin" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="Server">
    <div class="col-12 mt-5">
        <div class="card">
            <form action="/Admin/QlTable/UpdateTable.aspx" runat="server">
                <div class="card-body">
                    <h4 class="header-title">Update this Table </h4>
                    <div class="form-group">
                        <label for="example-text-input" class="col-form-label">ID Table</label>
                        <input class="form-control" type="text" id="IDTable">
                    </div>
                    <div class="form-group">
                        <label for="example-text-input" class="col-form-label">Name Table</label>
                        <input class="form-control" type="text" id="NameTable">
                    </div>
                    <div class="form-group">
                        <label for="example-search-input" class="col-form-label">Mô tả</label>
                        <input class="form-control" type="text" id="Mota">
                    </div>

                    
                    <asp:Button Text="Update" runat="server" class="btn btn-primary mt-4 pr-4 pl-4" ID="addtb"  />
                    <asp:Button Text="Cancel" runat="server" class="btn btn-primary mt-4 pr-4 pl-4" ID="resetaaddtb"  />
                    
                    <br />
                </div>
                <%--<button type="submit" class="btn btn-primary mt-4 pr-4 pl-4" id="listtb" >Danh sách bàn</button>--%>
            </form>

        </div>
    </div>
</asp:Content>

