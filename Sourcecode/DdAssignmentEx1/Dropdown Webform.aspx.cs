using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace DdAssignmentEx1
{
    public partial class Dropdown_Webform : System.Web.UI.Page
    {
        string ConnString = @"Data Source=DESKTOP-KSO3AP7;Initial Catalog=db_Srinu;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //string connstring = WebConfigurationManager.ConnectionStrings["srinuConnectionstring"].ToString();
            SqlConnection con = new SqlConnection(ConnString);

            string query = "SELECT StudentID, Name FROM tblstudent;";

            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                var dr = cmd.ExecuteReader();
                ddlDatareader.Items.Insert (0, new ListItem("Select a Name", "0"));               
                ddlDatareader.DataValueField = "StudentID";
                ddlDatareader.DataTextField = "Name";
                ddlDatareader.DataSource = dr;
                ddlDatareader.DataBind();
                dr.Close();
            }
            catch { }

            DataSet dsStudents = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dsStudents);

            ddlDataset.DataSource = dsStudents;
            ddlDataset.DataTextField = "Name";
            ddlDataset.DataValueField = "StudentID";
            ddlDataset.DataBind();

            string cQuery = "SELECT * FROM tblCustomer;";
            DataSet dsCustomers = new DataSet();
            SqlDataAdapter daCustomer = new SqlDataAdapter(cQuery, con);
            daCustomer.Fill(dsCustomers);
            gvCustomer.DataSource = dsCustomers;
            gvCustomer.DataBind();

            con.Close();
              
            
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn1 = new SqlConnection(ConnString);
            string insertQuery = "INSERT INTO tblstudent (Name) VALUES ('"+ txtStudentName.Text+"')";
            SqlCommand cmd1 = new SqlCommand(insertQuery, conn1);
            
            conn1.Open();
            
            cmd1.ExecuteNonQuery();

            conn1.Close();

            
        }
        
        
    }
}