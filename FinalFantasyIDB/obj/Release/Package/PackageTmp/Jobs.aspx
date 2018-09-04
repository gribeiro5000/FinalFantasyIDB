<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="FinalFantasyIDB.Jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script>
                document.getElementById("jobs").style.display = "none";
        </script>
        <h1>Jobs</h1>
        <asp:GridView id="GridViewJobs" runat="server"></asp:GridView>
</asp:Content>
