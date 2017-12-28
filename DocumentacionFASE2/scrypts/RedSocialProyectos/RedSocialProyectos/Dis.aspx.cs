using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RedSocialProyectos.usuario;
namespace RedSocialProyectos
{
    public partial class Dis : System.Web.UI.Page
    {
        Servicio usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = new Servicio();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text !="" && TextBox2.Text != "")
            {
                try
                {
                    //aqui se compara lo de los textboxs y si es verdad redirecciona a la pagina de perfil
                    if(usuario.Login(TextBox1 .Text ,TextBox2.Text)==true)
                    {
                        Session["usuario"] = TextBox1.Text;
                        Response.Redirect("/Perfil.aspx");
                    }else
                    {
                        TextBox2.Text = "";
                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if (TextBox5.Text != TextBox6.Text && TextBox9.Text!=TextBox10.Text)
            {
                Response.Write("<script lenguaje=javascript>");
                Response.Write("alert('Contraseas no coinciden')");
                Response.Write("</script>");
            }else
            if(TextBox5.Text == TextBox6.Text && TextBox9.Text == TextBox10.Text)
            {
                usuario.Agregarusuario(TextBox3.Text,TextBox4.Text ,TextBox9 .Text,TextBox6.Text ,TextBox8.Text,TextBox7.Text);
            
            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}