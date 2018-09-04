<%@ Page Title="updatedatabase" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateDatabase.aspx.cs" Inherits="FinalFantasyIDB.UpdateDatabase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Update Jobs</h1>
    <h2>Add Job</h2>
    <div>
        Job:<asp:TextBox ID="textboxnewjob" runat="server"></asp:TextBox>
        <asp:Button ID="btnaddjob" Text="Add" runat="server" OnClick="btnaddjob_Click" />
    </div>
    <h2>Delete Job</h2>
    <div>
        Job:<asp:TextBox ID="textboxdeletejob" runat="server"></asp:TextBox>
        <asp:Button ID="btndeletejob" Text="Delete" runat="server" OnClick="btndeletejob_Click" />
    </div>
    <h1>Update Armors</h1>
    <h2>Add Armor</h2>
    <div>
        Armor:<asp:TextBox ID="textboxnewarmor" runat="server"></asp:TextBox>
        ArmorType:<asp:DropDownList ID="dropdownliastnewarmortype" runat="server">
                        <asp:ListItem>Armor</asp:ListItem>
                        <asp:ListItem>Shield</asp:ListItem>
                        <asp:ListItem>Helm</asp:ListItem>
                        <asp:ListItem>Gauntlet</asp:ListItem>
                  </asp:DropDownList>
        absorb:<asp:TextBox ID="textboxabsorb" runat="server"></asp:TextBox>
        evade:<asp:TextBox ID="textboxevade" runat="server"></asp:TextBox>
        <asp:Button ID="btnaddarmor" Text="Add" runat="server" OnClick="btnaddarmor_Click" />
    </div>
    <h2>Delete Armor</h2>
    <div>
        Armor:<asp:TextBox ID="textboxdeletearmor" runat="server"></asp:TextBox>
        <asp:Button ID="btndeletearmor" Text="Delete" runat="server" OnClick="btndeletearmor_Click" />
    </div>
    <h1>Update Weapon</h1>
    <h2>Add Weapon</h2>
    <div>
        Weapon name:<asp:TextBox ID="textboxweapon" runat="server"></asp:TextBox>
        damage:<asp:TextBox ID="textboxdamage" runat="server"></asp:TextBox>
        hit:<asp:TextBox ID="textboxhit" runat="server"></asp:TextBox>
        <asp:Button ID="btnaddweapon" Text="Add" runat="server" OnClick="btnaddweapon_Click" />
    </div>
    <h2>Delete Weapon</h2>
    <div>
        Weapon:<asp:TextBox ID="textboxdeleteweapon" runat="server"></asp:TextBox>
        <asp:Button ID="btndeleteweapon" Text="Delete" runat="server" OnClick="btndeleteweapon_Click" />
    </div>
</asp:Content>
