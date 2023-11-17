<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="parcial2.Formulario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        - Formulario de registro de usuarios -</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Ingresa el nombre de usuario: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe ingresar el nombre</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Ingresa el email: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">El mail ingresado no es válido </asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe ingresar el email</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Ingresa la edad: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" ForeColor="Red" MinimumValue="15" Type="Integer" MaximumValue="100">El usuario debe ser mayor a 15 años </asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe ingresar la edad</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Ingresa la contraseña: "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe ingresar la contraseña</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Repite la contraseña: "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="CompareValidator" ForeColor="Red">Las contraseñas deben coincidir </asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe repetir la contraseña</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
