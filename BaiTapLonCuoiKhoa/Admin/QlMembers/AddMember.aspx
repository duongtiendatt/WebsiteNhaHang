<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="Admin_QlMembers_AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LinkPageAdmin" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="Server">
    <div class="col-12 mt-5">
        <div class="card">
            <form action="/" method="post">
                <div class="card-body">
                    <h4 class="header-title">Add a new user to website</h4>
                    <div class="form-group">
                        <label for="example-text-input" class="col-form-label">Full name</label>
                        <input class="form-control" type="text" value="Carlos Rath" id="example-text-input">
                    </div>
                    <div class="form-group">
                        <label for="example-search-input" class="col-form-label">User name</label>
                        <input class="form-control" type="search" value="Where is google office" id="example-search-input">
                    </div>
                    <div class="form-group">
                        <label for="example-email-input" class="col-form-label">Email</label>
                        <input class="form-control" type="email" value="name@example.com" id="example-email-input">
                    </div>
                    <div class="form-group">
                        <label for="example-tel-input" class="col-form-label">Telephone</label>
                        <input class="form-control" type="tel" value="+880-1233456789" id="example-tel-input">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="">Password</label>
                        <input type="password" class="form-control" id="inputPassword" value="inputPassword" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="">Confirm Password</label>
                        <input type="password" class="form-control" id="inputConfirmPassword" value="inputConfirmPassword" placeholder="Confirm Password">
                    </div>
                    <div class="form-group">
                        <label for="example-number-input" class="col-form-label">Number</label>
                        <input class="form-control" type="number" value="42" id="example-number-input">
                    </div>
                    <div class="form-group">
                        <label for="example-datetime-local-input" class="col-form-label">Date and time</label>
                        <input class="form-control" type="datetime-local" value="2018-07-19T15:30:00" id="example-datetime-local-input">
                    </div>
                    <div class="form-group">
                        <label for="example-date-input" class="col-form-label">Date</label>
                        <input class="form-control" type="date" value="2018-03-05" id="example-date-input">
                    </div>
                    <div class="form-group">
                        <label for="example-month-input" class="col-form-label">Month</label>
                        <input class="form-control" type="month" value="2018-05" id="example-month-input">
                    </div>
                    <div class="form-group">
                        <label for="example-week-input" class="col-form-label">Week</label>
                        <input class="form-control" type="week" value="2018-W32" id="example-week-input">
                    </div>
                    <div class="form-group">
                        <label for="example-time-input" class="col-form-label">Time</label>
                        <input class="form-control" type="time" value="13:45:00" id="example-time-input">
                    </div>
                    <div class="form-group">
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
                    </div>
                </div>
                <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Submit</button>
            </form>

        </div>
    </div>
</asp:Content>

