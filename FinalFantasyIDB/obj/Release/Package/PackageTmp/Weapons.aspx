<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Weapons.aspx.cs" Inherits="FinalFantasyIDB.Weapons" %>
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
                document.getElementById("weapons").style.display = "none";
        </script>
        <h1>Weapons</h1>
        <asp:dropdownlist ID="DropDownLiastHit" runat="server">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>35</asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
        </asp:dropdownlist> 
        <asp:Button ID="btnsearch" Text="Search" runat="server" onClick="searchhit"/>
        <p></p>
        <asp:GridView ID="GridViewWeapons" runat="server"></asp:GridView>
</asp:Content>
