<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <table class="nav-justified">
        <tr>
            <td style="height: 46px; width: 787px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 65px; width: 787px;">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td style="height: 65px; width: 787px;">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td style="height: 65px; width: 787px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    
                    
                    <asp:View ID="View1" runat="server">
                        <table>
                            <tr style="width:100%">
                                <td style="width: 363px; height: 22px;">
                                    <asp:Label ID="Label1" runat="server" Text="Име"></asp:Label>
                                </td>
                                <td style="height: 22px">
                                    <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" Display="None" ErrorMessage="Внеси име"></asp:RequiredFieldValidator>
                                </td>
                                </tr>

                            <tr style="width:100%">
                                <td style="width: 363px">
                                    Презиме</td>
                                <td>
                                    <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrezime" Display="None" ErrorMessage="Внеси презиме"></asp:RequiredFieldValidator>
                                </td>
                                </tr>

                            <tr style="width:100%">
                                <td style="width: 363px">
                                    Финки ID</td>
                                <td>
                                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                                    @finki.ukim.mk<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtID" ErrorMessage="Внеси ID"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtID" Display="None" ErrorMessage="Неправилен формат на ID" ValidationExpression="^[a-z0-9]+(.|_)?[a-z0-9]+"></asp:RegularExpressionValidator>
                                </td>
                                </tr>
                            <tr style="width:100%">
                                <td style="width: 363px">
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" BorderStyle="None" ForeColor="#CCCCCC" Text="може да ги содржи знаците a-z, 0-9 и максимум една точка" Width="408px"></asp:Label>
                                </td>
                                </tr>
                            <tr style="width:100%">
                                <td style="width: 363px; height: 22px;">
                                    Лозинка</td>
                                <td style="height: 22px">
                                    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLozinka" Display="None" ErrorMessage="Внеси лозинка"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            <tr style="width:100%">
                                <td style="width: 363px; height: 22px;">
                                    Потврда</td>
                                <td style="height: 22px">
                                    <asp:TextBox ID="txtLozinka2" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLozinka" Display="None" ErrorMessage="Внеси потврда"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtLozinka" ControlToValidate="txtLozinka2" Display="None" ErrorMessage="Лозинки не се совпаѓаат"></asp:CompareValidator>
                                    </td>
                                </tr>
                            <tr style="width:100%">
                                <td style="width: 363px; height: 22px;">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&gt;&gt;" Width="83px" />
                                    </td>
                                <td style="height: 22px">
                                    </td>
                                </tr>

                            <tr style="width:100%">
                                <td style="width: 50%">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>

                       </table>
                    </asp:View>

                    <asp:View ID="View2" runat="server">
                        <table style="width: 732px">
                            <tr>
                                <td style="width: 130px">
                                    Адреса</td>
                                <td>
                                    <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAd" ErrorMessage="Внеси адреса"></asp:RequiredFieldValidator>
                                </td>
                                </tr>
                            <tr>
                                <td style="width: 130px">Тел</td>
                                <td>
                                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTel" ErrorMessage="Внеси телефон"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTel" ErrorMessage="Неправилен формат" ValidationExpression="(\+389\s2\s\d{4,4}\s\d{3,3})|(\+389\s[7][012356789]\s\d{3,3}\s\d{3,3})"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 130px">Пол</td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>Ж</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Внеси пол"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 130px">Датум на раѓање</td>
                                <td>
                                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 130px">
                                    <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="&lt;&lt;" OnClick="Button2_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" Text="&gt;&gt;" OnClick="Button3_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 130px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 130px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 130px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            </table>
                    </asp:View>

                    <asp:View ID="View3" runat="server">
                         <table class="nav-justified">
                             <tr>
                                 <td style="width: 99px">Занимање</td>
                                 <td>
                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                         <asp:ListItem>-занимање-</asp:ListItem>
                                         <asp:ListItem>Автомеханичар</asp:ListItem>
                                         <asp:ListItem>Пилот</asp:ListItem>
                                         <asp:ListItem>Сметководител</asp:ListItem>
                                         <asp:ListItem>Економист</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Избери занимање" InitialValue="-занимање-"></asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td style="height: 22px; width: 99px">Искуство</td>
                                 <td style="height: 22px">
                                     <asp:TextBox ID="txtIskustvo" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtIskustvo" ErrorMessage="Внеси искуство"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtIskustvo" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td style="width: 99px">
                                     <asp:Button ID="Button5" runat="server" CausesValidation="False" OnClick="Button5_Click" style="width: 30px" Text="&lt;&lt;" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button4" runat="server" Text="Поднеси" OnClick="Button4_Click" />
                                 </td>
                             </tr>
                         </table>
                         </asp:View>


                    <asp:View ID="View4" runat="server">

                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Врати се на почеток" Width="167px" />
                        <br />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">КОН ЗАДАЧА 1</asp:HyperLink>

                        </asp:View>
                   
                </asp:MultiView>
            </td>
        </tr>
        
    </table>
    
    </asp:Content>
