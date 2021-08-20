using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Alta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
       
    }


    protected void btnInsertar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string cadena = System.Configuration.ConfigurationManager.ConnectionStrings["ConexionDatos"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);

            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into TablaUsuarios(CodigoUsuario, Nombres, Apellidos," +
                " Mail) values('" + txtUsuario.Text + "', '" + txtNombres.Text + "','" + txtApellidos.Text + "','" +
                txtMail.Text + "')", conexion);

            int registro = comando.ExecuteNonQuery();
            if (registro != 0)
            {
                lblResultado.Text = "Se ingresó el registro: " + txtUsuario.Text;
            }
            else
            {
                lblResultado.Text = "No se ingresó el registro.";
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