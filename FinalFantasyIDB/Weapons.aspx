<%@ Page Title="weapons" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Weapons.aspx.cs" Inherits="FinalFantasyIDB.Weapons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Style/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Weapons</h1>
        <div>
            Write a Hit:<asp:TextBox ID="textboxfilter" runat="server"></asp:TextBox>
        <asp:Button ID="btnsearch" Text="Search" runat="server" onClick="searchhit"/>
        </div>
        <p></p>
        <asp:GridView ID="GridViewWeapons" runat="server"></asp:GridView>
</asp:Content>
