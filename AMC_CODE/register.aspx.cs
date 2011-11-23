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
    public partial class register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        }

        protected void submit_Click1(object sender, EventArgs e)
        { 
            int i = userNameValidate();
            if (i == 0)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]);
                SqlCommand insertcmd = new SqlCommand("insert into systemuser values(@systemuser_id,@role_id,@region_id,@name,@sex,@phone,@email,@adress,@birthday,@code)", conn);
                insertcmd.Parameters.Add("@systemuser_id", SqlDbType.Char, 100);
                insertcmd.Parameters.Add("@role_id", SqlDbType.SmallInt);
                insertcmd.Parameters.Add("@region_id", SqlDbType.SmallInt);
                insertcmd.Parameters.Add("@name", SqlDbType.NVarChar, 10);
                insertcmd.Parameters.Add("@sex", SqlDbType.Char, 10);
                insertcmd.Parameters.Add("@phone", SqlDbType.Char, 20);
                insertcmd.Parameters.Add("@email", SqlDbType.Char, 50);
                insertcmd.Parameters.Add("@adress", SqlDbType.NVarChar, 100);
                insertcmd.Parameters.Add("@birthday", SqlDbType.DateTime,8);
                insertcmd.Parameters.Add("@code", SqlDbType.Char, 20);
               
              
                insertcmd.Parameters["@systemuser_id"].Value = userid.Text;
                insertcmd.Parameters["@role_id"].Value = int.Parse(role.SelectedValue);
                insertcmd.Parameters["@region_id"].Value = int.Parse(region.SelectedValue);
                insertcmd.Parameters["@name"].Value =name.Text;
                insertcmd.Parameters["@sex"].Value = sex.SelectedItem.Text;
                insertcmd.Parameters["@phone"].Value = phone.Text;
                insertcmd.Parameters["@email"].Value = email.Text;
                insertcmd.Parameters["@adress"].Value = address.Text;
                insertcmd.Parameters["@birthday"].Value = txtDate.Text; 
                insertcmd.Parameters["@code"].Value = password.Text;

                try
                {
                    conn.Open();
                    int flag = insertcmd.ExecuteNonQuery();
                    if (flag > 0)
                    {
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('注册失败！')</script>");
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
            }
            
        }

        private int userNameValidate()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]);
            SqlCommand selectCmd = new SqlCommand("select * from systemuser where systemuser_id='" + userid.Text.Trim() + "'", conn);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script language=javascript>alert('注册失败！')</script>");
        }
    }
}




     