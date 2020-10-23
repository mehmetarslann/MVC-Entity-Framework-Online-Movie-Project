<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proje_Odev.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kullanıcı Kayıt Ekranı</title>
    <link href="style/style.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="registerbox">
        <form id="form1" runat="server">

            <div class="table-hover">
                <h1 class="text-center">Kullanıcı Kayıt Formu</h1>
                <table class="table">

                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="İsim :" CssClass="lblisim"></asp:Label>

                        </td>
                        <td>
                            <asp:TextBox ID="txtAd" runat="server" CssClass="txtad"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="İsim alanı boş geçilemez." ForeColor="Red" ControlToValidate="txtAd"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAd" ErrorMessage="Geçerli bir ad giriniz" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Soyisim :" CssClass="lblsoyisim"></asp:Label>

                        </td>
                        <td>
                            <asp:TextBox ID="txtSoyad" runat="server" CssClass="txtsoyad"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Soyisim alanı boş geçilemez." ForeColor="Red" ControlToValidate="txtSoyad"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSoyad" ErrorMessage="Geçerli bir soyad giriniz" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Email :" CssClass="lblemail"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txtemail"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Eposta alanı boş geçilemez." ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Geçerli bir eposta giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Telefon :" CssClass="lbltelefon"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtTel" runat="server" CssClass="txttel"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Telefon alanı boş geçilemez." ForeColor="Red" ControlToValidate="txtTel"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTel" ErrorMessage="Geçerli bir tel giriniz" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Adres :" CssClass="lbladres"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TxtAdres" runat="server" TextMode="MultiLine" CssClass="txtadres"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Adres alanı boş geçilemez." ForeColor="Red" ControlToValidate="TxtAdres"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Cinsiyet :" CssClass="lblcinsiyet"></asp:Label></td>
                        <td>
                            <asp:RadioButton ID="rdErkek" runat="server" Text="Erkek" GroupName="cinsiyet" CssClass="rderkek" />
                            <asp:RadioButton ID="rdKadin" runat="server" Text="Kadın" GroupName="cinsiyet" CssClass="rdkadin" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Durum" CssClass="lbldurum"></asp:Label></td>
                        <td>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="chkDurum">
                                <asp:ListItem>Öğrenci</asp:ListItem>
                                <asp:ListItem>Çalışıyor</asp:ListItem>
                                <asp:ListItem>Çalışmıyor</asp:ListItem>
                                <asp:ListItem>Burslu</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Ülke :" CssClass="lblulke"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ulke_ad" DataValueField="ulke_ad" CssClass="dropUlke"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ulke_ad] FROM [Ulke]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="button"></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" CssClass="btn-block" />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</body>
</html>
