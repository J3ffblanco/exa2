using System;
using System.Web.UI.WebControls;

namespace TuProyecto 
{
    public partial class SistemaSoporte : System.Web.UI.Page
    {
      
        protected void AgregarUsuario_Click(object sender, EventArgs e)
        {
        
            Response.Write("<script>alert('Agregar Usuario');</script>");
        }

     
        protected void EliminarUsuario_Click(object sender, EventArgs e)
        {
           
            string usuarioId = ((Button)sender).CommandArgument;
            Response.Write("<script>alert('Eliminar Usuario con ID: " + usuarioId + "');</script>");
        }

        
        protected void EditarUsuario_Click(object sender, EventArgs e)
        {
       
            string usuarioId = ((Button)sender).CommandArgument;
            Response.Write("<script>alert('Editar Usuario con ID: " + usuarioId + "');</script>");
        }

       
        protected void AgregarTecnico_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Agregar Técnico');</script>");
        }

    
        protected void EliminarTecnico_Click(object sender, EventArgs e)
        {
            string tecnicoId = ((Button)sender).CommandArgument;
            Response.Write("<script>alert('Eliminar Técnico con ID: " + tecnicoId + "');</script>");
        }

      
        protected void EditarTecnico_Click(object sender, EventArgs e)
        {
            string tecnicoId = ((Button)sender).CommandArgument;
            Response.Write("<script>alert('Editar Técnico con ID: " + tecnicoId + "');</script>");
        }

      
        protected void AgregarEquipo_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Agregar Equipo');</script>");
        }

      
        protected void VerDetalles_Click(object sender, EventArgs e)
        {
            string equipoId = ((Button)sender).CommandArgument;
            Response.Write("<script>alert('Ver detalles del equipo con ID: " + equipoId + "');</script>");
        }
    }
}
