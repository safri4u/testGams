<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  EnableEventValidation="false"%>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <script src="scritps/jquery-2.1.0.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('span.chk').children("input").change(function () {
                if ($('span.chk').children("input:checked").length < 1) {
                    $('input[id=Button1]').css('display', 'none');
                }
                else {
                    $('input[id=Button1]').css('display', 'block');
                }
            });
            $('select.ddlCheck').change(function () {
                var $current = $(this);
                $('select.ddlCheck').each(function () {
                    if ($(this).val() == $current.val() && $(this).attr('id') != $current.attr('id')) {
                        alert('duplicate found!');
                        $('#' + $current.attr('id')).val('0');
                        return false;
                    }

                });
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" CssClass="chk" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Ranking" HeaderText="Ranking" SortExpression="dd" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddlCheck">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="10"> 10</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="submit" />



            <asp:GridView ID="grvStudentDetails" runat="server"
                ShowFooter="True" AutoGenerateColumns="False"
                CellPadding="4"
                GridLines="None" OnRowDeleting="grvStudentDetails_RowDeleting" >
                <Columns>
                    <asp:TemplateField HeaderText="Qualification">
                        <ItemTemplate>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                            <asp:Button ID="ButtonAdd" runat="server"
                                Text="Add New Row" OnClick="ButtonAdd_Click" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" DeleteText="X" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
