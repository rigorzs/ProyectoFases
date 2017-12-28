using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RedSocialProyectos.usuario;

namespace RedSocialProyectos
{
    public partial class Perfil : System.Web.UI.Page
    {
        Servicio Publicar;
        protected void Page_Load(object sender, EventArgs e)
        {
            Publicar = new Servicio();
            Label1.Text = Session["usuario"].ToString();
            Label3.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int num;
            num = Publicar.Buscarid(Session["usuario"].ToString());
            if (Publicar.Publicar(num, TextBox1.Text) == true)
            {
                //Label cual = new Label();
                Label3.Visible = true;
                Label3.Text = TextBox1.Text;
                TextBox1.Text = "";
            }
        }
    }
}