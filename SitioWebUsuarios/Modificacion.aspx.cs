using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class Modificacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnMostrar_Click(object sender, EventArgs e)
    {
        string cadena = System.Configuration.ConfigurationManager.ConnectionStrings["ConexionDatos"].ConnectionString;
        SqlConnection conexion = new SqlConnection(cadena);

        conexion.Open();
        SqlCommand comando = new SqlCommand("select Nombres, Apellidos," +
            " Mail from TablaUsuarios where CodigoUsuario = '" + txtUsuario.Text + "'", conexion);

        SqlDataReader registro = comando.ExecuteReader();
        if (registro.Read())
        {
            txtNombres.Text = registro["Nombres"].ToString();
            txtApellidos.Text = registro["Apellidos"].ToString();
            txtMail.Text = registro["Mail"].ToString();

        }
        else
        {
            lblResultado.Text = "No existe el registro: " + txtUsuario.Text;
            txtApellidos.Text = "";
            txtUsuario.Text = "";
            txtNombres.Text = "";
            txtMail.Text = "";
            txtUsuario.Focus();
        }

        conexion.Close();
    
}

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        string cadena = System.Configuration.ConfigurationManager.ConnectionStrings["ConexionDatos"].ConnectionString;
        SqlConnection conexion = new SqlConnection(cadena);

        conexion.Open();
        SqlCommand comando = new SqlCommand("update TablaUsuarios set Nombres = '" + txtNombres.Text + "', Apellidos = '" + txtApellidos.Text + "',Mail='" + txtMail.Text + "' where CodigoUsuario = '" + txtUsuario.Text + "'", conexion);


        int registro = comando.ExecuteNonQuery();
        if (registro != 0)
        {
            DialogResult opcion = MessageBox.Show("¿Seguro desea modificar el usuario?", "Modificar el usuario",
                     MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (opcion == DialogResult.Yes)
            {
                lblResultado.Text = "Se modificó el registro: " + txtUsuario.Text;
            }
            else
            {
                lblResultado.Text = "No se modificó el registro.";
            }

            txtUsuario.Text = "";
            txtNombres.Text = "";
            txtMail.Text = "";
            txtApellidos.Text = "";
            txtUsuario.Focus();
            conexion.Close();
        }
    }
}