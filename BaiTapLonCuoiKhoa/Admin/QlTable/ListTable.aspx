<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ListTable.aspx.cs" Inherits="Admin_QlTable_ListTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LinkPageAdmin" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" Runat="Server">
    <div class="main-content-inner">
                <div class="row">
                    <!-- data table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Data Table Default</h4>
                                <div class="data-tables">
                                    <asp:gridview runat="server" id="ds" autogeneratecolumns="false">
                                        <Columns>
                                            <asp:BoundField DataField="table_id" HeaderText="ma sv" />
                                            <asp:BoundField DataField="table_name" HeaderText="ho ten" />
                                            <asp:BoundField DataField="table_status" HeaderText="dia chi" />
                                            <asp:BoundField DataField="table_description" HeaderText="dien thoai" />
                                            
                                            <%--<asp:TemplateField HeaderText="xoa" >
                                                <ItemTemplate>
                                                    <asp:Button Text="xoa" runat="server" CommandName="xoa" OnCommand="xoa_click" CommandArgument='<%# Bind("masv") %>' ID="del" OnClientClick="return confirm('ban that su mun xoa chu ?')"/>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="sua" >
                                                <ItemTemplate>
                                                    <asp:Button Text="sua" runat="server" CommandName="sua" OnCommand="sua_click" CommandArgument='<%# Bind("masv") %>' ID="upd" />
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                        </Columns>
                                    </asp:gridview>
                                    <asp:button text="them" runat="server" id="addd" postbackurl="~/them.aspx" height="26px" />

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- data table end -->

                </div>
            </div>
</asp:Content>

