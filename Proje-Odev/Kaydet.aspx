<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydet.aspx.cs" Inherits="Proje_Odev.Kaydet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="style/style.css" rel="stylesheet" />
</head>
<body>
     <form runat="server">
        <div class="table">
            <table class="table table-bordered">
                <tr>
                    <th>AD</th>
                    <th>SOYAD</th>
                    <th>EMAİL</th>
                    <th>TELEFON</th>
                    <th>ADRES</th>
                    <th>CİNSİYET</th>
                    <th>DURUM</th>
                    <th>ÜLKE</th>
                </tr>
                <tr>
                            <td>
                                <asp:Label ID="lblAd" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblSoyad" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTel" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblAdres" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblCinsiyet" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDurum" runat="server"></asp:Label>
                            </td><td>
                                <asp:Label ID="lblUlke" runat="server"></asp:Label>
                            </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click"  CssClass="btn-block"/> </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
