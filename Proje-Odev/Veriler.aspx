<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veriler.aspx.cs" Inherits="Proje_Odev.Veriler" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

    <form runat="server">
        <div class="table">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>AD</th>
                    <th>SOYAD</th>
                    <th>EMAİL</th>
                    <th>TELEFON</th>
                    <th>ADRES</th>
                    <th>CİNSİYET</th>
                    <th>DURUM</th>
                    <th>ÜLKE</th>
                    <th>İŞLEM</th>
                </tr>
                <tr>
                    <asp:Repeater ID="VeriGetir" runat="server">
                        <ItemTemplate>
                            <td><%#Eval("user_id")%></td>
                            <td><%#Eval("user_ad")%></td>
                            <td><%#Eval("user_soyad")%></td>
                            <td><%#Eval("user_email")%></td>
                            <td><%#Eval("user_telefon")%></td>
                            <td><%#Eval("user_adres")%></td>
                            <td><%#Eval("user_cinsiyet")%></td>
                            <td><%#Eval("user_durum")%></td>
                            <td><%#Eval("user_ulke")%></td>
                            <td>
                                <asp:ImageButton ID="btnSil" runat="server" ImageUrl="~/icon/iconfinder_f-cross_256_282471.png" CommandName="sil" OnCommand="btnSil_Command" CommandArgument='<%#Eval("user_id") %>' />
                                <asp:ImageButton ID="btnGuncelle" runat="server" ImageUrl="~/icon/iconfinder_radial_arrows_1216559.png" CommandName="guncelle" OnCommand="btnGuncelle_Command" CommandArgument='<%#Eval("user_id") %>' />

                                <tr></tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
