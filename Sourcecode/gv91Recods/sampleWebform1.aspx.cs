using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace gv91Recods
{
    public partial class sampleWebform1 : System.Web.UI.Page
    {
        string cString = @"Data Source=DESKTOP-KSO3AP7;Initial Catalog=db_Srinu;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn1 = new SqlConnection(cString);
            cn1.Open();
            SqlCommand cd1 = new SqlCommand("getCustomerDetails", cn1);
            var ds = cd1.ExecuteReader();
            cd1.CommandType = CommandType.StoredProcedure;
            cd1.CommandText = "getCustomerDetails";
            gv1Customer.DataSource = ds;
            gv1Customer.DataBind();
            cn1.Close();     
            
        }

    }
}