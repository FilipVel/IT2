<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <table class="nav-justified">
            <tr>
                <td style="width: 129px; text-align:right; height: 22px;">&nbsp;</td>
                <td style="width:40%;height: 22px" colspan="3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlGodina" ErrorMessage="RequiredFieldValidator" InitialValue="Година"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlMesec" ErrorMessage="RequiredFieldValidator" InitialValue="Месец"></asp:RequiredFieldValidator>
                </td>
                <td rowspan="14">
                    <asp:Panel ID="Panel1" runat="server" Height="" style="margin-top: 0px">
                        <br />
                        Почитуван патнику<br />
                        <asp:Label ID="lblPatnik" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        Издадена ви е карта за<br />
                        <asp:Label ID="lblSredstvo" runat="server"></asp:Label>
                        &nbsp;
                        <br />
                        со почетна дестинација<br />
                        <asp:Label ID="lblOd" runat="server"></asp:Label>
                        <br />
                        и крајна дестинација<br />
                        <asp:Label ID="lblDo" runat="server"></asp:Label>
                        <br />
                        Време на поаѓање:<br />
                        <asp:Label ID="lblVreme" runat="server"></asp:Label>
                        <br />
                        Вашето место за седење ќе биде во зоната<br /> за
                        <asp:Label ID="lblZona" runat="server"></asp:Label>
                        &nbsp;во
                        <asp:Label ID="lblKlasa" runat="server"></asp:Label>
                        &nbsp;класа<br /> и во текот на патувањето ќе бидете послужени со:<br />
                        <asp:Label ID="lblPosluga" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="img" runat="server" Height="195px" Width="300px" />
                        <br />
                        <br />
                        Ви благодариме за довербата и ви посакуваме пријатен пат!<br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; text-align:right; height: 22px;">Име</td>
                <td style="width:40%;height: 22px" colspan="3">
                    <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 22px; text-align:right">Презиме</td>
                <td style="height: 22px" colspan="3">
                    <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrezime" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; text-align:right; height: 24px;">Од</td>
                <td colspan="3" style="height: 24px">
                    <asp:DropDownList ID="ddlOd" runat="server">
                        <asp:ListItem>-град-</asp:ListItem>
                        <asp:ListItem>Скопје</asp:ListItem>
                        <asp:ListItem>Белград</asp:ListItem>
                        <asp:ListItem>Братислава</asp:ListItem>
                        <asp:ListItem>Милано</asp:ListItem>
                        <asp:ListItem>Барселона</asp:ListItem>
                        <asp:ListItem>Солун</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlOd" ErrorMessage="RequiredFieldValidator" InitialValue="-град-"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right; height: 24px;">До</td>
                <td colspan="3" style="height: 24px">
                    <asp:DropDownList ID="ddlDo" runat="server">
                        <asp:ListItem>-град-</asp:ListItem>
                        <asp:ListItem>Скопје</asp:ListItem>
                        <asp:ListItem>Белград</asp:ListItem>
                        <asp:ListItem>Братислава</asp:ListItem>
                        <asp:ListItem>Милано</asp:ListItem>
                        <asp:ListItem>Барселона</asp:ListItem>
                        <asp:ListItem>Солун</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlDo" ErrorMessage="RequiredFieldValidator" InitialValue="-град-"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right; height: 24px;">Датум</td>
                <td style="height: 24px; width: 6%">
                    <asp:DropDownList ID="ddlDen" runat="server">
                    </asp:DropDownList>
                </td>
                <td style="height: 24px; width: 6%">
                    <asp:DropDownList ID="ddlMesec" runat="server" Width="89px">
                    </asp:DropDownList>
                </td>
                <td style="height: 24px; width: 13%">
                    <asp:DropDownList ID="ddlGodina" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right; height: 24px;">Време</td>
                <td style="height: 24px; " colspan="3">
                    <asp:DropDownList ID="ddlVreme" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlVreme" ErrorMessage="RequiredFieldValidator" InitialValue="Време"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right; height: 84px;">Превозно средство</td>
                <td colspan="3" style="height: 84px">
                    <asp:ListBox ID="lstSredstvo" runat="server" Height="50px">
                        <asp:ListItem Value="~/avion.png">Авион</asp:ListItem>
                        <asp:ListItem Value="~/voz.jpg">Воз</asp:ListItem>
                    </asp:ListBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="lstSredstvo" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right">Зона</td>
                <td colspan="3">
                    <asp:RadioButtonList ID="rblZona" runat="server">
                        <asp:ListItem>Пушачи</asp:ListItem>
                        <asp:ListItem>Непушачи</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rblZona" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right; height: 24px;">Класа</td>
                <td colspan="3" style="height: 24px">
                    <asp:RadioButtonList ID="rblKlasa" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Економска</asp:ListItem>
                        <asp:ListItem>Бизнис</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 129px;text-align:right">Послуга</td>
                <td colspan="3">
                    <asp:CheckBoxList ID="cblPosluga" runat="server" Height="22px" RepeatDirection="Horizontal">
                        <asp:ListItem>Пијалок</asp:ListItem>
                        <asp:ListItem>Кафе</asp:ListItem>
                        <asp:ListItem>Оброк</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td style="width: 129px; height: 28px;"></td>
                <td colspan="3" style="height: 28px">
                    <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlDen" ErrorMessage="RequiredFieldValidator" InitialValue="Ден"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 129px">&nbsp;</td>
                <td colspan="3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rblKlasa" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx">КОН ЗАДАЧА 2</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
