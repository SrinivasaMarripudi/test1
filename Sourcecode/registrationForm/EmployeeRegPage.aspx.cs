using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace registrationForm
{
    public partial class EmployeeRegPage : System.Web.UI.Page
    {
        string connStr = @"Data Source=DESKTOP-KSO3AP7;Initial Catalog=db_Srinu;Integrated Security=True";

    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
	        {
                SqlConnection con = new SqlConnection(connStr);                    
                string sName = "SELECT sName FROM State";
                SqlCommand cmd = new SqlCommand(sName, con);
                con.Open();
                var stateNames = cmd.ExecuteReader();
                ddlState.DataValueField = "sName";
                ddlState.DataTextField = "sName";
                ddlState.DataSource= stateNames;
                ddlState.DataBind();
                ddlState.Items.Insert(0, "select a state");
                stateNames.Close();

                string country = "SELECT DISTINCT(Country) FROM tblCustomer";
                SqlCommand cncmd = new SqlCommand(country, con);
                var countryList = cncmd.ExecuteReader();
                ddlCountry.DataValueField = "Country";
                ddlCountry.DataTextField = "Country";
                ddlCountry.DataSource = countryList;
                ddlCountry.DataBind();
                ddlCountry.Items.Insert(0, "Select Country");
                countryList.Close();
                con.Close();
	        }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection submitConn = new SqlConnection(connStr);
            submitConn.Open();
            string spQuery = "getEmployerDetails";
            SqlCommand spcmd = new SqlCommand(spQuery, submitConn);
            spcmd.CommandType = CommandType.StoredProcedure;
            spcmd.CommandText = "getEmployerDetails";
            string STR = tbFirstName.Text.ToString();
            spcmd.Parameters.AddWithValue("@First_Name", tbFirstName.Text.ToString());
            spcmd.Parameters.AddWithValue("@Middle_Name", tbMiddleName.Text.ToString());
            spcmd.Parameters.AddWithValue("@Last_Name", tbLastName.Text.ToString());
            spcmd.Parameters.AddWithValue("@Gender", rblGender.SelectedValue.ToString());
            spcmd.Parameters.AddWithValue("@StreetAddress", tbAddress.Text.ToString());
            spcmd.Parameters.AddWithValue("@City", tbCity.Text.ToString());
            spcmd.Parameters.AddWithValue("@State", ddlState.SelectedValue.ToString());
            spcmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue.ToString());
            spcmd.Parameters.AddWithValue("@Zipcode", tbZipCode.Text.ToString());
            spcmd.Parameters.AddWithValue("@Email", tbEmail.Text.ToString());
            spcmd.Parameters.AddWithValue("@PhoneNumber", tbPhoneNo.Text.ToString());
            spcmd.ExecuteNonQuery();
            submitConn.Close();
        }
    }
}