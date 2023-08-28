using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace pokedex_web
{
    public partial class Default : System.Web.UI.Page
    {
        // creo una property y la cargo con el resultado de ir a buscar a la base de datos, para luego usar esa lista en el front de mi default
        public List<Pokemon> listaPokemon { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            listaPokemon = negocio.listarConSP();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = listaPokemon;
                repRepetidor.DataBind();

            }
        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;   // yo se que el sender es un button (pq es el que me dispara el evento) 

            // basicamente me traigo el argumento que le puse al botón al hacerle click en el, y lo agarro en "valor"
        }
    }
}