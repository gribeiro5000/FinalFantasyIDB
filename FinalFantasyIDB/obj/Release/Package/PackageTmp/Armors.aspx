<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Armors.aspx.cs" Inherits="FinalFantasyIDB.Armors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
            input{
                background-color:rgb(56, 55, 55);
                color:rgb(161, 161, 161);
                border: 1px solid;
                height: 30px;
                width: 70px;
                font-size:medium;
            }
            input:hover{
                color:rgb(255, 255, 255);
            }
            select{
                background-color:rgb(56, 55, 55);
                color:rgb(161, 161, 161);
                border: 1px solid;
                height: 30px;
                width: 100px;
                font-size:medium;
            }
            select:hover{
                color:rgb(255, 255, 255);
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script>
                document.getElementById("armors").style.display = "none";
        </script>
        <h1>Armors</h1>
        <asp:dropdownlist ID="DropDownListArmor" runat="server">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Armor</asp:ListItem>
            <asp:ListItem>Shield</asp:ListItem>
            <asp:ListItem>Helm</asp:ListItem>
            <asp:ListItem>Gauntlet</asp:ListItem>
        </asp:dropdownlist>
        <asp:Button ID="btnsearch" Text="Search" runat="server" OnClick="btnsearch_Click"/>
        <p></p>
        <asp:GridView ID="GridViewArmors" runat="server"></asp:GridView>
</asp:Content>
