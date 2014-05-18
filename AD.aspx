<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AD.aspx.cs" Inherits="AD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/bootstrap-theme.css" rel="stylesheet" />
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.0.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlMain" runat="server">
             
            <table>
                <tr>
                    <td>
                        <ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
                            <li>
                                <asp:LinkButton ID="lnkbtnAddNewUser" runat="server" class="lnk" OnClick="lnkbtnAddNewUser_Click">Add New User</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkbtnModifyAccount" runat="server" OnClick="lnkbtnModifyAccount_Click">Modify Account</asp:LinkButton>
                            </li>
                            <li>
                                <asp:LinkButton ID="lnkbtnDisableAccount" runat="server" class="active" OnClick="lnkbtnDisableAccount_Click">Disable Account</asp:LinkButton>

                            </li>
                            <li>
                                <asp:LinkButton ID="lnkbtnResetAccount" runat="server" OnClick="lnkbtnResetAccount_Click">Reset Account</asp:LinkButton>

                            </li>
                            <li>
                                <asp:LinkButton ID="lnkbtnConfigureLDAP" runat="server" OnClick="lnkbtnConfigureLDAP_Click">Configure LDAP</asp:LinkButton>

                            </li>
                            <li>
                                <asp:LinkButton ID="lnkbtnReport" runat="server" OnClick="lnkbtnReport_Click">Report</asp:LinkButton>

                            </li>

                        </ul>
                    </td>
                    <td>
                        <asp:Panel ID="pnlNewAccount" runat="server" Visible="False">
                            <div class="container  form-horizontal">
                                <div class="form-group">
                                    <label for="inputfield1" class="col-sm-2 control-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield1" placeholder="Input 1">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield2" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield2" placeholder="Input 2">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Department</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="ddlDepartment" runat="server" class="form-control"></asp:DropDownList>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Designation</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="ddlDesignation" runat="server" class="form-control"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                        <asp:Button ID="btnAddNewUser" runat="server" Text="Add New User" CssClass="btn btn-primary" />
                                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-default" />

                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlModifyAccount" runat="server" Visible="False">

                            <div class="container  form-horizontal">
                                <div class="form-group">
                                    <label for="inputfield1" class="col-sm-2 control-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield1" placeholder="Input 1">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield2" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield2" placeholder="Input 2">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Department</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"></asp:DropDownList>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Designation</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlDisableAccount" runat="server" Visible="False">
                            <div class="container  form-horizontal">
                                <div class="form-group">
                                    <label for="inputfield1" class="col-sm-2 control-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield1" placeholder="Input 1">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield2" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield2" placeholder="Input 2">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Department</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control"></asp:DropDownList>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Designation</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="DropDownList4" runat="server" class="form-control"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                            </div>

                        </asp:Panel>
                        <asp:Panel ID="pnlResetAccount" runat="server" Visible="False">

                            <div class="container  form-horizontal">
                                <div class="form-group">
                                    <label for="inputfield1" class="col-sm-2 control-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield1" placeholder="Input 1">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield2" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield2" placeholder="Input 2">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Department</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID="DropDownList5" runat="server" class="form-control"></asp:DropDownList>

                                    </div>
                                </div>
                            </div>

                        </asp:Panel>
                        <asp:Panel ID="pnlConfigureLDAP" runat="server" Visible="False">
                            <div class="container  form-horizontal">
                                <div class="form-group">
                                    <label for="inputfield1" class="col-sm-2 control-label">LDAP</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield1" placeholder="Input 1">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield2" class="col-sm-2 control-label">UserName </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield2" placeholder="Input 2">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputfield3" class="col-sm-2 control-label">Passworrd</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputfield3" placeholder="Input 3">
                                    </div>
                                </div>

                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlReport" runat="server" Visible="False">
                            <table class="table table-condensed table-bordered table-hover" style="width: 100%">
                                <tr>
                                    <td>
                                        <label for="inputfield1" class="control-label">From</label>

                                        <asp:TextBox ID="txtFrom" runat="server" class="form-control"></asp:TextBox></td>
                                    <td>
                                        <label for="inputfield1" class="control-label">To</label>
                                        <asp:TextBox ID="txtTo" runat="server" class="form-control"></asp:TextBox></td>
                                    <td>
                                        <label for="inputfield1" class="control-label">Report Type</label>
                                        
                                        <asp:DropDownList ID="ddlActionType" runat="server" class="form-control">
                                            <asp:ListItem Text="Select" Value="0"></asp:ListItem>

                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">sdfas
                                    </td>
                                </tr>
                            </table>

                        </asp:Panel>


                    </td>
                </tr>
            </table>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('.lnkbtn').each(function () {
                        $(this).parent().attr('class', 'active');
                    });
                });
            </script>
        </asp:Panel>
    </form>
</body>
</html>
