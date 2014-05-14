<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajax.aspx.cs" Inherits="ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-1.9.0.js"></script>
    <title></title>

    <script type="text/javascript">
        $(function () {
            $("#<%=btnSave.ClientID%>").click(function () {
                var a = new Object();
                a.Title = $("#<%=txtTitle.ClientID%>").val();
          a.Summary = $("#<%=txtSummary.ClientID%>").val();
                a.Content = $("#<%=txtContent.ClientID%>").val();
                $.ajax({
                    type: "POST",
                    url: "ajax.aspx/AddNews",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify({ d: a }),
                    dataType: "json",
                    success: function (result) {
                        $("#result").html(result.d);
                    }
                    ,
                    error: function (msg) {
                    }
                });
            });
        });

        function News() {
            this.Title = "";
            this.Summary = "";
            this.Content = "";
        }

        function setStudentInfo() {
            var jsonObjects = [
                { id: 1, name: "mike" },
                { id: 2, name: "kile" },
                { id: 3, name: "brian" },
                { id: 1, name: "tom" }
            ];

            $.ajax({
                type: "POST",
                url: "ajax.aspx/SetStudentInfo",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                data: JSON.stringify({Students:jsonObjects}),
                success: function (result) {
                    alert('success');
                },
                error: function (result) {
                    alert(result.responseText);
                }

            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="result"></div>
        <div>
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtSummary" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
            <asp:Button ID="btnSave" runat="server" Text="Button" OnClick="btnSave_Click" OnClientClick="return false" />
            <a href="#" onclick="setStudentInfo()">Click</a>
        </div>
    </form>
</body>
</html>
