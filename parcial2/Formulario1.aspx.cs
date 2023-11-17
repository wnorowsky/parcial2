using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial2
{
    public partial class Formulario1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("pass", this.TextBox4.Text);
            this.Response.Cookies.Add(cookie1);

            this.Session["usuario"] = this.TextBox1.Text;
            this.Response.Redirect("Formulario2.aspx"); 
        }
    }
}