<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="Admin_QlMembers_AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="Server">
    DDHT || Add new user
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LinkPageAdmin" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="Server">
    <div class="col-12 mt-5">
        <div class="card">
            <div class="card-body">
                <form id="formadduser" runat="server" action="/Admin/QlMembers/AddMember.aspx">
                    <h4 class="header-title">Add a new user to website</h4>
                    <div class="form-group">
                        <label for="example-text-input" class="col-form-label">Full name (*)</label>
                        <asp:TextBox runat="server" ID="txtfullname" placeholder="Example: Dương Tiến Đạt" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="refullname" runat="server" ErrorMessage="The field is required" ControlToValidate="txtfullname" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="example-search-input" class="col-form-label">User name (*)</label>
                        <asp:TextBox runat="server" ID="txtusername" placeholder="Example: duongtiendat" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="reusername" runat="server" ErrorMessage="The field is required" ControlToValidate="txtusername" Display="Dynamic" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="example-email-input" class="col-form-label">Email (*)</label>
                        <asp:TextBox runat="server" ID="txtemail" placeholder="Example: name@example.com" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="reemail" runat="server" ErrorMessage="The field is required" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="regemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Hãy nhập đúng định dạng" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="example-tel-input" class="col-form-label">Telephone (*)</label>
                        <asp:TextBox runat="server" ID="txtphone" placeholder="Example: 0336515294" CssClass="form-control" TextMode="Phone" />
                        <asp:RegularExpressionValidator ID="regphone" runat="server" ErrorMessage="Hãy nhập đúng định dạng ít nhất là 9 chữ số" Display="Dynamic" ControlToValidate="txtphone" ForeColor="Red" ValidationExpression="\d{9}" />
                        <asp:RequiredFieldValidator ID="rephone" runat="server" ErrorMessage="The field is required" Display="Dynamic" ControlToValidate="txtphone" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="">Password</label>
                        <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" TextMode="Password" />
                        <asp:RequiredFieldValidator ID="repassword" runat="server" ErrorMessage="The field is required" ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="">Confirm Password</label>
                        <asp:TextBox runat="server" ID="txtconfirmpassword" CssClass="form-control" TextMode="Password" />
                        <asp:CompareValidator ID="compassword" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="Password not match" ForeColor="Red"></asp:CompareValidator>
                    </div>
                    <%--                    <div class="form-group">
                        <label for="example-number-input" class="col-form-label">Number</label>
                        <input class="form-control" type="number" value="42" id="example-number-input">
                    </div>--%>
                    <%--                    <div class="form-group">
                        <label for="example-date-input" class="col-form-label">Date</label>
                        <asp:TextBox runat="server" ID="TextBox5" placeholder="Example: duongtiendat" CssClass="form-control"/>
                        <input class="form-control" type="date" value="" id="example-date-input">
                    </div>--%>
                    <%--<div class="form-group">
                        <label class="col-form-label">Select</label>
                        <select class="form-control">
                            <option>Select</option>
                            <option>Large select</option>
                            <option>Small select</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Custom Select</label>
                        <select class="custom-select">
                            <option selected="selected">Open this select menu</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="example-text-input-lg" class="col-form-label">Large</label>
                        <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" id="example-text-input-lg">
                    </div>
                    <div class="form-group">
                        <label for="example-text-input-sm" class="col-form-label">Small</label>
                        <input class="form-control form-control-sm" type="text" placeholder=".form-control-sm" id="example-text-input-sm">
                    </div>
                    <div class="form-group has-primary">
                        <label for="inputHorizontalPrimary" class="col-form-label">Email</label>
                        <input type="email" class="form-control form-control-primary" id="inputHorizontalPrimary" placeholder="name@example.com">
                        <div class="form-control-feedback">Primary! You've done it.</div>
                        <small class="form-text text-muted">Example help text that remains unchanged.</small>
                    </div>
                    <div class="form-group has-warning">
                        <label for="inputHorizontalWarning" class="col-form-label">Email</label>
                        <input type="email" class="form-control form-control-warning" id="inputHorizontalWarning" placeholder="name@example.com">
                        <div class="form-control-feedback">
                            Shucks, check the formatting of that and try again.
                        </div>
                        <small class="form-text text-muted">Example help text that remains unchanged.
                        </small>
                    </div>
                    <div class="form-group mb-0 has-danger">
                        <label for="inputHorizontalDnger" class="col-form-label">Email</label>
                        <input type="email" class="form-control form-control-danger" id="inputHorizontalDnger" placeholder="name@example.com">
                        <div class="form-control-feedback">Sorry, that username's taken. Try another?</div>
                        <small class="form-text text-muted">Example help text that remains unchanged.</small>
                    </div>--%>
                    <asp:Button CssClass="btn btn-primary mt-4 pr-4 pl-4" runat="server" ID="btnsubmit" Text="ADD" OnClick="btnsubmit_Click"/>
                </form>
            </div>

        </div>
    </div>
</asp:Content>

