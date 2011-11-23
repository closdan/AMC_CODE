using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.Sql;

namespace AMC_CODE
{
    public partial class userid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            string userid = this.Request.QueryString["userid"];
            int i = userNameValidate(userid);
            if (i == 1) { Response.Write( "此用户名已存在，请输入其他用户名！"); }
            else { Response.Write( "此用户名可用！"); }

        }
        private int userNameValidate(string userid)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]);
            SqlCommand selectCmd = new SqlCommand("select * from systemuser where systemuser_id='" + userid + "'", conn);
            int i = 0;
            try
            {
                conn.Open();
                SqlDataReader sdr = selectCmd.ExecuteReader();
                if (sdr.Read())
                {
                    i = 1;
                    //lblmessage.Text = "此用户名已存在，请输入其他用户名！";
                }
                else
                {
                    // lblmessage.Text = "此用户名可用！";
                }
            }
            catch (System.Exception ee)
            {
                Response.Write("<script language=javascript>alert('" + ee.Message.ToString() + "')</script>");
            }
            finally
            {
                conn.Close();
            }
            return i;
        }
    }
}
