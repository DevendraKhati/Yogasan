using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yogasan
{
    public partial class login : System.Web.UI.Page
    {
        String uid;
        String pwd;
        

        SqlCommand com;

        SqlParameter UserName, Password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserName = new SqlParameter();

            Password = new SqlParameter();

            SqlConnection con = new SqlConnection("Data Source = KHATI; Initial Catalog = yogasan; Integrated Security = True");
            con.Open();
            com = new SqlCommand();

            com.Connection = con;

          

            

            com.CommandType = CommandType.StoredProcedure;

            com.CommandText = "login_pro";



            UserName.SqlDbType = SqlDbType.VarChar;

            UserName.Size = 20;

            UserName.ParameterName = "@UserName";

            UserName.Value = TextBox1.Text.ToString();

            UserName.Direction = ParameterDirection.Input;



            Password.SqlDbType = SqlDbType.VarChar;

            Password.Size = 50;

            Password.ParameterName = "@Password";

            Password.Value = TextBox2.Text.ToString();

            Password.Direction = ParameterDirection.Input;



            com.Parameters.Add(UserName);

            com.Parameters.Add(Password);



            int status;

            status = Convert.ToInt16(com.ExecuteScalar());



            if (status == 1)

            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("Timetable.aspx");
                Session.RemoveAll();
            }

            else

            {

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Invalid authentication.');");
                Response.Write("</script>");

            }

            con.Close();
        }
    }
}