<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
<body>
     <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <form id="form1" runat="server">
            <div class="row">
                <div class="col-md-12">


            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>


            <asp:GridView ID="GridView1" class ="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO"></asp:BoundField>
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Records]"></asp:SqlDataSource>
                    
                    <div class="row form-group">
                                                    <div class="col-md-12">
                    <asp:Label ID="Label1" runat="server" Text="ФИО"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                                                        </div></div>
                    <div class="row form-group">
                                                    <div class="col-md-12">
                    <asp:Label ID="Label2" runat="server" Text="Телефон"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                    </div></div>
            <asp:Button ID="Button1" runat="server" Text="Добавить" class="btn btn-primary mt-2" OnClick="Button1_Click"/>

                    <div class="row form-group">
                                                    <div class="col-md-12">
                    <asp:Label ID="Label3" runat="server" Text="Номер"></asp:Label>
                    <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" class="btn btn-primary mt-2" runat="server" Text="Удалить" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" class="btn btn-primary mt-2" runat="server" Text="Редактировать" OnClick="Button3_Click"/>
                    <p>ФИО</p>

                    <asp:TextBox ID="TextBox4" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                    <p>Телефон</p>
                    <asp:TextBox ID="TextBox5" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                    <asp:Button ID="Button4" class="btn btn-primary mt-2" runat="server" Text="Сохранить" OnClick="Button4_Click" Enabled="False" />
                    </div>
                    </div>

                </ContentTemplate>
                </asp:UpdatePanel>
                    
        </div>

            </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>
