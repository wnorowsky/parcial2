using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial2
{
    public partial class Formulario2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pass = this.Request.Cookies["pass"].ToString();
            string usuario = this.Session["usuario"].ToString();

            string rutaCarpetaUsuario = Server.MapPath(".") + "/" + usuario;
            cargarGrilla(rutaCarpetaUsuario);
        }

        public void cargarGrilla(string rutaCarpetaUsuario)
        {
            if (Directory.Exists(rutaCarpetaUsuario))
            {
                string[] files = Directory.GetFiles(rutaCarpetaUsuario);
                List<Archivo> fileList = new List<Archivo>();
                foreach (string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rutaCarpetaUsuario = Server.MapPath(".") + "/" + this.Session["usuario"].ToString();

            if (!Directory.Exists(rutaCarpetaUsuario))
            {
                Directory.CreateDirectory(rutaCarpetaUsuario);
            }

            foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
            {
                archivo.SaveAs(Path.Combine(rutaCarpetaUsuario, archivo.FileName));
            }

            cargarGrilla(rutaCarpetaUsuario);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "atachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}