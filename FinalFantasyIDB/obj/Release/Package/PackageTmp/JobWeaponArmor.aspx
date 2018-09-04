<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JobWeaponArmor.aspx.cs" Inherits="FinalFantasyIDB.JobWeaponArmor" %>
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
                document.getElementById("jobweaponarmor").style.display = "none";
        </script>
        <h1>Weapons and Armors for Jobs</h1>
        <asp:dropdownlist ID="DropDownListjob" runat="server">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Fighter</asp:ListItem>
            <asp:ListItem>Knight</asp:ListItem>
            <asp:ListItem>Thief</asp:ListItem>
            <asp:ListItem>Ninja</asp:ListItem>
            <asp:ListItem>Black Belt</asp:ListItem>
            <asp:ListItem>Master</asp:ListItem>
            <asp:ListItem>Red Mage</asp:ListItem>
            <asp:ListItem>Red Wizard</asp:ListItem>
            <asp:ListItem>White Mage</asp:ListItem>
            <asp:ListItem>White Wizard</asp:ListItem>
            <asp:ListItem>Black Mage</asp:ListItem>
            <asp:ListItem>Black Wizard</asp:ListItem>
        </asp:dropdownlist> 
        <asp:Button ID="btnsearch" Text="Search" runat="server" onClick="searchjob"/>
        <p></p>
        <asp:GridView ID="GridViewJWA" runat="server"></asp:GridView>
</asp:Content>
