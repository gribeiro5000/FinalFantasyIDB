<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FinalFantasyIDB.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
            img{
                display:block;
                margin-left:auto;
                margin-right:auto;
            }
            h1{
                text-align:center;
            }
            p{
                text-align:center;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script>
                document.getElementById("index").style.display = "none";
        </script>
        <img src="Images/samuel jackson.jpg" width="700" height="270" />
        <h1>
            WELCOME, MOTHER FUCKER!!!
        </h1>
        <p>This is a Page About the Database of the game Final Fantasy I.</p>
        <p>Look Weapons, Armors and Jobs in the top of page.</p>
        <p>Watch Samuel L. Jackson's Compilation Mother Fucker</p>
        <p><iframe width="560" height="315" src="https://www.youtube.com/embed/dpzJx1Bq4Vk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></p>
</asp:Content>
