<%@ Page Title="jobweaponarmor" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JobWeaponArmor.aspx.cs" Inherits="FinalFantasyIDB.JobWeaponArmor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="Style/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Weapons and Armors for Jobs</h1>
        <div>
            Write a Job:<asp:TextBox ID="textboxfilter" runat="server"></asp:TextBox>
            <asp:Button ID="btnsearch" Text="Search" runat="server" onClick="searchjob"/>
        </div>
        <p></p>
        <asp:GridView ID="GridViewJWA" runat="server" OnPreRender="GridViewJWA_PreRender"></asp:GridView>
</asp:Content>
