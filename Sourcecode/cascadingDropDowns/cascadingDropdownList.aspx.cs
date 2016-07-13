using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cascadingDropDowns
{
    public partial class cascadingDropdownList : System.Web.UI.Page
    {
        string conString = @"Data Source=DESKTOP-KSO3AP7;Initial Catalog=db_Srinu;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }
    }
}