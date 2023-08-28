<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="pokedex_web.PokemonsLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de pokemons</h1>
    <asp:GridView ID="dgvPokemons" runat="server" DataKeyNames="Id"
        CssClass="table table-bordered text-center" AutoGenerateColumns="false"
        OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
        OnPageIndexChanging="dgvPokemons_PageIndexChanging"
        AllowPaging="true" PageSize="5">


        <Columns>

            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Número" DataField="Numero" />

            <%--<asp:BoundField HeaderText="UrlImagen" DataField="UrlImagen" />--%>
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />
            <%-- <asp:CommandField HeaderText="Acción" ShowEditButton="true" EditText ="Editar ✍️"  />--%>
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="Editar ✍️" />


        </Columns>

    </asp:GridView>

    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>


</asp:Content>
