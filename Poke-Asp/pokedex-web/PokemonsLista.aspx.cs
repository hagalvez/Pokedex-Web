using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using negocio;


namespace pokedex_web
{
    public partial class PokemonsLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            dgvPokemons.DataSource = negocio.listarConSP();
            dgvPokemons.DataBind();
        }

        protected void dgvPokemons_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvPokemons.SelectedDataKey.Value.ToString(); // capturo el valor del id al que le di click en "editar"
            Response.Redirect("FormularioPokemon.aspx?id=" + id);  // navego a la pag de modificacion llevandome el Id. ( si vino id, modifico, si no, es pq voy a agregar uno )

        }

        protected void dgvPokemons_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvPokemons.PageIndex = e.NewPageIndex;   // capturo el nuevo page (del evento ) y lo asigno como page. Cambia la pantlla y renderiza de nuevo.
            dgvPokemons.DataBind();
        }
    }
}