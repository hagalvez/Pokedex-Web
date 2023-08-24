<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="pokedex_web.PokemonsLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de pokemons</h1>
    <asp:GridView ID="dgvPokemons" runat="server" CssClass="table table-bordered text-center" AutoGenerateColumns="false">

        <Columns>

            <asp:BoundField HeaderText="Número" DataField="Numero" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
            <asp:BoundField HeaderText="UrlImagen" DataField="UrlImagen" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />

        </Columns>


    </asp:GridView>







</asp:Content>
