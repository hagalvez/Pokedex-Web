﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="pokedex_web.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">

            <div class="mb-3">
                <label for="txtId" class="form-label">Id:</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre:</label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" placeholder="ej: Pikachu" />
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Numero:</label>
                <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion:</label>
                <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" placeholder="ej: pajaro volador..." TextMode="MultiLine" />
            </div>
            <div class="mb-3">
                <label for="ddlTipo" class="form-label">Tipo:</label>
                <asp:DropDownList runat="server" ID="ddlTipo" CssClass="form-select" />
            </div>
            <div class="mb-5">
                <label for="ddlDebilidad" class="form-label">Debilidad:</label>
                <asp:DropDownList runat="server" ID="ddlDebilidad" CssClass="form-select" BackColor="WhiteSmoke"  />
            </div>

            <div class="mb-3">
                <asp:Button Text="Aceptar" runat="server" ID="btnAceptar" CssClass="btn btn-primary"   />                
                <a href="PokemonsLista.aspx">Cancelar</a>
            </div>



        </div>



    </div>

</asp:Content>
