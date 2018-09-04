<%@ Page Title="armors" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Armors.aspx.cs" Inherits="FinalFantasyIDB.Armors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Style/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Armors</h1>
        <div>
            Write an Armor:<asp:TextBox ID="textfilter" runat="server"></asp:TextBox>
            <asp:Button ID="btnsearch" Text="Search" runat="server" OnClick="btnsearch_Click"/>
        </div>
        <p></p>
        <asp:GridView ID="GridViewArmors" runat="server"></asp:GridView>
</asp:Content>
